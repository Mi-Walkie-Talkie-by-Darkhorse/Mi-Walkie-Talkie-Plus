.class public Lcom/xiaomi/channel/common/audio/XMAudioRecorder;
.super Ljava/lang/Thread;
.source "XMAudioRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/channel/common/audio/XMAudioRecorder$EncodeThread;
    }
.end annotation


# static fields
.field public static final AUDIO_FILE_MIME_TYPE:Ljava/lang/String; = "audio/x-speex"

.field public static final AUDIO_FILE_SUFFIX:Ljava/lang/String; = ".spx"

.field public static final AUDIO_FORMAT_CHANNEL_IN:I = 0x10

.field public static final AUDIO_FORMAT_CHANNEL_OUT:I = 0x4

.field public static final AUDIO_FORMAT_PCM_ENCODING:I = 0x2

.field private static AUDIO_SAMPLE_RATE:I = 0x0

.field private static FRAME_SIZE:I = 0x0

.field public static final MESSAGE_CODE_INIT_AUDIO_CODER_ERROR:I = 0x0

.field public static final MESSAGE_CODE_RECORD_ERROR:I = 0x1

.field public static final MESSAGE_RECORD_RMS_CHANGED:I = 0x3

.field public static final MESSAGE_RECORD_TIME_OUT:I = 0x2

.field private static SAMPLE_RATES:[I = null

.field public static final STATE_FINISHED:I = 0x3

.field public static final STATE_INITIALIZED:I = 0x1

.field public static final STATE_RECORDING:I = 0x2

.field public static final STATE_UNINITIALIZED:I = -0x1

.field private static final TAG:Ljava/lang/String;

.field private static instanceCount:I

.field private static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field private mAudioBlocks:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<[B>;"
        }
    .end annotation
.end field

.field private final mAudioFilePath:Ljava/lang/String;

.field private mAudioRecord:Landroid/media/AudioRecord;

.field private mContext:Landroid/content/Context;

.field private mEncodeThread:Lcom/xiaomi/channel/common/audio/XMAudioRecorder$EncodeThread;

.field private mHandler:Landroid/os/Handler;

.field private mQuality:I

.field private mRecordTime:J

.field private mStopRecord:Z

.field private mTimeLimit:J

.field private maxAmp:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->SAMPLE_RATES:[I

    sput v1, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->AUDIO_SAMPLE_RATE:I

    sput v1, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->FRAME_SIZE:I

    invoke-static {}, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->initAudioParameters()V

    sput v1, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->instanceCount:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->sInstanceLock:Ljava/lang/Object;

    return-void

    :array_0
    .array-data 4
        0x3e80
        0x1f40
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 6

    const-wide/32 v4, 0xfde8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;J)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->mAudioBlocks:Ljava/util/concurrent/LinkedBlockingQueue;

    iput-boolean v2, p0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->mStopRecord:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->mRecordTime:J

    const/16 v0, 0x8

    iput v0, p0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->mQuality:I

    iput v2, p0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->maxAmp:I

    iput-object p1, p0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->mAudioFilePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->mHandler:Landroid/os/Handler;

    iput-wide p4, p0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->mTimeLimit:J

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/channel/common/audio/XMAudioRecorder;)I
    .locals 1

    iget v0, p0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->mQuality:I

    return v0
.end method

