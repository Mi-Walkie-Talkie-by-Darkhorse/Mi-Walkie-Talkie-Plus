.class public Lcom/xiaomi/player/Player;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/player/Player$SurfaceGravity;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private pc:Lcom/xiaomi/player/callback/PlayerCallback;

.field private playerInst:J

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Player"

    sput-object v0, Lcom/xiaomi/player/Player;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/player/Player;->playerInst:J

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/player/Player;->url:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/player/Player;->pc:Lcom/xiaomi/player/callback/PlayerCallback;

    return-void
.end method

.method private native GetCurrentStreamPositionJni()J
.end method

.method private native addRecordingSessionJni(J)V
.end method

.method private native bufferTimeMaxJni()J
.end method

.method public static cancelCompressingMP4File(Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lcom/xiaomi/player/Player;->TAG:Ljava/lang/String;

    const-string v1, "cancel compressing MP4 files"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/xiaomi/player/Player;->cancelCompressingMP4FileJni(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static native cancelCompressingMP4FileJni(Ljava/lang/String;)I
.end method

.method public static compressMP4File(Ljava/lang/String;Ljava/lang/String;J)I
    .locals 2

    sget-object v0, Lcom/xiaomi/player/Player;->TAG:Ljava/lang/String;

    const-string v1, "compress MP4 files"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1, p2, p3}, Lcom/xiaomi/player/Player;->compressMP4FileJni(Ljava/lang/String;Ljava/lang/String;J)I

    move-result v0

    return v0
.end method

.method private static native compressMP4FileJni(Ljava/lang/String;Ljava/lang/String;J)I
.end method

.method private native constructPlayerJni(Ljava/lang/String;IJ)J
.end method

.method private native currentPlaybackTimeJni()J
.end method

.method private native debugReportJni()Ljava/lang/String;
.end method

.method private native destructPlayerJni()V
.end method

.method private native durationJni()J
.end method

.method private native enableVideoFilterJni(Z)V
.end method

.method private native getAudioTransferJni()J
.end method

.method private native getCurrentCachePositionJni()J
.end method

.method private native getStreamIdJni()J
.end method

.method private native getTimestampOfCurrentVideoFrameJni()J
.end method

.method private native isPausedJni()Z
.end method

.method private native muteAudioJni()V
.end method

.method private native pauseJni()V
.end method

.method private native playbackStateJni()I
.end method

.method private native redrawJni()V
.end method

.method private native reloadJni(Ljava/lang/String;Z)Z
.end method

.method private native removeRecordingSessionJni(J)V
.end method

.method private native resumeJni()Z
.end method

.method private native seekToJni(JI)Z
.end method

.method private native setBufferTimeMaxJni(J)V
.end method

.method private native setGravityJni(III)V
.end method

.method private native setIpListJni([Ljava/lang/String;)V
.end method

.method private native setSpeakerJni(Z)V
.end method

.method private native setSpeedRatioJni(D)Z
.end method

.method private native setUserIdandClienIpJni(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native setVideoFilterIntensityJni(F)V
.end method

.method private native setVideoFilterJni(Ljava/lang/String;)V
.end method

.method private native setVideoSurfaceJni(Landroid/view/Surface;)V
.end method

.method private native shiftUpJni(F)V
.end method

.method private native startJni(Ljava/lang/String;Ljava/lang/String;Z)Z
.end method

.method private native startRecordingJni()V
.end method

.method private native stopJni()V
.end method

.method private native stopRecordingJni()V
.end method

.method private native unMuteAudioJni()V
.end method

.method public static version()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/xiaomi/player/Player;->versionJni()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native versionJni()Ljava/lang/String;
.end method

.method private native videoSizeJni()Lcom/xiaomi/player/datastruct/VideoSize;
.end method


# virtual methods
.method public GetCurrentStreamPosition()J
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/player/Player;->GetCurrentStreamPositionJni()J

    move-result-wide v0

    return-wide v0
.end method

.method public addRecordingSession(J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/player/Player;->addRecordingSessionJni(J)V

    return-void
.end method

.method public bufferTimeMax()J
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/player/Player;->bufferTimeMaxJni()J

    move-result-wide v0

    return-wide v0
.end method

.method public constructPlayer(Ljava/lang/String;Lcom/xiaomi/player/callback/PlayerCallback;Lcom/xiaomi/player/enums/PlayerWorkingMode;J)V
    .locals 2

    sget-object v0, Lcom/xiaomi/player/Player;->TAG:Ljava/lang/String;

    const-string v1, "constructPlayer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/xiaomi/player/Player;->pc:Lcom/xiaomi/player/callback/PlayerCallback;

    invoke-virtual {p3}, Lcom/xiaomi/player/enums/PlayerWorkingMode;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, v0, p4, p5}, Lcom/xiaomi/player/Player;->constructPlayerJni(Ljava/lang/String;IJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/player/Player;->playerInst:J

    return-void
.end method

.method public currentPlaybackTime()J
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/player/Player;->currentPlaybackTimeJni()J

    move-result-wide v0

    return-wide v0
.end method

.method public debugReport()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/player/Player;->debugReportJni()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public destructPlayer()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/xiaomi/player/Player;->TAG:Ljava/lang/String;

    const-string v1, "destructPlayer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/xiaomi/player/Player;->setVideoSurface(Landroid/view/Surface;)V

    invoke-direct {p0}, Lcom/xiaomi/player/Player;->destructPlayerJni()V

    iput-object v2, p0, Lcom/xiaomi/player/Player;->pc:Lcom/xiaomi/player/callback/PlayerCallback;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/player/Player;->playerInst:J

    return-void
.end method

.method public duration()J
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/player/Player;->durationJni()J

    move-result-wide v0

    return-wide v0
.end method

.method public editorPlayerSetInnerVolume(F)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/xiaomi/player/Player;->editorPlayerSetVolumeInnerJni(F)Z

    move-result v0

    return v0
.end method

.method public editorPlayerSetMP3Volume(F)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/xiaomi/player/Player;->editorPlayerSetVolumeExternalMp3Jni(F)Z

    move-result v0

    return v0
.end method

.method public native editorPlayerSetVolumeExternalMp3Jni(F)Z
.end method

.method public native editorPlayerSetVolumeInnerJni(F)Z
.end method

.method public editorPlayerStart(Ljava/lang/String;Ljava/lang/String;JJ)Z
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/player/Player;->url:Ljava/lang/String;

    invoke-virtual/range {p0 .. p6}, Lcom/xiaomi/player/Player;->editorPlayerStartJni(Ljava/lang/String;Ljava/lang/String;JJ)Z

    move-result v0

    return v0
.end method

.method public native editorPlayerStartJni(Ljava/lang/String;Ljava/lang/String;JJ)Z
.end method

.method public enableVideoFilter(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/player/Player;->enableVideoFilterJni(Z)V

    return-void
.end method

.method public getAudioTransfer()J
    .locals 2

    sget-object v0, Lcom/xiaomi/player/Player;->TAG:Ljava/lang/String;

    const-string v1, "get audio transfer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/xiaomi/player/Player;->getAudioTransferJni()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentCachePosition()J
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/player/Player;->getCurrentCachePositionJni()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStreamId()J
    .locals 2

    sget-object v0, Lcom/xiaomi/player/Player;->TAG:Ljava/lang/String;

    const-string v1, "get stream ID"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/xiaomi/player/Player;->getStreamIdJni()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimestampOfCurrentVideoFrame()J
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/player/Player;->getTimestampOfCurrentVideoFrameJni()J

    move-result-wide v0

    return-wide v0
.end method

.method public isPaused()Z
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/player/Player;->isPausedJni()Z

    move-result v0

    return v0
.end method

.method public muteAudio()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/player/Player;->muteAudioJni()V

    return-void
.end method

.method public onAudioRenderingStart()V
    .locals 2

    sget-object v0, Lcom/xiaomi/player/Player;->TAG:Ljava/lang/String;

    const-string v1, "callback:onAudioRenderingStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/player/Player;->pc:Lcom/xiaomi/player/callback/PlayerCallback;

    invoke-interface {v0}, Lcom/xiaomi/player/callback/PlayerCallback;->onAudioRenderingStart()V

    return-void
.end method

.method public onOpenStreamFailed()V
    .locals 2

    sget-object v0, Lcom/xiaomi/player/Player;->TAG:Ljava/lang/String;

    const-string v1, "callback:onOpenStreamFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/player/Player;->pc:Lcom/xiaomi/player/callback/PlayerCallback;

    invoke-interface {v0}, Lcom/xiaomi/player/callback/PlayerCallback;->onOpenStreamFailed()V

    return-void
.end method

.method public onPlayerPaused()V
    .locals 2

    sget-object v0, Lcom/xiaomi/player/Player;->TAG:Ljava/lang/String;

    const-string v1, "callback:onPlayerPaused"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/player/Player;->pc:Lcom/xiaomi/player/callback/PlayerCallback;

    invoke-interface {v0}, Lcom/xiaomi/player/callback/PlayerCallback;->onPlayerPaused()V

    return-void
.end method

.method public onPlayerResumed()V
    .locals 2

    sget-object v0, Lcom/xiaomi/player/Player;->TAG:Ljava/lang/String;

    const-string v1, "callback:onPlayerResumed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/player/Player;->pc:Lcom/xiaomi/player/callback/PlayerCallback;

    invoke-interface {v0}, Lcom/xiaomi/player/callback/PlayerCallback;->onPlayerResumed()V

    return-void
.end method

.method public onPlayerStarted()V
    .locals 2

    sget-object v0, Lcom/xiaomi/player/Player;->TAG:Ljava/lang/String;

    const-string v1, "callback:onPlayerStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/player/Player;->pc:Lcom/xiaomi/player/callback/PlayerCallback;

    invoke-interface {v0}, Lcom/xiaomi/player/callback/PlayerCallback;->onPlayerStarted()V

    return-void
.end method

.method public onPlayerStoped()V
    .locals 2

    sget-object v0, Lcom/xiaomi/player/Player;->TAG:Ljava/lang/String;

    const-string v1, "callback:onPlayerStoped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/player/Player;->pc:Lcom/xiaomi/player/callback/PlayerCallback;

    invoke-interface {v0}, Lcom/xiaomi/player/callback/PlayerCallback;->onPlayerStoped()V

    return-void
.end method

.method public onSeekCompleted()V
    .locals 2

    sget-object v0, Lcom/xiaomi/player/Player;->TAG:Ljava/lang/String;

    const-string v1, "callback:onSeekCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/player/Player;->pc:Lcom/xiaomi/player/callback/PlayerCallback;

    invoke-interface {v0}, Lcom/xiaomi/player/callback/PlayerCallback;->onSeekCompleted()V

    return-void
.end method

.method public onStartBuffering()V
    .locals 2

    sget-object v0, Lcom/xiaomi/player/Player;->TAG:Ljava/lang/String;

    const-string v1, "callback:onStartBuffering"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/player/Player;->pc:Lcom/xiaomi/player/callback/PlayerCallback;

    invoke-interface {v0}, Lcom/xiaomi/player/callback/PlayerCallback;->onStartBuffering()V

    return-void
.end method

.method public onStartPlaying()V
    .locals 2

    sget-object v0, Lcom/xiaomi/player/Player;->TAG:Ljava/lang/String;

    const-string v1, "callback:onStartPlaying"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/player/Player;->pc:Lcom/xiaomi/player/callback/PlayerCallback;

    invoke-interface {v0}, Lcom/xiaomi/player/callback/PlayerCallback;->onStartPlaying()V

    return-void
.end method

.method public onStreamEOF()V
    .locals 2

    sget-object v0, Lcom/xiaomi/player/Player;->TAG:Ljava/lang/String;

    const-string v1, "callback:onStreamEOF"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/player/Player;->pc:Lcom/xiaomi/player/callback/PlayerCallback;

    invoke-interface {v0}, Lcom/xiaomi/player/callback/PlayerCallback;->onStreamEOF()V

    return-void
.end method

.method public onVideoRenderingStart()V
    .locals 2

    sget-object v0, Lcom/xiaomi/player/Player;->TAG:Ljava/lang/String;

    const-string v1, "callback:onVideoRenderingStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/player/Player;->pc:Lcom/xiaomi/player/callback/PlayerCallback;

    invoke-interface {v0}, Lcom/xiaomi/player/callback/PlayerCallback;->onVideoRenderingStart()V

    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/xiaomi/player/Player;->TAG:Ljava/lang/String;

    const-string v1, "callback:onVideoSizeChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/xiaomi/player/datastruct/VideoSize;

    invoke-direct {v0, v2, v2}, Lcom/xiaomi/player/datastruct/VideoSize;-><init>(FF)V

    int-to-float v1, p1

    iput v1, v0, Lcom/xiaomi/player/datastruct/VideoSize;->video_width:F

    int-to-float v1, p2

    iput v1, v0, Lcom/xiaomi/player/datastruct/VideoSize;->video_height:F

    iget-object v1, p0, Lcom/xiaomi/player/Player;->pc:Lcom/xiaomi/player/callback/PlayerCallback;

    invoke-interface {v1, v0}, Lcom/xiaomi/player/callback/PlayerCallback;->onVideoSizeChanged(Lcom/xiaomi/player/datastruct/VideoSize;)V

    return-void
.end method

.method public pause()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/player/Player;->pauseJni()V

    return-void
.end method

.method public playbackState()Lcom/xiaomi/player/enums/PlayerPlaybackState;
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/player/Player;->playbackStateJni()I

    move-result v0

    invoke-static {v0}, Lcom/xiaomi/player/enums/PlayerPlaybackState;->int2enum(I)Lcom/xiaomi/player/enums/PlayerPlaybackState;

    move-result-object v0

    return-object v0
.end method

.method public redraw()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/player/Player;->redrawJni()V

    return-void
.end method

.method public reload(Ljava/lang/String;Z)Z
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/player/Player;->url:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/player/Player;->url:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lcom/xiaomi/player/Player;->reloadJni(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public removeRecordingSession(J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/player/Player;->removeRecordingSessionJni(J)V

    return-void
.end method

.method public resume()Z
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/player/Player;->resumeJni()Z

    move-result v0

    return v0
.end method

.method public seekTo(JLcom/xiaomi/player/enums/PlayerSeekingMode;)Z
    .locals 1

    invoke-virtual {p3}, Lcom/xiaomi/player/enums/PlayerSeekingMode;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/player/Player;->seekToJni(JI)Z

    move-result v0

    return v0
.end method

.method public setBufferTimeMax(J)V
    .locals 3

    const-wide/16 v0, 0x78

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/player/Player;->setBufferTimeMaxJni(J)V

    goto :goto_0
.end method

.method public setGravity(Lcom/xiaomi/player/Player$SurfaceGravity;II)V
    .locals 1

    invoke-virtual {p1}, Lcom/xiaomi/player/Player$SurfaceGravity;->toInt()I

    move-result v0

    invoke-direct {p0, v0, p2, p3}, Lcom/xiaomi/player/Player;->setGravityJni(III)V

    return-void
.end method

.method public setIpList([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/player/Player;->setIpListJni([Ljava/lang/String;)V

    return-void
.end method

.method public setSpeaker(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/player/Player;->setSpeakerJni(Z)V

    return-void
.end method

.method public setSpeedRatio(D)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/player/Player;->setSpeedRatioJni(D)Z

    move-result v0

    return v0
.end method

.method public setUserIdandClienIp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/player/Player;->setUserIdandClienIpJni(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setVideoFilter(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/player/Player;->setVideoFilterJni(Ljava/lang/String;)V

    return-void
.end method

.method public setVideoFilterIntensity(F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/player/Player;->setVideoFilterIntensityJni(F)V

    return-void
.end method

.method public setVideoSurface(Landroid/view/Surface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/player/Player;->setVideoSurfaceJni(Landroid/view/Surface;)V

    return-void
.end method

.method public shiftUp(F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/player/Player;->shiftUpJni(F)V

    return-void
.end method

.method public start(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/player/Player;->url:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/player/Player;->url:Ljava/lang/String;

    invoke-direct {p0, v0, p2, p3}, Lcom/xiaomi/player/Player;->startJni(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public stop()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/player/Player;->stopJni()V

    return-void
.end method

.method public unMuteAudio()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/player/Player;->unMuteAudioJni()V

    return-void
.end method

.method public videoSize()Lcom/xiaomi/player/datastruct/VideoSize;
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/player/Player;->videoSizeJni()Lcom/xiaomi/player/datastruct/VideoSize;

    move-result-object v0

    return-object v0
.end method
