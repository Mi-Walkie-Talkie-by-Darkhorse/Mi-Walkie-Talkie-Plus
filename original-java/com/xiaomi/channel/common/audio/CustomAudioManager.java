package com.xiaomi.channel.common.audio;

import android.content.Context;
import android.media.AudioManager;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.text.format.DateFormat;
import android.widget.Toast;
import com.mi.milinkforgame.sdk.base.os.Http;
import com.mi.milinkforgame.sdk.client.ClientLog;
import com.mi.mimsgsdk.AudioRecordListener;
import com.mi.mimsgsdk.utils.HttpDownloader;
import com.xiaomi.channel.common.audio.AsyncMusicPlayer.AttachmentUtils;
import com.xiaomi.channel.common.audio.AudioTalkMediaPlayer.MediaPlayCallBack;
import java.io.File;

public class CustomAudioManager {
    /* access modifiers changed from: private */
    public static final String TAG = CustomAudioManager.class.getSimpleName();
    private AudioManager mAudioManager;
    private MLAudioRecord mAudioRecord;
    /* access modifiers changed from: private */
    public Context mContext;
    private Handler mHandler = new Handler(Looper.getMainLooper()) {
        public void handleMessage(Message message) {
            switch (message.what) {
                case 0:
                    if (CustomAudioManager.this.mListener != null) {
                        CustomAudioManager.this.mListener.onAudioCoderInitializationFailed();
                        return;
                    }
                    return;
                case 1:
                    if (CustomAudioManager.this.mListener != null) {
                        CustomAudioManager.this.mListener.onRecordFailed();
                        return;
                    }
                    return;
                case 2:
                    CustomAudioManager.this.stopRecord();
                    return;
                case 3:
                    int i = message.getData().getInt("rmsdB");
                    if (CustomAudioManager.this.mListener != null) {
                        CustomAudioManager.this.mListener.onRmsChanged(i);
                        return;
                    }
                    return;
                default:
                    ClientLog.d(CustomAudioManager.TAG, "receive msg can not recognize! msg.what=" + message.what);
                    return;
            }
        }
    };
    private boolean mIsInRecordMode;
    private boolean mIsSpeakerphoneOn = true;
    /* access modifiers changed from: private */
    public AudioRecordListener mListener;
    private int mOldAudioMode;
    private boolean mOldIsSpeakerphoneOn;
    private int mOldRingMode;
    private AudioTalkMediaPlayer mPlayer;
    final MediaPlayCallBack mediaPlayerCallBack = new MediaPlayCallBack() {
        public void onStoped(String str, boolean z) {
            CustomAudioManager.this.setOldAudioConfig();
            CustomAudioManager.this.mListener.onPlayEnd(str, z);
        }

        public void onStarted(String str) {
            CustomAudioManager.this.mListener.onPlayBegin(str);
        }

        public void onError(String str) {
            CustomAudioManager.this.setOldAudioConfig();
            CustomAudioManager.this.mListener.onPlayEnd(str, false);
        }
    };

    public class ComposeMessageAudioRecord extends MLAudioRecord {
        public ComposeMessageAudioRecord(Context context, Handler handler) {
            super(context, handler);
        }

        public void onRecordStart() {
            CustomAudioManager.this.mListener.onRecordStart();
        }

        public void onRecordInitializationSucceed() {
            CustomAudioManager.this.mListener.onRecordInitializationSucceed();
            super.onRecordInitializationSucceed();
        }

        public void onRecordInitializationFailed() {
            CustomAudioManager.this.mListener.onRecordInitializationFailed();
        }

        public void onRecordInitializationCancelled() {
            CustomAudioManager.this.mListener.onRecordInitializationCancelled();
        }

        public void onRecordFinished() {
            CustomAudioMsg latestRecord = CustomAudioManager.this.getLatestRecord();
            CustomAudioManager.this.mListener.onRecordFinished(latestRecord.getLocalPath(), latestRecord.getLength());
        }

