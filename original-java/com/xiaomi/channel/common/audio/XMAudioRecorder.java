package com.xiaomi.channel.common.audio;

import android.content.Context;
import android.media.AudioRecord;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.mi.milinkforgame.sdk.client.ClientLog;
import java.io.File;
import java.util.Arrays;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

public class XMAudioRecorder extends Thread {
    public static final String AUDIO_FILE_MIME_TYPE = "audio/x-speex";
    public static final String AUDIO_FILE_SUFFIX = ".spx";
    public static final int AUDIO_FORMAT_CHANNEL_IN = 16;
    public static final int AUDIO_FORMAT_CHANNEL_OUT = 4;
    public static final int AUDIO_FORMAT_PCM_ENCODING = 2;
    /* access modifiers changed from: private */
    public static int AUDIO_SAMPLE_RATE = 0;
    /* access modifiers changed from: private */
    public static int FRAME_SIZE = 0;
    public static final int MESSAGE_CODE_INIT_AUDIO_CODER_ERROR = 0;
    public static final int MESSAGE_CODE_RECORD_ERROR = 1;
    public static final int MESSAGE_RECORD_RMS_CHANGED = 3;
    public static final int MESSAGE_RECORD_TIME_OUT = 2;
    private static int[] SAMPLE_RATES = {16000, 8000};
    public static final int STATE_FINISHED = 3;
    public static final int STATE_INITIALIZED = 1;
    public static final int STATE_RECORDING = 2;
    public static final int STATE_UNINITIALIZED = -1;
    /* access modifiers changed from: private */
    public static final String TAG = XMAudioRecorder.class.getSimpleName();
    private static int instanceCount = 0;
    private static final Object sInstanceLock = new Object();
    /* access modifiers changed from: private */
    public LinkedBlockingQueue<byte[]> mAudioBlocks;
    /* access modifiers changed from: private */
    public final String mAudioFilePath;
    private AudioRecord mAudioRecord;
    private Context mContext;
    private EncodeThread mEncodeThread;
    private Handler mHandler;
    /* access modifiers changed from: private */
    public int mQuality;
    private long mRecordTime;
    private boolean mStopRecord;
    private long mTimeLimit;
    private int maxAmp;

    class EncodeThread extends Thread {
        private AudioCodec audioCodec = new AudioCodec(XMAudioRecorder.this.mQuality);

        public EncodeThread() {
        }

        public void run() {
            if (AudioCodec.sInitialized) {
                new File(XMAudioRecorder.this.mAudioFilePath).delete();
                this.audioCodec.prepare(XMAudioRecorder.this.mAudioFilePath, XMAudioRecorder.AUDIO_SAMPLE_RATE, AudioCodec.CHANNEL, AudioCodec.AUDIO_FORMAT, this.audioCodec.getQuality());
                while (true) {
                    if (!XMAudioRecorder.this.isRecordStopped() || !XMAudioRecorder.this.mAudioBlocks.isEmpty()) {
                        try {
                            byte[] bArr = (byte[]) XMAudioRecorder.this.mAudioBlocks.poll(500, TimeUnit.MILLISECONDS);
                            if (bArr != null) {
                                this.audioCodec.encode(bArr, bArr.length, false);
                            }
                        } catch (InterruptedException e) {
                        }
                    } else {
                        byte[] bArr2 = new byte[XMAudioRecorder.FRAME_SIZE];
                        Arrays.fill(bArr2, 0);
                        this.audioCodec.encode(bArr2, bArr2.length, true);
                        this.audioCodec.nativeDelete();
                        ClientLog.v(XMAudioRecorder.TAG, "录音结束");
                        return;
                    }
                }
            }
        }
    }

    static {
        initAudioParameters();
    }

    public XMAudioRecorder(Context context, String str, Handler handler) {
        this(context, str, handler, 65000);
    }

