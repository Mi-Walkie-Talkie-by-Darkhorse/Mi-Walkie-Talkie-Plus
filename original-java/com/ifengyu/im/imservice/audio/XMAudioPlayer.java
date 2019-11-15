package com.ifengyu.im.imservice.audio;

import android.annotation.SuppressLint;
import android.content.Context;
import android.media.AudioManager;
import android.media.AudioManager.OnAudioFocusChangeListener;
import android.media.AudioTrack;
import android.text.TextUtils;
import com.mi.milinkforgame.sdk.client.ClientLog;
import com.xiaomi.channel.common.audio.AudioCodec;
import com.xiaomi.channel.common.audio.MediaPlayerObserver;
import com.xiaomi.channel.common.audio.PlayerObservable;
import com.xiaomi.channel.common.audio.PlayerStatus;
import java.io.File;

public class XMAudioPlayer extends Thread {
    public static final String PREF_KEY_PLAY_MODE = "play_mode";
    private static final String TAG = XMAudioPlayer.class.getSimpleName();
    private final AudioCodec mAudioCodec;
    private OnAudioFocusChangeListener mAudioFocusChangeListener;
    private AudioTrack mAudioTrack;
    private Object mAudioTrackerLock;
    private Context mContext;
    private final String mEncodedPath;
    private int mFrameSize;
    private boolean mHasPendingSeekProgress;
    private int mMode;
    private PlayerObservable mObservable;
    private boolean mPausePlay;
    private Object mPlayLock;
    private long mReadCount;
    private int mSampleRate;
    private int mSeekProgress;
    private boolean mStopPlay;
    private final String mTempFile;
    private final long mUniqueId;

    public XMAudioPlayer(Context context, String str, String str2, MediaPlayerObserver mediaPlayerObserver, int i) {
        this(context, str, str2, mediaPlayerObserver, i, true, 0);
    }

    public XMAudioPlayer(Context context, String str, String str2, MediaPlayerObserver mediaPlayerObserver, int i, boolean z) {
        this(context, str, str2, mediaPlayerObserver, i, z, 0);
    }

    public XMAudioPlayer(Context context, String str, String str2, MediaPlayerObserver mediaPlayerObserver, int i, boolean z, long j) {
        this.mStopPlay = false;
        this.mPausePlay = false;
        this.mReadCount = 0;
        this.mHasPendingSeekProgress = false;
        this.mSeekProgress = 0;
        this.mPlayLock = new Object();
        this.mAudioTrackerLock = new Object();
        this.mEncodedPath = str;
        this.mTempFile = str2;
        this.mAudioCodec = new AudioCodec();
        this.mObservable = new PlayerObservable();
        this.mObservable.addObserver(mediaPlayerObserver);
        this.mContext = context;
        this.mMode = i;
        this.mUniqueId = j;
    }

    public void run() {
        if (!AudioCodec.sInitialized) {
            sendPlayStatusMessage(0);
            File file = new File(this.mContext.getFilesDir().getParentFile(), "lib");
            if (!file.isDirectory()) {
                file.mkdir();
            }
            releaseAudioTrack();
        } else {
            sendPlayStatusMessage(1);
            play();
        }
        this.mObservable.deleteObservers();
    }