        public void onRecordFailed() {
            CustomAudioManager.this.mListener.onRecordFailed();
        }

        public void onEndingRecord() {
            CustomAudioManager.this.mListener.onEndingRecord();
        }

        public String creatAudioPath() {
            return CommonUtils.getUniqueFileName(AttachmentUtils.makeDirsIfNeeded(3), DateFormat.format("yyyyMMdd", System.currentTimeMillis()).toString() + ".spx");
        }
    }

    public interface DownloadCallback {
        void onDownloadFailed(String str);

        void onDownloadSuccess(String str);
    }

    public CustomAudioManager(Context context, AudioRecordListener audioRecordListener) {
        this.mContext = context;
        this.mListener = audioRecordListener;
        this.mAudioManager = (AudioManager) this.mContext.getSystemService("audio");
        this.mAudioRecord = new ComposeMessageAudioRecord(context, this.mHandler);
    }

    public void startRecord() {
        this.mAudioRecord.onTouch(TouchableXMAudioRecord.ACTION_START);
        this.mIsInRecordMode = true;
    }

    public void stopRecord() {
        if (this.mIsInRecordMode) {
            this.mAudioRecord.onTouch(TouchableXMAudioRecord.ACTION_STOP);
            this.mIsInRecordMode = false;
        }
    }

    public CustomAudioMsg getLatestRecord() {
        CustomAudioMsg customAudioMsg = new CustomAudioMsg();
        customAudioMsg.setLength(this.mAudioRecord.getAudioLen());
        customAudioMsg.setLocalPath(this.mAudioRecord.getAudioPath());
        return customAudioMsg;
    }

    /* access modifiers changed from: private */
    public void playVoice(String str, boolean z, String str2) {
        int i = 0;
        getOldAudioConfig();
        setPlayAudioConfig();
        this.mPlayer = AudioTalkMediaPlayer.getInstance(this.mContext);
        this.mPlayer.clearMediaCallback();
        this.mPlayer.setMediaCallback(this.mediaPlayerCallBack);
        if (!TextUtils.isEmpty(str)) {
            this.mPlayer.clearPlayList();
            if (this.mPlayer.isPlaying(str)) {
                this.mPlayer.stop();
                return;
            }
            if (this.mPlayer.isPlaying()) {
                this.mPlayer.stop();
            }
            this.mPlayer.resume();
            this.mPlayer.addToPlayList(1, 1, 10, str, "", null, false);
            AudioTalkMediaPlayer audioTalkMediaPlayer = this.mPlayer;
            if (this.mIsSpeakerphoneOn) {
                i = 3;
            }
            audioTalkMediaPlayer.playNext(i, z, str2);
            return;
        }
        ClientLog.d(TAG, "playVoice failed because localPath is null!");
    }

    public void playVoiceWithUrl(String str) {
        playVoiceWithUrl(str, true, null);
    }

    public void playVoiceWithUrl(String str, final boolean z, final String str2) {
        AnonymousClass3 r0 = new DownloadCallback() {
            public void onDownloadSuccess(String str) {
                if (str != null) {
                    ClientLog.d(CustomAudioManager.TAG, "download success ,result = " + str);
                    CustomAudioManager.this.playVoice(str, z, str2);
                }
            }

            public void onDownloadFailed(String str) {
                Toast.makeText(CustomAudioManager.this.mContext, "download error", 0).show();
            }
        };
        File file = new File(str);
        if (file.exists() && file.isFile()) {
            ClientLog.d(TAG, "play voice by local url = " + str);
            playVoice(str, z, str2);
        } else if (str.startsWith(Http.PROTOCOL_PREFIX)) {
            ClientLog.d(TAG, "play voice by url url = " + str);
            downloadAttachment(com.mi.mimsgsdk.upload.AttachmentUtils.newFilePath(".spx", 3), str, r0);
        } else {
            ClientLog.e(TAG, "invalid url:" + str);
        }
    }