    public XMAudioRecorder(Context context, String str, Handler handler, long j) {
        this.mAudioBlocks = new LinkedBlockingQueue<>();
        this.mStopRecord = false;
        this.mRecordTime = 0;
        this.mQuality = 8;
        this.maxAmp = 0;
        this.mContext = context;
        this.mAudioFilePath = str;
        this.mHandler = handler;
        this.mTimeLimit = j;
    }

    public void setQuality(int i) {
        this.mQuality = i;
    }

    public void run() {
        if (!AudioCodec.sInitialized) {
            this.mHandler.sendEmptyMessage(0);
            File file = new File(this.mContext.getFilesDir().getParentFile(), "lib");
            if (!file.isDirectory()) {
                file.mkdir();
            }
            release();
            return;
        }
        this.mEncodeThread = new EncodeThread();
        this.mEncodeThread.start();
        record();
    }

    private void record() {
        byte[] bArr = new byte[(FRAME_SIZE * 4)];
        try {
            long currentTimeMillis = System.currentTimeMillis();
            this.mAudioRecord.startRecording();
            int i = 0;
            while (true) {
                if (isRecordStopped()) {
                    break;
                }
                long currentTimeMillis2 = System.currentTimeMillis();
                int read = this.mAudioRecord.read(bArr, 0, bArr.length);
                if (read <= 0) {
                    ClientLog.e(TAG, "出现读0字节");
                    this.mHandler.sendEmptyMessage(1);
                    break;
                }
                i += read;
                byte[] bArr2 = new byte[read];
                System.arraycopy(bArr, 0, bArr2, 0, read);
                this.mAudioBlocks.add(bArr2);
                this.maxAmp = 0;
                for (int i2 = 0; i2 < read - 1; i2 += 2) {
                    int i3 = ((bArr2[i2 + 1] << 8) | bArr2[i2]) / 2;
                    if (i3 > this.maxAmp) {
                        this.maxAmp = i3;
                    }
                }
                Message message = new Message();
                message.what = 3;
                Bundle bundle = new Bundle();
                bundle.putInt("rmsdB", this.maxAmp);
                message.setData(bundle);
                this.mHandler.sendMessage(message);
                long currentTimeMillis3 = System.currentTimeMillis();
                ClientLog.v(TAG, "read " + read + " in " + (currentTimeMillis3 - currentTimeMillis2) + " ms.");
                int i4 = (int) (currentTimeMillis3 - currentTimeMillis);
                if (((long) i4) > this.mTimeLimit) {
                    ClientLog.e(TAG, "record more than time limit.！！！" + this.mTimeLimit);
                    this.mHandler.sendEmptyMessage(2);
                    break;
                }
                this.mRecordTime = (long) i4;
            }
            setRecordStopped();
            try {
                this.mAudioRecord.stop();
            } catch (IllegalStateException e) {
            }
            ClientLog.v(TAG, "record " + (i / 1024) + " KB in " + this.mRecordTime + " ms.");
        } catch (Exception e2) {
            ClientLog.e(TAG, e2.toString());
            if (this.mHandler != null) {
                this.mHandler.sendEmptyMessage(1);
            }
        } finally {
            release();
        }
    }

    public void init() {
        plusInstanceCount();
        int minBufferSize = AudioRecord.getMinBufferSize(AUDIO_SAMPLE_RATE, 16, 2);
        if (minBufferSize == -2 || minBufferSize == -1) {
            release();
            throw new IllegalArgumentException();
        }
        this.mAudioRecord = new AudioRecord(1, AUDIO_SAMPLE_RATE, 16, 2, minBufferSize * 8);
        if (this.mAudioRecord.getState() != 1) {
            release();
            throw new IllegalStateException("the audio record is not initialized properly: cnt " + instanceCount);
        }
    }

    private static void plusInstanceCount() {
        synchronized (sInstanceLock) {
            instanceCount++;
        }
    }

