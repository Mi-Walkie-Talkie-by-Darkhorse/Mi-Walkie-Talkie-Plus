.class abstract Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;
.super Ljava/lang/Object;
.source "AbstractOioWorker.java"

# interfaces
.implements Lorg/jboss/netty/channel/socket/Worker;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/jboss/netty/channel/socket/Worker;"
    }
.end annotation


# instance fields
.field protected final channel:Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field private volatile done:Z

.field private final eventQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile thread:Ljava/lang/Thread;


# direct methods
.method protected constructor <init>(Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->eventQueue:Ljava/util/Queue;

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->channel:Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;

    iput-object p0, p1, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;->worker:Lorg/jboss/netty/channel/socket/Worker;

    return-void
.end method

.method static close(Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 1

    invoke-static {p0}, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->isIoThread(Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;)Z

    move-result v0

    invoke-static {p0, p1, v0}, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->close(Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;Lorg/jboss/netty/channel/ChannelFuture;Z)V

    return-void
.end method

.method private static close(Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;Lorg/jboss/netty/channel/ChannelFuture;Z)V
    .locals 3

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;->isConnected()Z

    move-result v0

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;->isBound()Z

    move-result v1

    :try_start_0
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;->closeSocket()V

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;->setClosed()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;->workerThread:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    if-eq v0, v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    if-eqz p2, :cond_3

    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelDisconnected(Lorg/jboss/netty/channel/Channel;)V

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    if-eqz p2, :cond_4

    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelUnbound(Lorg/jboss/netty/channel/Channel;)V

    :cond_2
    :goto_1
    if-eqz p2, :cond_5

    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelClosed(Lorg/jboss/netty/channel/Channel;)V

    :goto_2
    return-void

    :cond_3
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelDisconnectedLater(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-interface {p1, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    if-eqz p2, :cond_7

    invoke-static {p0, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    :try_start_1
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelUnboundLater(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    goto :goto_1

    :cond_5
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelClosedLater(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    goto :goto_2

    :cond_6
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_7
    invoke-static {p0, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaughtLater(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    goto :goto_2
.end method

.method static isIoThread(Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;)Z
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;->workerThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processEventQueue()V
    .locals 1

    :goto_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->eventQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method static setInterestOps(Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;Lorg/jboss/netty/channel/ChannelFuture;I)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0}, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->isIoThread(Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;)Z

    move-result v2

    and-int/lit8 v3, p2, -0x5

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;->getInterestOps()I

    move-result v4

    and-int/lit8 v4, v4, 0x4

    or-int/2addr v3, v4

    :try_start_0
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;->getInterestOps()I

    move-result v4

    if-eq v4, v3, :cond_5

    and-int/lit8 v1, v3, 0x1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;->setInterestOpsNow(I)V

    :goto_0
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;->interestOpsLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0, v3}, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;->setInterestOpsNow(I)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v3, p0, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;->workerThread:Ljava/lang/Thread;

    if-eqz v3, :cond_0

    if-eq v0, v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_3

    :try_start_2
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelInterestChanged(Lorg/jboss/netty/channel/Channel;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;->setInterestOpsNow(I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-interface {p1, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    if-eqz v2, :cond_4

    invoke-static {p0, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :cond_3
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelInterestChangedLater(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :cond_4
    invoke-static {p0, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaughtLater(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public executeInIoThread(Ljava/lang/Runnable;)V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->thread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->done:Z

    if-eqz v0, :cond_2

    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->eventQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0
.end method

.method abstract process()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public run()V
    .locals 5

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->channel:Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, v0, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;->workerThread:Ljava/lang/Thread;

    iput-object v2, p0, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->thread:Ljava/lang/Thread;

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->channel:Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->channel:Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;

    iget-object v2, v0, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;->interestOpsLock:Ljava/lang/Object;

    monitor-enter v2

    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->channel:Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;->isReadable()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->channel:Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;->interestOpsLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->channel:Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->process()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v0

    :cond_3
    :goto_1
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->processEventQueue()V

    if-nez v0, :cond_0

    :cond_4
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->channel:Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;

    const/4 v2, 0x0

    iput-object v2, v0, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;->workerThread:Ljava/lang/Thread;

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->channel:Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->channel:Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;

    invoke-static {v2}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->close(Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;Lorg/jboss/netty/channel/ChannelFuture;Z)V

    iput-boolean v1, p0, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->done:Z

    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->processEventQueue()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catch_1
    move-exception v2

    :try_start_5
    instance-of v3, v2, Ljava/net/SocketTimeoutException;

    if-nez v3, :cond_5

    iget-object v4, p0, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->channel:Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;

    invoke-virtual {v4}, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;->isSocketClosed()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->channel:Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;

    invoke-static {v4, v2}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_5
    if-eqz v3, :cond_3

    move v0, v1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->processEventQueue()V

    throw v0
.end method