    private void downloadAttachment(final String str, final String str2, final DownloadCallback downloadCallback) {
        new AsyncTask<Void, Void, String>() {
            /* access modifiers changed from: protected */
            public void onPreExecute() {
                super.onPreExecute();
            }

            /* access modifiers changed from: protected */
            public void onPostExecute(String str) {
                super.onPostExecute(str);
                if (TextUtils.isEmpty(str)) {
                    if (downloadCallback != null) {
                        downloadCallback.onDownloadFailed(str);
                    }
                    ClientLog.v(CustomAudioManager.TAG, "DownLoadAudioMessageFailed");
                } else if (downloadCallback != null) {
                    downloadCallback.onDownloadSuccess(str);
                }
            }

            /* access modifiers changed from: protected */
            public String doInBackground(Void... voidArr) {
                File file = new File(str);
                ClientLog.d(CustomAudioManager.TAG, "play voice download start ,1.0");
                try {
                    HttpDownloader.downloadFile(str2, file, null, false);
                    ClientLog.d(CustomAudioManager.TAG, "play voice download end ,local path = " + file.getPath());
                    String str = file.exists() ? file.getPath() : "";
                    ClientLog.d(CustomAudioManager.TAG, "play voice download end ,local path = " + str);
                    return str;
                } catch (Throwable th) {
                    ClientLog.e(CustomAudioManager.TAG, "download failed, url:" + str2, th);
                    return "";
                }
            }
        }.execute(new Void[]{null, null, null});
    }

    public void playVoiceWithUrl(String str, DownloadCallback downloadCallback) {
        if (downloadCallback == null) {
            throw new IllegalArgumentException("please provide a callback");
        }
        File file = new File(str);
        if (file.exists() && file.isFile()) {
            ClientLog.d(TAG, "play voice by local url = " + str);
            playVoice(str, true, null);
        } else if (str.startsWith(Http.PROTOCOL_PREFIX)) {
            ClientLog.d(TAG, "play voice by url url = " + str);
            downloadAttachment(com.mi.mimsgsdk.upload.AttachmentUtils.newFilePath(".spx", 3), str, downloadCallback);
        } else {
            ClientLog.e(TAG, "invalid url:" + str);
        }
    }

    public void stopPlay() {
        if (this.mPlayer != null && this.mPlayer.isPlaying()) {
            this.mPlayer.stop();
        }
    }

    public void setSpeakerphoneOn(boolean z) {
        this.mIsSpeakerphoneOn = z;
        if (this.mPlayer != null && this.mPlayer.isPlaying()) {
            setPlayAudioConfig();
            this.mPlayer.setEarphoneStatus(!z);
        }
    }

    private void getOldAudioConfig() {
        this.mOldAudioMode = this.mAudioManager.getMode();
        this.mOldRingMode = this.mAudioManager.getRingerMode();
        this.mOldIsSpeakerphoneOn = this.mAudioManager.isSpeakerphoneOn();
    }

    /* access modifiers changed from: private */
    public void setOldAudioConfig() {
        this.mAudioManager.setMode(this.mOldAudioMode);
        this.mAudioManager.setRingerMode(this.mOldRingMode);
        this.mAudioManager.setSpeakerphoneOn(this.mOldIsSpeakerphoneOn);
    }

    private void setPlayAudioConfig() {
        ClientLog.d(TAG, "device build version is " + VERSION.SDK_INT);
        if (this.mIsSpeakerphoneOn) {
            this.mAudioManager.setMode(0);
            this.mAudioManager.setSpeakerphoneOn(true);
            return;
        }
        if (VERSION.SDK_INT > 20) {
            this.mAudioManager.setMode(3);
        } else {
            this.mAudioManager.setMode(2);
        }
        this.mAudioManager.setSpeakerphoneOn(false);
    }
}
