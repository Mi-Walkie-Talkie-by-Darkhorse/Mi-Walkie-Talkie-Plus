.class public Lcom/mi/mimsgsdk/video/MiVideoManager;
.super Ljava/lang/Object;
.source "MiVideoManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation


# static fields
.field public static final ERROR_ALREADY_IN_RECORDING:I = 0x5

.field public static final ERROR_CAMERA_NOT_PREPARE:I = 0x6

.field public static final ERROR_CREATE_THUMBNAIL_FAILED:I = 0x2

.field public static final ERROR_DOWNLOAD_VIDEO_FAILED:I = 0x4

.field public static final ERROR_SURFACEVIEW_NULL:I = 0x1

.field public static final ERROR_UNKNOWN:I = 0x0

.field public static final ERROR_VIDEO_TOO_SHORT:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final MIN_VIDEO_DURATION:I = 0x1f4

.field private static final VIDEO_HEIGHT:F = 640.0f

.field public static final VIDEO_SIZE_LARGE:I = 0x1

.field public static final VIDEO_SIZE_SMALL:I = 0x0

.field private static final VIDEO_WIDTH:F = 480.0f


# instance fields
.field private final DEFAULT_VIDEO_DURATION:I

.field private final IDLE:I

.field private final INIT_RECORD:I

.field private final MAX_VIDEO_DURATION:I

.field private final VIDEO_RECORD:I

.field private final VIDEO_RECORDING:I

.field private final VIDEO_RECORD_CANCELED:I

.field private final VIDEO_RECORD_FINISHED:I

.field private final VIDEO_RECORD_INTERRUPT:I

.field private camera:Landroid/hardware/Camera;

.field private mCameraNum:I

.field private mContext:Landroid/content/Context;

.field private mCurrentCamera:I

.field private mCurrentMode:I

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mPlayVideoPath:Ljava/lang/String;

.field private mPreviewView:Landroid/view/SurfaceView;

.field private mRecordDuration:I

.field private mRecordVideoLen:I

.field private mRecordVideoPath:Ljava/lang/String;

.field private mStartTime:J

.field private mVideoView:Landroid/widget/VideoView;

.field private miVideoCallback:Lcom/mi/mimsgsdk/video/MiVideoCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/mi/mimsgsdk/video/MiVideoManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mi/mimsgsdk/video/MiVideoManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const v3, 0xea60

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->IDLE:I

    iput v1, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->INIT_RECORD:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->VIDEO_RECORD:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->VIDEO_RECORDING:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->VIDEO_RECORD_FINISHED:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->VIDEO_RECORD_CANCELED:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->VIDEO_RECORD_INTERRUPT:I

    const v0, 0x927c0

    iput v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->MAX_VIDEO_DURATION:I

    iput v3, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->DEFAULT_VIDEO_DURATION:I

    iput v3, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mRecordDuration:I

    iput v2, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mCurrentCamera:I

    iput v1, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mCameraNum:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mStartTime:J

    iput-object p1, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mContext:Landroid/content/Context;

    iput v2, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mCurrentMode:I

    return-void
.end method

.method static synthetic access$000(Lcom/mi/mimsgsdk/video/MiVideoManager;)Lcom/mi/mimsgsdk/video/MiVideoCallback;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->miVideoCallback:Lcom/mi/mimsgsdk/video/MiVideoCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mi/mimsgsdk/video/MiVideoManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mPlayVideoPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mi/mimsgsdk/video/MiVideoManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mPlayVideoPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/mi/mimsgsdk/video/MiVideoManager;)Landroid/widget/VideoView;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mVideoView:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mi/mimsgsdk/video/MiVideoManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/mi/mimsgsdk/video/MiVideoManager;->interruptRecordVideo()V

    return-void
.end method

