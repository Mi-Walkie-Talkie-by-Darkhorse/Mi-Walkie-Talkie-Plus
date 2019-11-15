package com.ifengyu.im.imservice.audio;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import com.mi.milinkforgame.sdk.client.ClientLog;
import com.mi.mimsgsdk.upload.PreferenceUtils;
import com.xiaomi.channel.common.audio.AsyncMusicPlayer.AttachmentUtils;
import com.xiaomi.channel.common.audio.CommonUtils;
import com.xiaomi.channel.common.audio.MediaPlayerObserver;
import com.xiaomi.channel.common.audio.PlayerStatus;
import com.xiaomi.channel.common.audio.SingletonMediaPlayer;
import java.io.File;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Observable;
import java.util.Observer;

public class AudioTalkMediaPlayer {
    private static AudioTalkMediaPlayer instance;
    /* access modifiers changed from: private */
    public final String LOG_TAG = AudioTalkMediaPlayer.class.getSimpleName();
    private XMAudioPlayer mAudioPlayer;
    /* access modifiers changed from: private */
    public Context mContext;
    private PlayerStatus mCurrentPlayStatus = new PlayerStatus(3);
    /* access modifiers changed from: private */
    public float mLastSensorEventValue = -1.0f;
    /* access modifiers changed from: private */
    public MediaPlayCallBack mMediaCallback = null;
    private String mPlayCache;
    private LinkedList<PlayPair> mPlayList = new LinkedList<>();
    private boolean paused = false;
    private SensorEventListener sensorListener;

    public static abstract class MediaPlayCallBack {
        public abstract void onError(String str);

        public abstract void onStarted(String str);

        public abstract void onStoped(String str, boolean z);
    }

    public static class PlayPair {
        public long attId;
        public String localPath;
        public boolean mMarkAsHeard;
        public MediaPlayerObserver mObserver;
        public String mTargetAccountName;
        public int messageType;
        public long msgId;

        public PlayPair(long j, long j2, int i, String str, String str2, MediaPlayerObserver mediaPlayerObserver, boolean z) {
            this.messageType = i;
            this.localPath = str;
        }

        public boolean equals(Object obj) {
            return (obj instanceof PlayPair) && this.msgId == ((PlayPair) obj).msgId;
        }

        public int hashCode() {
            return (int) this.msgId;
        }
    }

    public void setMediaCallback(MediaPlayCallBack mediaPlayCallBack) {
        this.mMediaCallback = mediaPlayCallBack;
    }

    public void clearMediaCallback() {
        this.mMediaCallback = null;
    }

    public AudioTalkMediaPlayer(Context context) {
        this.mContext = context;
        initPlayCache();
        SingletonMediaPlayer.instance();
    }

    public static synchronized AudioTalkMediaPlayer getInstance(Context context) {
        AudioTalkMediaPlayer audioTalkMediaPlayer;
        synchronized (AudioTalkMediaPlayer.class) {
            if (instance != null) {
                audioTalkMediaPlayer = instance;
            } else {
                instance = new AudioTalkMediaPlayer(context.getApplicationContext());
                audioTalkMediaPlayer = instance;
            }
        }
        return audioTalkMediaPlayer;
    }

    private void initPlayCache() {
        File makeDirsIfNeeded = AttachmentUtils.makeDirsIfNeeded(3);
        if (makeDirsIfNeeded != null) {
            this.mPlayCache = new File(makeDirsIfNeeded, "PlayingCache").getAbsolutePath();
        }
    }

    public synchronized void addToPlayList(long j, long j2, int i, String str, String str2, MediaPlayerObserver mediaPlayerObserver, boolean z) {
        Iterator it = this.mPlayList.iterator();
        while (true) {
            if (it.hasNext()) {
                PlayPair playPair = (PlayPair) it.next();
                if (playPair.msgId == j) {
                    playPair.localPath = str;
                    break;
                }
            } else {
                this.mPlayList.add(new PlayPair(j, j2, i, str, str2, mediaPlayerObserver, z));
                break;
            }
        }
    }

    public synchronized void removeFromPlayList(long j) {
        this.mPlayList.remove(new PlayPair(j, 0, 100, null, null, null, false));
    }

    public synchronized boolean hasNext() {
        return !this.mPlayList.isEmpty();
    }

    public synchronized void playNext(int i) {
        if (!this.paused) {
            final PlayPair playPair = (PlayPair) this.mPlayList.peek();
            if (playPair.localPath != null) {
                PlayPair playPair2 = (PlayPair) this.mPlayList.poll();
                final PlayPair playPair3 = playPair2;
                AnonymousClass1 r5 = new MediaPlayerObserver(null) {
                    public void update(Observable observable, Object obj) {
                        if (obj instanceof PlayerStatus) {
                            PlayerStatus playerStatus = (PlayerStatus) obj;
                            if (playPair3.mObserver != null) {
                                playPair3.mObserver.update(observable, playerStatus);
                            }
                            AudioTalkMediaPlayer.getInstance(AudioTalkMediaPlayer.this.mContext).setPlayerStatus(playerStatus);
                            if (playerStatus.type == 0 || playerStatus.type == 3) {
                                AudioTalkMediaPlayer.getInstance(AudioTalkMediaPlayer.this.mContext).unregisterProximitySensor();
                                if (AudioTalkMediaPlayer.this.mMediaCallback == null) {
                                    return;
                                }
                                if (playerStatus.type == 3) {
                                    AudioTalkMediaPlayer.this.mMediaCallback.onStoped(playPair.localPath, true);
                                } else {
                                    AudioTalkMediaPlayer.this.mMediaCallback.onError(playPair.localPath);
                                }
                            }
                        }
                    }
                };
                if (this.mMediaCallback != null) {
                    this.mMediaCallback.onStarted(playPair.localPath);
                }
                if (playPair2.messageType == 10 || playPair2.messageType == 11) {
                    if (this.mPlayCache == null) {
                        initPlayCache();
                    }
                    if (this.mPlayCache != null) {
                        this.mAudioPlayer = new XMAudioPlayer(this.mContext, playPair2.localPath, this.mPlayCache, r5, i, true, playPair2.msgId);
                        ClientLog.d(this.LOG_TAG, "stream mode=" + i);
                        this.mAudioPlayer.start();
                    }
                } else {
                    SingletonMediaPlayer.instance().localPlay(this.mContext, playPair2.localPath, (Observer) r5, playPair2.msgId);
                }
                if (playPair2.mMarkAsHeard) {
                }
            }
        }
    }

