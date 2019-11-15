package com.xiaomi.player;

import android.util.Log;
import android.view.Surface;
import com.xiaomi.player.callback.PlayerCallback;
import com.xiaomi.player.datastruct.VideoSize;
import com.xiaomi.player.enums.PlayerPlaybackState;
import com.xiaomi.player.enums.PlayerSeekingMode;
import com.xiaomi.player.enums.PlayerWorkingMode;

public class Player {
    private static String TAG = "Player";
    private PlayerCallback pc = null;
    private long playerInst = 0;
    private String url = "";

    public enum SurfaceGravity {
        SurfaceGravityResizeAspect(0),
        SurfaceGravityResizeAspectFit(1),
        SurfaceGravityResizeAspectFill(2);
        
        private int code;

        private SurfaceGravity(int i) {
            this.code = i;
        }

        public int toInt() {
            return this.code;
        }
    }

    private native long GetCurrentStreamPositionJni();

    private native void addRecordingSessionJni(long j);

    private native long bufferTimeMaxJni();

    private static native int cancelCompressingMP4FileJni(String str);

    private static native int compressMP4FileJni(String str, String str2, long j);

    private native long constructPlayerJni(String str, int i, long j);

    private native long currentPlaybackTimeJni();

    private native String debugReportJni();

    private native void destructPlayerJni();

    private native long durationJni();

    private native void enableVideoFilterJni(boolean z);

    private native long getAudioTransferJni();

    private native long getCurrentCachePositionJni();

    private native long getStreamIdJni();

    private native long getTimestampOfCurrentVideoFrameJni();

    private native boolean isPausedJni();

    private native void muteAudioJni();

    private native void pauseJni();

    private native int playbackStateJni();

    private native void redrawJni();

    private native boolean reloadJni(String str, boolean z);

    private native void removeRecordingSessionJni(long j);

    private native boolean resumeJni();

    private native boolean seekToJni(long j, int i);

    private native void setBufferTimeMaxJni(long j);

    private native void setGravityJni(int i, int i2, int i3);

    private native void setIpListJni(String[] strArr);

    private native void setSpeakerJni(boolean z);

    private native boolean setSpeedRatioJni(double d);

    private native void setUserIdandClienIpJni(String str, String str2);

    private native void setVideoFilterIntensityJni(float f);

    private native void setVideoFilterJni(String str);

    private native void setVideoSurfaceJni(Surface surface);

    private native void shiftUpJni(float f);

    private native boolean startJni(String str, String str2, boolean z);

    private native void startRecordingJni();

    private native void stopJni();

    private native void stopRecordingJni();

    private native void unMuteAudioJni();

    private static native String versionJni();

    private native VideoSize videoSizeJni();

    public native boolean editorPlayerSetVolumeExternalMp3Jni(float f);

    public native boolean editorPlayerSetVolumeInnerJni(float f);

    public native boolean editorPlayerStartJni(String str, String str2, long j, long j2);

    public void constructPlayer(String str, PlayerCallback playerCallback, PlayerWorkingMode playerWorkingMode, long j) {
        Log.d(TAG, "constructPlayer");
        this.pc = playerCallback;
        this.playerInst = constructPlayerJni(str, playerWorkingMode.ordinal(), j);
    }

    public void destructPlayer() {
        Log.d(TAG, "destructPlayer");
        setVideoSurface(null);
        destructPlayerJni();
        this.pc = null;
        this.playerInst = 0;
    }

    public void setVideoSurface(Surface surface) {
        setVideoSurfaceJni(surface);
    }

    public boolean start(String str, String str2, boolean z) {
        this.url = str;
        return startJni(this.url, str2, z);
    }

    public boolean reload(String str, boolean z) {
        this.url = str;
        return reloadJni(this.url, z);
    }

    public void stop() {
        stopJni();
    }

    public void pause() {
        pauseJni();
    }

    public void redraw() {
        redrawJni();
    }

    public boolean resume() {
        return resumeJni();
    }

    public boolean isPaused() {
        return isPausedJni();
    }

    public void setSpeaker(boolean z) {
        setSpeakerJni(z);
    }

    public boolean setSpeedRatio(double d) {
        return setSpeedRatioJni(d);
    }

    public void enableVideoFilter(boolean z) {
        enableVideoFilterJni(z);
    }

    public void setVideoFilter(String str) {
        setVideoFilterJni(str);
    }

    public void setVideoFilterIntensity(float f) {
        setVideoFilterIntensityJni(f);
    }

    public boolean seekTo(long j, PlayerSeekingMode playerSeekingMode) {
        return seekToJni(j, playerSeekingMode.ordinal());
    }