.method static synthetic access$400(Lcom/mi/mimsgsdk/video/MiVideoManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/video/MiVideoManager;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mi/mimsgsdk/video/MiVideoManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/mimsgsdk/video/MiVideoManager;->playVideo(Ljava/lang/String;)V

    return-void
.end method

.method private doEndRecord()Z
    .locals 2

    invoke-direct {p0}, Lcom/mi/mimsgsdk/video/MiVideoManager;->getDurationMS()I

    move-result v0

    iput v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mRecordVideoLen:I

    iget v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mRecordVideoLen:I

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private downloadAttachment(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/channel/common/audio/CustomAudioManager$DownloadCallback;)V
    .locals 2

    new-instance v0, Lcom/mi/mimsgsdk/video/MiVideoManager$7;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/mi/mimsgsdk/video/MiVideoManager$7;-><init>(Lcom/mi/mimsgsdk/video/MiVideoManager;Lcom/xiaomi/channel/common/audio/CustomAudioManager$DownloadCallback;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private getDurationMS()I
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iget-object v2, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mRecordVideoPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mRecordVideoPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mRecordVideoPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/mi/mimsgsdk/video/MiVideoManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video record file duration:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/mi/mimsgsdk/video/MiVideoManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "e"

    invoke-static {v2, v3, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    sget-object v2, Lcom/mi/mimsgsdk/video/MiVideoManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "e"

    invoke-static {v2, v3, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private interruptRecordVideo()V
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mCurrentMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x7

    iput v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mCurrentMode:I

    invoke-direct {p0}, Lcom/mi/mimsgsdk/video/MiVideoManager;->stopMediaRecorder()V

    invoke-direct {p0}, Lcom/mi/mimsgsdk/video/MiVideoManager;->releaseCamera()V

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->miVideoCallback:Lcom/mi/mimsgsdk/video/MiVideoCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->miVideoCallback:Lcom/mi/mimsgsdk/video/MiVideoCallback;

    invoke-interface {v0}, Lcom/mi/mimsgsdk/video/MiVideoCallback;->onRecordInterrupted()V

    :cond_0
    return-void
.end method

.method private static isHtcDevice()Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/String;

    const-string v2, "htc 802t"

    aput-object v2, v5, v1

    array-length v6, v5

    move v2, v1

    :goto_0
    if-ge v2, v6, :cond_2

    aget-object v7, v5, v2

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v2, v0

    :goto_1
    if-nez v2, :cond_1

    const-string v2, "htc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_2
    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    move v2, v1

    goto :goto_1
.end method

.method private isNexusDevice()Z
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/mi/mimsgsdk/video/MiVideoManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "device model: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-array v4, v1, [Ljava/lang/String;

    const-string v2, "nexus 6p"

    aput-object v2, v4, v0

    array-length v5, v4

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v6, v4, v2

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v0, v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private playVideo(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->requestFocus()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mi/mimsgsdk/video/MiVideoManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "e"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private releaseCamera()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->lock()V

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    iput-object v1, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->camera:Landroid/hardware/Camera;

    sget-object v0, Lcom/mi/mimsgsdk/video/MiVideoManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "releaseCamera"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setCamera(I)Z
    .locals 4

    invoke-direct {p0}, Lcom/mi/mimsgsdk/video/MiVideoManager;->releaseCamera()V

    :try_start_0
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->camera:Landroid/hardware/Camera;

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const/16 v0, 0x280

    const/16 v2, 0x1e0

    invoke-virtual {v1, v0, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    sget-object v0, Lcom/mi/mimsgsdk/video/MiVideoManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Anti band:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getAntibanding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "continuous-video"

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_1
    :try_start_4
    invoke-direct {p0}, Lcom/mi/mimsgsdk/video/MiVideoManager;->isNexusDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->camera:Landroid/hardware/Camera;

    const/16 v1, 0x10e

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :goto_2
    :try_start_5
    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->camera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mPreviewView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :goto_3
    :try_start_6
    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->unlock()V

    const/4 v0, 0x1

    :goto_4
    return v0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/mi/mimsgsdk/video/MiVideoManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "e"

    invoke-static {v2, v3, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/mi/mimsgsdk/video/MiVideoManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "e"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_4

    :catch_2
    move-exception v0

    :try_start_7
    sget-object v1, Lcom/mi/mimsgsdk/video/MiVideoManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "e"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->camera:Landroid/hardware/Camera;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    goto :goto_2

    :catch_3
    move-exception v0

    sget-object v1, Lcom/mi/mimsgsdk/video/MiVideoManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "e"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3
.end method

.method private setCameraDisplayOrientation(Landroid/app/Activity;ILandroid/hardware/Camera;)V
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    invoke-static {p2, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget v2, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    rsub-int v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    :goto_1
    invoke-virtual {p3, v0}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    return-void

    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    :cond_0
    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int v0, v1, v0

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setOrientationHint()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/16 v1, 0x10e

    const/16 v0, 0x5a

    const/4 v4, 0x1

    invoke-static {}, Lcom/mi/mimsgsdk/video/MiVideoManager;->isHtcDevice()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mCurrentCamera:I

    if-ne v2, v4, :cond_0

    iget-object v1, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v0}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/mi/mimsgsdk/video/MiVideoManager;->isNexusDevice()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v3, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mCurrentCamera:I

    if-ne v3, v4, :cond_1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v3, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mCurrentCamera:I

    if-ne v3, v4, :cond_3

    :goto_2
    invoke-virtual {v2, v1}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_2
.end method

.method private stopMediaRecorder()V
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    :cond_1
    iput-object v3, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v1, Lcom/mi/mimsgsdk/video/MiVideoManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "e"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    :cond_2
    iput-object v3, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    :cond_3
    iput-object v3, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    throw v0
.end method


# virtual methods
.method public cancelRecordVideo()V
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mCurrentMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x6

    iput v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mCurrentMode:I

    invoke-direct {p0}, Lcom/mi/mimsgsdk/video/MiVideoManager;->stopMediaRecorder()V

    invoke-direct {p0}, Lcom/mi/mimsgsdk/video/MiVideoManager;->releaseCamera()V

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->miVideoCallback:Lcom/mi/mimsgsdk/video/MiVideoCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->miVideoCallback:Lcom/mi/mimsgsdk/video/MiVideoCallback;

    invoke-interface {v0}, Lcom/mi/mimsgsdk/video/MiVideoCallback;->onRecordCanceled()V

    :cond_0
    return-void
.end method

.method public closePreview()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mCurrentMode:I

    invoke-direct {p0}, Lcom/mi/mimsgsdk/video/MiVideoManager;->releaseCamera()V

    return-void
.end method

.method public destroy()V
    .locals 0

    invoke-direct {p0}, Lcom/mi/mimsgsdk/video/MiVideoManager;->stopMediaRecorder()V

    invoke-direct {p0}, Lcom/mi/mimsgsdk/video/MiVideoManager;->releaseCamera()V

    return-void
.end method

.method public initVideoManager(Lcom/mi/mimsgsdk/video/MiVideoCallback;)V
    .locals 1

    iput-object p1, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->miVideoCallback:Lcom/mi/mimsgsdk/video/MiVideoCallback;

    const/4 v0, 0x2

    iput v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mCurrentMode:I

    return-void
.end method

.method public openPreview()V
    .locals 3

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mPreviewView:Landroid/view/SurfaceView;

    if-nez v0, :cond_1

    sget-object v0, Lcom/mi/mimsgsdk/video/MiVideoManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "surfaceview is null when call openPreview"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->miVideoCallback:Lcom/mi/mimsgsdk/video/MiVideoCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->miVideoCallback:Lcom/mi/mimsgsdk/video/MiVideoCallback;

    const/4 v1, 0x1

    const-string v2, "surfaceview is null when open preview"

    invoke-interface {v0, v1, v2}, Lcom/mi/mimsgsdk/video/MiVideoCallback;->onError(ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mCurrentMode:I

    iget v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mCurrentCamera:I

    invoke-direct {p0, v0}, Lcom/mi/mimsgsdk/video/MiVideoManager;->setCamera(I)Z

    goto :goto_0
.end method

.method public pauseVideo()V
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    :cond_0
    return-void
.end method

.method public playVideoWithUrl(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-object v0, Lcom/mi/mimsgsdk/video/MiVideoManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoview is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or videopath is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput-object p1, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mPlayVideoPath:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mPlayVideoPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lcom/mi/mimsgsdk/video/MiVideoManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play voice with localpath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mPlayVideoPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mPlayVideoPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mi/mimsgsdk/video/MiVideoManager;->playVideo(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/mi/mimsgsdk/video/MiVideoManager$6;

    invoke-direct {v0, p0}, Lcom/mi/mimsgsdk/video/MiVideoManager$6;-><init>(Lcom/mi/mimsgsdk/video/MiVideoManager;)V

    invoke-static {}, Lcom/mi/mimsgsdk/upload/AttachmentUtils;->newVideoFilePath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mi/mimsgsdk/video/MiVideoManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "try to download video and temp local path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->miVideoCallback:Lcom/mi/mimsgsdk/video/MiVideoCallback;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->miVideoCallback:Lcom/mi/mimsgsdk/video/MiVideoCallback;

    const-string v3, "start download video"

    invoke-interface {v2, v3}, Lcom/mi/mimsgsdk/video/MiVideoCallback;->onWriteLog(Ljava/lang/String;)V

    :cond_4
    iget-object v2, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mPlayVideoPath:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lcom/mi/mimsgsdk/video/MiVideoManager;->downloadAttachment(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/channel/common/audio/CustomAudioManager$DownloadCallback;)V

    goto :goto_0
.end method

.method public resumeVideo()V
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->resume()V

    :cond_0
    return-void
.end method

.method public setMaxRecordDuration(I)Z
    .locals 1

    const/16 v0, 0x1f4

    if-lt p1, v0, :cond_0

    const v0, 0x927c0

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mRecordDuration:I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSurfaceView(Landroid/view/SurfaceView;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    iput-object p1, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mPreviewView:Landroid/view/SurfaceView;

    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    iput v2, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mCameraNum:I

    sget-object v2, Lcom/mi/mimsgsdk/video/MiVideoManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "camera number "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mCameraNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mCameraNum:I

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mCameraNum:I

    if-ne v2, v0, :cond_2

    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    const/4 v2, 0x0

    invoke-static {v2, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    sget-object v2, Lcom/mi/mimsgsdk/video/MiVideoManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "camera facing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " oritentation:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/mi/mimsgsdk/video/MiVideoManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "e"

    invoke-static {v2, v3, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :goto_1
    :try_start_1
    iget v2, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mCameraNum:I

    if-ge v1, v2, :cond_0

    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    invoke-static {v1, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    sget-object v3, Lcom/mi/mimsgsdk/video/MiVideoManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "camera facing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " oritentation:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v2, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public setVideoView(Landroid/widget/VideoView;)Z
    .locals 2

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mVideoView:Landroid/widget/VideoView;

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mVideoView:Landroid/widget/VideoView;

    new-instance v1, Lcom/mi/mimsgsdk/video/MiVideoManager$1;

    invoke-direct {v1, p0}, Lcom/mi/mimsgsdk/video/MiVideoManager$1;-><init>(Lcom/mi/mimsgsdk/video/MiVideoManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mVideoView:Landroid/widget/VideoView;

    new-instance v1, Lcom/mi/mimsgsdk/video/MiVideoManager$2;

    invoke-direct {v1, p0}, Lcom/mi/mimsgsdk/video/MiVideoManager$2;-><init>(Lcom/mi/mimsgsdk/video/MiVideoManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mVideoView:Landroid/widget/VideoView;

    new-instance v1, Lcom/mi/mimsgsdk/video/MiVideoManager$3;

    invoke-direct {v1, p0}, Lcom/mi/mimsgsdk/video/MiVideoManager$3;-><init>(Lcom/mi/mimsgsdk/video/MiVideoManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startRecordVideo(Landroid/view/WindowManager;I)V
    .locals 5

    const/4 v3, 0x3

    const/16 v4, 0x140

    const/4 v1, 0x5

    const/4 v0, 0x4

    iget v2, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mCurrentMode:I

    if-ne v2, v0, :cond_1

    sget-object v0, Lcom/mi/mimsgsdk/video/MiVideoManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "You are under video recording status, can\'t do startRecordVideo!"

    invoke-static {v0, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->miVideoCallback:Lcom/mi/mimsgsdk/video/MiVideoCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->miVideoCallback:Lcom/mi/mimsgsdk/video/MiVideoCallback;

    const-string v2, "You are under video recording status, can\'t do startRecordVideo!"

    invoke-interface {v0, v1, v2}, Lcom/mi/mimsgsdk/video/MiVideoCallback;->onError(ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mCurrentMode:I

    if-eq v2, v3, :cond_2

    sget-object v0, Lcom/mi/mimsgsdk/video/MiVideoManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "camera not prepare"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->miVideoCallback:Lcom/mi/mimsgsdk/video/MiVideoCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->miVideoCallback:Lcom/mi/mimsgsdk/video/MiVideoCallback;

    const/4 v1, 0x6

    const-string v2, "you have not open preview or open preview failed"

    invoke-interface {v0, v1, v2}, Lcom/mi/mimsgsdk/video/MiVideoCallback;->onError(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mPreviewView:Landroid/view/SurfaceView;

    if-nez v2, :cond_3

    sget-object v0, Lcom/mi/mimsgsdk/video/MiVideoManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "surface view is null"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iput v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mCurrentMode:I

    :try_start_0
    new-instance v2, Landroid/media/MediaRecorder;

    invoke-direct {v2}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v2, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->reset()V

    iget-object v2, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v3, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    iget-object v2, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    iget-object v2, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-gt v2, v4, :cond_6

    :goto_1
    :try_start_1
    invoke-static {v0}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :goto_2
    :try_start_2
    sget-object v1, Lcom/mi/mimsgsdk/video/MiVideoManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "profile video frame size width="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    iget-object v1, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v2, 0x2fa8

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    iget-object v1, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    iget-object v1, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    iget-object v1, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v2, v0, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    iget-object v1, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v2, 0x1f40

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    iget-object v1, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    const v2, 0x1e8480

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    iget-object v1, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v1, v0}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v1, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mRecordDuration:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    packed-switch p2, :pswitch_data_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v1, 0x140

    const/16 v2, 0xf0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    :goto_3
    invoke-direct {p0}, Lcom/mi/mimsgsdk/video/MiVideoManager;->setOrientationHint()V

    invoke-static {}, Lcom/mi/mimsgsdk/upload/AttachmentUtils;->newVideoFilePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mRecordVideoPath:Ljava/lang/String;

    sget-object v0, Lcom/mi/mimsgsdk/video/MiVideoManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file path is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mRecordVideoPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mRecordVideoPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mPreviewView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    new-instance v1, Lcom/mi/mimsgsdk/video/MiVideoManager$4;

    invoke-direct {v1, p0}, Lcom/mi/mimsgsdk/video/MiVideoManager$4;-><init>(Lcom/mi/mimsgsdk/video/MiVideoManager;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    new-instance v1, Lcom/mi/mimsgsdk/video/MiVideoManager$5;

    invoke-direct {v1, p0}, Lcom/mi/mimsgsdk/video/MiVideoManager$5;-><init>(Lcom/mi/mimsgsdk/video/MiVideoManager;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->miVideoCallback:Lcom/mi/mimsgsdk/video/MiVideoCallback;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->miVideoCallback:Lcom/mi/mimsgsdk/video/MiVideoCallback;

    invoke-interface {v0}, Lcom/mi/mimsgsdk/video/MiVideoCallback;->onRecordInitializationSucceed()V

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->miVideoCallback:Lcom/mi/mimsgsdk/video/MiVideoCallback;

    invoke-interface {v0}, Lcom/mi/mimsgsdk/video/MiVideoCallback;->onRecordStart()V

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mStartTime:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mi/mimsgsdk/video/MiVideoManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "mediaRecorder init failed error"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->miVideoCallback:Lcom/mi/mimsgsdk/video/MiVideoCallback;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->miVideoCallback:Lcom/mi/mimsgsdk/video/MiVideoCallback;

    invoke-interface {v0}, Lcom/mi/mimsgsdk/video/MiVideoCallback;->onRecordInitializationFailed()V

    :cond_5
    invoke-direct {p0}, Lcom/mi/mimsgsdk/video/MiVideoManager;->interruptRecordVideo()V

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    :try_start_3
    sget-object v1, Lcom/mi/mimsgsdk/video/MiVideoManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "e"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v1, 0x140

    const/16 v2, 0xf0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    goto/16 :goto_3

    :pswitch_1
    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v1, 0x280

    const/16 v2, 0x1e0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRecorder;->setVideoSize(II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public stopRecordVideo()Z
    .locals 10

    const-wide/16 v8, 0x400

    const/4 v6, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x2

    iget v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mCurrentMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x5

    iput v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mCurrentMode:I

    :try_start_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    :cond_3
    iput-object v3, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-direct {p0}, Lcom/mi/mimsgsdk/video/MiVideoManager;->doEndRecord()Z

    move-result v0

    invoke-direct {p0}, Lcom/mi/mimsgsdk/video/MiVideoManager;->releaseCamera()V

    if-eqz v0, :cond_7

    sget-object v1, Lcom/mi/mimsgsdk/video/MiVideoManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "record finish and video is effective path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mRecordVideoPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " len="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mRecordVideoLen:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mRecordVideoPath:Ljava/lang/String;

    invoke-static {v1, v4}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, ".jpeg"

    invoke-static {v2, v5}, Lcom/mi/mimsgsdk/upload/AttachmentUtils;->newFilePath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/mimsgsdk/utils/ImageUtils;->saveToLocal(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->miVideoCallback:Lcom/mi/mimsgsdk/video/MiVideoCallback;

    if-eqz v2, :cond_0

    new-instance v2, Lcom/mi/mimsgsdk/video/VideoBody;

    invoke-direct {v2}, Lcom/mi/mimsgsdk/video/VideoBody;-><init>()V

    iget-object v3, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mRecordVideoPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mi/mimsgsdk/video/VideoBody;->setUrl(Ljava/lang/String;)V

    iget v3, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mRecordVideoLen:I

    invoke-virtual {v2, v3}, Lcom/mi/mimsgsdk/video/VideoBody;->setLength(I)V

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mRecordVideoPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    div-long/2addr v4, v8

    long-to-int v3, v4

    invoke-virtual {v2, v3}, Lcom/mi/mimsgsdk/video/VideoBody;->setSize(I)V

    invoke-virtual {v2, v1}, Lcom/mi/mimsgsdk/video/VideoBody;->setThumbnailUrl(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->miVideoCallback:Lcom/mi/mimsgsdk/video/MiVideoCallback;

    invoke-interface {v1, v2}, Lcom/mi/mimsgsdk/video/MiVideoCallback;->onRecordFinished(Lcom/mi/mimsgsdk/video/VideoBody;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v1, Lcom/mi/mimsgsdk/video/MiVideoManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "e"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :catch_1
    move-exception v0

    :try_start_3
    sget-object v1, Lcom/mi/mimsgsdk/video/MiVideoManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "e"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    :cond_4
    iput-object v3, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-direct {p0}, Lcom/mi/mimsgsdk/video/MiVideoManager;->doEndRecord()Z

    move-result v0

    invoke-direct {p0}, Lcom/mi/mimsgsdk/video/MiVideoManager;->releaseCamera()V

    if-eqz v0, :cond_9

    sget-object v1, Lcom/mi/mimsgsdk/video/MiVideoManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "record finish and video is effective path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mRecordVideoPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " len="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mRecordVideoLen:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mRecordVideoPath:Ljava/lang/String;

    invoke-static {v1, v4}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, ".jpeg"

    invoke-static {v2, v5}, Lcom/mi/mimsgsdk/upload/AttachmentUtils;->newFilePath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/mimsgsdk/utils/ImageUtils;->saveToLocal(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->miVideoCallback:Lcom/mi/mimsgsdk/video/MiVideoCallback;

    if-eqz v2, :cond_0

    new-instance v2, Lcom/mi/mimsgsdk/video/VideoBody;

    invoke-direct {v2}, Lcom/mi/mimsgsdk/video/VideoBody;-><init>()V

    iget-object v3, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mRecordVideoPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mi/mimsgsdk/video/VideoBody;->setUrl(Ljava/lang/String;)V

    iget v3, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mRecordVideoLen:I

    invoke-virtual {v2, v3}, Lcom/mi/mimsgsdk/video/VideoBody;->setLength(I)V

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mRecordVideoPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    div-long/2addr v4, v8

    long-to-int v3, v4

    invoke-virtual {v2, v3}, Lcom/mi/mimsgsdk/video/VideoBody;->setSize(I)V

    invoke-virtual {v2, v1}, Lcom/mi/mimsgsdk/video/VideoBody;->setThumbnailUrl(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->miVideoCallback:Lcom/mi/mimsgsdk/video/MiVideoCallback;

    invoke-interface {v1, v2}, Lcom/mi/mimsgsdk/video/MiVideoCallback;->onRecordFinished(Lcom/mi/mimsgsdk/video/VideoBody;)V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    :try_start_4
    sget-object v1, Lcom/mi/mimsgsdk/video/MiVideoManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "e"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    :cond_5
    iput-object v3, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-direct {p0}, Lcom/mi/mimsgsdk/video/MiVideoManager;->doEndRecord()Z

    move-result v0

    invoke-direct {p0}, Lcom/mi/mimsgsdk/video/MiVideoManager;->releaseCamera()V

    if-eqz v0, :cond_b

    sget-object v1, Lcom/mi/mimsgsdk/video/MiVideoManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "record finish and video is effective path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mRecordVideoPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " len="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mRecordVideoLen:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mRecordVideoPath:Ljava/lang/String;

    invoke-static {v1, v4}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, ".jpeg"

    invoke-static {v2, v5}, Lcom/mi/mimsgsdk/upload/AttachmentUtils;->newFilePath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/mimsgsdk/utils/ImageUtils;->saveToLocal(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->miVideoCallback:Lcom/mi/mimsgsdk/video/MiVideoCallback;

    if-eqz v2, :cond_0

    new-instance v2, Lcom/mi/mimsgsdk/video/VideoBody;

    invoke-direct {v2}, Lcom/mi/mimsgsdk/video/VideoBody;-><init>()V

    iget-object v3, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mRecordVideoPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mi/mimsgsdk/video/VideoBody;->setUrl(Ljava/lang/String;)V

    iget v3, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mRecordVideoLen:I

    invoke-virtual {v2, v3}, Lcom/mi/mimsgsdk/video/VideoBody;->setLength(I)V

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mRecordVideoPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    div-long/2addr v4, v8

    long-to-int v3, v4

    invoke-virtual {v2, v3}, Lcom/mi/mimsgsdk/video/VideoBody;->setSize(I)V

    invoke-virtual {v2, v1}, Lcom/mi/mimsgsdk/video/VideoBody;->setThumbnailUrl(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->miVideoCallback:Lcom/mi/mimsgsdk/video/MiVideoCallback;

    invoke-interface {v1, v2}, Lcom/mi/mimsgsdk/video/MiVideoCallback;->onRecordFinished(Lcom/mi/mimsgsdk/video/VideoBody;)V

    goto/16 :goto_0

    :catch_3
    move-exception v0

    :try_start_5
    sget-object v1, Lcom/mi/mimsgsdk/video/MiVideoManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "e"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    :cond_6
    iget-object v2, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->miVideoCallback:Lcom/mi/mimsgsdk/video/MiVideoCallback;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->miVideoCallback:Lcom/mi/mimsgsdk/video/MiVideoCallback;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "thumbnail create failed, path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v5, v1}, Lcom/mi/mimsgsdk/video/MiVideoCallback;->onError(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    sget-object v1, Lcom/mi/mimsgsdk/video/MiVideoManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "record finish and video is not effective path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mRecordVideoPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " len="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mRecordVideoLen:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->miVideoCallback:Lcom/mi/mimsgsdk/video/MiVideoCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->miVideoCallback:Lcom/mi/mimsgsdk/video/MiVideoCallback;

    const-string v2, "video duration is shorter than 500ms, can not be record"

    invoke-interface {v1, v6, v2}, Lcom/mi/mimsgsdk/video/MiVideoCallback;->onError(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    iget-object v2, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->miVideoCallback:Lcom/mi/mimsgsdk/video/MiVideoCallback;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->miVideoCallback:Lcom/mi/mimsgsdk/video/MiVideoCallback;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "thumbnail create failed, path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v5, v1}, Lcom/mi/mimsgsdk/video/MiVideoCallback;->onError(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    sget-object v1, Lcom/mi/mimsgsdk/video/MiVideoManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "record finish and video is not effective path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mRecordVideoPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " len="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mRecordVideoLen:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->miVideoCallback:Lcom/mi/mimsgsdk/video/MiVideoCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->miVideoCallback:Lcom/mi/mimsgsdk/video/MiVideoCallback;

    const-string v2, "video duration is shorter than 500ms, can not be record"

    invoke-interface {v1, v6, v2}, Lcom/mi/mimsgsdk/video/MiVideoCallback;->onError(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    iget-object v2, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->miVideoCallback:Lcom/mi/mimsgsdk/video/MiVideoCallback;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->miVideoCallback:Lcom/mi/mimsgsdk/video/MiVideoCallback;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "thumbnail create failed, path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v5, v1}, Lcom/mi/mimsgsdk/video/MiVideoCallback;->onError(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    sget-object v1, Lcom/mi/mimsgsdk/video/MiVideoManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "record finish and video is not effective path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mRecordVideoPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " len="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mRecordVideoLen:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->miVideoCallback:Lcom/mi/mimsgsdk/video/MiVideoCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->miVideoCallback:Lcom/mi/mimsgsdk/video/MiVideoCallback;

    const-string v2, "video duration is shorter than 500ms, can not be record"

    invoke-interface {v1, v6, v2}, Lcom/mi/mimsgsdk/video/MiVideoCallback;->onError(ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public stopVideo()V
    .locals 3

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->miVideoCallback:Lcom/mi/mimsgsdk/video/MiVideoCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->miVideoCallback:Lcom/mi/mimsgsdk/video/MiVideoCallback;

    iget-object v1, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mPlayVideoPath:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/mi/mimsgsdk/video/MiVideoCallback;->onPlayEnd(Ljava/lang/String;Z)V

    :cond_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    :cond_1
    return-void
.end method

.method public switchCamera()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mPreviewView:Landroid/view/SurfaceView;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->miVideoCallback:Lcom/mi/mimsgsdk/video/MiVideoCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->miVideoCallback:Lcom/mi/mimsgsdk/video/MiVideoCallback;

    const-string v1, "surfaceview is null when switchCamera"

    invoke-interface {v0, v2, v1}, Lcom/mi/mimsgsdk/video/MiVideoCallback;->onError(ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mCurrentCamera:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    iget v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mCurrentCamera:I

    invoke-direct {p0, v0}, Lcom/mi/mimsgsdk/video/MiVideoManager;->setCamera(I)Z

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mCurrentCamera:I

    goto :goto_1

    :pswitch_1
    iput v2, p0, Lcom/mi/mimsgsdk/video/MiVideoManager;->mCurrentCamera:I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
