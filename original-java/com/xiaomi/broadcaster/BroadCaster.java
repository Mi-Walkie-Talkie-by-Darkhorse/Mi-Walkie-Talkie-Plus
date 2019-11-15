package com.xiaomi.broadcaster;

import android.content.Context;
import android.util.Log;
import com.xiaomi.broadcaster.callback.BroadcastCallback;
import com.xiaomi.broadcaster.dataStruct.ConnectedServerInfo;
import com.xiaomi.broadcaster.dataStruct.RtmpServerInfo;
import com.xiaomi.broadcaster.dataStruct.VideoSize;
import com.xiaomi.broadcaster.enums.VCNetworkQuality;
import com.xiaomi.broadcaster.enums.VCSessionErrType;
import com.xiaomi.broadcaster.enums.VCSessionState;

public class BroadCaster {
    private static String TAG = "BroadCast";
    private BroadcastCallback cc = null;
    private long vcSession = 0;

    private native boolean addExternalAudioSourceOberverJni(long j, long j2);

    private native void addExternalAudioStreamJni(long j, boolean z, int i, int i2);

    private native boolean addExternalVideoSourceOberverJni(long j, long j2);

    private native void addExternalVideoStreamJni(long j, float f, float f2, float f3, float f4, float f5, float f6, int i);

    private native void addRecordingSessionJni(long j);

    private native int audioChannelCountJni();

    private native float audioSampleRateJni();

    private native int bitrateJni();

    private native long constructSessionJni(Context context, int i, int i2, int i3, int i4, int i5, int i6, long j, boolean z, long j2);

    private native String debugReportJni();

    private native void destructSessionJni();

    private native void endRtmpSessionJni();

    private native void forceToUseHardWareCodecJni(boolean z);

    private native int fpsJni();

    private native ConnectedServerInfo getConnectedServerInfoJni();

    private native float getIPAudioSourceVolumeJni(long j, boolean z);

    private native long getIPCameraAudioSourceOberverJni();

    private native long getIPCameraVideoSourceOberverJni();

    private native String getRemoteIPJni();

    private native long getTimestampOfCurrentVideoFrameJni();

    private native float micGainJni();

    private native boolean mirrorModeJni();

    private native void muteBroadcastMicrophoneJni();

    private native void muteExtraAppAudioStreamJni();

    private native void muteIPAudioSourceJni(long j, boolean z);

    private native void pushExtraAudioFrameJni(int i, int i2, int i3, int i4, byte[] bArr, long j);

    private native void pushExtraAudioFrameWithTimestampJni(int i, int i2, int i3, int i4, byte[] bArr, long j, long j2);

    private native void pushExtraYUVFrameJni(int i, int i2, byte[] bArr, int i3, int i4, int i5, long j);

    private native void pushExtraYUVFrameWithTimestampJni(int i, int i2, byte[] bArr, int i3, int i4, int i5, long j, long j2);

    private native void removeExternalAudioSourceOberverJni(long j);

    private native void removeExternalAudioStreamJni(long j);

    private native void removeExternalVideoSourceOberverJni(long j);

    private native void removeExternalVideoStreamJni(long j);

    private native void removeRecordingSessionJni(long j);

    private native int rtmpSessionStateJni();

    private native void setAppRotationJni(int i);

    private native void setAudioChannelCountJni(int i);

    private native void setAudioSampleRateJni(float f);

    private native void setClientPublicIpJni(String str);

    private native void setExtraAudioAsMainStreamJni();

    private native void setFpsJni(int i);

    private native void setIPAudioSourceVolumeJni(long j, float f, boolean z);

    private native void setMirrorModeJni(boolean z);

    private native void setMixModeJni(int i, float f, float f2, float f3, float f4);

    private native void setUpOutputFrameResolutionJni(int i, int i2);

    private native void setUseAdaptiveBitrateJni(boolean z);

    private native void setVideoMainStreamJni(long j, boolean z);

    private native void setVideoMaxBitrateJni(int i);

    private native void setVideoMinBitrateJni(int i);

    private native void startPreviewJni();

    private native boolean startRtmpServerJni(int i, String str);

    private native void startRtmpSessionWithURLExJni(RtmpServerInfo[] rtmpServerInfoArr);

    private native void startRtmpSessionWithURLJni(String str, String[] strArr);

    private native void startShareScreenJni();

    private native void stopPreviewJni();

    private native long stopRtmpServerJni();

    private native void stopShareScreenJni();