    public PlayerPlaybackState playbackState() {
        return PlayerPlaybackState.int2enum(playbackStateJni());
    }

    public long bufferTimeMax() {
        return bufferTimeMaxJni();
    }

    public void setBufferTimeMax(long j) {
        if (j >= 120) {
            setBufferTimeMaxJni(j);
        }
    }

    public long duration() {
        return durationJni();
    }

    public long GetCurrentStreamPosition() {
        return GetCurrentStreamPositionJni();
    }

    public long currentPlaybackTime() {
        return currentPlaybackTimeJni();
    }

    public long getCurrentCachePosition() {
        return getCurrentCachePositionJni();
    }

    public void muteAudio() {
        muteAudioJni();
    }

    public void unMuteAudio() {
        unMuteAudioJni();
    }

    public VideoSize videoSize() {
        return videoSizeJni();
    }

    public static String version() {
        return versionJni();
    }

    public String debugReport() {
        return debugReportJni();
    }

    public static int compressMP4File(String str, String str2, long j) {
        Log.d(TAG, "compress MP4 files");
        return compressMP4FileJni(str, str2, j);
    }

    public static int cancelCompressingMP4File(String str) {
        Log.d(TAG, "cancel compressing MP4 files");
        return cancelCompressingMP4FileJni(str);
    }

    public long getAudioTransfer() {
        Log.d(TAG, "get audio transfer");
        return getAudioTransferJni();
    }

    public long getStreamId() {
        Log.d(TAG, "get stream ID");
        return getStreamIdJni();
    }

    public void setGravity(SurfaceGravity surfaceGravity, int i, int i2) {
        setGravityJni(surfaceGravity.toInt(), i, i2);
    }

    public void shiftUp(float f) {
        shiftUpJni(f);
    }

    public void setIpList(String[] strArr, String[] strArr2) {
        setIpListJni(strArr);
    }

    public void addRecordingSession(long j) {
        addRecordingSessionJni(j);
    }

    public void removeRecordingSession(long j) {
        removeRecordingSessionJni(j);
    }

    public long getTimestampOfCurrentVideoFrame() {
        return getTimestampOfCurrentVideoFrameJni();
    }

    public void setUserIdandClienIp(String str, String str2) {
        setUserIdandClienIpJni(str, str2);
    }

    public void onAudioRenderingStart() {
        Log.d(TAG, "callback:onAudioRenderingStart");
        this.pc.onAudioRenderingStart();
    }

    public void onVideoRenderingStart() {
        Log.d(TAG, "callback:onVideoRenderingStart");
        this.pc.onVideoRenderingStart();
    }

    public void onVideoSizeChanged(int i, int i2) {
        Log.d(TAG, "callback:onVideoSizeChanged");
        VideoSize videoSize = new VideoSize(0.0f, 0.0f);
        videoSize.video_width = (float) i;
        videoSize.video_height = (float) i2;
        this.pc.onVideoSizeChanged(videoSize);
    }

    public void onStartBuffering() {
        Log.d(TAG, "callback:onStartBuffering");
        this.pc.onStartBuffering();
    }

    public void onStartPlaying() {
        Log.d(TAG, "callback:onStartPlaying");
        this.pc.onStartPlaying();
    }

    public void onPlayerStarted() {
        Log.d(TAG, "callback:onPlayerStarted");
        this.pc.onPlayerStarted();
    }

    public void onPlayerStoped() {
        Log.d(TAG, "callback:onPlayerStoped");
        this.pc.onPlayerStoped();
    }

    public void onPlayerPaused() {
        Log.d(TAG, "callback:onPlayerPaused");
        this.pc.onPlayerPaused();
    }

    public void onPlayerResumed() {
        Log.d(TAG, "callback:onPlayerResumed");
        this.pc.onPlayerResumed();
    }

    public void onSeekCompleted() {
        Log.d(TAG, "callback:onSeekCompleted");
        this.pc.onSeekCompleted();
    }

    public void onStreamEOF() {
        Log.d(TAG, "callback:onStreamEOF");
        this.pc.onStreamEOF();
    }

    public void onOpenStreamFailed() {
        Log.d(TAG, "callback:onOpenStreamFailed");
        this.pc.onOpenStreamFailed();
    }

    public boolean editorPlayerStart(String str, String str2, long j, long j2) {
        this.url = str;
        return editorPlayerStartJni(str, str2, j, j2);
    }

    public boolean editorPlayerSetInnerVolume(float f) {
        return editorPlayerSetVolumeInnerJni(f);
    }

    public boolean editorPlayerSetMP3Volume(float f) {
        return editorPlayerSetVolumeExternalMp3Jni(f);
    }
}
