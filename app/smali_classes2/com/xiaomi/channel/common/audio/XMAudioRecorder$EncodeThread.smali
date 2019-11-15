.class Lcom/xiaomi/channel/common/audio/XMAudioRecorder$EncodeThread;
.super Ljava/lang/Thread;
.source "XMAudioRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/channel/common/audio/XMAudioRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EncodeThread"
.end annotation


# instance fields
.field private audioCodec:Lcom/xiaomi/channel/common/audio/AudioCodec;

.field final synthetic this$0:Lcom/xiaomi/channel/common/audio/XMAudioRecorder;


# direct methods
.method public constructor <init>(Lcom/xiaomi/channel/common/audio/XMAudioRecorder;)V
    .locals 2

    iput-object p1, p0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder$EncodeThread;->this$0:Lcom/xiaomi/channel/common/audio/XMAudioRecorder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Lcom/xiaomi/channel/common/audio/AudioCodec;

    iget-object v1, p0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder$EncodeThread;->this$0:Lcom/xiaomi/channel/common/audio/XMAudioRecorder;

    invoke-static {v1}, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->access$000(Lcom/xiaomi/channel/common/audio/XMAudioRecorder;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/xiaomi/channel/common/audio/AudioCodec;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder$EncodeThread;->audioCodec:Lcom/xiaomi/channel/common/audio/AudioCodec;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x0

    sget-boolean v0, Lcom/xiaomi/channel/common/audio/AudioCodec;->sInitialized:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder$EncodeThread;->this$0:Lcom/xiaomi/channel/common/audio/XMAudioRecorder;

    invoke-static {v1}, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->access$100(Lcom/xiaomi/channel/common/audio/XMAudioRecorder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder$EncodeThread;->audioCodec:Lcom/xiaomi/channel/common/audio/AudioCodec;

    iget-object v1, p0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder$EncodeThread;->this$0:Lcom/xiaomi/channel/common/audio/XMAudioRecorder;

    invoke-static {v1}, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->access$100(Lcom/xiaomi/channel/common/audio/XMAudioRecorder;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->access$200()I

    move-result v2

    sget v3, Lcom/xiaomi/channel/common/audio/AudioCodec;->CHANNEL:I

    sget v4, Lcom/xiaomi/channel/common/audio/AudioCodec;->AUDIO_FORMAT:I

    iget-object v5, p0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder$EncodeThread;->audioCodec:Lcom/xiaomi/channel/common/audio/AudioCodec;

    invoke-virtual {v5}, Lcom/xiaomi/channel/common/audio/AudioCodec;->getQuality()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/channel/common/audio/AudioCodec;->prepare(Ljava/lang/String;IIII)I

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder$EncodeThread;->this$0:Lcom/xiaomi/channel/common/audio/XMAudioRecorder;

    invoke-virtual {v0}, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->isRecordStopped()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder$EncodeThread;->this$0:Lcom/xiaomi/channel/common/audio/XMAudioRecorder;

    invoke-static {v0}, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->access$300(Lcom/xiaomi/channel/common/audio/XMAudioRecorder;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder$EncodeThread;->this$0:Lcom/xiaomi/channel/common/audio/XMAudioRecorder;

    invoke-static {v0}, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->access$300(Lcom/xiaomi/channel/common/audio/XMAudioRecorder;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder$EncodeThread;->audioCodec:Lcom/xiaomi/channel/common/audio/AudioCodec;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/xiaomi/channel/common/audio/AudioCodec;->encode([BIZ)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->access$400()I

    move-result v0

    new-array v0, v0, [B

    invoke-static {v0, v6}, Ljava/util/Arrays;->fill([BB)V

    iget-object v1, p0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder$EncodeThread;->audioCodec:Lcom/xiaomi/channel/common/audio/AudioCodec;

    array-length v2, v0

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/xiaomi/channel/common/audio/AudioCodec;->encode([BIZ)I

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/XMAudioRecorder$EncodeThread;->audioCodec:Lcom/xiaomi/channel/common/audio/AudioCodec;

    invoke-virtual {v0}, Lcom/xiaomi/channel/common/audio/AudioCodec;->nativeDelete()I

    invoke-static {}, Lcom/xiaomi/channel/common/audio/XMAudioRecorder;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u5f55\u97f3\u7ed3\u675f"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