    private native boolean takePictureJni(String str);

    private native void unMuteBroadcastMicrophoneJni();

    private native void unmuteExtraAppAudioStreamJni();

    private native void unmuteIPAudioSourceJni(long j, boolean z);

    private native boolean useAdaptiveBitrateJni();

    private native void useVbrModeJni(boolean z);

    private native String versionJni();

    private native VideoSize videoSizeJni();

    public void constructSession(Context context, BroadcastCallback broadcastCallback, int i, int i2, int i3, int i4, int i5, int i6, long j, boolean z, long j2) {
        Log.d(TAG, "constructSession enter");
        this.cc = broadcastCallback;
        this.vcSession = constructSessionJni(context, i, i2, i3, i4, i5, i6, j, z, j2);
    }

    public void destructSession() {
        Log.d(TAG, "destructSession enter");
        destructSessionJni();
        this.cc = null;
        this.vcSession = 0;
    }

    public void startRtmpSessionWithURL(String str, String[] strArr) {
        Log.d(TAG, "startRtmpSessionWithURL enter");
        startRtmpSessionWithURLJni(str, strArr);
        Log.d(TAG, "startRtmpSessionWithURL leave");
    }

    public void startRtmpSessionWithURLEx(RtmpServerInfo[] rtmpServerInfoArr) {
        Log.d(TAG, "startRtmpSessionWithURLEx enter");
        startRtmpSessionWithURLExJni(rtmpServerInfoArr);
        Log.d(TAG, "startRtmpSessionWithURLEx leave");
    }

    public void setClientPublicIp(String str) {
        Log.d(TAG, "setClientIpJni enter");
        setClientPublicIpJni(str);
        Log.d(TAG, "setClientIpJni leave");
    }

    public void endRtmpSession() {
        Log.d(TAG, "endRtmpSession enter");
        endRtmpSessionJni();
        Log.d(TAG, "endRtmpSession leave");
    }

    public void startPreview() {
        Log.d(TAG, "startPreview enter");
        startPreviewJni();
        Log.d(TAG, "startPreview leave");
    }

    public void stopPreview() {
        Log.d(TAG, "stoptPreview enter");
        stopPreviewJni();
        Log.d(TAG, "stoptPreview leave");
    }

    public void startShareScreen() {
        Log.d(TAG, "startShareScreen enter");
        startShareScreenJni();
        Log.d(TAG, "startShareScreen leave");
    }

    public void stopShareScreen() {
        Log.d(TAG, "stopShareScreen enter");
        stopShareScreenJni();
        Log.d(TAG, "stopShareScreen leave");
    }

    public void muteBroadcastMicrophone() {
        Log.d(TAG, "muteBroadcastMicrophone enter");
        muteBroadcastMicrophoneJni();
    }

    public void unMuteBroadcastMicrophone() {
        Log.d(TAG, "unMuteBroadcastMicrophone");
        unMuteBroadcastMicrophoneJni();
    }

    public VideoSize videoSize() {
        Log.d(TAG, "VideoSize");
        return videoSizeJni();
    }

    public int bitrate() {
        Log.d(TAG, "bitrate");
        return bitrateJni();
    }

    public int fps() {
        Log.d(TAG, "fps");
        return fpsJni();
    }

    public void setFps(int i) {
        Log.d(TAG, "setFps");
        setFpsJni(i);
    }

    public boolean mirrorMode() {
        Log.d(TAG, "mirrorMode");
        return mirrorModeJni();
    }

    public void setMirrorMode(boolean z) {
        Log.d(TAG, "setMirrorMode");
        setMirrorModeJni(z);
    }

    public void setVideoMaxBitrate(int i) {
        Log.d(TAG, "setVideoMaxBitrate");
        setVideoMaxBitrateJni(i);
    }

    public void setVideoMinBitrate(int i) {
        Log.d(TAG, "setVideoMinBitrate");
        setVideoMinBitrateJni(i);
    }

    public void setAudioChannelCount(int i) {
        Log.d(TAG, "setAudioChannelCount");
        setAudioChannelCountJni(i);
    }

    public int audioChannelCount() {
        Log.d(TAG, "audioChannelCount");
        return audioChannelCountJni();
    }

    public void setAudioSampleRate(float f) {
        Log.d(TAG, "setAudioSampleRate");
        setAudioSampleRateJni(f);
    }

    public float audioSampleRate() {
        Log.d(TAG, "setAudioSampleRate");
        return audioSampleRateJni();
    }

