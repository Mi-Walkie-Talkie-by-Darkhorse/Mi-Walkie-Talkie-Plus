package com.ifengyu.intercom.ui.imui.ui.chat.media;

import android.content.Context;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.os.Handler;
import android.text.TextUtils;
import com.ifengyu.intercom.R;
import com.ifengyu.library.util.a;
import com.ifengyu.library.util.c;

public abstract class BaseAudioControl<T> {
    /* access modifiers changed from: private */
    public static final String TAG = BaseAudioControl.class.getSimpleName();
    protected AudioControlListener audioControlListener;
    private BasePlayerListener basePlayerListener = null;
    protected AudioPlayer currentAudioPlayer;
    /* access modifiers changed from: private */
    public int currentAudioStreamType;
    protected Playable currentPlayable;
    protected boolean isEarPhoneModeEnable = true;
    private final AudioManager mAudioManager;
    protected Context mContext;
    protected Handler mHandler = new Handler();
    private boolean mSuffix = false;
    /* access modifiers changed from: private */
    public MediaPlayer mSuffixPlayer = null;
    protected boolean needSeek = false;
    private int origAudioStreamType;
    Runnable playRunnable = new Runnable() {
        public void run() {
            if (BaseAudioControl.this.currentAudioPlayer == null) {
                c.a(BaseAudioControl.TAG, "playRunnable run when currentAudioPlayer == null");
            } else {
                BaseAudioControl.this.currentAudioPlayer.start(BaseAudioControl.this.currentAudioStreamType);
            }
        }
    };
    protected long seekPosition;
    /* access modifiers changed from: private */
    public int state;

    public interface AudioControlListener {
        void onAudioControllerReady(Playable playable);

        void onEndPlay(Playable playable);

        void updatePlayingProgress(Playable playable, long j);
    }

    interface AudioControllerState {
        public static final int playing = 2;
        public static final int ready = 1;
        public static final int stop = 0;
    }

    public class BasePlayerListener implements OnPlayListener {
        protected AudioControlListener audioControlListener;
        protected AudioPlayer listenerPlayingAudioPlayer;
        protected Playable listenerPlayingPlayable;

        public BasePlayerListener(AudioPlayer audioPlayer, Playable playable) {
            this.listenerPlayingAudioPlayer = audioPlayer;
            this.listenerPlayingPlayable = playable;
        }

        public void setAudioControlListener(AudioControlListener audioControlListener2) {
            this.audioControlListener = audioControlListener2;
        }

        /* access modifiers changed from: protected */
        public boolean checkAudioPlayerValid() {
            if (BaseAudioControl.this.currentAudioPlayer != this.listenerPlayingAudioPlayer) {
                return false;
            }
            return true;
        }

        public void onPrepared() {
            if (checkAudioPlayerValid()) {
                BaseAudioControl.this.state = 2;
                if (BaseAudioControl.this.needSeek) {
                    BaseAudioControl.this.needSeek = false;
                    this.listenerPlayingAudioPlayer.seekTo((int) BaseAudioControl.this.seekPosition);
                }
            }
        }

        public void onPlaying(long j) {
            if (checkAudioPlayerValid() && this.audioControlListener != null) {
                this.audioControlListener.updatePlayingProgress(this.listenerPlayingPlayable, j);
            }
        }

        public void onInterrupt() {
            if (checkAudioPlayerValid()) {
                BaseAudioControl.this.resetAudioController(this.listenerPlayingPlayable);
                if (this.audioControlListener != null) {
                    this.audioControlListener.onEndPlay(BaseAudioControl.this.currentPlayable);
                }
            }
        }

        public void onError(String str) {
            if (checkAudioPlayerValid()) {
                BaseAudioControl.this.resetAudioController(this.listenerPlayingPlayable);
                if (this.audioControlListener != null) {
                    this.audioControlListener.onEndPlay(BaseAudioControl.this.currentPlayable);
                }
            }
        }

        public void onCompletion() {
            if (checkAudioPlayerValid()) {
                BaseAudioControl.this.resetAudioController(this.listenerPlayingPlayable);
                if (this.audioControlListener != null) {
                    this.audioControlListener.onEndPlay(BaseAudioControl.this.currentPlayable);
                }
                BaseAudioControl.this.playSuffix();
            }
        }
    }

    public abstract T getPlayingAudio();

    public abstract void startPlayAudioDelay(long j, T t, AudioControlListener audioControlListener2, int i);

    /* access modifiers changed from: protected */
    public void setOnPlayListener(Playable playable, AudioControlListener audioControlListener2) {
        this.audioControlListener = audioControlListener2;
        this.basePlayerListener = new BasePlayerListener<>(this.currentAudioPlayer, playable);
        this.currentAudioPlayer.setOnPlayListener(this.basePlayerListener);
        this.basePlayerListener.setAudioControlListener(audioControlListener2);
    }

    public void setEarPhoneModeEnable(boolean z) {
        this.isEarPhoneModeEnable = z;
        if (z) {
            updateAudioStreamType(0);
        } else {
            updateAudioStreamType(3);
        }
    }

    public void changeAudioControlListener(AudioControlListener audioControlListener2) {
        this.audioControlListener = audioControlListener2;
        if (isPlayingAudio()) {
            OnPlayListener onPlayListener = this.currentAudioPlayer.getOnPlayListener();
            if (onPlayListener != null) {
                ((BasePlayerListener) onPlayListener).setAudioControlListener(audioControlListener2);
            }
        }
    }

