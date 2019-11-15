package com.mi.mimsgsdk.asr;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.speech.RecognitionListener;
import com.mi.milinkforgame.sdk.client.ClientLog;
import com.mi.mimsgsdk.upload.AttachmentUtils;
import com.shenma.speechrecognition.e;
import com.xiaomi.channel.common.audio.AudioCodec;
import com.xiaomi.channel.common.audio.XMAudioRecorder;
import java.io.File;
import java.io.FileInputStream;
import java.util.Arrays;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;

public class MiASRManager {
    /* access modifiers changed from: private */
    public static String PCM_FILE_DIR = null;
    private static final int SAMPLE_RATE_16000 = 16000;
    private static final int SAMPLE_RATE_8000 = 8000;
    /* access modifiers changed from: private */
    public static final String TAG = MiASRManager.class.getSimpleName();
    private static final String mSMAppId = "mi_entertainment";
    private static final String mSMAppKey = "CK_PQpAf3PAWBtnISrK3rYBU";
    /* access modifiers changed from: private */
    public int FRAME_SIZE = 0;
    private boolean isConvertStopped = true;
    /* access modifiers changed from: private */
    public LinkedBlockingQueue<byte[]> mAudioBlocks = new LinkedBlockingQueue<>();
    private Context mContext;
    /* access modifiers changed from: private */
    public Handler mHandler;
    /* access modifiers changed from: private */
    public MiASRListener mMiASRListener;
    private e mSMRecognizer;
    private RecognitionListener mSMRecognizerListener;

    class EncodeThread extends Thread {
        private AudioCodec audioCodec = new AudioCodec(this.mQuality);
        /* access modifiers changed from: private */
        public boolean isEncodeError = false;
        /* access modifiers changed from: private */
        public String mDstSpxPath;
        /* access modifiers changed from: private */
        public long mPcmLen;
        private int mQuality = 8;

        public EncodeThread(String str, long j) {
            this.mDstSpxPath = str;
            this.mPcmLen = j;
        }

        public void run() {
            if (!AudioCodec.sInitialized) {
                ClientLog.d(MiASRManager.TAG, "audiocodec is not initialized");
                return;
            }
            new File(this.mDstSpxPath).delete();
            this.audioCodec.prepare(this.mDstSpxPath, MiASRManager.SAMPLE_RATE_16000, AudioCodec.CHANNEL, AudioCodec.AUDIO_FORMAT, this.audioCodec.getQuality());
            while (true) {
                if (MiASRManager.this.isConvertStopped() && MiASRManager.this.mAudioBlocks.isEmpty()) {
                    break;
                }
                try {
                    byte[] bArr = (byte[]) MiASRManager.this.mAudioBlocks.poll(500, TimeUnit.MILLISECONDS);
                    if (bArr != null) {
                        this.audioCodec.encode(bArr, bArr.length, false);
                    }
                } catch (InterruptedException e) {
                    this.isEncodeError = true;
                    ClientLog.d(MiASRManager.TAG, "audiocode encode error, message=" + e.toString());
                }
            }
            byte[] bArr2 = new byte[MiASRManager.this.FRAME_SIZE];
            Arrays.fill(bArr2, 0);
            this.audioCodec.encode(bArr2, bArr2.length, true);
            this.audioCodec.nativeDelete();
            if (MiASRManager.this.mMiASRListener != null) {
                MiASRManager.this.mHandler.post(new Runnable() {
                    public void run() {
                        if (EncodeThread.this.isEncodeError) {
                            MiASRManager.this.mMiASRListener.onRecordFinished("", 0);
                        } else {
                            MiASRManager.this.mMiASRListener.onRecordFinished(EncodeThread.this.mDstSpxPath, EncodeThread.this.mPcmLen);
                        }
                    }
                });
            }
            ClientLog.v(MiASRManager.TAG, "pcm to spx done!");
        }
    }

    class ReadPcmThread extends Thread {
        private String mSrcPcmPath;

        public ReadPcmThread(String str) {
            this.mSrcPcmPath = str;
        }

        public void run() {
            byte[] bArr = new byte[(MiASRManager.this.FRAME_SIZE * 4)];
            try {
                FileInputStream fileInputStream = new FileInputStream(new File(MiASRManager.PCM_FILE_DIR, this.mSrcPcmPath));
                while (true) {
                    int read = fileInputStream.read(bArr, 0, bArr.length);
                    if (read > 0) {
                        byte[] bArr2 = new byte[read];
                        System.arraycopy(bArr, 0, bArr2, 0, read);
                        MiASRManager.this.mAudioBlocks.add(bArr2);
                    } else {
                        fileInputStream.close();
                        return;
                    }
                }
            } catch (Exception e) {
                ClientLog.d(MiASRManager.TAG, "read file error, message=" + e.toString());
            } finally {
                MiASRManager.this.setConvertStopped();
            }
        }
    }

