.class public Lcom/xiaomi/broadcaster/BroadCaster;
.super Ljava/lang/Object;
.source "BroadCaster.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private cc:Lcom/xiaomi/broadcaster/callback/BroadcastCallback;

.field private vcSession:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "BroadCast"

    sput-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/broadcaster/BroadCaster;->vcSession:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/broadcaster/BroadCaster;->cc:Lcom/xiaomi/broadcaster/callback/BroadcastCallback;

    return-void
.end method

.method private native addExternalAudioSourceOberverJni(JJ)Z
.end method

.method private native addExternalAudioStreamJni(JZII)V
.end method

.method private native addExternalVideoSourceOberverJni(JJ)Z
.end method

.method private native addExternalVideoStreamJni(JFFFFFFI)V
.end method

.method private native addRecordingSessionJni(J)V
.end method

.method private native audioChannelCountJni()I
.end method

.method private native audioSampleRateJni()F
.end method

.method private native bitrateJni()I
.end method

.method private native constructSessionJni(Landroid/content/Context;IIIIIIJZJ)J
.end method

.method private native debugReportJni()Ljava/lang/String;
.end method

.method private native destructSessionJni()V
.end method

.method private native endRtmpSessionJni()V
.end method

.method private native forceToUseHardWareCodecJni(Z)V
.end method

.method private native fpsJni()I
.end method

.method private native getConnectedServerInfoJni()Lcom/xiaomi/broadcaster/dataStruct/ConnectedServerInfo;
.end method

.method private native getIPAudioSourceVolumeJni(JZ)F
.end method

.method private native getIPCameraAudioSourceOberverJni()J
.end method

.method private native getIPCameraVideoSourceOberverJni()J
.end method

.method private native getRemoteIPJni()Ljava/lang/String;
.end method

.method private native getTimestampOfCurrentVideoFrameJni()J
.end method

.method private native micGainJni()F
.end method

.method private native mirrorModeJni()Z
.end method

.method private native muteBroadcastMicrophoneJni()V
.end method

.method private native muteExtraAppAudioStreamJni()V
.end method

.method private native muteIPAudioSourceJni(JZ)V
.end method