    public synchronized void clearPlayList() {
        this.mPlayList.clear();
    }

    public synchronized void pause() {
        this.paused = true;
    }

    public synchronized void resume() {
        this.paused = false;
    }

    public void stop() {
        if (this.mAudioPlayer != null && !this.mAudioPlayer.isStopped()) {
            this.mAudioPlayer.stopPlay();
            this.mAudioPlayer = null;
        }
        SingletonMediaPlayer.instance().stop();
        unregisterProximitySensor();
    }

    public boolean isPlaying() {
        return SingletonMediaPlayer.instance().isPlaying() || (this.mAudioPlayer != null && this.mAudioPlayer.isAlive());
    }

    public boolean isPlaying(String str) {
        return SingletonMediaPlayer.instance().isPlaying(str) || (this.mAudioPlayer != null && this.mAudioPlayer.isPlaying(str));
    }

    public boolean isPlaying(String str, long j) {
        return SingletonMediaPlayer.instance().isPlaying(str, j) || (this.mAudioPlayer != null && this.mAudioPlayer.isPlaying(str, j));
    }

    public void setPlayerStatus(PlayerStatus playerStatus) {
        this.mCurrentPlayStatus = playerStatus;
    }

    public PlayerStatus getPlayerStatus(String str) {
        return isPlaying(str) ? this.mCurrentPlayStatus : new PlayerStatus(3);
    }

    private void initProximitySensor() {
        if (!CommonUtils.isAudioVoiceCallDisabled() && !CommonUtils.shouldAvoidProximitySensor() && PreferenceUtils.getSettingInt(this.mContext, "play_mode", 3) != 0) {
            SensorManager sensorManager = (SensorManager) this.mContext.getSystemService("sensor");
            Sensor defaultSensor = sensorManager.getDefaultSensor(8);
            if (defaultSensor != null && this.sensorListener == null) {
                this.mLastSensorEventValue = -1.0f;
                this.sensorListener = new SensorEventListener() {
                    public void onSensorChanged(SensorEvent sensorEvent) {
                        if (8 == sensorEvent.sensor.getType()) {
                            float f = sensorEvent.values[0];
                            ClientLog.v(AudioTalkMediaPlayer.this.LOG_TAG, "the value returned by the cursor: " + f);
                            if ((Float.compare(AudioTalkMediaPlayer.this.mLastSensorEventValue, -1.0f) == 0) && Float.compare(f, 0.0f) == 0) {
                                AudioTalkMediaPlayer.this.mLastSensorEventValue = f;
                            } else if (Float.compare(AudioTalkMediaPlayer.this.mLastSensorEventValue, f) != 0) {
                                AudioTalkMediaPlayer.this.mLastSensorEventValue = f;
                                if (Float.compare(f, 0.0f) == 0) {
                                    AudioTalkMediaPlayer.this.setEarphoneStatus(true);
                                } else {
                                    AudioTalkMediaPlayer.this.setEarphoneStatus(false);
                                }
                            }
                        }
                    }

                    public void onAccuracyChanged(Sensor sensor, int i) {
                    }
                };
                sensorManager.registerListener(this.sensorListener, defaultSensor, 2);
            }
        }
    }

    public void unregisterProximitySensor() {
        SensorManager sensorManager = (SensorManager) this.mContext.getSystemService("sensor");
        if (this.sensorListener != null) {
            sensorManager.unregisterListener(this.sensorListener);
            this.sensorListener = null;
        }
    }

    public void setEarphoneStatus(boolean z) {
        if (this.mAudioPlayer != null && !this.mAudioPlayer.isStopped()) {
            ClientLog.d(this.LOG_TAG, "setEarphoneStatus on=" + z);
            if (z) {
                this.mAudioPlayer.switchMode(0);
            } else {
                this.mAudioPlayer.switchMode(3);
            }
        }
    }

    public void switchEarphoneMode(int i) {
        if (this.mAudioPlayer != null && !this.mAudioPlayer.isStopped()) {
            this.mAudioPlayer.switchMode(i);
            if (i == 3) {
                initProximitySensor();
            } else {
                unregisterProximitySensor();
            }
        }
    }

    public int getCurrentPosition() {
        if (this.mAudioPlayer != null) {
            return this.mAudioPlayer.getCurrentPosition();
        }
        return 0;
    }
}
