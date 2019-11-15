.class public abstract Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;
.super Ljava/lang/Object;
.source "AbstractXMAudioRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$RecordInitTask;,
        Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$OnAudioRecordGlobalListener;
    }
.end annotation


# static fields
.field public static final MAX_AUDIO_DURATION:I = 0xea60

.field public static final MIN_AUDIO_DURATION:I = 0x3e8

.field public static final MIN_AUDIO_FILE_LEN:I = 0x3e8

.field private static sGlobalListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$OnAudioRecordGlobalListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;

.field private isRecordable:Z

.field protected mAudioRecorder:Lcom/xiaomi/channel/common/audio/XMAudioRecorder;

.field protected final mContext:Landroid/content/Context;

.field private mDuration:I

.field private mHandler:Landroid/os/Handler;

.field private mPath:Ljava/lang/String;

.field private mRecordInitTask:Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$RecordInitTask;

.field private mStartRecording:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->sGlobalListeners:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->isRecordable:Z

    iput-object p1, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->mDuration:I

    iput-object p3, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    const v0, 0xea60

    invoke-direct {p0, p1, v0, p2}, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;-><init>(Landroid/content/Context;ILandroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$102(Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->isRecordable:Z

    return p1
.end method

.method static synthetic access$200()V
    .locals 0

    invoke-static {}, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->raiseAudioRecordStoppedGlobalEvent()V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized addGlobalListener(Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$OnAudioRecordGlobalListener;)V
    .locals 2

    const-class v1, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->sGlobalListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized raiseAudioRecordStoppedGlobalEvent()V
    .locals 3

    const-class v1, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->sGlobalListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$OnAudioRecordGlobalListener;

    invoke-interface {v0}, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$OnAudioRecordGlobalListener;->onAudioRecordStopped()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized raiseStartingAudioRecordGlobalEvent()V
    .locals 3

    const-class v1, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->sGlobalListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$OnAudioRecordGlobalListener;

    invoke-interface {v0}, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$OnAudioRecordGlobalListener;->onStartingAudioRecord()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized removeGlobalListener(Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$OnAudioRecordGlobalListener;)V
    .locals 2

    const-class v1, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->sGlobalListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public endRecord(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->mStartRecording:Z

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->mStartRecording:Z

    invoke-virtual {p0}, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->onEndingRecord()V

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->mRecordInitTask:Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$RecordInitTask;

    invoke-virtual {v0}, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$RecordInitTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->mRecordInitTask:Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$RecordInitTask;

    invoke-virtual {v0}, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$RecordInitTask;->cancelExecution()V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->mRecordInitTask:Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$RecordInitTask;

    invoke-static {v0}, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$RecordInitTask;->access$000(Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$RecordInitTask;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->TAG:Ljava/lang/String;

    const-string v1, "the end recording is called, but actually is not properly initialized."

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->isRecordable:Z

    invoke-static {}, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->raiseAudioRecordStoppedGlobalEvent()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$1;-><init>(Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;Z)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public getAudioLen()J
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->mAudioRecorder:Lcom/xiaomi/channel/common/audio/XMAudioRecorder;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->mAudioRecorder:Lcom/xiaomi/channel/common/audio/XMAudioRecorder;

    invoke-virtual {v0}, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->getRecordTime()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getAudioPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->mAudioRecorder:Lcom/xiaomi/channel/common/audio/XMAudioRecorder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->mAudioRecorder:Lcom/xiaomi/channel/common/audio/XMAudioRecorder;

    invoke-virtual {v0}, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->getAudioPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPCMAmplitude()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->mAudioRecorder:Lcom/xiaomi/channel/common/audio/XMAudioRecorder;

    invoke-virtual {v0}, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->getMaxAmplitude()I

    move-result v0

    return v0
.end method

.method public declared-synchronized initMediaRecorder(I)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->mAudioRecorder:Lcom/xiaomi/channel/common/audio/XMAudioRecorder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->mAudioRecorder:Lcom/xiaomi/channel/common/audio/XMAudioRecorder;

    invoke-virtual {v0}, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->mAudioRecorder:Lcom/xiaomi/channel/common/audio/XMAudioRecorder;

    :cond_0
    new-instance v0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;

    iget-object v1, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->mPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->mHandler:Landroid/os/Handler;

    iget v4, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->mDuration:I

    int-to-long v4, v4

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;J)V

    iput-object v0, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->mAudioRecorder:Lcom/xiaomi/channel/common/audio/XMAudioRecorder;

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->mAudioRecorder:Lcom/xiaomi/channel/common/audio/XMAudioRecorder;

    invoke-virtual {v0, p1}, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->setQuality(I)V

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->mAudioRecorder:Lcom/xiaomi/channel/common/audio/XMAudioRecorder;

    invoke-virtual {v0}, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->init()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isRecordable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->isRecordable:Z

    return v0
.end method

.method public isRecording()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->mStartRecording:Z

    return v0
.end method

.method public joinTheRecord()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->mAudioRecorder:Lcom/xiaomi/channel/common/audio/XMAudioRecorder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->mAudioRecorder:Lcom/xiaomi/channel/common/audio/XMAudioRecorder;

    invoke-virtual {v0}, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->joinTheRecord()V

    :cond_0
    return-void
.end method

.method public abstract onEndingRecord()V
.end method

.method public abstract onRecordFailed()V
.end method

.method public abstract onRecordFinished()V
.end method

.method public abstract onRecordInitializationCancelled()V
.end method

.method public abstract onRecordInitializationFailed()V
.end method

.method public abstract onRecordInitializationSucceed()V
.end method

.method public abstract onRecordStart()V
.end method

.method public startRecord(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->startRecord(Ljava/lang/String;I)V

    return-void
.end method

.method public startRecord(Ljava/lang/String;I)V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->isRecordable:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->raiseStartingAudioRecordGlobalEvent()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->mStartRecording:Z

    iput-boolean v1, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->isRecordable:Z

    iput-object p1, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->mPath:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->onRecordStart()V

    new-instance v0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$RecordInitTask;

    invoke-direct {v0, p0, p2}, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$RecordInitTask;-><init>(Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;I)V

    iput-object v0, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->mRecordInitTask:Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$RecordInitTask;

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;->mRecordInitTask:Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$RecordInitTask;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord$RecordInitTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
