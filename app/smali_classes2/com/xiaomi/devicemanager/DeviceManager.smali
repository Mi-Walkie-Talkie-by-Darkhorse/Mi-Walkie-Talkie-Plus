.class public Lcom/xiaomi/devicemanager/DeviceManager;
.super Ljava/lang/Object;
.source "DeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/devicemanager/DeviceManager$VideoContentTypeT;,
        Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;
    }
.end annotation


# static fields
.field static final AUTO:I = 0x0

.field static final EARPIECE:I = 0x2

.field static final HEADSET:I = 0x3

.field static final SPEAKER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DeviceManager"


# instance fields
.field private audioManager:Landroid/media/AudioManager;

.field private audioOutputDevice:I

.field private cc:Lcom/xiaomi/devicemanager/DeviceCallback;

.field private devicemanagerInst:J

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/devicemanager/DeviceManager;->devicemanagerInst:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/devicemanager/DeviceManager;->audioOutputDevice:I

    return-void
.end method

.method private OnCameraStartFailed()V
    .locals 2

    const-string v0, "DeviceManager"

    const-string v1, " java OnCameraStartFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/devicemanager/DeviceManager;->cc:Lcom/xiaomi/devicemanager/DeviceCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/devicemanager/DeviceManager;->cc:Lcom/xiaomi/devicemanager/DeviceCallback;

    invoke-interface {v0}, Lcom/xiaomi/devicemanager/DeviceCallback;->OnCameraStartFailed()V

    :cond_0
    return-void
.end method

.method private OnMicStartFailed()V
    .locals 2

    const-string v0, "DeviceManager"

    const-string v1, " java OnMicStartFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/devicemanager/DeviceManager;->cc:Lcom/xiaomi/devicemanager/DeviceCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/devicemanager/DeviceManager;->cc:Lcom/xiaomi/devicemanager/DeviceCallback;

    invoke-interface {v0}, Lcom/xiaomi/devicemanager/DeviceCallback;->OnMicStartFailed()V

    :cond_0
    return-void
.end method