    public float micGain() {
        Log.d(TAG, "micGain");
        return micGainJni();
    }

    public boolean useAdaptiveBitrate() {
        Log.d(TAG, "useAdaptiveBitrate");
        return useAdaptiveBitrateJni();
    }

    public void setUseAdaptiveBitrate(boolean z) {
        Log.d(TAG, "setUseAdaptiveBitrate");
        setUseAdaptiveBitrateJni(z);
    }

    public VCSessionState rtmpSessionState() {
        Log.d(TAG, "rtmpSessionState");
        return VCSessionState.int2enum(rtmpSessionStateJni());
    }

    public String version() {
        Log.d(TAG, "version");
        return versionJni();
    }

    public void addExternalVideoStream(long j, float f, float f2, float f3, float f4, float f5, float f6, int i) {
        Log.d(TAG, "addExternalVideoStream");
        addExternalVideoStreamJni(j, f, f2, f3, f4, f5, f6, i);
    }

    public void removeExternalVideoStream(long j) {
        Log.d(TAG, "removeExternalVideoStream");
        removeExternalVideoStreamJni(j);
    }

    public void setUpOutputFrameResolution(int i, int i2) {
        Log.d(TAG, "setUpOutputFrameResolution");
        setUpOutputFrameResolutionJni(i, i2);
    }

    public void setAppRotation(int i) {
        Log.d(TAG, "setAppRotation");
        setAppRotationJni(i);
    }

    public void setVideoMainStream(long j, boolean z) {
        Log.d(TAG, "setVideoMainStream");
        setVideoMainStreamJni(j, z);
    }

    public void setExtraAudioAsMainStream() {
        Log.d(TAG, "setExtraAudioAsMainStream");
        setExtraAudioAsMainStreamJni();
    }

    public String debugReport() {
        Log.d(TAG, "debugReport");
        return debugReportJni();
    }

    public void pushExtraYUVFrame(int i, int i2, byte[] bArr, int i3, int i4, int i5, long j) {
        Log.d(TAG, "pushExtraYUVFrame");
        pushExtraYUVFrameJni(i, i2, bArr, i3, i4, i5, j);
    }

    public void pushExtraYUVFrameWithTimestamp(int i, int i2, byte[] bArr, int i3, int i4, int i5, long j, long j2) {
        Log.d(TAG, "pushExtraYUVFrameWithTimestamp");
        pushExtraYUVFrameWithTimestampJni(i, i2, bArr, i3, i4, i5, j, j2);
    }

    public void pushExtraAudioFrame(int i, int i2, int i3, int i4, byte[] bArr, long j) {
        Log.d(TAG, "pushExtraAudioFrame");
        pushExtraAudioFrameJni(i, i2, i3, i4, bArr, j);
    }

    public void pushExtraAudioFrameWithTimestamp(int i, int i2, int i3, int i4, byte[] bArr, long j, long j2) {
        Log.d(TAG, "pushExtraAudioFrameWithTimestamp");
        pushExtraAudioFrameWithTimestampJni(i, i2, i3, i4, bArr, j, j2);
    }

    public void addExternalAudioStream(long j, boolean z, int i, int i2) {
        Log.d(TAG, "addExternalAudioStream");
        addExternalAudioStreamJni(j, z, i, i2);
    }

    public void removeExternalAudioStream(long j) {
        Log.d(TAG, "removeExternalAudioStream");
        removeExternalAudioStreamJni(j);
    }

    public void unmuteExtraAppAudioStream() {
        Log.d(TAG, "unmuteExtraAppAudioStream");
        unmuteExtraAppAudioStreamJni();
    }

    public void muteExtraAppAudioStream() {
        Log.d(TAG, "muteExtraAppAudioStream");
        muteExtraAppAudioStreamJni();
    }

    public void muteIPAudioSource(long j, boolean z) {
        Log.d(TAG, "muteIPAudioSourceJni");
        muteIPAudioSourceJni(j, z);
    }

    public void unmuteIPAudioSource(long j, boolean z) {
        Log.d(TAG, "unmuteIPAudioSource");
        unmuteIPAudioSourceJni(j, z);
    }

    public float getIPAudioSourceVolume(long j, boolean z) {
        Log.d(TAG, "getIPAudioSourceVolume");
        return getIPAudioSourceVolumeJni(j, z);
    }