.method static synthetic access$100(Lcom/xiaomi/channel/common/audio/XMAudioRecorder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->mAudioFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    sget v0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->AUDIO_SAMPLE_RATE:I

    return v0
.end method

.method static synthetic access$300(Lcom/xiaomi/channel/common/audio/XMAudioRecorder;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->mAudioBlocks:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method static synthetic access$400()I
    .locals 1

    sget v0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->FRAME_SIZE:I

    return v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getFrameSize(I)I
    .locals 1

    sget v0, Lcom/xiaomi/channel/common/audio/AudioCodec;->AUDIO_FORMAT:I

    mul-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x8

    div-int/lit8 v0, v0, 0x32

    return v0
.end method

.method private static initAudioParameters()V
    .locals 12

    const/4 v10, 0x1

    sget-object v8, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->SAMPLE_RATES:[I

    array-length v9, v8

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    if-ge v7, v9, :cond_4

    aget v2, v8, v7

    const/16 v0, 0x10

    const/4 v1, 0x2

    :try_start_0
    invoke-static {v2, v0, v1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    const/4 v0, -0x2

    if-eq v5, v0, :cond_2

    const/4 v0, -0x1

    if-eq v5, v0, :cond_2

    const/4 v6, 0x0

    :try_start_1
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x1

    const/16 v3, 0x10

    const/4 v4, 0x2

    mul-int/lit8 v5, v5, 0x8

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    if-ne v1, v10, :cond_1

    invoke-static {v2}, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->setAudioParameters(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    :cond_2
    :goto_2
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_3
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    :cond_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const/16 v0, 0x1f40

    invoke-static {v0}, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->setAudioParameters(I)V

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_3
.end method

.method private static minusInstanceCount()V
    .locals 3

    sget-object v1, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->instanceCount:I

    if-lez v0, :cond_0

    sget v0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->instanceCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->instanceCount:I

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    sget-object v0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->TAG:Ljava/lang/String;

    const-string v2, "want to minus instanceCount,but instanceCount <=0"

    invoke-static {v0, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static plusInstanceCount()V
    .locals 2

    sget-object v1, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->instanceCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->instanceCount:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private record()V
    .locals 13

    const/4 v2, 0x0

    sget v0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->FRAME_SIZE:I

    mul-int/lit8 v0, v0, 0x4

    new-array v3, v0, [B

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    move v0, v2

    :goto_0
    invoke-virtual {p0}, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->isRecordStopped()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v1, p0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    const/4 v8, 0x0

    array-length v9, v3

    invoke-virtual {v1, v3, v8, v9}, Landroid/media/AudioRecord;->read([BII)I

    move-result v8

    if-gtz v8, :cond_1

    sget-object v1, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->TAG:Ljava/lang/String;

    const-string v2, "\u51fa\u73b0\u8bfb0\u5b57\u8282"

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->setRecordStopped()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    :try_start_2
    sget-object v1, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "record "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    div-int/lit16 v0, v0, 0x400

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " KB in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->mRecordTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ms."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0}, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->release()V

    :goto_3
    return-void

    :cond_1
    add-int/2addr v0, v8

    :try_start_3
    new-array v9, v8, [B

    const/4 v1, 0x0

    const/4 v10, 0x0

    invoke-static {v3, v1, v9, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->mAudioBlocks:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, v9}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->maxAmp:I

    move v1, v2

    :goto_4
    add-int/lit8 v10, v8, -0x1

    if-ge v1, v10, :cond_3

    add-int/lit8 v10, v1, 0x1

    aget-byte v10, v9, v10

    shl-int/lit8 v10, v10, 0x8

    aget-byte v11, v9, v1

    or-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    iget v11, p0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->maxAmp:I

    if-le v10, v11, :cond_2

    iput v10, p0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->maxAmp:I

    :cond_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_4

    :cond_3
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v9, 0x3

    iput v9, v1, Landroid/os/Message;->what:I

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const-string v10, "rmsdB"

    iget v11, p0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->maxAmp:I

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v9}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v9, p0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sget-object v1, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "read "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v6, v10, v6

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    sub-long v6, v10, v4

    long-to-int v1, v6

    int-to-long v6, v1

    iget-wide v8, p0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->mTimeLimit:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_5

    sget-object v1, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "record more than time limit.\uff01\uff01\uff01"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->mTimeLimit:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    :try_start_4
    sget-object v1, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->release()V

    goto/16 :goto_3

    :cond_5
    int-to-long v6, v1

    :try_start_5
    iput-wide v6, p0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->mRecordTime:J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->release()V

    throw v0

    :catch_1
    move-exception v1

    goto/16 :goto_2
.end method

.method private static setAudioParameters(I)V
    .locals 1

    sput p0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->AUDIO_SAMPLE_RATE:I

    invoke-static {p0}, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->getFrameSize(I)I

    move-result v0

    sput v0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->FRAME_SIZE:I

    return-void
.end method

.method private declared-synchronized setRecordStopped()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->mStopRecord:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getAudioPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->mAudioFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getMaxAmplitude()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->maxAmp:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRecordTime()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->mRecordTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public init()V
    .locals 6

    const/16 v3, 0x10

    const/4 v4, 0x2

    const/4 v1, 0x1

    invoke-static {}, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->plusInstanceCount()V

    sget v0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->AUDIO_SAMPLE_RATE:I

    invoke-static {v0, v3, v4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v5

    const/4 v0, -0x2

    if-eq v5, v0, :cond_0

    const/4 v0, -0x1

    if-ne v5, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->release()V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Landroid/media/AudioRecord;

    sget v2, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->AUDIO_SAMPLE_RATE:I

    mul-int/lit8 v5, v5, 0x8

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->release()V

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the audio record is not initialized properly: cnt "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->instanceCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method public declared-synchronized isRecordStopped()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->mStopRecord:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public joinTheRecord()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->join()V

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->mEncodeThread:Lcom/xiaomi/channel/common/audio/XMAudioRecorder$EncodeThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->mEncodeThread:Lcom/xiaomi/channel/common/audio/XMAudioRecorder$EncodeThread;

    invoke-virtual {v0}, Lcom/xiaomi/channel/common/audio/XMAudioRecorder$EncodeThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-static {}, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->minusInstanceCount()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 3

    sget-boolean v0, Lcom/xiaomi/channel/common/audio/AudioCodec;->sInitialized:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "lib"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->release()V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder$EncodeThread;

    invoke-direct {v0, p0}, Lcom/xiaomi/channel/common/audio/XMAudioRecorder$EncodeThread;-><init>(Lcom/xiaomi/channel/common/audio/XMAudioRecorder;)V

    iput-object v0, p0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->mEncodeThread:Lcom/xiaomi/channel/common/audio/XMAudioRecorder$EncodeThread;

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->mEncodeThread:Lcom/xiaomi/channel/common/audio/XMAudioRecorder$EncodeThread;

    invoke-virtual {v0}, Lcom/xiaomi/channel/common/audio/XMAudioRecorder$EncodeThread;->start()V

    invoke-direct {p0}, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->record()V

    goto :goto_0
.end method

.method public setQuality(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->mQuality:I

    return-void
.end method

.method public stopRecord()V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->setRecordStopped()V

    invoke-virtual {p0}, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->joinTheRecord()V

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
