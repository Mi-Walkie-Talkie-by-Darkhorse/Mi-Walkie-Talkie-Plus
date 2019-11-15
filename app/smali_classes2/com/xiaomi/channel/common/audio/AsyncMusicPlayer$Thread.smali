.class final Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Thread;
.super Ljava/lang/Thread;
.source "AsyncMusicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Thread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;


# direct methods
.method constructor <init>(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;)V
    .locals 2

    iput-object p1, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Thread;->this$0:Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->access$300()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->access$400(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    :goto_0
    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Thread;->this$0:Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;

    invoke-static {v0}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->access$500(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;)Ljava/util/LinkedList;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Thread;->this$0:Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;

    invoke-static {v0}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->access$600(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;)Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v1, v0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;->code:I

    packed-switch v1, :pswitch_data_0

    :goto_1
    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Thread;->this$0:Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;

    invoke-static {v0}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->access$500(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;)Ljava/util/LinkedList;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Thread;->this$0:Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;

    invoke-static {v0}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->access$500(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Thread;->this$0:Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->access$1202(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Thread;)Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Thread;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :pswitch_0
    iget-object v1, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Thread;->this$0:Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;

    invoke-static {v1, v0}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->access$700(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Thread;->this$0:Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;

    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->access$000(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;I)V

    iget-object v1, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Thread;->this$0:Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;

    invoke-static {v1, v0}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->access$802(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;)Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;

    iget-object v1, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Thread;->this$0:Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;

    iget-object v0, v0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;->observable:Lcom/xiaomi/channel/common/audio/PlayerObservable;

    invoke-static {v1, v0}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->access$900(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;Lcom/xiaomi/channel/common/audio/PlayerObservable;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Thread;->this$0:Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->access$000(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;I)V

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Thread;->this$0:Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;

    invoke-static {v0, v3}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->access$802(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;)Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Thread;->this$0:Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;

    invoke-static {v0}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->access$1000(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Thread;->this$0:Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;

    invoke-static {v0}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->access$200(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;)V

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Thread;->this$0:Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;

    invoke-static {v0}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->access$800(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;)Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Thread;->this$0:Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;

    iget-object v1, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Thread;->this$0:Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;

    invoke-static {v1}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->access$800(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;)Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->access$000(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;I)V

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Thread;->this$0:Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;

    invoke-static {v0, v3}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->access$802(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;)Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Command;

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Thread;->this$0:Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;

    invoke-static {v0}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->access$1100(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Thread;->this$0:Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;

    invoke-static {v0}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->access$1000(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Thread;->this$0:Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;

    invoke-static {v0}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->access$1000(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Thread;->this$0:Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->access$1002(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    monitor-exit v1

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer$Thread;->this$0:Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;

    invoke-static {v0}, Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;->access$400(Lcom/xiaomi/channel/common/audio/AsyncMusicPlayer;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "STOP command without a player"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    :try_start_4
    monitor-exit v1

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