.method private OnMixDataReady([SIII)V
    .locals 2

    const-string v0, "DeviceManager"

    const-string v1, " java OnMixDataReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/devicemanager/DeviceManager;->cc:Lcom/xiaomi/devicemanager/DeviceCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/devicemanager/DeviceManager;->cc:Lcom/xiaomi/devicemanager/DeviceCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaomi/devicemanager/DeviceCallback;->OnMixDataReady([SIII)V

    :cond_0
    return-void
.end method

.method private native addVideoPreprocessFilterJni(JI)Z
.end method

.method private native constructDeviceManagerJni(Landroid/content/Context;Ljava/lang/String;)J
.end method

.method private native destructDeviceManagerJni()Z
.end method

.method private native enableMicMixMusicJni(Z)V
.end method

.method private native enableRotationJni(Z)V
.end method

.method private native enableVideoPreprocessJni(Z)Z
.end method

.method private native getCurrentVideoZoomFactorJni()I
.end method

.method private native getEyeZoomRatioJni()I
.end method

.method private native getFaceThinRatioJni()I
.end method

.method private getOutPutDevice()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/devicemanager/DeviceManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaomi/devicemanager/DeviceManager;->audioOutputDevice:I

    :goto_0
    iget v0, p0, Lcom/xiaomi/devicemanager/DeviceManager;->audioOutputDevice:I

    return v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/devicemanager/DeviceManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    iput v0, p0, Lcom/xiaomi/devicemanager/DeviceManager;->audioOutputDevice:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/xiaomi/devicemanager/DeviceManager;->audioOutputDevice:I

    goto :goto_0
.end method

.method private native getSmoothLevelJni()I
.end method

.method private native getSupportedVideoZoomMaxFactorJni()I
.end method

.method private native getVideoFilterIntensityJni()F
.end method

.method private native isSupportResolutionJni(III)Z
.end method

.method private native isUsingFrontCameraJni()Z
.end method

.method private native isVideoZoomSupportedJni()Z
.end method

.method private native loopbackAudioJni(Z)V
.end method

.method private native muteMicrophoneJni(Z)V
.end method

.method private native muteSpeakerJni(Z)V
.end method

.method private onStartCamera()V
    .locals 2

    const-string v0, "DeviceManager"

    const-string v1, " java onStartCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/devicemanager/DeviceManager;->cc:Lcom/xiaomi/devicemanager/DeviceCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/devicemanager/DeviceManager;->cc:Lcom/xiaomi/devicemanager/DeviceCallback;

    invoke-interface {v0}, Lcom/xiaomi/devicemanager/DeviceCallback;->onStartCamera()V

    :cond_0
    return-void
.end method

.method private onStopCamera()V
    .locals 2

    const-string v0, "DeviceManager"

    const-string v1, " java onStopCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/devicemanager/DeviceManager;->cc:Lcom/xiaomi/devicemanager/DeviceCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/devicemanager/DeviceManager;->cc:Lcom/xiaomi/devicemanager/DeviceCallback;

    invoke-interface {v0}, Lcom/xiaomi/devicemanager/DeviceCallback;->onStopCamera()V

    :cond_0
    return-void
.end method

.method private native pauseMixMusicJni()V
.end method

.method private native playEffectiveJni(Ljava/lang/String;)V
.end method

.method private native registerObserverJni()Z
.end method

.method private native removeVideoPreprocessFilterJni(JI)V
.end method

.method private native resumeMixMusicJni()V
.end method

.method private native setAudioOutputModelJni(I)V
.end method

.method private native setAudioTypeJni(I)V
.end method

.method private native setBackgroundVolumeJni(I)V
.end method

.method private native setCameraParamJni(III)Z
.end method

.method private native setEyeZoomRatioJni(I)V
.end method

.method private native setFaceThinRatioJni(I)V
.end method

.method private native setFlashStateJni(Z)V
.end method

.method private native setFocusPointJni(FF)V
.end method

.method private native setForegroundVolumeJni(I)V
.end method

.method private native setLoopbackBackgroundVolumeJni(I)V
.end method

.method private native setOrientationJni(II)V
.end method

.method private native setSmoothLevelJni(I)V
.end method

.method private native setStickerPathJni(Ljava/lang/String;)Z
.end method

.method private native setVideoFilterIntensityJni(F)V
.end method

.method private native setVideoFilterJni(Ljava/lang/String;)V
.end method

.method private native setVideoOutputParamJni(III)Z
.end method

.method private native setVideoPreprocessParametersJni(FF)V
.end method

.method private native setVideoZoomFactorJni(I)V
.end method

.method private native startCameraJni(Z)Z
.end method

.method private native startMicrophoneJni(Z)V
.end method

.method private native startMixMusicJni(Ljava/lang/String;Z)V
.end method

.method private native startPlayBackgroundMusicJni(Ljava/lang/String;Z)J
.end method

.method private native startReverberationJni(I)V
.end method

.method private native startSpeakerJni(Z)V
.end method

.method private native stopMixMusicJni()V
.end method

.method private native stopPlayBackgroundMusicJni(J)V
.end method

.method private native stopReverberationJni()V
.end method

.method private native switchCameraJni()Z
.end method

.method private native unregisterObserverJni()Z
.end method


# virtual methods
.method public EnableMicMixMusic(Z)V
    .locals 2

    const-string v0, "DeviceManager"

    const-string v1, " EnableMicMixMusic "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/devicemanager/DeviceManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "DeviceManager"

    const-string v1, " EnableMicMixMusic error, please init the engine first"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaomi/devicemanager/DeviceManager;->enableMicMixMusicJni(Z)V

    goto :goto_0
.end method

.method public SetOrientation(II)V
    .locals 3

    const-string v0, "DeviceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting orientation with deviceOrientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " UI orientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/devicemanager/DeviceManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "DeviceManager"

    const-string v1, "SetOrientation error, please init the engine first"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/devicemanager/DeviceManager;->setOrientationJni(II)V

    const-string v0, "DeviceManager"

    const-string v1, "set orientation done"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public addVideoPreprocessFilter(JI)Z
    .locals 3

    const-string v0, "DeviceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addVideoPreprocessFilter filter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " filterType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/devicemanager/DeviceManager;->addVideoPreprocessFilterJni(JI)Z

    move-result v0

    return v0
.end method

.method public attachCallback(Lcom/xiaomi/devicemanager/DeviceCallback;)Z
    .locals 2

    const-string v0, "DeviceManager"

    const-string v1, " java attachCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/xiaomi/devicemanager/DeviceManager;->cc:Lcom/xiaomi/devicemanager/DeviceCallback;

    invoke-direct {p0}, Lcom/xiaomi/devicemanager/DeviceManager;->registerObserverJni()Z

    move-result v0

    return v0
.end method

.method public constructDeviceManager(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "DeviceManager"

    const-string v1, "construct DeviceManager..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/devicemanager/DeviceManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v0, "DeviceManager"

    const-string v1, "construct error, please destroy the engine first"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iput-object p1, p0, Lcom/xiaomi/devicemanager/DeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/devicemanager/DeviceManager;->constructDeviceManagerJni(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/devicemanager/DeviceManager;->devicemanagerInst:J

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public destructDeviceManager()Z
    .locals 2

    const-string v0, "DeviceManager"

    const-string v1, "destruct DeviceManager..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/devicemanager/DeviceManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "DeviceManager"

    const-string v1, "destruct error, please destroy the engine first"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/devicemanager/DeviceManager;->destructDeviceManagerJni()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/devicemanager/DeviceManager;->mContext:Landroid/content/Context;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/devicemanager/DeviceManager;->devicemanagerInst:J

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public disattachCallback()Z
    .locals 2

    const-string v0, "DeviceManager"

    const-string v1, " java attachCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/xiaomi/devicemanager/DeviceManager;->unregisterObserverJni()Z

    move-result v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaomi/devicemanager/DeviceManager;->cc:Lcom/xiaomi/devicemanager/DeviceCallback;

    return v0
.end method

.method public enableMicMixMusic(Z)V
    .locals 2

    const-string v0, "DeviceManager"

    const-string v1, "enableMicMixMusic"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/xiaomi/devicemanager/DeviceManager;->enableMicMixMusicJni(Z)V

    return-void
.end method

.method public enableRotation(Z)V
    .locals 3

    const-string v0, "DeviceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Eanble rotate with:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/devicemanager/DeviceManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "DeviceManager"

    const-string v1, "enableRotation error, please init the engine first"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaomi/devicemanager/DeviceManager;->enableRotationJni(Z)V

    const-string v0, "DeviceManager"

    const-string v1, "set rotate done"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enableVideoPreprocess(Z)Z
    .locals 2

    const-string v0, "DeviceManager"

    const-string v1, "enableVideoPreprocess"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/xiaomi/devicemanager/DeviceManager;->enableVideoPreprocessJni(Z)Z

    move-result v0

    return v0
.end method

.method public getCurrentVideoZoomFactor()I
    .locals 2

    const-string v0, "DeviceManager"

    const-string v1, "getCurrentVideoZoomFactor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/xiaomi/devicemanager/DeviceManager;->getCurrentVideoZoomFactorJni()I

    move-result v0

    return v0
.end method

.method public getEyeZoomRatio()I
    .locals 2

    const-string v0, "DeviceManager"

    const-string v1, "getEyeZoomRatio"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/xiaomi/devicemanager/DeviceManager;->getEyeZoomRatioJni()I

    move-result v0

    return v0
.end method

.method public getFaceThinRatio()I
    .locals 2

    const-string v0, "DeviceManager"

    const-string v1, "getFaceThinRatio"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/xiaomi/devicemanager/DeviceManager;->getFaceThinRatioJni()I

    move-result v0

    return v0
.end method

.method public getInstance()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/devicemanager/DeviceManager;->devicemanagerInst:J

    return-wide v0
.end method

.method public getSmoothLevel()I
    .locals 2

    const-string v0, "DeviceManager"

    const-string v1, "getSmoothLevel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/xiaomi/devicemanager/DeviceManager;->getSmoothLevelJni()I

    move-result v0

    return v0
.end method

.method public getSupportedVideoZoomMaxFactor()I
    .locals 2

    const-string v0, "DeviceManager"

    const-string v1, "getSupportedVideoZoomMaxFactor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/xiaomi/devicemanager/DeviceManager;->getSupportedVideoZoomMaxFactorJni()I

    move-result v0

    return v0
.end method

.method public getVideoFilterIntensity()F
    .locals 2

    const-string v0, "DeviceManager"

    const-string v1, "getVideoFilterIntensity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/xiaomi/devicemanager/DeviceManager;->getVideoFilterIntensityJni()F

    move-result v0

    return v0
.end method

.method public isSupportResolution(III)Z
    .locals 3

    const-string v0, "DeviceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isSupportResolution:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/devicemanager/DeviceManager;->isSupportResolutionJni(III)Z

    move-result v0

    return v0
.end method

.method public isUsingFrontCamera()Z
    .locals 2

    const-string v0, "DeviceManager"

    const-string v1, "isUsingFrontCamera enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/xiaomi/devicemanager/DeviceManager;->isUsingFrontCameraJni()Z

    move-result v0

    return v0
.end method

.method public isVideoZoomSupported()Z
    .locals 2

    const-string v0, "DeviceManager"

    const-string v1, "isVideoZoomSupported"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/xiaomi/devicemanager/DeviceManager;->isVideoZoomSupportedJni()Z

    move-result v0

    return v0
.end method

.method public loopbackAudio(Z)V
    .locals 2

    const-string v0, "DeviceManager"

    const-string v1, " loopbackAudio "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/devicemanager/DeviceManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "DeviceManager"

    const-string v1, " loopbackAudio error, please init the engine first"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaomi/devicemanager/DeviceManager;->loopbackAudioJni(Z)V

    goto :goto_0
.end method

.method public muteMicrophone()Z
    .locals 3

    const/4 v0, 0x1

    const-string v1, "DeviceManager"

    const-string v2, "starting muteMicrophone..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/xiaomi/devicemanager/DeviceManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string v0, "DeviceManager"

    const-string v1, "muteMicrophone error, please init the engine first"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/xiaomi/devicemanager/DeviceManager;->muteMicrophoneJni(Z)V

    const-string v1, "DeviceManager"

    const-string v2, "muteMicrophone succeeded"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public muteSpeaker()Z
    .locals 3

    const/4 v0, 0x1

    const-string v1, "DeviceManager"

    const-string v2, "starting muteSpeaker..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/xiaomi/devicemanager/DeviceManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string v0, "DeviceManager"

    const-string v1, "muteSpeaker error, please init the engine first"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/xiaomi/devicemanager/DeviceManager;->muteSpeakerJni(Z)V

    const-string v1, "DeviceManager"

    const-string v2, "muteSpeaker succeeded"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public pauseMixMusic()V
    .locals 2

    const-string v0, "DeviceManager"

    const-string v1, "pauseMixMusic"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/xiaomi/devicemanager/DeviceManager;->pauseMixMusicJni()V

    return-void
.end method

.method public playEffective(Ljava/lang/String;)V
    .locals 2

    const-string v0, "DeviceManager"

    const-string v1, "playEffective"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/xiaomi/devicemanager/DeviceManager;->playEffectiveJni(Ljava/lang/String;)V

    return-void
.end method

.method public removeVideoPreprocessFilter(JI)V
    .locals 3

    const-string v0, "DeviceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeVideoPreprocessFilter filter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " filterType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/devicemanager/DeviceManager;->removeVideoPreprocessFilterJni(JI)V

    return-void
.end method

.method public resumeMixMusic()V
    .locals 2

    const-string v0, "DeviceManager"

    const-string v1, "resumeMixMusic"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/xiaomi/devicemanager/DeviceManager;->resumeMixMusicJni()V

    return-void
.end method

.method public setAudioType(I)V
    .locals 2

    const-string v0, "DeviceManager"

    const-string v1, "setAudioType"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/xiaomi/devicemanager/DeviceManager;->setAudioTypeJni(I)V

    return-void
.end method

.method public setBackgroundVolume(I)V
    .locals 2

    const-string v0, "DeviceManager"

    const-string v1, "setBackgroundVolume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/xiaomi/devicemanager/DeviceManager;->setBackgroundVolumeJni(I)V

    return-void
.end method

.method public setCameraParam(III)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "DeviceManager"

    const-string v2, "setting  camera param ..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/xiaomi/devicemanager/DeviceManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string v1, "DeviceManager"

    const-string v2, "setCameraParam error, please init the engine first"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/devicemanager/DeviceManager;->setCameraParamJni(III)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "DeviceManager"

    const-string v2, "set camera param failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "DeviceManager"

    const-string v1, " set camera param succeeded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setEyeZoomRatio(I)V
    .locals 2

    const-string v0, "DeviceManager"

    const-string v1, "setEyeZoomRatio"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/xiaomi/devicemanager/DeviceManager;->setEyeZoomRatioJni(I)V

    return-void
.end method

.method public setFaceThinRatio(I)V
    .locals 2

    const-string v0, "DeviceManager"

    const-string v1, "setFaceThinRatio"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/xiaomi/devicemanager/DeviceManager;->setFaceThinRatioJni(I)V

    return-void
.end method

.method public setFlashState(Z)V
    .locals 2

    const-string v0, "DeviceManager"

    const-string v1, "setFlashState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/xiaomi/devicemanager/DeviceManager;->setFlashStateJni(Z)V

    return-void
.end method

.method public setFocusPoint(FF)V
    .locals 2

    const-string v0, "DeviceManager"

    const-string v1, "setFocusPoint"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/devicemanager/DeviceManager;->setFocusPointJni(FF)V

    return-void
.end method

.method public setForegroundVolume(I)V
    .locals 2

    const-string v0, "DeviceManager"

    const-string v1, "setForegroundVolume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/xiaomi/devicemanager/DeviceManager;->setForegroundVolumeJni(I)V

    return-void
.end method

.method public setLoopbackBackgroundVolume(I)V
    .locals 2

    const-string v0, "DeviceManager"

    const-string v1, "setBackgroundVolume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/xiaomi/devicemanager/DeviceManager;->setLoopbackBackgroundVolumeJni(I)V

    return-void
.end method

.method public setSmoothLevel(I)V
    .locals 2

    const-string v0, "DeviceManager"

    const-string v1, "setSmoothLevel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/xiaomi/devicemanager/DeviceManager;->setSmoothLevelJni(I)V

    return-void
.end method

.method public setSpeaker(Z)V
    .locals 3

    const-string v0, "DeviceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting speaker:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/devicemanager/DeviceManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "DeviceManager"

    const-string v1, "setSpeaker error, please init the engine first"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/devicemanager/DeviceManager;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/xiaomi/devicemanager/DeviceManager;->audioManager:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/xiaomi/devicemanager/DeviceManager;->audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    const-string v0, "DeviceManager"

    const-string v1, "Could not change audio routing - no audio manager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x3

    if-eq v1, v0, :cond_2

    const/4 v1, 0x4

    if-ne v1, v0, :cond_4

    :cond_2
    if-eqz p1, :cond_3

    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/xiaomi/devicemanager/DeviceManager;->getOutPutDevice()I

    iget v0, p0, Lcom/xiaomi/devicemanager/DeviceManager;->audioOutputDevice:I

    invoke-direct {p0, v0}, Lcom/xiaomi/devicemanager/DeviceManager;->setAudioOutputModelJni(I)V

    const-string v0, "DeviceManager"

    const-string v1, "set speaker done"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v2, "Samsung"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v2, "samsung"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_5
    const/4 v1, 0x5

    if-eq v1, v0, :cond_6

    const/4 v1, 0x6

    if-eq v1, v0, :cond_6

    const/4 v1, 0x7

    if-ne v1, v0, :cond_8

    :cond_6
    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/xiaomi/devicemanager/DeviceManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/xiaomi/devicemanager/DeviceManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/xiaomi/devicemanager/DeviceManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    const-string v0, "DeviceManager"

    const-string v1, "set speaker 1111111 done"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setStickerPath(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "DeviceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStickerPath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/xiaomi/devicemanager/DeviceManager;->setStickerPathJni(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setVideoFilter(Ljava/lang/String;)V
    .locals 2

    const-string v0, "DeviceManager"

    const-string v1, "setVideoFilter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/xiaomi/devicemanager/DeviceManager;->setVideoFilterJni(Ljava/lang/String;)V

    return-void
.end method

.method public setVideoFilterIntensity(F)V
    .locals 2

    const-string v0, "DeviceManager"

    const-string v1, "setVideoFilterIntensity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/xiaomi/devicemanager/DeviceManager;->setVideoFilterIntensityJni(F)V

    return-void
.end method

.method public setVideoOutputParam(III)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "DeviceManager"

    const-string v2, "setting  video output param ..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/xiaomi/devicemanager/DeviceManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string v1, "DeviceManager"

    const-string v2, "setVideoOutputParam error, please init the engine first"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/devicemanager/DeviceManager;->setVideoOutputParamJni(III)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "DeviceManager"

    const-string v2, "set video output param failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "DeviceManager"

    const-string v1, " set video output param succeeded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setVideoPreprocessParameters(FF)V
    .locals 2

    const-string v0, "DeviceManager"

    const-string v1, "setVideoPreprocessParameters"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/devicemanager/DeviceManager;->setVideoPreprocessParametersJni(FF)V

    return-void
.end method

.method public setVideoZoomFactor(I)V
    .locals 2

    const-string v0, "DeviceManager"

    const-string v1, "setVideoZoomFactor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/xiaomi/devicemanager/DeviceManager;->setVideoZoomFactorJni(I)V

    return-void
.end method

.method public startAudioDevice()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "DeviceManager"

    const-string v1, " startAudioDevice "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/devicemanager/DeviceManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "DeviceManager"

    const-string v1, "start AudioDevice error, please init the engine first"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v2}, Lcom/xiaomi/devicemanager/DeviceManager;->startSpeakerJni(Z)V

    invoke-direct {p0, v2}, Lcom/xiaomi/devicemanager/DeviceManager;->startMicrophoneJni(Z)V

    goto :goto_0
.end method

.method public startCamera()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "DeviceManager"

    const-string v3, "starting camera..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/xiaomi/devicemanager/DeviceManager;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    const-string v1, "DeviceManager"

    const-string v2, "startCamera error, please init the engine first"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, v1}, Lcom/xiaomi/devicemanager/DeviceManager;->startCameraJni(Z)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v1, "DeviceManager"

    const-string v2, "start camera failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "DeviceManager"

    const-string v2, " start camera succeeded"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0
.end method

.method public startMixMusic(Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "DeviceManager"

    const-string v1, " startMixMusic "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/devicemanager/DeviceManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "DeviceManager"

    const-string v1, " startMixMusic error, please init the engine first"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/devicemanager/DeviceManager;->startMixMusicJni(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public startPlayBackgroundMusic(Ljava/lang/String;Z)J
    .locals 2

    const-string v0, "DeviceManager"

    const-string v1, " startMixMusic "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/devicemanager/DeviceManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "DeviceManager"

    const-string v1, " startMixMusic error, please init the engine first"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/devicemanager/DeviceManager;->startPlayBackgroundMusicJni(Ljava/lang/String;Z)J

    move-result-wide v0

    goto :goto_0
.end method

.method public startReverberation(I)V
    .locals 2

    const-string v0, "DeviceManager"

    const-string v1, "startReverberation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/xiaomi/devicemanager/DeviceManager;->startReverberationJni(I)V

    return-void
.end method

.method public stopAudioDevice()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "DeviceManager"

    const-string v1, " stopAudioDevice "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/devicemanager/DeviceManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "DeviceManager"

    const-string v1, "stop AudioDevice error, please init the engine first"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v2}, Lcom/xiaomi/devicemanager/DeviceManager;->startMicrophoneJni(Z)V

    invoke-direct {p0, v2}, Lcom/xiaomi/devicemanager/DeviceManager;->startSpeakerJni(Z)V

    goto :goto_0
.end method

.method public stopCamera()Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "DeviceManager"

    const-string v2, "stopping camera..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/xiaomi/devicemanager/DeviceManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string v1, "DeviceManager"

    const-string v2, "stopCamera error, please init the engine first"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/xiaomi/devicemanager/DeviceManager;->startCameraJni(Z)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "DeviceManager"

    const-string v2, "stop camera failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "DeviceManager"

    const-string v1, "stop camera succeeded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public stopMixMusic()V
    .locals 2

    const-string v0, "DeviceManager"

    const-string v1, " stopMixMusic "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/devicemanager/DeviceManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "DeviceManager"

    const-string v1, " stopMixMusic error, please init the engine first"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/devicemanager/DeviceManager;->stopMixMusicJni()V

    goto :goto_0
.end method

.method public stopPlayBackgroundMusic(J)V
    .locals 3

    const-string v0, "DeviceManager"

    const-string v1, " stopPlayBackgroundMusic"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/devicemanager/DeviceManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "DeviceManager"

    const-string v1, " stopPlayBackgroundMusic error, please init the engine first"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/devicemanager/DeviceManager;->stopPlayBackgroundMusicJni(J)V

    goto :goto_0
.end method

.method public stopReverberation()V
    .locals 2

    const-string v0, "DeviceManager"

    const-string v1, "stopReverberation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/xiaomi/devicemanager/DeviceManager;->stopReverberationJni()V

    return-void
.end method

.method public switchCamera()Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "DeviceManager"

    const-string v2, "switching camera..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/xiaomi/devicemanager/DeviceManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string v1, "DeviceManager"

    const-string v2, "switchCamera error, please init the engine first"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/devicemanager/DeviceManager;->switchCameraJni()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "DeviceManager"

    const-string v2, "switch camera failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "DeviceManager"

    const-string v1, "switch camera succeeded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public unMuteMicrophone()Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "DeviceManager"

    const-string v2, "unMuting Microphone..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/xiaomi/devicemanager/DeviceManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string v1, "DeviceManager"

    const-string v2, "unMuteMicrophone error, please init the engine first"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/xiaomi/devicemanager/DeviceManager;->muteMicrophoneJni(Z)V

    const-string v0, "DeviceManager"

    const-string v1, "unMute Microphone succeeded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public unMuteSpeaker()Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "DeviceManager"

    const-string v2, "unMuting Speaker..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/xiaomi/devicemanager/DeviceManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string v1, "DeviceManager"

    const-string v2, "unMuteSpeaker error, please init the engine first"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/xiaomi/devicemanager/DeviceManager;->muteSpeakerJni(Z)V

    const-string v0, "DeviceManager"

    const-string v1, "unMute Speaker succeeded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0
.end method