    public AudioControlListener getAudioControlListener() {
        return this.audioControlListener;
    }

    public BaseAudioControl(Context context, boolean z) {
        this.mContext = context;
        this.mSuffix = z;
        this.mAudioManager = (AudioManager) context.getSystemService("audio");
    }

    /* access modifiers changed from: protected */
    public void playSuffix() {
        if (this.mSuffix) {
            this.mSuffixPlayer = MediaPlayer.create(this.mContext, R.raw.audio_end_tip);
            this.mSuffixPlayer.setLooping(false);
            this.mSuffixPlayer.setAudioStreamType(3);
            this.mSuffixPlayer.setOnCompletionListener(new OnCompletionListener() {
                public void onCompletion(MediaPlayer mediaPlayer) {
                    BaseAudioControl.this.mSuffixPlayer.release();
                    BaseAudioControl.this.mSuffixPlayer = null;
                }
            });
            this.mSuffixPlayer.start();
        }
    }

    /* access modifiers changed from: protected */
    public boolean startAudio(Playable playable, AudioControlListener audioControlListener2, int i, boolean z, long j) {
        String path = playable.getPath();
        if (TextUtils.isEmpty(path)) {
            return false;
        }
        if (isPlayingAudio()) {
            stopAudio();
            if (this.currentPlayable.isAudioEqual(playable)) {
                return false;
            }
        }
        if (a.c()) {
            changeToHeadset();
        } else {
            changeToSpeaker(false);
        }
        this.state = 0;
        this.currentPlayable = playable;
        this.currentAudioPlayer = new AudioPlayer(this.mContext);
        this.currentAudioPlayer.setDataSource(path);
        setOnPlayListener(this.currentPlayable, audioControlListener2);
        if (z) {
            this.origAudioStreamType = i;
        }
        this.currentAudioStreamType = i;
        this.mHandler.postDelayed(this.playRunnable, j);
        this.state = 1;
        if (audioControlListener2 != null) {
            audioControlListener2.onAudioControllerReady(this.currentPlayable);
        }
        return true;
    }

    public int getCurrentAudioStreamType() {
        return this.currentAudioStreamType;
    }

    /* access modifiers changed from: protected */
    public int getUserSettingAudioStreamType() {
        if (this.isEarPhoneModeEnable) {
            return 0;
        }
        return 3;
    }

    /* access modifiers changed from: protected */
    public void resetAudioController(Playable playable) {
        this.currentAudioPlayer.setOnPlayListener(null);
        this.currentAudioPlayer = null;
        this.state = 0;
    }

    public boolean isPlayingAudio() {
        if (this.currentAudioPlayer == null) {
            return false;
        }
        if (this.state == 2 || this.state == 1) {
            return true;
        }
        return false;
    }

    public void stopAudio() {
        if (this.state == 2) {
            this.currentAudioPlayer.stop();
        } else if (this.state == 1) {
            this.mHandler.removeCallbacks(this.playRunnable);
            resetAudioController(this.currentPlayable);
            if (this.audioControlListener != null) {
                this.audioControlListener.onEndPlay(this.currentPlayable);
            }
        }
        stopHeadset();
    }

    public boolean updateAudioStreamType(int i) {
        if (!isPlayingAudio() || i == getCurrentAudioStreamType()) {
            return false;
        }
        changeAudioStreamType(i);
        return true;
    }

    public boolean restoreAudioStreamType() {
        if (!isPlayingAudio() || this.origAudioStreamType == getCurrentAudioStreamType()) {
            return false;
        }
        changeAudioStreamType(this.origAudioStreamType);
        return true;
    }

    private void changeAudioStreamType(int i) {
        if (this.currentAudioPlayer.isPlaying()) {
            this.seekPosition = this.currentAudioPlayer.getCurrentPosition();
            this.needSeek = true;
            this.currentAudioStreamType = i;
            this.currentAudioPlayer.start(i);
            return;
        }
        this.currentAudioStreamType = this.origAudioStreamType;
    }

    public void startPlayAudio(T t, AudioControlListener audioControlListener2) {
        startPlayAudio(t, audioControlListener2, getUserSettingAudioStreamType());
    }

    public void startPlayAudio(T t, AudioControlListener audioControlListener2, int i) {
        startPlayAudioDelay(0, t, audioControlListener2, i);
    }

    public void startPlayAudioDelay(long j, T t, AudioControlListener audioControlListener2) {
        startPlayAudioDelay(j, t, audioControlListener2, getUserSettingAudioStreamType());
    }

    public void changeToHeadset() {
        this.mAudioManager.setStreamVolume(3, this.mAudioManager.getStreamMaxVolume(3), 0);
        this.mAudioManager.setMode(3);
        this.mAudioManager.startBluetoothSco();
        this.mAudioManager.setBluetoothScoOn(true);
        this.mAudioManager.setSpeakerphoneOn(false);
    }

    public void changeToSpeaker(boolean z) {
        int i;
        AudioManager audioManager = this.mAudioManager;
        if (z) {
            i = 3;
        } else {
            i = 0;
        }
        audioManager.setMode(i);
        this.mAudioManager.stopBluetoothSco();
        this.mAudioManager.setBluetoothScoOn(false);
        this.mAudioManager.setSpeakerphoneOn(true);
    }

    public void stopHeadset() {
        if (this.mAudioManager.isBluetoothScoOn()) {
            this.mAudioManager.stopBluetoothSco();
            this.mAudioManager.setBluetoothScoOn(false);
            this.mAudioManager.setSpeakerphoneOn(true);
        }
    }
}
