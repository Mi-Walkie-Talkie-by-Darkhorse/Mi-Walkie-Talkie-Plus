package com.xiaomi.channel.common.audio;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.mi.milinkforgame.sdk.client.ClientLog;
import java.util.ArrayList;
import java.util.List;
import java.util.Observer;

public class SingletonMediaPlayer {
    public static final String TAG = SingletonMediaPlayer.class.getName();
    private static SingletonMediaPlayer sInstance;
    private AsyncMusicPlayer mAsyncPlayer = new AsyncMusicPlayer(TAG);
    private String mPlayingPath;
    private long mUniqueId = 0;

    public void localPlay(Context context, String str, Observer observer, long j) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(observer);
        localPlay(context, str, (List<Observer>) arrayList, j);
    }

    public void localPlay(Context context, String str, List<Observer> list, long j) {
        try {
            this.mAsyncPlayer.play(context, Uri.parse(str), list);
            this.mPlayingPath = str;
            this.mUniqueId = j;
        } catch (IllegalArgumentException e) {
            ClientLog.e(TAG, e.toString());
        } catch (SecurityException e2) {
            ClientLog.e(TAG, e2.toString());
        } catch (IllegalStateException e3) {
            ClientLog.e(TAG, e3.toString());
        }
    }

    public void stop() {
        this.mPlayingPath = null;
        this.mAsyncPlayer.stop();
    }

    public boolean isPlaying() {
        return this.mAsyncPlayer.isPlaying();
    }

    public boolean isPlaying(String str) {
        return !TextUtils.isEmpty(str) && TextUtils.equals(this.mPlayingPath, str) && this.mAsyncPlayer.isPlaying();
    }

    public boolean isPlaying(String str, long j) {
        return j == this.mUniqueId && !TextUtils.isEmpty(str) && TextUtils.equals(this.mPlayingPath, str) && this.mAsyncPlayer.isPlaying();
    }

    private SingletonMediaPlayer() {
    }

    public static SingletonMediaPlayer instance() {
        if (sInstance == null) {
            synchronized (SingletonMediaPlayer.class) {
                if (sInstance == null) {
                    sInstance = new SingletonMediaPlayer();
                }
            }
        }
        return sInstance;
    }
}
