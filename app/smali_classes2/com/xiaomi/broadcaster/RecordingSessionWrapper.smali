.class public Lcom/xiaomi/broadcaster/RecordingSessionWrapper;
.super Ljava/lang/Object;
.source "RecordingSessionWrapper.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private rc:Lcom/xiaomi/broadcaster/callback/RecordingSessionCallback;

.field private recordingSession:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "RecordingSessionWrapper"

    sput-object v0, Lcom/xiaomi/broadcaster/RecordingSessionWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/broadcaster/RecordingSessionWrapper;->recordingSession:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/broadcaster/RecordingSessionWrapper;->rc:Lcom/xiaomi/broadcaster/callback/RecordingSessionCallback;

    return-void
.end method

.method private native addRecordingExternalAudioStreamJni(JZII)V
.end method

.method private native addRecordingExternalVideoStreamJni(JZFFFFFFFFFFI)V
.end method

.method private native constructRecordingSessionJni(Landroid/content/Context;IIII)J
.end method

.method private native destructRecordingSessionJni()V
.end method

.method private native pushExtraYUVFrameJni(II[BIIIJJ)V
.end method

.method private native pushRecordingExternalAudioFrameJni(IIII[BJJ)V
.end method

.method private native removeRecordingExternalAudioStreamJni(J)V
.end method

.method private native removeRecordingExternalVideoStreamJni(J)V
.end method

.method private native startRecordingJni(Ljava/lang/String;)Z
.end method

.method private native stopRecordingJni()V
.end method


# virtual methods
.method public addRecordingExternalAudioStream(JZII)V
    .locals 3

    sget-object v0, Lcom/xiaomi/broadcaster/RecordingSessionWrapper;->TAG:Ljava/lang/String;

    const-string v1, "addRecordingExternalAudioStream"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p5}, Lcom/xiaomi/broadcaster/RecordingSessionWrapper;->addRecordingExternalAudioStreamJni(JZII)V

    return-void
.end method

.method public addRecordingExternalVideoStream(JZFFFFFFFFFFI)V
    .locals 3

    sget-object v0, Lcom/xiaomi/broadcaster/RecordingSessionWrapper;->TAG:Ljava/lang/String;

    const-string v1, "addRecordingExternalVideoStream"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p14}, Lcom/xiaomi/broadcaster/RecordingSessionWrapper;->addRecordingExternalVideoStreamJni(JZFFFFFFFFFFI)V

    return-void
.end method

.method public constructRecordingSession(Landroid/content/Context;Lcom/xiaomi/broadcaster/callback/RecordingSessionCallback;IIII)V
    .locals 6

    sget-object v0, Lcom/xiaomi/broadcaster/RecordingSessionWrapper;->TAG:Ljava/lang/String;

    const-string v1, "constructRecordingSession enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/xiaomi/broadcaster/RecordingSessionWrapper;->rc:Lcom/xiaomi/broadcaster/callback/RecordingSessionCallback;

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/broadcaster/RecordingSessionWrapper;->constructRecordingSessionJni(Landroid/content/Context;IIII)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/broadcaster/RecordingSessionWrapper;->recordingSession:J

    return-void
.end method

.method public destructRecordingSession()V
    .locals 2

    sget-object v0, Lcom/xiaomi/broadcaster/RecordingSessionWrapper;->TAG:Ljava/lang/String;

    const-string v1, "destructRecordingSession enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/xiaomi/broadcaster/RecordingSessionWrapper;->destructRecordingSessionJni()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/broadcaster/RecordingSessionWrapper;->recordingSession:J

    return-void
.end method

.method public getRecordingSession()J
    .locals 2

    sget-object v0, Lcom/xiaomi/broadcaster/RecordingSessionWrapper;->TAG:Ljava/lang/String;

    const-string v1, "getRecordingSession enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/xiaomi/broadcaster/RecordingSessionWrapper;->recordingSession:J

    return-wide v0
.end method

.method public onRecordingFailed()V
    .locals 2

    sget-object v0, Lcom/xiaomi/broadcaster/RecordingSessionWrapper;->TAG:Ljava/lang/String;

    const-string v1, "callback:onRecordingFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/broadcaster/RecordingSessionWrapper;->rc:Lcom/xiaomi/broadcaster/callback/RecordingSessionCallback;

    invoke-interface {v0}, Lcom/xiaomi/broadcaster/callback/RecordingSessionCallback;->onRecordingFailed()V

    return-void
.end method

.method public onRecordingOk(I)V
    .locals 2

    sget-object v0, Lcom/xiaomi/broadcaster/RecordingSessionWrapper;->TAG:Ljava/lang/String;

    const-string v1, "callback:onRecordingOk"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/broadcaster/RecordingSessionWrapper;->rc:Lcom/xiaomi/broadcaster/callback/RecordingSessionCallback;

    invoke-interface {v0, p1}, Lcom/xiaomi/broadcaster/callback/RecordingSessionCallback;->onRecordingOk(I)V

    return-void
.end method

.method public pushExtraYUVFrame(II[BIIIJJ)V
    .locals 3

    sget-object v0, Lcom/xiaomi/broadcaster/RecordingSessionWrapper;->TAG:Ljava/lang/String;

    const-string v1, "pushExtraYUVFrame"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p10}, Lcom/xiaomi/broadcaster/RecordingSessionWrapper;->pushExtraYUVFrameJni(II[BIIIJJ)V

    return-void
.end method

.method public pushRecordingExternalAudioFrame(IIII[BJJ)V
    .locals 2

    sget-object v0, Lcom/xiaomi/broadcaster/RecordingSessionWrapper;->TAG:Ljava/lang/String;

    const-string v1, "pushRecordingExternalAudioFrame"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p9}, Lcom/xiaomi/broadcaster/RecordingSessionWrapper;->pushRecordingExternalAudioFrameJni(IIII[BJJ)V

    return-void
.end method

.method public removeRecordingExternalAudioStream(J)V
    .locals 3

    sget-object v0, Lcom/xiaomi/broadcaster/RecordingSessionWrapper;->TAG:Ljava/lang/String;

    const-string v1, "removeRecordingExternalAudioStream"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/broadcaster/RecordingSessionWrapper;->removeRecordingExternalAudioStreamJni(J)V

    return-void
.end method

.method public removeRecordingExternalVideoStream(J)V
    .locals 3

    sget-object v0, Lcom/xiaomi/broadcaster/RecordingSessionWrapper;->TAG:Ljava/lang/String;

    const-string v1, "removeRecordingExternalVideoStream"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/broadcaster/RecordingSessionWrapper;->removeRecordingExternalVideoStreamJni(J)V

    return-void
.end method

.method public startRecording(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lcom/xiaomi/broadcaster/RecordingSessionWrapper;->TAG:Ljava/lang/String;

    const-string v1, "startRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/xiaomi/broadcaster/RecordingSessionWrapper;->startRecordingJni(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public stopRecording()V
    .locals 2

    sget-object v0, Lcom/xiaomi/broadcaster/RecordingSessionWrapper;->TAG:Ljava/lang/String;

    const-string v1, "startRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/xiaomi/broadcaster/RecordingSessionWrapper;->stopRecordingJni()V

    return-void
.end method