.method private native pushExtraAudioFrameJni(IIII[BJ)V
.end method

.method private native pushExtraAudioFrameWithTimestampJni(IIII[BJJ)V
.end method

.method private native pushExtraYUVFrameJni(II[BIIIJ)V
.end method

.method private native pushExtraYUVFrameWithTimestampJni(II[BIIIJJ)V
.end method

.method private native removeExternalAudioSourceOberverJni(J)V
.end method

.method private native removeExternalAudioStreamJni(J)V
.end method

.method private native removeExternalVideoSourceOberverJni(J)V
.end method

.method private native removeExternalVideoStreamJni(J)V
.end method

.method private native removeRecordingSessionJni(J)V
.end method

.method private native rtmpSessionStateJni()I
.end method

.method private native setAppRotationJni(I)V
.end method

.method private native setAudioChannelCountJni(I)V
.end method

.method private native setAudioSampleRateJni(F)V
.end method

.method private native setClientPublicIpJni(Ljava/lang/String;)V
.end method

.method private native setExtraAudioAsMainStreamJni()V
.end method

.method private native setFpsJni(I)V
.end method

.method private native setIPAudioSourceVolumeJni(JFZ)V
.end method

.method private native setMirrorModeJni(Z)V
.end method

.method private native setMixModeJni(IFFFF)V
.end method

.method private native setUpOutputFrameResolutionJni(II)V
.end method

.method private native setUseAdaptiveBitrateJni(Z)V
.end method

.method private native setVideoMainStreamJni(JZ)V
.end method

.method private native setVideoMaxBitrateJni(I)V
.end method

.method private native setVideoMinBitrateJni(I)V
.end method

.method private native startPreviewJni()V
.end method

.method private native startRtmpServerJni(ILjava/lang/String;)Z
.end method

.method private native startRtmpSessionWithURLExJni([Lcom/xiaomi/broadcaster/dataStruct/RtmpServerInfo;)V
.end method

.method private native startRtmpSessionWithURLJni(Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method private native startShareScreenJni()V
.end method

.method private native stopPreviewJni()V
.end method

.method private native stopRtmpServerJni()J
.end method

.method private native stopShareScreenJni()V
.end method

.method private native takePictureJni(Ljava/lang/String;)Z
.end method

.method private native unMuteBroadcastMicrophoneJni()V
.end method

.method private native unmuteExtraAppAudioStreamJni()V
.end method

.method private native unmuteIPAudioSourceJni(JZ)V
.end method

.method private native useAdaptiveBitrateJni()Z
.end method

.method private native useVbrModeJni(Z)V
.end method

.method private native versionJni()Ljava/lang/String;
.end method

.method private native videoSizeJni()Lcom/xiaomi/broadcaster/dataStruct/VideoSize;
.end method


# virtual methods
.method public addExternalAudioSourceOberver(JJ)Z
    .locals 3

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "addExternalAudioSourceOberver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/broadcaster/BroadCaster;->addExternalAudioSourceOberverJni(JJ)Z

    move-result v0

    return v0
.end method

.method public addExternalAudioStream(JZII)V
    .locals 3

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "addExternalAudioStream"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p5}, Lcom/xiaomi/broadcaster/BroadCaster;->addExternalAudioStreamJni(JZII)V

    return-void
.end method

.method public addExternalVideoStream(JFFFFFFI)V
    .locals 3

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "addExternalVideoStream"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p9}, Lcom/xiaomi/broadcaster/BroadCaster;->addExternalVideoStreamJni(JFFFFFFI)V

    return-void
.end method

.method public addRecordingSession(J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/broadcaster/BroadCaster;->addRecordingSessionJni(J)V

    return-void
.end method

.method public audioChannelCount()I
    .locals 2

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "audioChannelCount"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/xiaomi/broadcaster/BroadCaster;->audioChannelCountJni()I

    move-result v0

    return v0
.end method

.method public audioSampleRate()F
    .locals 2

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "setAudioSampleRate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/xiaomi/broadcaster/BroadCaster;->audioSampleRateJni()F

    move-result v0

    return v0
.end method

.method public bitrate()I
    .locals 2

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "bitrate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/xiaomi/broadcaster/BroadCaster;->bitrateJni()I

    move-result v0

    return v0
.end method

.method public constructSession(Landroid/content/Context;Lcom/xiaomi/broadcaster/callback/BroadcastCallback;IIIIIIJZJ)V
    .locals 13

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "constructSession enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/xiaomi/broadcaster/BroadCaster;->cc:Lcom/xiaomi/broadcaster/callback/BroadcastCallback;

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-wide/from16 v8, p9

    move/from16 v10, p11

    move-wide/from16 v11, p12

    invoke-direct/range {v0 .. v12}, Lcom/xiaomi/broadcaster/BroadCaster;->constructSessionJni(Landroid/content/Context;IIIIIIJZJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/broadcaster/BroadCaster;->vcSession:J

    return-void
.end method

.method public debugReport()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "debugReport"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/xiaomi/broadcaster/BroadCaster;->debugReportJni()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public destructSession()V
    .locals 2

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "destructSession enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/xiaomi/broadcaster/BroadCaster;->destructSessionJni()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/broadcaster/BroadCaster;->cc:Lcom/xiaomi/broadcaster/callback/BroadcastCallback;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/broadcaster/BroadCaster;->vcSession:J

    return-void
.end method

.method public endRtmpSession()V
    .locals 2

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "endRtmpSession enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/xiaomi/broadcaster/BroadCaster;->endRtmpSessionJni()V

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "endRtmpSession leave"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public forceToUseHardWareCodec(Z)V
    .locals 3

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceToUseHardWareCodec:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/xiaomi/broadcaster/BroadCaster;->forceToUseHardWareCodecJni(Z)V

    return-void
.end method

.method public fps()I
    .locals 2

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "fps"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/xiaomi/broadcaster/BroadCaster;->fpsJni()I

    move-result v0

    return v0
.end method

.method public getConnectedServerInfo()Lcom/xiaomi/broadcaster/dataStruct/ConnectedServerInfo;
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/broadcaster/BroadCaster;->getConnectedServerInfoJni()Lcom/xiaomi/broadcaster/dataStruct/ConnectedServerInfo;

    move-result-object v0

    return-object v0
.end method

.method public getIPAudioSourceVolume(JZ)F
    .locals 3

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "getIPAudioSourceVolume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/broadcaster/BroadCaster;->getIPAudioSourceVolumeJni(JZ)F

    move-result v0

    return v0
.end method

.method public getIPCameraAudioSourceOberver()J
    .locals 2

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "getIPCameraAudioSourceOberver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/xiaomi/broadcaster/BroadCaster;->getIPCameraAudioSourceOberverJni()J

    move-result-wide v0

    return-wide v0
.end method

.method public getIPCameraVideoSourceOberver()J
    .locals 2

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "getIPCameraVideoSourceOberver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/xiaomi/broadcaster/BroadCaster;->getIPCameraVideoSourceOberverJni()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRemoteIP()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/broadcaster/BroadCaster;->getRemoteIPJni()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimestampOfCurrentVideoFrame()J
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/broadcaster/BroadCaster;->getTimestampOfCurrentVideoFrameJni()J

    move-result-wide v0

    return-wide v0
.end method

.method public micGain()F
    .locals 2

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "micGain"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/xiaomi/broadcaster/BroadCaster;->micGainJni()F

    move-result v0

    return v0
.end method

.method public mirrorMode()Z
    .locals 2

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "mirrorMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/xiaomi/broadcaster/BroadCaster;->mirrorModeJni()Z

    move-result v0

    return v0
.end method

.method public muteBroadcastMicrophone()V
    .locals 2

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "muteBroadcastMicrophone enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/xiaomi/broadcaster/BroadCaster;->muteBroadcastMicrophoneJni()V

    return-void
.end method

.method public muteExtraAppAudioStream()V
    .locals 2

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "muteExtraAppAudioStream"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/xiaomi/broadcaster/BroadCaster;->muteExtraAppAudioStreamJni()V

    return-void
.end method

.method public muteIPAudioSource(JZ)V
    .locals 3

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "muteIPAudioSourceJni"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/broadcaster/BroadCaster;->muteIPAudioSourceJni(JZ)V

    return-void
.end method

.method public onAudioDataProcess([BI)V
    .locals 0

    return-void
.end method

.method public onAudioMixedMusicFinished()V
    .locals 2

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "callback:onAudioMixedMusicFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/broadcaster/BroadCaster;->cc:Lcom/xiaomi/broadcaster/callback/BroadcastCallback;

    invoke-interface {v0}, Lcom/xiaomi/broadcaster/callback/BroadcastCallback;->onAudioMixedMusicFinished()V

    return-void
.end method

.method public onAudioMixedMusicProgress(I)V
    .locals 2

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "callback:onAudioMixedMusicProgress"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/broadcaster/BroadCaster;->cc:Lcom/xiaomi/broadcaster/callback/BroadcastCallback;

    invoke-interface {v0, p1}, Lcom/xiaomi/broadcaster/callback/BroadcastCallback;->onAudioMixedMusicProgress(I)V

    return-void
.end method

.method public onAvgBiteRate(I)V
    .locals 3

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callback:onAvgBiteRate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/broadcaster/BroadCaster;->cc:Lcom/xiaomi/broadcaster/callback/BroadcastCallback;

    invoke-interface {v0, p1}, Lcom/xiaomi/broadcaster/callback/BroadcastCallback;->onAvgBiteRate(I)V

    return-void
.end method

.method public onConnectionStatusChanged(I)V
    .locals 2

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "callback:onConnectionStatusChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/broadcaster/BroadCaster;->cc:Lcom/xiaomi/broadcaster/callback/BroadcastCallback;

    invoke-static {p1}, Lcom/xiaomi/broadcaster/enums/VCSessionState;->int2enum(I)Lcom/xiaomi/broadcaster/enums/VCSessionState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaomi/broadcaster/callback/BroadcastCallback;->onConnectionStatusChanged(Lcom/xiaomi/broadcaster/enums/VCSessionState;)V

    return-void
.end method

.method public onDetectedThroughput(FI)V
    .locals 2

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "callback:onDetectedThroughput"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/broadcaster/BroadCaster;->cc:Lcom/xiaomi/broadcaster/callback/BroadcastCallback;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/broadcaster/callback/BroadcastCallback;->onDetectedThroughput(FI)V

    return-void
.end method

.method public onNetworkQualityStatus(IF)V
    .locals 3

    sget-object v0, Lcom/xiaomi/broadcaster/enums/VCNetworkQuality;->VCNetworkQualityLow:Lcom/xiaomi/broadcaster/enums/VCNetworkQuality;

    const v0, 0x61a80

    if-lt p1, v0, :cond_0

    const/high16 v0, -0x80000000

    cmpg-float v0, p2, v0

    if-gez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current video bitrate is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "and report low network quality to UI"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/xiaomi/broadcaster/enums/VCNetworkQuality;->VCNetworkQualityLow:Lcom/xiaomi/broadcaster/enums/VCNetworkQuality;

    iget-object v1, p0, Lcom/xiaomi/broadcaster/BroadCaster;->cc:Lcom/xiaomi/broadcaster/callback/BroadcastCallback;

    invoke-interface {v1, v0}, Lcom/xiaomi/broadcaster/callback/BroadcastCallback;->onNetworkQualityStatus(Lcom/xiaomi/broadcaster/enums/VCNetworkQuality;)V

    :cond_1
    return-void
.end method

.method public onStreamClosed(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callback:onStreamClosed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/broadcaster/BroadCaster;->cc:Lcom/xiaomi/broadcaster/callback/BroadcastCallback;

    invoke-interface {v0, p1}, Lcom/xiaomi/broadcaster/callback/BroadcastCallback;->onStreamClosed(Ljava/lang/String;)V

    return-void
.end method

.method public onStreamPublished(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callback:onStreamPublished:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/broadcaster/BroadCaster;->cc:Lcom/xiaomi/broadcaster/callback/BroadcastCallback;

    invoke-interface {v0, p1}, Lcom/xiaomi/broadcaster/callback/BroadcastCallback;->onStreamPublished(Ljava/lang/String;)V

    return-void
.end method

.method public onTakingPicFailed()V
    .locals 2

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "callback:onTakingPicFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/broadcaster/BroadCaster;->cc:Lcom/xiaomi/broadcaster/callback/BroadcastCallback;

    invoke-interface {v0}, Lcom/xiaomi/broadcaster/callback/BroadcastCallback;->onTakingPicFailed()V

    return-void
.end method

.method public onTakingPicOk()V
    .locals 2

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "callback:onTakingPicOk"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/broadcaster/BroadCaster;->cc:Lcom/xiaomi/broadcaster/callback/BroadcastCallback;

    invoke-interface {v0}, Lcom/xiaomi/broadcaster/callback/BroadcastCallback;->onTakingPicOk()V

    return-void
.end method

.method public onVCSessionErr(I)V
    .locals 2

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "callback::onVCSessionErr"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/xiaomi/broadcaster/enums/VCSessionErrType;->int2enum(I)Lcom/xiaomi/broadcaster/enums/VCSessionErrType;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/broadcaster/BroadCaster;->cc:Lcom/xiaomi/broadcaster/callback/BroadcastCallback;

    invoke-interface {v1, v0}, Lcom/xiaomi/broadcaster/callback/BroadcastCallback;->onVCSessionErr(Lcom/xiaomi/broadcaster/enums/VCSessionErrType;)V

    return-void
.end method

.method public onVideoDataProcess([BI)V
    .locals 0

    return-void
.end method

.method public pushExtraAudioFrame(IIII[BJ)V
    .locals 2

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "pushExtraAudioFrame"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p7}, Lcom/xiaomi/broadcaster/BroadCaster;->pushExtraAudioFrameJni(IIII[BJ)V

    return-void
.end method

.method public pushExtraAudioFrameWithTimestamp(IIII[BJJ)V
    .locals 2

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "pushExtraAudioFrameWithTimestamp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p9}, Lcom/xiaomi/broadcaster/BroadCaster;->pushExtraAudioFrameWithTimestampJni(IIII[BJJ)V

    return-void
.end method

.method public pushExtraYUVFrame(II[BIIIJ)V
    .locals 3

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "pushExtraYUVFrame"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p8}, Lcom/xiaomi/broadcaster/BroadCaster;->pushExtraYUVFrameJni(II[BIIIJ)V

    return-void
.end method

.method public pushExtraYUVFrameWithTimestamp(II[BIIIJJ)V
    .locals 3

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "pushExtraYUVFrameWithTimestamp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p10}, Lcom/xiaomi/broadcaster/BroadCaster;->pushExtraYUVFrameWithTimestampJni(II[BIIIJJ)V

    return-void
.end method

.method public removeExternalAudioSourceOberver(J)V
    .locals 3

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "removeExternalVideoSourceOberver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/broadcaster/BroadCaster;->removeExternalAudioSourceOberverJni(J)V

    return-void
.end method

.method public removeExternalAudioStream(J)V
    .locals 3

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "removeExternalAudioStream"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/broadcaster/BroadCaster;->removeExternalAudioStreamJni(J)V

    return-void
.end method

.method public removeExternalVideoStream(J)V
    .locals 3

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "removeExternalVideoStream"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/broadcaster/BroadCaster;->removeExternalVideoStreamJni(J)V

    return-void
.end method

.method public removeRecordingSession(J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/broadcaster/BroadCaster;->removeRecordingSessionJni(J)V

    return-void
.end method

.method public rtmpSessionState()Lcom/xiaomi/broadcaster/enums/VCSessionState;
    .locals 2

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "rtmpSessionState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/xiaomi/broadcaster/BroadCaster;->rtmpSessionStateJni()I

    move-result v0

    invoke-static {v0}, Lcom/xiaomi/broadcaster/enums/VCSessionState;->int2enum(I)Lcom/xiaomi/broadcaster/enums/VCSessionState;

    move-result-object v0

    return-object v0
.end method

.method public setAppRotation(I)V
    .locals 2

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "setAppRotation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/xiaomi/broadcaster/BroadCaster;->setAppRotationJni(I)V

    return-void
.end method

.method public setAudioChannelCount(I)V
    .locals 2

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "setAudioChannelCount"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/xiaomi/broadcaster/BroadCaster;->setAudioChannelCountJni(I)V

    return-void
.end method

.method public setAudioSampleRate(F)V
    .locals 2

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "setAudioSampleRate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/xiaomi/broadcaster/BroadCaster;->setAudioSampleRateJni(F)V

    return-void
.end method

.method public setClientPublicIp(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "setClientIpJni enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/xiaomi/broadcaster/BroadCaster;->setClientPublicIpJni(Ljava/lang/String;)V

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "setClientIpJni leave"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setExtraAudioAsMainStream()V
    .locals 2

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "setExtraAudioAsMainStream"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/xiaomi/broadcaster/BroadCaster;->setExtraAudioAsMainStreamJni()V

    return-void
.end method

.method public setFps(I)V
    .locals 2

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "setFps"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/xiaomi/broadcaster/BroadCaster;->setFpsJni(I)V

    return-void
.end method

.method public setIPAudioSourceVolume(JFZ)V
    .locals 3

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "setIPAudioSourceVolume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/broadcaster/BroadCaster;->setIPAudioSourceVolumeJni(JFZ)V

    return-void
.end method

.method public setMirrorMode(Z)V
    .locals 2

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "setMirrorMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/xiaomi/broadcaster/BroadCaster;->setMirrorModeJni(Z)V

    return-void
.end method

.method public setUpOutputFrameResolution(II)V
    .locals 2

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "setUpOutputFrameResolution"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/broadcaster/BroadCaster;->setUpOutputFrameResolutionJni(II)V

    return-void
.end method

.method public setUseAdaptiveBitrate(Z)V
    .locals 2

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "setUseAdaptiveBitrate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/xiaomi/broadcaster/BroadCaster;->setUseAdaptiveBitrateJni(Z)V

    return-void
.end method

.method public setVideoMainStream(JZ)V
    .locals 3

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "setVideoMainStream"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/broadcaster/BroadCaster;->setVideoMainStreamJni(JZ)V

    return-void
.end method

.method public setVideoMaxBitrate(I)V
    .locals 2

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "setVideoMaxBitrate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/xiaomi/broadcaster/BroadCaster;->setVideoMaxBitrateJni(I)V

    return-void
.end method

.method public setVideoMinBitrate(I)V
    .locals 2

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "setVideoMinBitrate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/xiaomi/broadcaster/BroadCaster;->setVideoMinBitrateJni(I)V

    return-void
.end method

.method public startPreview()V
    .locals 2

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "startPreview enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/xiaomi/broadcaster/BroadCaster;->startPreviewJni()V

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "startPreview leave"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startRtmpServer(ILjava/lang/String;)Z
    .locals 2

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "startRtmpServerJni"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/broadcaster/BroadCaster;->startRtmpServerJni(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startRtmpSessionWithURL(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "startRtmpSessionWithURL enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/broadcaster/BroadCaster;->startRtmpSessionWithURLJni(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "startRtmpSessionWithURL leave"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startRtmpSessionWithURLEx([Lcom/xiaomi/broadcaster/dataStruct/RtmpServerInfo;)V
    .locals 2

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "startRtmpSessionWithURLEx enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/xiaomi/broadcaster/BroadCaster;->startRtmpSessionWithURLExJni([Lcom/xiaomi/broadcaster/dataStruct/RtmpServerInfo;)V

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "startRtmpSessionWithURLEx leave"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startShareScreen()V
    .locals 2

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "startShareScreen enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/xiaomi/broadcaster/BroadCaster;->startShareScreenJni()V

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "startShareScreen leave"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stopPreview()V
    .locals 2

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "stoptPreview enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/xiaomi/broadcaster/BroadCaster;->stopPreviewJni()V

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "stoptPreview leave"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stopRtmpServer()V
    .locals 2

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "stopRtmpServerJni"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/xiaomi/broadcaster/BroadCaster;->stopRtmpServerJni()J

    return-void
.end method

.method public stopShareScreen()V
    .locals 2

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "stopShareScreen enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/xiaomi/broadcaster/BroadCaster;->stopShareScreenJni()V

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "stopShareScreen leave"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public takePicture(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "takePictureJni"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/xiaomi/broadcaster/BroadCaster;->takePictureJni(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public unMuteBroadcastMicrophone()V
    .locals 2

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "unMuteBroadcastMicrophone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/xiaomi/broadcaster/BroadCaster;->unMuteBroadcastMicrophoneJni()V

    return-void
.end method

.method public unmuteExtraAppAudioStream()V
    .locals 2

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "unmuteExtraAppAudioStream"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/xiaomi/broadcaster/BroadCaster;->unmuteExtraAppAudioStreamJni()V

    return-void
.end method

.method public unmuteIPAudioSource(JZ)V
    .locals 3

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "unmuteIPAudioSource"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/broadcaster/BroadCaster;->unmuteIPAudioSourceJni(JZ)V

    return-void
.end method

.method public useAdaptiveBitrate()Z
    .locals 2

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "useAdaptiveBitrate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/xiaomi/broadcaster/BroadCaster;->useAdaptiveBitrateJni()Z

    move-result v0

    return v0
.end method

.method public useVbrMode(Z)V
    .locals 3

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "useVbrMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/xiaomi/broadcaster/BroadCaster;->useVbrModeJni(Z)V

    return-void
.end method

.method public version()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "version"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/xiaomi/broadcaster/BroadCaster;->versionJni()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public videoSize()Lcom/xiaomi/broadcaster/dataStruct/VideoSize;
    .locals 2

    sget-object v0, Lcom/xiaomi/broadcaster/BroadCaster;->TAG:Ljava/lang/String;

    const-string v1, "VideoSize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/xiaomi/broadcaster/BroadCaster;->videoSizeJni()Lcom/xiaomi/broadcaster/dataStruct/VideoSize;

    move-result-object v0

    return-object v0
.end method
