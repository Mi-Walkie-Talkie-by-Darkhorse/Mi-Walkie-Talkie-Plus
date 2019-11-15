package com.xiaomi.channel.common.audio;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import com.mi.milinkforgame.sdk.client.ClientLog;
import com.mi.mimsgsdk.upload.PreferenceUtils;
import com.xiaomi.channel.common.audio.AsyncMusicPlayer.AttachmentUtils;
import java.io.File;
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
            if ((obj instanceof PlayPair) && this.msgId == ((PlayPair) obj).msgId) {
                return true;
            }
            return false;
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

    private AudioTalkMediaPlayer(Context context) {
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

    /* JADX WARNING: Code restructure failed: missing block: B:11:?, code lost:
        r13.mPlayList.add(new com.xiaomi.channel.common.audio.AudioTalkMediaPlayer.PlayPair(r14, r16, r18, r19, r20, r21, r22));
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized void addToPlayList(long r14, long r16, int r18, java.lang.String r19, java.lang.String r20, com.xiaomi.channel.common.audio.MediaPlayerObserver r21, boolean r22) {
        /*
            r13 = this;
            monitor-enter(r13)
            java.util.LinkedList<com.xiaomi.channel.common.audio.AudioTalkMediaPlayer$PlayPair> r2 = r13.mPlayList     // Catch:{ all -> 0x0037 }
            java.util.Iterator r3 = r2.iterator()     // Catch:{ all -> 0x0037 }
        L_0x0007:
            boolean r2 = r3.hasNext()     // Catch:{ all -> 0x0037 }
            if (r2 == 0) goto L_0x001f
            java.lang.Object r2 = r3.next()     // Catch:{ all -> 0x0037 }
            com.xiaomi.channel.common.audio.AudioTalkMediaPlayer$PlayPair r2 = (com.xiaomi.channel.common.audio.AudioTalkMediaPlayer.PlayPair) r2     // Catch:{ all -> 0x0037 }
            long r4 = r2.msgId     // Catch:{ all -> 0x0037 }
            int r4 = (r4 > r14 ? 1 : (r4 == r14 ? 0 : -1))
            if (r4 != 0) goto L_0x0007
            r0 = r19
            r2.localPath = r0     // Catch:{ all -> 0x0037 }
        L_0x001d:
            monitor-exit(r13)
            return
        L_0x001f:
            java.util.LinkedList<com.xiaomi.channel.common.audio.AudioTalkMediaPlayer$PlayPair> r2 = r13.mPlayList     // Catch:{ all -> 0x0037 }
            com.xiaomi.channel.common.audio.AudioTalkMediaPlayer$PlayPair r3 = new com.xiaomi.channel.common.audio.AudioTalkMediaPlayer$PlayPair     // Catch:{ all -> 0x0037 }
            r4 = r14
            r6 = r16
            r8 = r18
            r9 = r19
            r10 = r20
            r11 = r21
            r12 = r22
            r3.<init>(r4, r6, r8, r9, r10, r11, r12)     // Catch:{ all -> 0x0037 }
            r2.add(r3)     // Catch:{ all -> 0x0037 }
            goto L_0x001d
        L_0x0037:
            r2 = move-exception
            monitor-exit(r13)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.channel.common.audio.AudioTalkMediaPlayer.addToPlayList(long, long, int, java.lang.String, java.lang.String, com.xiaomi.channel.common.audio.MediaPlayerObserver, boolean):void");
    }

    public synchronized void removeFromPlayList(long j) {
        this.mPlayList.remove(new PlayPair(j, 0, 100, null, null, null, false));
    }

    public synchronized boolean hasNext() {
        return !this.mPlayList.isEmpty();
    }

    public synchronized void playNext(int i, boolean z, String str) {
        if (!this.paused) {
            final PlayPair playPair = (PlayPair) this.mPlayList.peek();
            if (playPair.localPath != null) {
                final PlayPair playPair2 = (PlayPair) this.mPlayList.poll();
                AnonymousClass1 r7 = new MediaPlayerObserver(null) {
                    public void update(Observable observable, Object obj) {
                        if (obj instanceof PlayerStatus) {
                            PlayerStatus playerStatus = (PlayerStatus) obj;
                            if (playPair2.mObserver != null) {
                                playPair2.mObserver.update(observable, playerStatus);
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
                    if (str != null) {
                        this.mPlayCache = str;
                    } else if (this.mPlayCache == null) {
                        initPlayCache();
                    }
                    if (this.mPlayCache != null) {
                        this.mAudioPlayer = new XMAudioPlayer(this.mContext, playPair2.localPath, this.mPlayCache, r7, i, true, playPair2.msgId, z);
                        ClientLog.d(this.LOG_TAG, "stream mode=" + i);
                        this.mAudioPlayer.start();
                    }
                } else if (!z) {
                    ClientLog.e("play_error", "不需要转化！！！！！");
                } else {
                    SingletonMediaPlayer.instance().localPlay(this.mContext, playPair2.localPath, (Observer) r7, playPair2.msgId);
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
        if (isPlaying(str)) {
            return this.mCurrentPlayStatus;
        }
        return new PlayerStatus(3);
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
}
