package io.agora.rtc;

/* compiled from: IRtcEngineEventHandler */
public abstract class a {

    /* renamed from: io.agora.rtc.a$a reason: collision with other inner class name */
    /* compiled from: IRtcEngineEventHandler */
    public static class C0078a {
        public int a;
        public int b;
    }

    /* compiled from: IRtcEngineEventHandler */
    public static class b {
    }

    /* compiled from: IRtcEngineEventHandler */
    public static class c {
    }

    /* compiled from: IRtcEngineEventHandler */
    public static class d {
        public int a;
        public int b;
        public int c;
    }

    public void onJoinChannelSuccess(String str, int i, int i2) {
    }

    public void onRejoinChannelSuccess(String str, int i, int i2) {
    }

    public void onWarning(int i) {
    }

    public void onError(int i) {
    }

    public void onApiCallExecuted(String str, int i) {
    }

    public void onCameraReady() {
    }

    public void onVideoStopped() {
    }

    public void onAudioQuality(int i, int i2, short s, short s2) {
    }

    public void onLeaveChannel(d dVar) {
    }

    public void onRtcStats(d dVar) {
    }

    public void onAudioVolumeIndication(C0078a[] aVarArr, int i) {
    }

    public void onNetworkQuality(int i, int i2, int i3) {
    }

    public void onLastmileQuality(int i) {
    }

    public void onUserJoined(int i, int i2) {
    }

    public void onUserOffline(int i, int i2) {
    }

    public void onUserMuteAudio(int i, boolean z) {
    }

    public void onUserMuteVideo(int i, boolean z) {
    }

    public void onUserEnableVideo(int i, boolean z) {
    }

    @Deprecated
    public void onLocalVideoStat(int i, int i2) {
    }

    @Deprecated
    public void onRemoteVideoStat(int i, int i2, int i3, int i4) {
    }

    public void onRemoteVideoStats(c cVar) {
    }

    public void onLocalVideoStats(b bVar) {
    }

    public void onFirstRemoteVideoFrame(int i, int i2, int i3, int i4) {
    }

    public void onFirstLocalVideoFrame(int i, int i2, int i3) {
    }

    public void onFirstRemoteVideoDecoded(int i, int i2, int i3, int i4) {
    }

    public void onVideoSizeChanged(int i, int i2, int i3, int i4) {
    }

    public void onConnectionLost() {
    }

    public void onConnectionInterrupted() {
    }

    public void onRefreshRecordingServiceStatus(int i) {
    }

    public void onStreamMessage(int i, int i2, byte[] bArr) {
    }

    public void onStreamMessageError(int i, int i2, int i3, int i4, int i5) {
    }

    public void onMediaEngineLoadSuccess() {
    }

    public void onMediaEngineStartCallSuccess() {
    }

    public void onAudioMixingFinished() {
    }

    public void onRequestChannelKey() {
    }

    public void onAudioRouteChanged(int i) {
    }

    public void onFirstLocalAudioFrame(int i) {
    }

    public void onFirstRemoteAudioFrame(int i, int i2) {
    }

    public void onActiveSpeaker(int i) {
    }

    public void onAudioEffectFinished(int i) {
    }

    public void onClientRoleChanged(int i, int i2) {
    }
}