    public void setIPAudioSourceVolume(long j, float f, boolean z) {
        Log.d(TAG, "setIPAudioSourceVolume");
        setIPAudioSourceVolumeJni(j, f, z);
    }

    public long getIPCameraVideoSourceOberver() {
        Log.d(TAG, "getIPCameraVideoSourceOberver");
        return getIPCameraVideoSourceOberverJni();
    }

    public long getIPCameraAudioSourceOberver() {
        Log.d(TAG, "getIPCameraAudioSourceOberver");
        return getIPCameraAudioSourceOberverJni();
    }

    public boolean addExternalAudioSourceOberver(long j, long j2) {
        Log.d(TAG, "addExternalAudioSourceOberver");
        return addExternalAudioSourceOberverJni(j, j2);
    }

    public void removeExternalAudioSourceOberver(long j) {
        Log.d(TAG, "removeExternalVideoSourceOberver");
        removeExternalAudioSourceOberverJni(j);
    }

    public boolean takePicture(String str) {
        Log.d(TAG, "takePictureJni");
        return takePictureJni(str);
    }

    public boolean startRtmpServer(int i, String str) {
        Log.d(TAG, "startRtmpServerJni");
        return startRtmpServerJni(i, str);
    }

    public void stopRtmpServer() {
        Log.d(TAG, "stopRtmpServerJni");
        stopRtmpServerJni();
    }

    public void addRecordingSession(long j) {
        addRecordingSessionJni(j);
    }

    public void removeRecordingSession(long j) {
        removeRecordingSessionJni(j);
    }

    public void onConnectionStatusChanged(int i) {
        Log.d(TAG, "callback:onConnectionStatusChanged");
        this.cc.onConnectionStatusChanged(VCSessionState.int2enum(i));
    }

    public void onDetectedThroughput(float f, int i) {
        Log.d(TAG, "callback:onDetectedThroughput");
        this.cc.onDetectedThroughput(f, i);
    }

    public void onAvgBiteRate(int i) {
        Log.d(TAG, "callback:onAvgBiteRate " + i);
        this.cc.onAvgBiteRate(i);
    }

    public void onVideoDataProcess(byte[] bArr, int i) {
    }

    public void onAudioDataProcess(byte[] bArr, int i) {
    }

    public void onAudioMixedMusicFinished() {
        Log.d(TAG, "callback:onAudioMixedMusicFinished");
        this.cc.onAudioMixedMusicFinished();
    }

    public void onAudioMixedMusicProgress(int i) {
        Log.d(TAG, "callback:onAudioMixedMusicProgress");
        this.cc.onAudioMixedMusicProgress(i);
    }

    public void onNetworkQualityStatus(int i, float f) {
        VCNetworkQuality vCNetworkQuality = VCNetworkQuality.VCNetworkQualityLow;
        if (i < 400000 || f < -0.0f) {
            Log.d(TAG, "current video bitrate is" + i + "and report low network quality to UI");
            this.cc.onNetworkQualityStatus(VCNetworkQuality.VCNetworkQualityLow);
        }
    }

    public void onVCSessionErr(int i) {
        Log.d(TAG, "callback::onVCSessionErr");
        this.cc.onVCSessionErr(VCSessionErrType.int2enum(i));
    }

    public void onTakingPicOk() {
        Log.d(TAG, "callback:onTakingPicOk");
        this.cc.onTakingPicOk();
    }

    public void onTakingPicFailed() {
        Log.d(TAG, "callback:onTakingPicFailed");
        this.cc.onTakingPicFailed();
    }

    public void onStreamPublished(String str) {
        Log.d(TAG, "callback:onStreamPublished:" + str);
        this.cc.onStreamPublished(str);
    }

    public void onStreamClosed(String str) {
        Log.d(TAG, "callback:onStreamClosed:" + str);
        this.cc.onStreamClosed(str);
    }

    public String getRemoteIP() {
        return getRemoteIPJni();
    }

    public void forceToUseHardWareCodec(boolean z) {
        Log.d(TAG, "forceToUseHardWareCodec:" + z);
        forceToUseHardWareCodecJni(z);
    }

    public long getTimestampOfCurrentVideoFrame() {
        return getTimestampOfCurrentVideoFrameJni();
    }

    public ConnectedServerInfo getConnectedServerInfo() {
        return getConnectedServerInfoJni();
    }

    public void useVbrMode(boolean z) {
        Log.d(TAG, "useVbrMode:" + z);
        useVbrModeJni(z);
    }
}