    public MiASRManager(Context context, final MiASRListener miASRListener) {
        this.mContext = context;
        this.mMiASRListener = miASRListener;
        PCM_FILE_DIR = AttachmentUtils.makeDirsIfNeeded(3).getAbsolutePath();
        this.mHandler = new Handler(Looper.getMainLooper());
        this.mSMRecognizer = e.a(this.mContext, mSMAppId, mSMAppKey);
        this.mSMRecognizer.c(false);
        this.mSMRecognizer.b(false);
        this.mSMRecognizer.a(PCM_FILE_DIR);
        this.mSMRecognizerListener = new RecognitionListener() {
            public void onRmsChanged(float f) {
                if (miASRListener != null) {
                    miASRListener.onRmsChanged(f);
                }
            }

            public void onResults(Bundle bundle) {
                if (bundle != null) {
                    try {
                        JSONObject jSONObject = new JSONObject(bundle.getString("results_recognition"));
                        JSONArray jSONArray = jSONObject.getJSONArray("nbest");
                        String string = jSONObject.getString("hid");
                        if (jSONArray != null && !jSONArray.isNull(0)) {
                            jSONArray.getJSONObject(0).optString("result");
                            String str = string.substring(0, 8) + "-" + string.substring(8, 12) + "-" + string.substring(12, 16) + "-" + string.substring(16, 20) + "-" + string.substring(20) + ".pcm";
                            File file = new File(MiASRManager.PCM_FILE_DIR, str);
                            if (!file.exists()) {
                                ClientLog.d(MiASRManager.TAG, "pcm file not exist! path" + file.getAbsolutePath());
                            } else if (MiASRManager.this.isConvertStopped()) {
                                MiASRManager.this.FRAME_SIZE = XMAudioRecorder.getFrameSize(MiASRManager.SAMPLE_RATE_16000);
                                long length = file.length() / 32;
                                MiASRManager.this.setConvertStarted();
                                new ReadPcmThread(str).start();
                                new EncodeThread(AttachmentUtils.newFilePath(".spx", 3), length).start();
                            } else {
                                ClientLog.d(MiASRManager.TAG, "convert operation is running!");
                            }
                        }
                    } catch (Exception e) {
                        ClientLog.d(MiASRManager.TAG, e.toString());
                    }
                }
                if (miASRListener != null) {
                    miASRListener.onResults(bundle);
                }
            }

            public void onReadyForSpeech(Bundle bundle) {
                if (miASRListener != null) {
                    miASRListener.onReadyForSpeech(bundle);
                }
            }

            public void onPartialResults(Bundle bundle) {
                if (miASRListener != null) {
                    miASRListener.onPartialResults(bundle);
                }
            }

            public void onEvent(int i, Bundle bundle) {
                if (miASRListener != null) {
                    miASRListener.onEvent(i, bundle);
                }
            }

            public void onError(int i) {
                if (miASRListener != null) {
                    miASRListener.onError(i);
                }
            }

            public void onEndOfSpeech() {
                if (miASRListener != null) {
                    miASRListener.onEndOfSpeech();
                }
            }

            public void onBufferReceived(byte[] bArr) {
                if (miASRListener != null) {
                    BytesWrapper bytesWrapper = new BytesWrapper();
                    bytesWrapper.setBytes(bArr);
                    miASRListener.onBufferReceived(bytesWrapper);
                }
            }

            public void onBeginningOfSpeech() {
                if (miASRListener != null) {
                    miASRListener.onBeginOfSpeech();
                }
            }
        };
        this.mSMRecognizer.a(this.mSMRecognizerListener);
    }

    public void setRealTimeOutput(boolean z) {
        if (this.mSMRecognizer != null) {
            this.mSMRecognizer.a(z);
        }
    }

    private void setVadState(boolean z) {
        if (this.mSMRecognizer != null) {
            this.mSMRecognizer.b(z);
        }
    }

    private void setOutputDir(String str) {
        if (this.mSMRecognizer != null) {
            this.mSMRecognizer.a(str);
        }
    }

    public void startListening() {
        if (this.mSMRecognizer != null) {
            this.mSMRecognizer.a();
        }
    }

    public void stopListening() {
        if (this.mSMRecognizer != null) {
            this.mSMRecognizer.b();
        }
    }

    public void cancel() {
        if (this.mSMRecognizer != null) {
            this.mSMRecognizer.c();
        }
    }

    public void destroy() {
        if (this.mSMRecognizer != null) {
            this.mSMRecognizer.d();
            this.mSMRecognizer = null;
        }
    }

    public String getAudioDir() {
        if (PCM_FILE_DIR == null) {
            PCM_FILE_DIR = AttachmentUtils.makeDirsIfNeeded(3).getAbsolutePath();
        }
        return PCM_FILE_DIR;
    }

    /* access modifiers changed from: private */
    public synchronized boolean isConvertStopped() {
        return this.isConvertStopped;
    }

    /* access modifiers changed from: private */
    public synchronized void setConvertStopped() {
        this.isConvertStopped = true;
    }

    /* access modifiers changed from: private */
    public synchronized void setConvertStarted() {
        this.isConvertStopped = false;
    }
}