    public void resumePlay() {
        Object obj = this.mPlayLock;
        synchronized (this.mPlayLock) {
            this.mPausePlay = false;
            this.mPlayLock.notify();
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:56:0x0161, code lost:
        flushAudioTrack();
        stopAudioTrack();
        sendPlayStatusMessage(3);
        setStopped();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:57:0x0170, code lost:
        if (r5 == null) goto L_0x0175;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:59:?, code lost:
        r5.close();
     */
    /* JADX WARNING: Removed duplicated region for block: B:79:0x01ba A[SYNTHETIC, Splitter:B:79:0x01ba] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void play() {
        /*
            r18 = this;
            long r2 = java.lang.System.currentTimeMillis()
            r4 = 5
            r0 = r18
            r0.sendPlayStatusMessage(r4)
            r0 = r18
            com.xiaomi.channel.common.audio.AudioCodec r4 = r0.mAudioCodec
            r0 = r18
            java.lang.String r5 = r0.mEncodedPath
            r0 = r18
            java.lang.String r6 = r0.mTempFile
            int r6 = r4.decode(r5, r6)
            int r4 = com.xiaomi.channel.common.audio.AudioCodec.DECODE_RESULT_FAILED
            if (r4 != r6) goto L_0x0025
            r2 = 0
            r0 = r18
            r0.sendPlayStatusMessage(r2)
        L_0x0024:
            return
        L_0x0025:
            boolean r4 = r18.requestAudioFocus()
            if (r4 != 0) goto L_0x0032
            r2 = 0
            r0 = r18
            r0.sendPlayStatusMessage(r2)
            goto L_0x0024
        L_0x0032:
            int r7 = com.xiaomi.channel.common.audio.XMAudioRecorder.getFrameSize(r6)
            r0 = r18
            int r4 = r0.mMode
            r0 = r18
            r0.init(r6, r7, r4)
            r0 = r18
            android.media.AudioTrack r4 = r0.mAudioTrack
            int r4 = r4.getState()
            r5 = 1
            if (r4 == r5) goto L_0x0057
            r2 = 0
            r0 = r18
            r0.sendPlayStatusMessage(r2)
            r18.releaseAudioTrack()
            r18.abandonAudioFocus()
            goto L_0x0024
        L_0x0057:
            java.lang.String r4 = TAG
            java.lang.String r5 = "Decode performance: %d"
            r8 = 1
            java.lang.Object[] r8 = new java.lang.Object[r8]
            r9 = 0
            long r10 = java.lang.System.currentTimeMillis()
            long r2 = r10 - r2
            java.lang.Long r2 = java.lang.Long.valueOf(r2)
            r8[r9] = r2
            java.lang.String r2 = java.lang.String.format(r5, r8)
            com.mi.milinkforgame.sdk.client.ClientLog.e(r4, r2)
            r4 = 0
            r2 = 2
            r0 = r18
            r0.sendPlayStatusMessage(r2)     // Catch:{ Exception -> 0x01d2, all -> 0x01b6 }
            r18.startAudioTrack()     // Catch:{ Exception -> 0x01d2, all -> 0x01b6 }
            java.io.File r8 = new java.io.File     // Catch:{ Exception -> 0x01d2, all -> 0x01b6 }
            r0 = r18
            java.lang.String r2 = r0.mTempFile     // Catch:{ Exception -> 0x01d2, all -> 0x01b6 }
            r8.<init>(r2)     // Catch:{ Exception -> 0x01d2, all -> 0x01b6 }
            long r2 = r8.length()     // Catch:{ Exception -> 0x01d2, all -> 0x01b6 }
            int r9 = (int) r2     // Catch:{ Exception -> 0x01d2, all -> 0x01b6 }
            java.io.BufferedInputStream r5 = new java.io.BufferedInputStream     // Catch:{ Exception -> 0x01d2, all -> 0x01b6 }
            java.io.FileInputStream r2 = new java.io.FileInputStream     // Catch:{ Exception -> 0x01d2, all -> 0x01b6 }
            r2.<init>(r8)     // Catch:{ Exception -> 0x01d2, all -> 0x01b6 }
            r5.<init>(r2)     // Catch:{ Exception -> 0x01d2, all -> 0x01b6 }
            int r2 = r7 * 4
            byte[] r10 = new byte[r2]     // Catch:{ Exception -> 0x0131 }
            r3 = 0
            r12 = 0
            r0 = r18
            r0.mReadCount = r12     // Catch:{ Exception -> 0x0131 }
            r2 = 0
        L_0x00a0:
            boolean r4 = r18.isStopped()     // Catch:{ Exception -> 0x0131 }
            if (r4 != 0) goto L_0x0161
            int r4 = r5.read(r10)     // Catch:{ Exception -> 0x0131 }
            if (r4 < 0) goto L_0x0161
            boolean r11 = r18.isPaused()     // Catch:{ Exception -> 0x0131 }
            if (r11 == 0) goto L_0x00e9
            r0 = r18
            java.lang.Object r11 = r0.mPlayLock     // Catch:{ Exception -> 0x0131 }
            r0 = r18
            java.lang.Object r11 = r0.mPlayLock     // Catch:{ Exception -> 0x0131 }
            monitor-enter(r11)     // Catch:{ Exception -> 0x0131 }
            boolean r12 = r18.isPaused()     // Catch:{ all -> 0x012e }
            if (r12 == 0) goto L_0x00d5
            r0 = r18
            android.media.AudioTrack r12 = r0.mAudioTrack     // Catch:{ all -> 0x012e }
            r12.pause()     // Catch:{ all -> 0x012e }
            r12 = 6
            r0 = r18
            r0.sendPlayStatusMessage(r12)     // Catch:{ all -> 0x012e }
            r0 = r18
            java.lang.Object r12 = r0.mPlayLock     // Catch:{ all -> 0x012e }
            r12.wait()     // Catch:{ all -> 0x012e }
        L_0x00d5:
            monitor-exit(r11)     // Catch:{ all -> 0x012e }
            boolean r11 = r18.isStopped()     // Catch:{ Exception -> 0x0131 }
            if (r11 != 0) goto L_0x00e9
            r0 = r18
            android.media.AudioTrack r11 = r0.mAudioTrack     // Catch:{ Exception -> 0x0131 }
            r11.play()     // Catch:{ Exception -> 0x0131 }
            r11 = 7
            r0 = r18
            r0.sendPlayStatusMessage(r11)     // Catch:{ Exception -> 0x0131 }
        L_0x00e9:
            r0 = r18
            boolean r11 = r0.mHasPendingSeekProgress     // Catch:{ Exception -> 0x0131 }
            if (r11 == 0) goto L_0x014e
            long r12 = r8.length()     // Catch:{ Exception -> 0x0131 }
            r0 = r18
            int r3 = r0.mSeekProgress     // Catch:{ Exception -> 0x0131 }
            long r14 = (long) r3     // Catch:{ Exception -> 0x0131 }
            long r12 = r12 * r14
            r14 = 100
            long r12 = r12 / r14
            r5.close()     // Catch:{ Exception -> 0x0131 }
            java.io.BufferedInputStream r4 = new java.io.BufferedInputStream     // Catch:{ Exception -> 0x0131 }
            java.io.FileInputStream r3 = new java.io.FileInputStream     // Catch:{ Exception -> 0x0131 }
            r3.<init>(r8)     // Catch:{ Exception -> 0x0131 }
            r4.<init>(r3)     // Catch:{ Exception -> 0x0131 }
            long r14 = (long) r7
            long r14 = r12 / r14
            long r0 = (long) r7     // Catch:{ Exception -> 0x01d6, all -> 0x01cf }
            r16 = r0
            long r14 = r14 * r16
            r4.skip(r14)     // Catch:{ Exception -> 0x01d6, all -> 0x01cf }
            r3 = 0
            r0 = r18
            r0.mHasPendingSeekProgress = r3     // Catch:{ Exception -> 0x01d6, all -> 0x01cf }
            r3 = 0
            r0 = r18
            r0.mSeekProgress = r3     // Catch:{ Exception -> 0x01d6, all -> 0x01cf }
            int r3 = (int) r12     // Catch:{ Exception -> 0x01d6, all -> 0x01cf }
            long r12 = (long) r3     // Catch:{ Exception -> 0x01d6, all -> 0x01cf }
            r0 = r18
            r0.mReadCount = r12     // Catch:{ Exception -> 0x01d6, all -> 0x01cf }
            r0 = r18
            android.media.AudioTrack r5 = r0.mAudioTrack     // Catch:{ Exception -> 0x01d6, all -> 0x01cf }
            r5.flush()     // Catch:{ Exception -> 0x01d6, all -> 0x01cf }
        L_0x012b:
            r5 = r4
            goto L_0x00a0
        L_0x012e:
            r2 = move-exception
            monitor-exit(r11)     // Catch:{ all -> 0x012e }
            throw r2     // Catch:{ Exception -> 0x0131 }
        L_0x0131:
            r2 = move-exception
        L_0x0132:
            r3 = 0
            r0 = r18
            r0.sendPlayStatusMessage(r3)     // Catch:{ all -> 0x01cd }
            java.lang.String r3 = TAG     // Catch:{ all -> 0x01cd }
            java.lang.String r2 = r2.toString()     // Catch:{ all -> 0x01cd }
            com.mi.milinkforgame.sdk.client.ClientLog.e(r3, r2)     // Catch:{ all -> 0x01cd }
            if (r5 == 0) goto L_0x0146
            r5.close()     // Catch:{ IOException -> 0x01c8 }
        L_0x0146:
            r18.releaseAudioTrack()
            r18.abandonAudioFocus()
            goto L_0x0024
        L_0x014e:
            long r12 = java.lang.System.currentTimeMillis()     // Catch:{ Exception -> 0x0131 }
            r11 = 0
            r0 = r18
            int r11 = r0.writeAudioData(r10, r11, r4)     // Catch:{ Exception -> 0x0131 }
            if (r11 >= 0) goto L_0x017d
            r2 = 0
            r0 = r18
            r0.sendPlayStatusMessage(r2)     // Catch:{ Exception -> 0x0131 }
        L_0x0161:
            r18.flushAudioTrack()     // Catch:{ Exception -> 0x0131 }
            r18.stopAudioTrack()     // Catch:{ Exception -> 0x0131 }
            r2 = 3
            r0 = r18
            r0.sendPlayStatusMessage(r2)     // Catch:{ Exception -> 0x0131 }
            r18.setStopped()     // Catch:{ Exception -> 0x0131 }
            if (r5 == 0) goto L_0x0175
            r5.close()     // Catch:{ IOException -> 0x01c6 }
        L_0x0175:
            r18.releaseAudioTrack()
            r18.abandonAudioFocus()
            goto L_0x0024
        L_0x017d:
            long r14 = java.lang.System.currentTimeMillis()     // Catch:{ Exception -> 0x0131 }
            int r11 = r4 * 1000
            int r16 = r6 * 2
            int r11 = r11 / r16
            long r0 = (long) r11
            r16 = r0
            long r12 = r14 - r12
            long r12 = r16 - r12
            r14 = 5
            int r11 = (r12 > r14 ? 1 : (r12 == r14 ? 0 : -1))
            if (r11 <= 0) goto L_0x019a
            r14 = 5
            long r12 = r12 - r14
            java.lang.Thread.sleep(r12)     // Catch:{ InterruptedException -> 0x01c4 }
        L_0x019a:
            int r3 = r3 + r4
            long r12 = (long) r3
            r0 = r18
            r0.mReadCount = r12     // Catch:{ Exception -> 0x0131 }
            int r2 = r2 + 1
            r4 = r2 & 3
            r11 = 1
            if (r4 != r11) goto L_0x01b3
            r0 = r18
            boolean r4 = r0.mHasPendingSeekProgress     // Catch:{ Exception -> 0x0131 }
            if (r4 != 0) goto L_0x01b3
            r4 = 4
            r0 = r18
            r0.sendPlayStatusMessage(r4, r9, r3)     // Catch:{ Exception -> 0x0131 }
        L_0x01b3:
            r4 = r5
            goto L_0x012b
        L_0x01b6:
            r2 = move-exception
            r5 = r4
        L_0x01b8:
            if (r5 == 0) goto L_0x01bd
            r5.close()     // Catch:{ IOException -> 0x01cb }
        L_0x01bd:
            r18.releaseAudioTrack()
            r18.abandonAudioFocus()
            throw r2
        L_0x01c4:
            r11 = move-exception
            goto L_0x019a
        L_0x01c6:
            r2 = move-exception
            goto L_0x0175
        L_0x01c8:
            r2 = move-exception
            goto L_0x0146
        L_0x01cb:
            r3 = move-exception
            goto L_0x01bd
        L_0x01cd:
            r2 = move-exception
            goto L_0x01b8
        L_0x01cf:
            r2 = move-exception
            r5 = r4
            goto L_0x01b8
        L_0x01d2:
            r2 = move-exception
            r5 = r4
            goto L_0x0132
        L_0x01d6:
            r2 = move-exception
            r5 = r4
            goto L_0x0132
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ifengyu.im.imservice.audio.XMAudioPlayer.play():void");
    }

    private void startAudioTrack() {
        Object obj = this.mAudioTrackerLock;
        synchronized (this.mAudioTrackerLock) {
            this.mAudioTrack.play();
        }
    }

    public boolean isPaused() {
        return this.mPausePlay;
    }

    public void seekTo(int i) {
        if (i >= 0 && i <= 100) {
            Object obj = this.mPlayLock;
            synchronized (this.mPlayLock) {
                this.mHasPendingSeekProgress = true;
                this.mSeekProgress = i;
            }
        }
    }

    public void setPaused() {
        Object obj = this.mPlayLock;
        synchronized (this.mPlayLock) {
            this.mPausePlay = true;
        }
    }

    private void flushAudioTrack() {
        Object obj = this.mAudioTrackerLock;
        synchronized (this.mAudioTrackerLock) {
            this.mAudioTrack.flush();
        }
    }

    private void stopAudioTrack() {
        Object obj = this.mAudioTrackerLock;
        synchronized (this.mAudioTrackerLock) {
            this.mAudioTrack.stop();
        }
    }

    private int writeAudioData(byte[] bArr, int i, int i2) {
        int write;
        Object obj = this.mAudioTrackerLock;
        synchronized (this.mAudioTrackerLock) {
            write = this.mAudioTrack.write(bArr, i, i2);
        }
        return write;
    }

    private void init(int i, int i2, int i3) {
        int i4;
        Object obj = this.mAudioTrackerLock;
        synchronized (this.mAudioTrackerLock) {
            this.mSampleRate = i;
            this.mFrameSize = i2;
            int minBufferSize = AudioTrack.getMinBufferSize(i, 4, 2);
            if (minBufferSize < i2 * 4) {
                i4 = i2 * 4;
            } else {
                i4 = minBufferSize;
            }
            this.mMode = i3;
            this.mAudioTrack = new AudioTrack(this.mMode, i, 4, 2, i4 * 2, 1);
            ClientLog.v(TAG, "the play mode is " + this.mAudioTrack.getStreamType() + ", the state is " + this.mAudioTrack.getState());
        }
    }

    public int getCurrentPosition() {
        if (this.mAudioTrack == null || this.mSampleRate <= 0) {
            return 0;
        }
        return (this.mAudioTrack.getPlaybackHeadPosition() / this.mSampleRate) * 1000;
    }

    public void stopPlay() {
        Object obj = this.mPlayLock;
        synchronized (this.mPlayLock) {
            this.mStopPlay = true;
            this.mPlayLock.notify();
        }
    }

    public void setStopped() {
        Object obj = this.mPlayLock;
        synchronized (this.mPlayLock) {
            this.mStopPlay = true;
        }
    }

    public boolean isStopped() {
        boolean z;
        Object obj = this.mPlayLock;
        synchronized (this.mPlayLock) {
            z = this.mStopPlay;
        }
        return z;
    }

    public boolean isPlaying(String str) {
        return isAlive() && TextUtils.equals(str, this.mEncodedPath);
    }

    public boolean isPlaying(String str, long j) {
        return isAlive() && this.mUniqueId == j && TextUtils.equals(str, this.mEncodedPath);
    }

    private void sendPlayStatusMessage(int i) {
        this.mObservable.notifyObservers(new PlayerStatus(i, this.mUniqueId));
    }

    private void sendPlayStatusMessage(int i, int i2, int i3) {
        this.mObservable.notifyObservers(new PlayerStatus(i, i2, i3, this.mUniqueId));
    }

    public void switchMode(int i) {
        Object obj = this.mAudioTrackerLock;
        synchronized (this.mAudioTrackerLock) {
            if (!(this.mMode == i || this.mSampleRate == 0 || this.mFrameSize == 0)) {
                if (this.mAudioTrack != null) {
                    this.mAudioTrack.release();
                }
                init(this.mSampleRate, this.mFrameSize, i);
                if (this.mAudioTrack.getState() == 1) {
                    this.mAudioTrack.play();
                } else {
                    stopPlay();
                }
            }
        }
    }

    public void releaseAudioTrack() {
        Object obj = this.mAudioTrackerLock;
        synchronized (this.mAudioTrackerLock) {
            if (this.mAudioTrack != null) {
                this.mAudioTrack.release();
                this.mAudioTrack = null;
            }
        }
    }

    @SuppressLint({"NewApi"})
    private boolean requestAudioFocus() {
        if (this.mAudioFocusChangeListener != null) {
            return ((AudioManager) this.mContext.getApplicationContext().getSystemService("audio")).requestAudioFocus(this.mAudioFocusChangeListener, 3, 1) == 1;
        }
        return true;
    }

    @SuppressLint({"NewApi"})
    private void abandonAudioFocus() {
        if (this.mAudioFocusChangeListener != null && ((AudioManager) this.mContext.getApplicationContext().getSystemService("audio")).abandonAudioFocus(this.mAudioFocusChangeListener) == 0) {
            ClientLog.e(TAG, "failed to abandon audio focus in KMusicActivity");
        }
    }
}
