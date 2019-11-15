.class public Lcom/mi/mimsgsdk/asr/MiASRManager;
.super Ljava/lang/Object;
.source "MiASRManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/mimsgsdk/asr/MiASRManager$ReadPcmThread;,
        Lcom/mi/mimsgsdk/asr/MiASRManager$EncodeThread;
    }
.end annotation


# static fields
.field private static PCM_FILE_DIR:Ljava/lang/String; = null

.field private static final SAMPLE_RATE_16000:I = 0x3e80

.field private static final SAMPLE_RATE_8000:I = 0x1f40

.field private static final TAG:Ljava/lang/String;

.field private static final mSMAppId:Ljava/lang/String; = "mi_entertainment"

.field private static final mSMAppKey:Ljava/lang/String; = "CK_PQpAf3PAWBtnISrK3rYBU"


# instance fields
.field private FRAME_SIZE:I

.field private isConvertStopped:Z

.field private mAudioBlocks:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<[B>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mMiASRListener:Lcom/mi/mimsgsdk/asr/MiASRListener;

.field private mSMRecognizer:Lcom/shenma/speechrecognition/e;

.field private mSMRecognizerListener:Landroid/speech/RecognitionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/mi/mimsgsdk/asr/MiASRManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mi/mimsgsdk/asr/MiASRManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mi/mimsgsdk/asr/MiASRListener;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/mi/mimsgsdk/asr/MiASRManager;->FRAME_SIZE:I

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager;->mAudioBlocks:Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager;->isConvertStopped:Z

    iput-object p1, p0, Lcom/mi/mimsgsdk/asr/MiASRManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/mi/mimsgsdk/asr/MiASRManager;->mMiASRListener:Lcom/mi/mimsgsdk/asr/MiASRListener;

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/mi/mimsgsdk/upload/AttachmentUtils;->makeDirsIfNeeded(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mi/mimsgsdk/asr/MiASRManager;->PCM_FILE_DIR:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager;->mContext:Landroid/content/Context;

    const-string v1, "mi_entertainment"

    const-string v2, "CK_PQpAf3PAWBtnISrK3rYBU"

    invoke-static {v0, v1, v2}, Lcom/shenma/speechrecognition/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/shenma/speechrecognition/e;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager;->mSMRecognizer:Lcom/shenma/speechrecognition/e;

    iget-object v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager;->mSMRecognizer:Lcom/shenma/speechrecognition/e;

    invoke-virtual {v0, v3}, Lcom/shenma/speechrecognition/e;->c(Z)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager;->mSMRecognizer:Lcom/shenma/speechrecognition/e;

    invoke-virtual {v0, v3}, Lcom/shenma/speechrecognition/e;->b(Z)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager;->mSMRecognizer:Lcom/shenma/speechrecognition/e;

    sget-object v1, Lcom/mi/mimsgsdk/asr/MiASRManager;->PCM_FILE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/shenma/speechrecognition/e;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/mi/mimsgsdk/asr/MiASRManager$1;

    invoke-direct {v0, p0, p2}, Lcom/mi/mimsgsdk/asr/MiASRManager$1;-><init>(Lcom/mi/mimsgsdk/asr/MiASRManager;Lcom/mi/mimsgsdk/asr/MiASRListener;)V

    iput-object v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager;->mSMRecognizerListener:Landroid/speech/RecognitionListener;

    iget-object v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager;->mSMRecognizer:Lcom/shenma/speechrecognition/e;

    iget-object v1, p0, Lcom/mi/mimsgsdk/asr/MiASRManager;->mSMRecognizerListener:Landroid/speech/RecognitionListener;

    invoke-virtual {v0, v1}, Lcom/shenma/speechrecognition/e;->a(Landroid/speech/RecognitionListener;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/asr/MiASRManager;->PCM_FILE_DIR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mi/mimsgsdk/asr/MiASRManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/mi/mimsgsdk/asr/MiASRManager;->isConvertStopped()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/mi/mimsgsdk/asr/MiASRManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mi/mimsgsdk/asr/MiASRManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/mi/mimsgsdk/asr/MiASRManager;->setConvertStopped()V

    return-void
.end method

.method static synthetic access$200(Lcom/mi/mimsgsdk/asr/MiASRManager;)I
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager;->FRAME_SIZE:I

    return v0
.end method

.method static synthetic access$202(Lcom/mi/mimsgsdk/asr/MiASRManager;I)I
    .locals 0

    iput p1, p0, Lcom/mi/mimsgsdk/asr/MiASRManager;->FRAME_SIZE:I

    return p1
.end method

.method static synthetic access$300(Lcom/mi/mimsgsdk/asr/MiASRManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/mi/mimsgsdk/asr/MiASRManager;->setConvertStarted()V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/asr/MiASRManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mi/mimsgsdk/asr/MiASRManager;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager;->mAudioBlocks:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mi/mimsgsdk/asr/MiASRManager;)Lcom/mi/mimsgsdk/asr/MiASRListener;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager;->mMiASRListener:Lcom/mi/mimsgsdk/asr/MiASRListener;

    return-object v0
.end method

.method private declared-synchronized isConvertStopped()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager;->isConvertStopped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setConvertStarted()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager;->isConvertStopped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setConvertStopped()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager;->isConvertStopped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setOutputDir(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager;->mSMRecognizer:Lcom/shenma/speechrecognition/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager;->mSMRecognizer:Lcom/shenma/speechrecognition/e;

    invoke-virtual {v0, p1}, Lcom/shenma/speechrecognition/e;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setVadState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager;->mSMRecognizer:Lcom/shenma/speechrecognition/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager;->mSMRecognizer:Lcom/shenma/speechrecognition/e;

    invoke-virtual {v0, p1}, Lcom/shenma/speechrecognition/e;->b(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager;->mSMRecognizer:Lcom/shenma/speechrecognition/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager;->mSMRecognizer:Lcom/shenma/speechrecognition/e;

    invoke-virtual {v0}, Lcom/shenma/speechrecognition/e;->c()V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager;->mSMRecognizer:Lcom/shenma/speechrecognition/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager;->mSMRecognizer:Lcom/shenma/speechrecognition/e;

    invoke-virtual {v0}, Lcom/shenma/speechrecognition/e;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager;->mSMRecognizer:Lcom/shenma/speechrecognition/e;

    :cond_0
    return-void
.end method

.method public getAudioDir()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/asr/MiASRManager;->PCM_FILE_DIR:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/mi/mimsgsdk/upload/AttachmentUtils;->makeDirsIfNeeded(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mi/mimsgsdk/asr/MiASRManager;->PCM_FILE_DIR:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/mi/mimsgsdk/asr/MiASRManager;->PCM_FILE_DIR:Ljava/lang/String;

    return-object v0
.end method

.method public setRealTimeOutput(Z)V
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager;->mSMRecognizer:Lcom/shenma/speechrecognition/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager;->mSMRecognizer:Lcom/shenma/speechrecognition/e;

    invoke-virtual {v0, p1}, Lcom/shenma/speechrecognition/e;->a(Z)V

    :cond_0
    return-void
.end method

.method public startListening()V
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager;->mSMRecognizer:Lcom/shenma/speechrecognition/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager;->mSMRecognizer:Lcom/shenma/speechrecognition/e;

    invoke-virtual {v0}, Lcom/shenma/speechrecognition/e;->a()V

    :cond_0
    return-void
.end method

.method public stopListening()V
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager;->mSMRecognizer:Lcom/shenma/speechrecognition/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager;->mSMRecognizer:Lcom/shenma/speechrecognition/e;

    invoke-virtual {v0}, Lcom/shenma/speechrecognition/e;->b()V

    :cond_0
    return-void
.end method
