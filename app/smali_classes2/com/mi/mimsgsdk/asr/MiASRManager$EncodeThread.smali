.class Lcom/mi/mimsgsdk/asr/MiASRManager$EncodeThread;
.super Ljava/lang/Thread;
.source "MiASRManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/mimsgsdk/asr/MiASRManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EncodeThread"
.end annotation


# instance fields
.field private audioCodec:Lcom/xiaomi/channel/common/audio/AudioCodec;

.field private isEncodeError:Z

.field private mDstSpxPath:Ljava/lang/String;

.field private mPcmLen:J

.field private mQuality:I

.field final synthetic this$0:Lcom/mi/mimsgsdk/asr/MiASRManager;


# direct methods
.method public constructor <init>(Lcom/mi/mimsgsdk/asr/MiASRManager;Ljava/lang/String;J)V
    .locals 3

    iput-object p1, p0, Lcom/mi/mimsgsdk/asr/MiASRManager$EncodeThread;->this$0:Lcom/mi/mimsgsdk/asr/MiASRManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/16 v0, 0x8

    iput v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager$EncodeThread;->mQuality:I

    new-instance v0, Lcom/xiaomi/channel/common/audio/AudioCodec;

    iget v1, p0, Lcom/mi/mimsgsdk/asr/MiASRManager$EncodeThread;->mQuality:I

    invoke-direct {v0, v1}, Lcom/xiaomi/channel/common/audio/AudioCodec;-><init>(I)V

    iput-object v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager$EncodeThread;->audioCodec:Lcom/xiaomi/channel/common/audio/AudioCodec;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager$EncodeThread;->isEncodeError:Z

    iput-object p2, p0, Lcom/mi/mimsgsdk/asr/MiASRManager$EncodeThread;->mDstSpxPath:Ljava/lang/String;

    iput-wide p3, p0, Lcom/mi/mimsgsdk/asr/MiASRManager$EncodeThread;->mPcmLen:J

    return-void
.end method

.method static synthetic access$700(Lcom/mi/mimsgsdk/asr/MiASRManager$EncodeThread;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager$EncodeThread;->isEncodeError:Z

    return v0
.end method

.method static synthetic access$800(Lcom/mi/mimsgsdk/asr/MiASRManager$EncodeThread;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager$EncodeThread;->mDstSpxPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mi/mimsgsdk/asr/MiASRManager$EncodeThread;)J
    .locals 2

    iget-wide v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager$EncodeThread;->mPcmLen:J

    return-wide v0
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-boolean v0, Lcom/xiaomi/channel/common/audio/AudioCodec;->sInitialized:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mi/mimsgsdk/asr/MiASRManager;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "audiocodec is not initialized"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mi/mimsgsdk/asr/MiASRManager$EncodeThread;->mDstSpxPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager$EncodeThread;->audioCodec:Lcom/xiaomi/channel/common/audio/AudioCodec;

    iget-object v1, p0, Lcom/mi/mimsgsdk/asr/MiASRManager$EncodeThread;->mDstSpxPath:Ljava/lang/String;

    const/16 v2, 0x3e80

    sget v3, Lcom/xiaomi/channel/common/audio/AudioCodec;->CHANNEL:I

    sget v4, Lcom/xiaomi/channel/common/audio/AudioCodec;->AUDIO_FORMAT:I

    iget-object v5, p0, Lcom/mi/mimsgsdk/asr/MiASRManager$EncodeThread;->audioCodec:Lcom/xiaomi/channel/common/audio/AudioCodec;

    invoke-virtual {v5}, Lcom/xiaomi/channel/common/audio/AudioCodec;->getQuality()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/channel/common/audio/AudioCodec;->prepare(Ljava/lang/String;IIII)I

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager$EncodeThread;->this$0:Lcom/mi/mimsgsdk/asr/MiASRManager;

    invoke-static {v0}, Lcom/mi/mimsgsdk/asr/MiASRManager;->access$100(Lcom/mi/mimsgsdk/asr/MiASRManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager$EncodeThread;->this$0:Lcom/mi/mimsgsdk/asr/MiASRManager;

    invoke-static {v0}, Lcom/mi/mimsgsdk/asr/MiASRManager;->access$500(Lcom/mi/mimsgsdk/asr/MiASRManager;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager$EncodeThread;->this$0:Lcom/mi/mimsgsdk/asr/MiASRManager;

    invoke-static {v0}, Lcom/mi/mimsgsdk/asr/MiASRManager;->access$500(Lcom/mi/mimsgsdk/asr/MiASRManager;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/mi/mimsgsdk/asr/MiASRManager$EncodeThread;->audioCodec:Lcom/xiaomi/channel/common/audio/AudioCodec;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/xiaomi/channel/common/audio/AudioCodec;->encode([BIZ)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iput-boolean v7, p0, Lcom/mi/mimsgsdk/asr/MiASRManager$EncodeThread;->isEncodeError:Z

    invoke-static {}, Lcom/mi/mimsgsdk/asr/MiASRManager;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audiocode encode error, message="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager$EncodeThread;->this$0:Lcom/mi/mimsgsdk/asr/MiASRManager;

    invoke-static {v0}, Lcom/mi/mimsgsdk/asr/MiASRManager;->access$200(Lcom/mi/mimsgsdk/asr/MiASRManager;)I

    move-result v0

    new-array v0, v0, [B

    invoke-static {v0, v6}, Ljava/util/Arrays;->fill([BB)V

    iget-object v1, p0, Lcom/mi/mimsgsdk/asr/MiASRManager$EncodeThread;->audioCodec:Lcom/xiaomi/channel/common/audio/AudioCodec;

    array-length v2, v0

    invoke-virtual {v1, v0, v2, v7}, Lcom/xiaomi/channel/common/audio/AudioCodec;->encode([BIZ)I

    iget-object v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager$EncodeThread;->audioCodec:Lcom/xiaomi/channel/common/audio/AudioCodec;

    invoke-virtual {v0}, Lcom/xiaomi/channel/common/audio/AudioCodec;->nativeDelete()I

    iget-object v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager$EncodeThread;->this$0:Lcom/mi/mimsgsdk/asr/MiASRManager;

    invoke-static {v0}, Lcom/mi/mimsgsdk/asr/MiASRManager;->access$600(Lcom/mi/mimsgsdk/asr/MiASRManager;)Lcom/mi/mimsgsdk/asr/MiASRListener;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mi/mimsgsdk/asr/MiASRManager$EncodeThread;->this$0:Lcom/mi/mimsgsdk/asr/MiASRManager;

    invoke-static {v0}, Lcom/mi/mimsgsdk/asr/MiASRManager;->access$1000(Lcom/mi/mimsgsdk/asr/MiASRManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mi/mimsgsdk/asr/MiASRManager$EncodeThread$1;

    invoke-direct {v1, p0}, Lcom/mi/mimsgsdk/asr/MiASRManager$EncodeThread$1;-><init>(Lcom/mi/mimsgsdk/asr/MiASRManager$EncodeThread;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    invoke-static {}, Lcom/mi/mimsgsdk/asr/MiASRManager;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pcm to spx done!"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
