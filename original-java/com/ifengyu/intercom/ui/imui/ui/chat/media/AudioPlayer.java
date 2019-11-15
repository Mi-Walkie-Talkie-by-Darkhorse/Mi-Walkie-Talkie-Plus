package com.ifengyu.intercom.ui.imui.ui.chat.media;

import android.annotation.SuppressLint;
import android.content.Context;
import android.media.AudioManager;
import android.media.AudioManager.OnAudioFocusChangeListener;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.im.imservice.audio.AudioTalkMediaPlayer;
import com.ifengyu.im.imservice.audio.AudioTalkMediaPlayer.MediaPlayCallBack;
import com.ifengyu.library.util.c;
import com.ifengyu.library.util.l;
import java.io.File;

public final class AudioPlayer {
    public static final String TAG = "AudioPlayer";
    private static final int WHAT_COUNT_PLAY = 0;
    private static final int WHAT_DECODE_FAILED = 2;
    private static final int WHAT_DECODE_SUCCEED = 1;
    private AudioManager audioManager;
    private int audioStreamType;
    /* access modifiers changed from: private */
    public String mAudioFile;
    /* access modifiers changed from: private */
    public Handler mHandler;
    /* access modifiers changed from: private */
    public long mIntervalTime;
    /* access modifiers changed from: private */
    public OnPlayListener mListener;
    /* access modifiers changed from: private */
    public AudioTalkMediaPlayer mPlayer;
    OnAudioFocusChangeListener onAudioFocusChangeListener;

    public AudioPlayer(Context context) {
        this(context, null, null);
    }

    @SuppressLint({"WrongConstant", "HandlerLeak"})
    public AudioPlayer(Context context, String str, OnPlayListener onPlayListener) {
        this.mIntervalTime = 500;
        this.audioStreamType = 3;
        this.mHandler = new Handler() {
            public void handleMessage(Message message) {
                switch (message.what) {
                    case 0:
                        if (AudioPlayer.this.mListener != null) {
                            AudioPlayer.this.mListener.onPlaying((long) AudioPlayer.this.mPlayer.getCurrentPosition());
                        }
                        sendEmptyMessageDelayed(0, AudioPlayer.this.mIntervalTime);
                        return;
                    case 1:
                        AudioPlayer.this.startInner();
                        break;
                    case 2:
                        break;
                    default:
                        return;
                }
                c.d(AudioPlayer.TAG, "convert() error: " + AudioPlayer.this.mAudioFile);
            }
        };
        this.onAudioFocusChangeListener = new OnAudioFocusChangeListener() {
            public void onAudioFocusChange(int i) {
                switch (i) {
                    case -3:
                        if (AudioPlayer.this.isPlaying()) {
                        }
                        return;
                    case -2:
                        AudioPlayer.this.stop();
                        return;
                    case -1:
                        AudioPlayer.this.stop();
                        return;
                    case 1:
                        if (AudioPlayer.this.isPlaying()) {
                        }
                        return;
                    default:
                        return;
                }
            }
        };
        this.audioManager = (AudioManager) context.getSystemService("audio");
        this.mAudioFile = str;
        this.mListener = onPlayListener;
    }

    public final void setDataSource(String str) {
        if (!TextUtils.equals(str, this.mAudioFile)) {
            this.mAudioFile = str;
        }
    }

    public final void setOnPlayListener(OnPlayListener onPlayListener) {
        this.mListener = onPlayListener;
    }

    public final OnPlayListener getOnPlayListener() {
        return this.mListener;
    }

    public final void start(int i) {
        this.audioStreamType = i;
        startPlay();
    }

    public final void stop() {
        if (this.mPlayer != null) {
            endPlay();
            if (this.mListener != null) {
                this.mListener.onInterrupt();
            }
        }
    }

    public final boolean isPlaying() {
        return this.mPlayer != null && this.mPlayer.isPlaying();
    }

    public final long getDuration() {
        return 0;
    }

    public final long getCurrentPosition() {
        if (this.mPlayer != null) {
            return (long) this.mPlayer.getCurrentPosition();
        }
        return 0;
    }

    public final void seekTo(int i) {
    }

    private void startPlay() {
        c.a(TAG, "start() called");
        endPlay();
        startInner();
    }

    /* access modifiers changed from: private */
    public void endPlay() {
        this.audioManager.abandonAudioFocus(this.onAudioFocusChangeListener);
        if (this.mPlayer != null) {
            this.mPlayer.stop();
            this.mPlayer = null;
            this.mHandler.removeMessages(0);
        }
    }

    /* access modifiers changed from: private */
    public void startInner() {
        this.mPlayer = new AudioTalkMediaPlayer(l.a());
        if (this.audioStreamType == 3) {
            this.audioManager.setSpeakerphoneOn(true);
        } else {
            this.audioManager.setSpeakerphoneOn(false);
        }
        this.audioManager.requestAudioFocus(this.onAudioFocusChangeListener, this.audioStreamType, 2);
        this.mPlayer.setMediaCallback(new MediaPlayCallBack() {
            public void onStoped(String str, boolean z) {
                c.a(AudioPlayer.TAG, "player:onCompletion");
                AudioPlayer.this.mHandler.post(new AudioPlayer$3$$Lambda$0(this));
            }

            /* access modifiers changed from: 0000 */
            public final /* synthetic */ void lambda$onStoped$0$AudioPlayer$3() {
                AudioPlayer.this.endPlay();
                if (AudioPlayer.this.mListener != null) {
                    AudioPlayer.this.mListener.onCompletion();
                }
            }

            public void onStarted(String str) {
                c.a(AudioPlayer.TAG, "player:onPrepared");
                l.a((Runnable) new AudioPlayer$3$$Lambda$1(this));
            }

            /* access modifiers changed from: 0000 */
            public final /* synthetic */ void lambda$onStarted$1$AudioPlayer$3() {
                AudioPlayer.this.mHandler.sendEmptyMessage(0);
                if (AudioPlayer.this.mListener != null) {
                    AudioPlayer.this.mListener.onPrepared();
                }
            }

            public void onError(final String str) {
                c.d(AudioPlayer.TAG, "player:onOnError");
                l.a((Runnable) new Runnable() {
                    public void run() {
                        AudioPlayer.this.endPlay();
                        if (AudioPlayer.this.mListener != null) {
                            AudioPlayer.this.mListener.onError(String.format("OnErrorListener what:extra:%s", new Object[]{str}));
                        }
                    }
                });
            }
        });
        try {
            if (this.mAudioFile != null) {
                this.mPlayer.resume();
                this.mPlayer.addToPlayList(1, 1, 10, this.mAudioFile, "", null, false);
                this.mPlayer.playNext(3);
                c.a(TAG, "player:start ok---->" + this.mAudioFile);
            } else if (this.mListener != null) {
                this.mListener.onError("no datasource");
            }
        } catch (Exception e) {
            ThrowableExtension.printStackTrace(e);
            c.d(TAG, "player:onOnError Exception\n" + e.toString());
            endPlay();
            if (this.mListener != null) {
                this.mListener.onError("Exception\n" + e.toString());
            }
        }
    }

    private void deleteOnExit() {
        File file = new File(this.mAudioFile);
        if (file.exists()) {
            file.deleteOnExit();
        }
    }
}
