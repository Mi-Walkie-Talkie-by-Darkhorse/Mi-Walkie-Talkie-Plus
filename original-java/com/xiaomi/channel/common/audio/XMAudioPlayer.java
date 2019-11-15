package com.xiaomi.channel.common.audio;

import android.annotation.SuppressLint;
import android.content.Context;
import android.media.AudioManager;
import android.media.AudioManager.OnAudioFocusChangeListener;
import android.media.AudioTrack;
import android.text.TextUtils;
import com.mi.milinkforgame.sdk.client.ClientLog;
import java.io.File;

public class XMAudioPlayer extends Thread {
    public static final String PREF_KEY_PLAY_MODE = "play_mode";
    private static final String TAG = XMAudioPlayer.class.getSimpleName();
    private boolean isPlay;
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
        this(context, str, str2, mediaPlayerObserver, i, true, 0, true);
    }

    public XMAudioPlayer(Context context, String str, String str2, MediaPlayerObserver mediaPlayerObserver, int i, boolean z) {
        this(context, str, str2, mediaPlayerObserver, i, z, 0, true);
    }

    public XMAudioPlayer(Context context, String str, String str2, MediaPlayerObserver mediaPlayerObserver, int i, boolean z, long j, boolean z2) {
        this.mStopPlay = false;
        this.mPausePlay = false;
        this.mReadCount = 0;
        this.mHasPendingSeekProgress = false;
        this.mSeekProgress = 0;
        this.isPlay = true;
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
        this.isPlay = z2;
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
        synchronized (this.mPlayLock) {
            this.mPausePlay = false;
            this.mPlayLock.notify();
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:70:0x01ce, code lost:
        flushAudioTrack();
        stopAudioTrack();
        sendPlayStatusMessage(3);
        setStopped();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:71:0x01dd, code lost:
        if (r3 == null) goto L_0x01e2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:73:?, code lost:
        r3.close();
     */
    /* JADX WARNING: Removed duplicated region for block: B:63:0x01b0 A[SYNTHETIC, Splitter:B:63:0x01b0] */
    /* JADX WARNING: Removed duplicated region for block: B:91:0x0225 A[SYNTHETIC, Splitter:B:91:0x0225] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void play() {
        /*
            r19 = this;
            long r4 = java.lang.System.currentTimeMillis()
            r2 = 5
            r0 = r19
            r0.sendPlayStatusMessage(r2)
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.io.File r3 = new java.io.File
            r0 = r19
            java.lang.String r6 = r0.mTempFile
            r3.<init>(r6)
            java.lang.String r3 = r3.getParent()
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r3 = java.io.File.separator
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r3 = "wavCache"
            java.lang.StringBuilder r2 = r2.append(r3)
            long r6 = java.lang.System.currentTimeMillis()
            java.lang.StringBuilder r2 = r2.append(r6)
            java.lang.String r3 = ".pcm"
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r2 = r2.toString()
            java.io.File r3 = new java.io.File
            r3.<init>(r2)
            boolean r6 = r3.exists()
            if (r6 != 0) goto L_0x004c
            r3.createNewFile()     // Catch:{ IOException -> 0x007b }
        L_0x004c:
            r0 = r19
            com.xiaomi.channel.common.audio.AudioCodec r6 = r0.mAudioCodec
            r0 = r19
            java.lang.String r7 = r0.mEncodedPath
            int r6 = r6.decode(r7, r2)
            com.xiaomi.channel.common.audio.WavWriter r7 = new com.xiaomi.channel.common.audio.WavWriter
            int r8 = com.xiaomi.channel.common.audio.AudioCodec.CHANNEL
            short r8 = (short) r8
            int r9 = com.xiaomi.channel.common.audio.AudioCodec.AUDIO_FORMAT
            r7.<init>(r6, r8, r9)
            r0 = r19
            java.lang.String r8 = r0.mTempFile     // Catch:{ Exception -> 0x0080 }
            r7.convertAudioFiles(r2, r8)     // Catch:{ Exception -> 0x0080 }
        L_0x0069:
            r3.delete()
            r0 = r19
            boolean r2 = r0.isPlay
            if (r2 != 0) goto L_0x0085
            r2 = 4
            r3 = 0
            r4 = 0
            r0 = r19
            r0.sendPlayStatusMessage(r2, r3, r4)
        L_0x007a:
            return
        L_0x007b:
            r6 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r6)
            goto L_0x004c
        L_0x0080:
            r2 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r2)
            goto L_0x0069
        L_0x0085:
            int r2 = com.xiaomi.channel.common.audio.AudioCodec.DECODE_RESULT_FAILED
            if (r2 != r6) goto L_0x0090
            r2 = 0
            r0 = r19
            r0.sendPlayStatusMessage(r2)
            goto L_0x007a
        L_0x0090:
            boolean r2 = r19.requestAudioFocus()
            if (r2 != 0) goto L_0x009d
            r2 = 0
            r0 = r19
            r0.sendPlayStatusMessage(r2)
            goto L_0x007a
        L_0x009d:
            int r7 = com.xiaomi.channel.common.audio.XMAudioRecorder.getFrameSize(r6)
            r0 = r19
            int r2 = r0.mMode
            r0 = r19
            r0.init(r6, r7, r2)
            r0 = r19
            android.media.AudioTrack r2 = r0.mAudioTrack
            int r2 = r2.getState()
            r3 = 1
            if (r2 == r3) goto L_0x00c2
            r2 = 0
            r0 = r19
            r0.sendPlayStatusMessage(r2)
            r19.releaseAudioTrack()
            r19.abandonAudioFocus()
            goto L_0x007a
        L_0x00c2:
            java.lang.String r2 = TAG
            java.lang.String r3 = "Decode performance: %d"
            r8 = 1
            java.lang.Object[] r8 = new java.lang.Object[r8]
            r9 = 0
            long r10 = java.lang.System.currentTimeMillis()
            long r4 = r10 - r4
            java.lang.Long r4 = java.lang.Long.valueOf(r4)
            r8[r9] = r4
            java.lang.String r3 = java.lang.String.format(r3, r8)
            com.mi.milinkforgame.sdk.client.ClientLog.e(r2, r3)
            r4 = 0
            r2 = 2
            r0 = r19
            r0.sendPlayStatusMessage(r2)     // Catch:{ Exception -> 0x023e, all -> 0x0238 }
            r19.startAudioTrack()     // Catch:{ Exception -> 0x023e, all -> 0x0238 }
            java.io.File r5 = new java.io.File     // Catch:{ Exception -> 0x023e, all -> 0x0238 }
            r0 = r19
            java.lang.String r2 = r0.mTempFile     // Catch:{ Exception -> 0x023e, all -> 0x0238 }
            r5.<init>(r2)     // Catch:{ Exception -> 0x023e, all -> 0x0238 }
            long r2 = r5.length()     // Catch:{ Exception -> 0x023e, all -> 0x0238 }
            int r8 = (int) r2     // Catch:{ Exception -> 0x023e, all -> 0x0238 }
            java.io.BufferedInputStream r3 = new java.io.BufferedInputStream     // Catch:{ Exception -> 0x023e, all -> 0x0238 }
            java.io.FileInputStream r2 = new java.io.FileInputStream     // Catch:{ Exception -> 0x023e, all -> 0x0238 }
            r2.<init>(r5)     // Catch:{ Exception -> 0x023e, all -> 0x0238 }
            r3.<init>(r2)     // Catch:{ Exception -> 0x023e, all -> 0x0238 }
            r10 = 44
            r3.skip(r10)     // Catch:{ Exception -> 0x019e }
            int r2 = r7 * 4
            byte[] r9 = new byte[r2]     // Catch:{ Exception -> 0x019e }
            r4 = 0
            r10 = 0
            r0 = r19
            r0.mReadCount = r10     // Catch:{ Exception -> 0x019e }
            r2 = 0
        L_0x0110:
            boolean r10 = r19.isStopped()     // Catch:{ Exception -> 0x019e }
            if (r10 != 0) goto L_0x01ce
            int r10 = r3.read(r9)     // Catch:{ Exception -> 0x019e }
            if (r10 < 0) goto L_0x01ce
            boolean r11 = r19.isPaused()     // Catch:{ Exception -> 0x019e }
            if (r11 == 0) goto L_0x0155
            r0 = r19
            java.lang.Object r11 = r0.mPlayLock     // Catch:{ Exception -> 0x019e }
            monitor-enter(r11)     // Catch:{ Exception -> 0x019e }
            boolean r12 = r19.isPaused()     // Catch:{ all -> 0x019b }
            if (r12 == 0) goto L_0x0141
            r0 = r19
            android.media.AudioTrack r12 = r0.mAudioTrack     // Catch:{ all -> 0x019b }
            r12.pause()     // Catch:{ all -> 0x019b }
            r12 = 6
            r0 = r19
            r0.sendPlayStatusMessage(r12)     // Catch:{ all -> 0x019b }
            r0 = r19
            java.lang.Object r12 = r0.mPlayLock     // Catch:{ all -> 0x019b }
            r12.wait()     // Catch:{ all -> 0x019b }
        L_0x0141:
            monitor-exit(r11)     // Catch:{ all -> 0x019b }
            boolean r11 = r19.isStopped()     // Catch:{ Exception -> 0x019e }
            if (r11 != 0) goto L_0x0155
            r0 = r19
            android.media.AudioTrack r11 = r0.mAudioTrack     // Catch:{ Exception -> 0x019e }
            r11.play()     // Catch:{ Exception -> 0x019e }
            r11 = 7
            r0 = r19
            r0.sendPlayStatusMessage(r11)     // Catch:{ Exception -> 0x019e }
        L_0x0155:
            r0 = r19
            boolean r11 = r0.mHasPendingSeekProgress     // Catch:{ Exception -> 0x019e }
            if (r11 == 0) goto L_0x01bb
            long r10 = r5.length()     // Catch:{ Exception -> 0x019e }
            r0 = r19
            int r4 = r0.mSeekProgress     // Catch:{ Exception -> 0x019e }
            long r12 = (long) r4     // Catch:{ Exception -> 0x019e }
            long r10 = r10 * r12
            r12 = 100
            long r10 = r10 / r12
            r3.close()     // Catch:{ Exception -> 0x019e }
            java.io.BufferedInputStream r4 = new java.io.BufferedInputStream     // Catch:{ Exception -> 0x019e }
            java.io.FileInputStream r12 = new java.io.FileInputStream     // Catch:{ Exception -> 0x019e }
            r12.<init>(r5)     // Catch:{ Exception -> 0x019e }
            r4.<init>(r12)     // Catch:{ Exception -> 0x019e }
            long r12 = (long) r7
            long r12 = r10 / r12
            long r14 = (long) r7     // Catch:{ Exception -> 0x0242, all -> 0x023b }
            long r12 = r12 * r14
            r4.skip(r12)     // Catch:{ Exception -> 0x0242, all -> 0x023b }
            r3 = 0
            r0 = r19
            r0.mHasPendingSeekProgress = r3     // Catch:{ Exception -> 0x0242, all -> 0x023b }
            r3 = 0
            r0 = r19
            r0.mSeekProgress = r3     // Catch:{ Exception -> 0x0242, all -> 0x023b }
            int r3 = (int) r10     // Catch:{ Exception -> 0x0242, all -> 0x023b }
            long r10 = (long) r3     // Catch:{ Exception -> 0x0242, all -> 0x023b }
            r0 = r19
            r0.mReadCount = r10     // Catch:{ Exception -> 0x0242, all -> 0x023b }
            r0 = r19
            android.media.AudioTrack r10 = r0.mAudioTrack     // Catch:{ Exception -> 0x0242, all -> 0x023b }
            r10.flush()     // Catch:{ Exception -> 0x0242, all -> 0x023b }
            r18 = r3
            r3 = r4
            r4 = r18
            goto L_0x0110
        L_0x019b:
            r2 = move-exception
            monitor-exit(r11)     // Catch:{ all -> 0x019b }
            throw r2     // Catch:{ Exception -> 0x019e }
        L_0x019e:
            r2 = move-exception
        L_0x019f:
            r4 = 0
            r0 = r19
            r0.sendPlayStatusMessage(r4)     // Catch:{ all -> 0x0222 }
            java.lang.String r4 = TAG     // Catch:{ all -> 0x0222 }
            java.lang.String r2 = r2.toString()     // Catch:{ all -> 0x0222 }
            com.mi.milinkforgame.sdk.client.ClientLog.e(r4, r2)     // Catch:{ all -> 0x0222 }
            if (r3 == 0) goto L_0x01b3
            r3.close()     // Catch:{ IOException -> 0x0233 }
        L_0x01b3:
            r19.releaseAudioTrack()
            r19.abandonAudioFocus()
            goto L_0x007a
        L_0x01bb:
            long r12 = java.lang.System.currentTimeMillis()     // Catch:{ Exception -> 0x019e }
            r11 = 0
            r0 = r19
            int r11 = r0.writeAudioData(r9, r11, r10)     // Catch:{ Exception -> 0x019e }
            if (r11 >= 0) goto L_0x01ea
            r2 = 0
            r0 = r19
            r0.sendPlayStatusMessage(r2)     // Catch:{ Exception -> 0x019e }
        L_0x01ce:
            r19.flushAudioTrack()     // Catch:{ Exception -> 0x019e }
            r19.stopAudioTrack()     // Catch:{ Exception -> 0x019e }
            r2 = 3
            r0 = r19
            r0.sendPlayStatusMessage(r2)     // Catch:{ Exception -> 0x019e }
            r19.setStopped()     // Catch:{ Exception -> 0x019e }
            if (r3 == 0) goto L_0x01e2
            r3.close()     // Catch:{ IOException -> 0x0231 }
        L_0x01e2:
            r19.releaseAudioTrack()
            r19.abandonAudioFocus()
            goto L_0x007a
        L_0x01ea:
            long r14 = java.lang.System.currentTimeMillis()     // Catch:{ Exception -> 0x019e }
            int r11 = r10 * 1000
            int r16 = r6 * 2
            int r11 = r11 / r16
            long r0 = (long) r11
            r16 = r0
            long r12 = r14 - r12
            long r12 = r16 - r12
            r14 = 5
            int r11 = (r12 > r14 ? 1 : (r12 == r14 ? 0 : -1))
            if (r11 <= 0) goto L_0x0207
            r14 = 5
            long r12 = r12 - r14
            java.lang.Thread.sleep(r12)     // Catch:{ InterruptedException -> 0x022f }
        L_0x0207:
            int r4 = r4 + r10
            long r10 = (long) r4
            r0 = r19
            r0.mReadCount = r10     // Catch:{ Exception -> 0x019e }
            int r2 = r2 + 1
            r10 = r2 & 3
            r11 = 1
            if (r10 != r11) goto L_0x0110
            r0 = r19
            boolean r10 = r0.mHasPendingSeekProgress     // Catch:{ Exception -> 0x019e }
            if (r10 != 0) goto L_0x0110
            r10 = 4
            r0 = r19
            r0.sendPlayStatusMessage(r10, r8, r4)     // Catch:{ Exception -> 0x019e }
            goto L_0x0110
        L_0x0222:
            r2 = move-exception
        L_0x0223:
            if (r3 == 0) goto L_0x0228
            r3.close()     // Catch:{ IOException -> 0x0236 }
        L_0x0228:
            r19.releaseAudioTrack()
            r19.abandonAudioFocus()
            throw r2
        L_0x022f:
            r11 = move-exception
            goto L_0x0207
        L_0x0231:
            r2 = move-exception
            goto L_0x01e2
        L_0x0233:
            r2 = move-exception
            goto L_0x01b3
        L_0x0236:
            r3 = move-exception
            goto L_0x0228
        L_0x0238:
            r2 = move-exception
            r3 = r4
            goto L_0x0223
        L_0x023b:
            r2 = move-exception
            r3 = r4
            goto L_0x0223
        L_0x023e:
            r2 = move-exception
            r3 = r4
            goto L_0x019f
        L_0x0242:
            r2 = move-exception
            r3 = r4
            goto L_0x019f
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.channel.common.audio.XMAudioPlayer.play():void");
    }

    private void startAudioTrack() {
        synchronized (this.mAudioTrackerLock) {
            this.mAudioTrack.play();
        }
    }

    public boolean isPaused() {
        return this.mPausePlay;
    }

    public void seekTo(int i) {
        if (i >= 0 && i <= 100) {
            synchronized (this.mPlayLock) {
                this.mHasPendingSeekProgress = true;
                this.mSeekProgress = i;
            }
        }
    }

    public void setPaused() {
        synchronized (this.mPlayLock) {
            this.mPausePlay = true;
        }
    }

    private void flushAudioTrack() {
        synchronized (this.mAudioTrackerLock) {
            this.mAudioTrack.flush();
        }
    }

    private void stopAudioTrack() {
        synchronized (this.mAudioTrackerLock) {
            this.mAudioTrack.stop();
        }
    }

    private int writeAudioData(byte[] bArr, int i, int i2) {
        int write;
        synchronized (this.mAudioTrackerLock) {
            write = this.mAudioTrack.write(bArr, i, i2);
        }
        return write;
    }

    private void init(int i, int i2, int i3) {
        int i4;
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

    public void stopPlay() {
        synchronized (this.mPlayLock) {
            this.mStopPlay = true;
            this.mPlayLock.notify();
        }
    }

    public void setStopped() {
        synchronized (this.mPlayLock) {
            this.mStopPlay = true;
        }
    }

    public boolean isStopped() {
        boolean z;
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
        synchronized (this.mAudioTrackerLock) {
            if (this.mAudioTrack != null) {
                this.mAudioTrack.release();
                this.mAudioTrack = null;
            }
        }
    }

    @SuppressLint({"NewApi"})
    private boolean requestAudioFocus() {
        if (this.mAudioFocusChangeListener == null) {
            return true;
        }
        if (((AudioManager) this.mContext.getApplicationContext().getSystemService("audio")).requestAudioFocus(this.mAudioFocusChangeListener, 3, 1) == 1) {
            return true;
        }
        return false;
    }

    @SuppressLint({"NewApi"})
    private void abandonAudioFocus() {
        if (this.mAudioFocusChangeListener != null && ((AudioManager) this.mContext.getApplicationContext().getSystemService("audio")).abandonAudioFocus(this.mAudioFocusChangeListener) == 0) {
            ClientLog.e(TAG, "failed to abandon audio focus in KMusicActivity");
        }
    }
}
