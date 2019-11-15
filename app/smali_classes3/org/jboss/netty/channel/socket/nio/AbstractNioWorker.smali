.class abstract Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;
.super Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;
.source "AbstractNioWorker.java"

# interfaces
.implements Lorg/jboss/netty/channel/socket/Worker;


# instance fields
.field protected final sendBufferPool:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;-><init>(Ljava/util/concurrent/Executor;)V

    new-instance v0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;

    invoke-direct {v0}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->sendBufferPool:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;Lorg/jboss/netty/util/ThreadNameDeterminer;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;-><init>(Ljava/util/concurrent/Executor;Lorg/jboss/netty/util/ThreadNameDeterminer;)V

    new-instance v0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;

    invoke-direct {v0}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->sendBufferPool:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;

    return-void
.end method

.method protected static cleanUpWriteBuffer(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel",
            "<*>;)V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->writeLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->currentWriteEvent:Lorg/jboss/netty/channel/MessageEvent;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v3, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v3}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    :goto_0
    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->currentWriteBuffer:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->currentWriteBuffer:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;

    invoke-interface {v1}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->currentWriteBuffer:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->currentWriteEvent:Lorg/jboss/netty/channel/MessageEvent;

    invoke-interface {v0, v3}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    move v1, v2

    :cond_1
    iget-object v5, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->writeBufferQueue:Ljava/util/Queue;

    :goto_1
    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/MessageEvent;

    if-nez v0, :cond_4

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    invoke-static {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->isIoThread(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p0, v3}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    :try_start_1
    new-instance v3, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v3}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    if-nez v3, :cond_5

    :try_start_2
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v1}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    :goto_3
    move-object v3, v1

    move v1, v2

    :cond_5
    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    invoke-interface {v0, v3}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    goto :goto_1

    :cond_6
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :cond_7
    invoke-static {p0, v3}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaughtLater(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    goto :goto_2
.end method

.method static isIoThread(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel",
            "<*>;)Z"
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->worker:Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

    iget-object v1, v1, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->thread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected clearOpWrite(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->selector:Ljava/nio/channels/Selector;

    iget-object v1, p1, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->channel:Ljava/nio/channels/SelectableChannel;

    invoke-virtual {v1, v0}, Ljava/nio/channels/SelectableChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->close(Ljava/nio/channels/SelectionKey;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->getRawInterestOps()I

    move-result v1

    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_0

    and-int/lit8 v1, v1, -0x5

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    invoke-virtual {p1, v1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->setRawInterestOpsNow(I)V

    goto :goto_0
.end method

.method protected close(Ljava/nio/channels/SelectionKey;)V
    .locals 2

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;

    invoke-static {v0}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->close(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    return-void
.end method

.method protected close(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel",
            "<*>;",
            "Lorg/jboss/netty/channel/ChannelFuture;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->isConnected()Z

    move-result v0

    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->isBound()Z

    move-result v1

    invoke-static {p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->isIoThread(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)Z

    move-result v2

    :try_start_0
    iget-object v3, p1, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->channel:Ljava/nio/channels/SelectableChannel;

    invoke-virtual {v3}, Ljava/nio/channels/SelectableChannel;->close()V

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->increaseCancelledKeys()V

    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->setClosed()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    if-eqz v0, :cond_0

    if-eqz v2, :cond_2

    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->fireChannelDisconnected(Lorg/jboss/netty/channel/Channel;)V

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    if-eqz v2, :cond_3

    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->fireChannelUnbound(Lorg/jboss/netty/channel/Channel;)V

    :cond_1
    :goto_1
    invoke-static {p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->cleanUpWriteBuffer(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)V

    if-eqz v2, :cond_4

    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->fireChannelClosed(Lorg/jboss/netty/channel/Channel;)V

    :goto_2
    return-void

    :cond_2
    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->fireChannelDisconnectedLater(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-interface {p2, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    if-eqz v2, :cond_6

    invoke-static {p1, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    :try_start_1
    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->fireChannelUnboundLater(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->fireChannelClosedLater(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    goto :goto_2

    :cond_5
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_6
    invoke-static {p1, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaughtLater(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    goto :goto_2
.end method

.method public executeInIoThread(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->executeInIoThread(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public executeInIoThread(Ljava/lang/Runnable;Z)V
    .locals 1

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->isIoThread()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->registerTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected newThreadRenamingRunnable(ILorg/jboss/netty/util/ThreadNameDeterminer;)Lorg/jboss/netty/util/ThreadRenamingRunnable;
    .locals 3

    new-instance v0, Lorg/jboss/netty/util/ThreadRenamingRunnable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New I/O worker #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lorg/jboss/netty/util/ThreadRenamingRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/String;Lorg/jboss/netty/util/ThreadNameDeterminer;)V

    return-object v0
.end method

.method protected process(Ljava/nio/channels/Selector;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    :try_start_0
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->readyOps()I

    move-result v2

    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_3

    if-nez v2, :cond_4

    :cond_3
    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->read(Ljava/nio/channels/SelectionKey;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_4
    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_5

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->writeFromSelectorLoop(Ljava/nio/channels/SelectionKey;)V
    :try_end_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->cleanUpCancelledKeys()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->close(Ljava/nio/channels/SelectionKey;)V

    goto :goto_1
.end method

.method protected abstract read(Ljava/nio/channels/SelectionKey;)Z
.end method

.method public run()V
    .locals 1

    invoke-super {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->run()V

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->sendBufferPool:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->releaseExternalResources()V

    return-void
.end method

.method protected abstract scheduleWriteIfNecessary(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel",
            "<*>;)Z"
        }
    .end annotation
.end method

.method setInterestOps(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;Lorg/jboss/netty/channel/ChannelFuture;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel",
            "<*>;",
            "Lorg/jboss/netty/channel/ChannelFuture;",
            "I)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->isIoThread(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker$1;-><init>(Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;Lorg/jboss/netty/channel/ChannelFuture;I)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelPipeline;->execute(Ljava/lang/Runnable;)Lorg/jboss/netty/channel/ChannelFuture;

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->selector:Ljava/nio/channels/Selector;

    iget-object v4, p1, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->channel:Ljava/nio/channels/SelectableChannel;

    invoke-virtual {v4, v3}, Ljava/nio/channels/SelectableChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v4

    and-int/lit8 v5, p3, -0x5

    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->getRawInterestOps()I

    move-result v6

    and-int/lit8 v6, v6, 0x4

    or-int/2addr v5, v6

    if-eqz v4, :cond_2

    if-nez v3, :cond_4

    :cond_2
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->getRawInterestOps()I

    move-result v3

    if-eq v3, v5, :cond_7

    :goto_1
    invoke-virtual {p1, v5}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->setRawInterestOpsNow(I)V

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    if-eqz v0, :cond_0

    if-eqz v2, :cond_3

    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->fireChannelInterestChanged(Lorg/jboss/netty/channel/Channel;)V
    :try_end_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    invoke-interface {p2, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    invoke-static {p1, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->fireChannelInterestChangedLater(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    :try_end_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-interface {p2, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    invoke-static {p1, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    :try_start_2
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->getRawInterestOps()I

    move-result v0

    if-eq v0, v5, :cond_6

    invoke-virtual {v4, v5}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->thread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->wakenUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v3}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    :cond_5
    invoke-virtual {p1, v5}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->setRawInterestOpsNow(I)V

    :cond_6
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z
    :try_end_2
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_1
.end method

.method protected setOpWrite(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->selector:Ljava/nio/channels/Selector;

    iget-object v1, p1, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->channel:Ljava/nio/channels/SelectableChannel;

    invoke-virtual {v1, v0}, Ljava/nio/channels/SelectableChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->close(Ljava/nio/channels/SelectionKey;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->getRawInterestOps()I

    move-result v1

    and-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_0

    or-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    invoke-virtual {p1, v1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->setRawInterestOpsNow(I)V

    goto :goto_0
.end method

.method protected write0(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel",
            "<*>;)V"
        }
    .end annotation

    const/4 v14, 0x1

    const/4 v6, 0x0

    const/4 v11, 0x0

    invoke-static/range {p1 .. p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->isIoThread(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)Z

    move-result v18

    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->sendBufferPool:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->channel:Ljava/nio/channels/SelectableChannel;

    check-cast v2, Ljava/nio/channels/WritableByteChannel;

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->writeBufferQueue:Ljava/util/Queue;

    move-object/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->getConfig()Lorg/jboss/netty/channel/socket/nio/NioChannelConfig;

    move-result-object v3

    invoke-interface {v3}, Lorg/jboss/netty/channel/socket/nio/NioChannelConfig;->getWriteSpinCount()I

    move-result v17

    const/4 v10, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->writeLock:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21

    const/4 v3, 0x1

    :try_start_0
    move-object/from16 v0, p1

    iput-boolean v3, v0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->inWriteNowLoop:Z

    :goto_0
    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->currentWriteEvent:Lorg/jboss/netty/channel/MessageEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v15, 0x0

    const/4 v4, 0x0

    if-nez v3, :cond_3

    :try_start_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jboss/netty/channel/MessageEvent;

    move-object/from16 v0, p1

    iput-object v3, v0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->currentWriteEvent:Lorg/jboss/netty/channel/MessageEvent;

    if-nez v3, :cond_1

    const/4 v11, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p1

    iput-boolean v3, v0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->writeSuspended:Z
    :try_end_1
    .catch Ljava/nio/channels/AsynchronousCloseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    const/4 v2, 0x0

    :try_start_2
    move-object/from16 v0, p1

    iput-boolean v2, v0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->inWriteNowLoop:Z

    if-eqz v14, :cond_0

    if-eqz v6, :cond_a

    invoke-virtual/range {p0 .. p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->setOpWrite(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)V

    :cond_0
    :goto_2
    monitor-exit v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v10, :cond_b

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_1
    :try_start_3
    invoke-interface {v3}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;
    :try_end_3
    .catch Ljava/nio/channels/AsynchronousCloseException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v4

    :try_start_4
    invoke-interface {v3}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->acquire(Ljava/lang/Object;)Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;
    :try_end_4
    .catch Ljava/nio/channels/AsynchronousCloseException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v3

    :try_start_5
    move-object/from16 v0, p1

    iput-object v3, v0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->currentWriteBuffer:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;
    :try_end_5
    .catch Ljava/nio/channels/AsynchronousCloseException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v15, v3

    move-object v3, v4

    :goto_4
    const-wide/16 v4, 0x0

    move/from16 v7, v17

    :goto_5
    if-lez v7, :cond_2

    :try_start_6
    invoke-interface {v15, v2}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;->transferTo(Ljava/nio/channels/WritableByteChannel;)J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-eqz v8, :cond_4

    add-long/2addr v12, v4

    :cond_2
    invoke-interface {v15}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;->finished()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v15}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;->release()V

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-object v4, v0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->currentWriteEvent:Lorg/jboss/netty/channel/MessageEvent;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-object v4, v0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->currentWriteBuffer:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;

    const/4 v15, 0x0

    invoke-interface {v3}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z
    :try_end_6
    .catch Ljava/nio/channels/AsynchronousCloseException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v3, v10

    move-wide v4, v12

    move v7, v6

    move v8, v14

    move v6, v11

    :goto_6
    move-object v10, v3

    move-wide v12, v4

    move v11, v6

    move v14, v8

    move v6, v7

    goto/16 :goto_0

    :cond_3
    :try_start_7
    invoke-interface {v3}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;
    :try_end_7
    .catch Ljava/nio/channels/AsynchronousCloseException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v3

    :try_start_8
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->currentWriteBuffer:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;

    move-object v15, v4

    goto :goto_4

    :cond_4
    invoke-interface {v15}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;->finished()Z
    :try_end_8
    .catch Ljava/nio/channels/AsynchronousCloseException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v8

    if-nez v8, :cond_2

    add-int/lit8 v7, v7, -0x1

    goto :goto_5

    :cond_5
    const/16 v16, 0x1

    const/4 v6, 0x1

    :try_start_9
    move-object/from16 v0, p1

    iput-boolean v6, v0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->writeSuspended:Z

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_6

    invoke-interface {v15}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;->writtenBytes()J

    move-result-wide v6

    invoke-interface {v15}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;->totalBytes()J

    move-result-wide v8

    invoke-interface/range {v3 .. v9}, Lorg/jboss/netty/channel/ChannelFuture;->setProgress(JJJ)Z
    :try_end_9
    .catch Ljava/nio/channels/AsynchronousCloseException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_6
    move/from16 v6, v16

    goto/16 :goto_1

    :catch_0
    move-exception v3

    move-wide v4, v12

    move v3, v11

    :goto_7
    move v7, v6

    move v8, v14

    move v6, v3

    move-object v3, v10

    goto :goto_6

    :catch_1
    move-exception v3

    move-object v8, v3

    move v7, v6

    move v6, v11

    move-object v3, v4

    move-wide v4, v12

    :goto_8
    if-eqz v15, :cond_7

    :try_start_a
    invoke-interface {v15}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;->release()V

    :cond_7
    const/4 v9, 0x0

    move-object/from16 v0, p1

    iput-object v9, v0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->currentWriteEvent:Lorg/jboss/netty/channel/MessageEvent;

    const/4 v9, 0x0

    move-object/from16 v0, p1

    iput-object v9, v0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->currentWriteBuffer:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;

    if-eqz v3, :cond_8

    invoke-interface {v3, v8}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    :cond_8
    if-eqz v18, :cond_9

    if-nez v10, :cond_e

    new-instance v3, Ljava/util/ArrayList;

    const/4 v9, 0x1

    invoke-direct {v3, v9}, Ljava/util/ArrayList;-><init>(I)V

    :goto_9
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_a
    instance-of v8, v8, Ljava/io/IOException;

    if-eqz v8, :cond_f

    const/4 v8, 0x0

    goto :goto_6

    :cond_9
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaughtLater(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    move-object v3, v10

    goto :goto_a

    :cond_a
    if-eqz v11, :cond_0

    invoke-virtual/range {p0 .. p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->clearOpWrite(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)V

    goto/16 :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v21
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw v2

    :cond_b
    if-nez v14, :cond_c

    invoke-static/range {p1 .. p1}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->close(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    :cond_c
    if-eqz v18, :cond_d

    move-object/from16 v0, p1

    invoke-static {v0, v12, v13}, Lorg/jboss/netty/channel/Channels;->fireWriteComplete(Lorg/jboss/netty/channel/Channel;J)V

    :goto_b
    return-void

    :cond_d
    move-object/from16 v0, p1

    invoke-static {v0, v12, v13}, Lorg/jboss/netty/channel/Channels;->fireWriteCompleteLater(Lorg/jboss/netty/channel/Channel;J)Lorg/jboss/netty/channel/ChannelFuture;

    goto :goto_b

    :catch_2
    move-exception v3

    move-object v8, v3

    move v7, v6

    move v6, v11

    move-object v3, v4

    move-wide v4, v12

    goto :goto_8

    :catch_3
    move-exception v5

    move-object v8, v5

    move-object v15, v3

    move v7, v6

    move v6, v11

    move-object v3, v4

    move-wide v4, v12

    goto :goto_8

    :catch_4
    move-exception v4

    move-object v8, v4

    move v7, v6

    move v6, v11

    move-wide v4, v12

    goto :goto_8

    :catch_5
    move-exception v4

    move-object v8, v4

    move v6, v11

    move/from16 v7, v16

    move-wide v4, v12

    goto :goto_8

    :catch_6
    move-exception v3

    move-wide v4, v12

    move v3, v11

    move/from16 v6, v16

    goto :goto_7

    :cond_e
    move-object v3, v10

    goto :goto_9

    :cond_f
    move v8, v14

    goto/16 :goto_6
.end method

.method writeFromSelectorLoop(Ljava/nio/channels/SelectionKey;)V
    .locals 2

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->writeSuspended:Z

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->write0(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)V

    return-void
.end method

.method writeFromTaskLoop(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel",
            "<*>;)V"
        }
    .end annotation

    iget-boolean v0, p1, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->writeSuspended:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->write0(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)V

    :cond_0
    return-void
.end method

.method writeFromUserCode(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel",
            "<*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->cleanUpWriteBuffer(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->scheduleWriteIfNecessary(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->writeSuspended:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->inWriteNowLoop:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->write0(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)V

    goto :goto_0
.end method