    private static void minusInstanceCount() {
        synchronized (sInstanceLock) {
            if (instanceCount > 0) {
                instanceCount--;
            } else {
                ClientLog.e(TAG, "want to minus instanceCount,but instanceCount <=0");
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:25:0x003f A[Catch:{ Exception -> 0x0043 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static void initAudioParameters() {
        /*
            r10 = 1
            int[] r8 = SAMPLE_RATES
            int r9 = r8.length
            r0 = 0
            r7 = r0
        L_0x0006:
            if (r7 >= r9) goto L_0x004e
            r2 = r8[r7]
            r0 = 16
            r1 = 2
            int r5 = android.media.AudioRecord.getMinBufferSize(r2, r0, r1)     // Catch:{ Exception -> 0x0043 }
            r0 = -2
            if (r5 == r0) goto L_0x0037
            r0 = -1
            if (r5 == r0) goto L_0x0037
            r6 = 0
            android.media.AudioRecord r0 = new android.media.AudioRecord     // Catch:{ all -> 0x003b }
            r1 = 1
            r3 = 16
            r4 = 2
            int r5 = r5 * 8
            r0.<init>(r1, r2, r3, r4, r5)     // Catch:{ all -> 0x003b }
            int r1 = r0.getState()     // Catch:{ all -> 0x0054 }
            if (r1 != r10) goto L_0x0032
            setAudioParameters(r2)     // Catch:{ all -> 0x0054 }
            if (r0 == 0) goto L_0x0031
            r0.release()     // Catch:{ Exception -> 0x0043 }
        L_0x0031:
            return
        L_0x0032:
            if (r0 == 0) goto L_0x0037
            r0.release()     // Catch:{ Exception -> 0x0043 }
        L_0x0037:
            int r0 = r7 + 1
            r7 = r0
            goto L_0x0006
        L_0x003b:
            r0 = move-exception
            r1 = r6
        L_0x003d:
            if (r1 == 0) goto L_0x0042
            r1.release()     // Catch:{ Exception -> 0x0043 }
        L_0x0042:
            throw r0     // Catch:{ Exception -> 0x0043 }
        L_0x0043:
            r0 = move-exception
            java.lang.String r1 = TAG
            java.lang.String r0 = r0.toString()
            com.mi.milinkforgame.sdk.client.ClientLog.e(r1, r0)
            goto L_0x0037
        L_0x004e:
            r0 = 8000(0x1f40, float:1.121E-41)
            setAudioParameters(r0)
            goto L_0x0031
        L_0x0054:
            r1 = move-exception
            r11 = r1
            r1 = r0
            r0 = r11
            goto L_0x003d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.channel.common.audio.XMAudioRecorder.initAudioParameters():void");
    }

    private static void setAudioParameters(int i) {
        AUDIO_SAMPLE_RATE = i;
        FRAME_SIZE = getFrameSize(i);
    }

    public static int getFrameSize(int i) {
        return ((AudioCodec.AUDIO_FORMAT * i) / 8) / 50;
    }

    public synchronized boolean isRecordStopped() {
        return this.mStopRecord;
    }

    private synchronized void setRecordStopped() {
        this.mStopRecord = true;
    }

    public void stopRecord() {
        setRecordStopped();
        joinTheRecord();
        synchronized (this) {
            notify();
        }
    }

    public synchronized int getMaxAmplitude() {
        return this.maxAmp;
    }

    public void release() {
        if (this.mAudioRecord != null) {
            this.mAudioRecord.release();
            this.mAudioRecord = null;
            minusInstanceCount();
        }
    }

    public synchronized long getRecordTime() {
        return this.mRecordTime;
    }

    public void joinTheRecord() {
        try {
            join();
            if (this.mEncodeThread != null) {
                this.mEncodeThread.join();
            }
        } catch (InterruptedException e) {
        }
    }

    public String getAudioPath() {
        return this.mAudioFilePath;
    }
}
