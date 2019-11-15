package com.xiaomi.channel.common.audio;

import android.content.Context;
import android.os.Environment;
import java.io.File;

public class CommonAudioPlayer {
    private static final String AUDIO_PLAY_BUFFER = (Environment.getExternalStorageDirectory().getAbsolutePath() + "/spx_cache");
    private static CommonAudioPlayer sInstance;
    private final Context mContext;
    private XMAudioPlayer mSPXAudioPlayer;

    private CommonAudioPlayer(Context context) {
        this.mContext = context;
    }

    public static synchronized CommonAudioPlayer getInstance(Context context) {
        CommonAudioPlayer commonAudioPlayer;
        synchronized (CommonAudioPlayer.class) {
            if (sInstance != null) {
                commonAudioPlayer = sInstance;
            } else {
                sInstance = new CommonAudioPlayer(context.getApplicationContext());
                commonAudioPlayer = sInstance;
            }
        }
        return commonAudioPlayer;
    }

    public boolean isPlaying() {
        return this.mSPXAudioPlayer != null && this.mSPXAudioPlayer.isAlive();
    }

    public boolean isPlaying(String str) {
        return this.mSPXAudioPlayer != null && this.mSPXAudioPlayer.isPlaying(str);
    }

    public void stop() {
        if (this.mSPXAudioPlayer != null && !this.mSPXAudioPlayer.isStopped()) {
            this.mSPXAudioPlayer.stopPlay();
            this.mSPXAudioPlayer = null;
        }
    }

    public void play(File file, MediaPlayerObserver mediaPlayerObserver) {
        this.mSPXAudioPlayer = new XMAudioPlayer(this.mContext, file.getAbsolutePath(), AUDIO_PLAY_BUFFER, mediaPlayerObserver, 3);
        this.mSPXAudioPlayer.start();
    }
}
