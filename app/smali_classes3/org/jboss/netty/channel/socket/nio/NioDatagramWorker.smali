.class public Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;
.super Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;
.source "NioDatagramWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker$ChannelRegistionTask;
    }
.end annotation


# instance fields
.field private final bufferAllocator:Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferAllocator;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;-><init>(Ljava/util/concurrent/Executor;)V

    new-instance v0, Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferAllocator;

    invoke-direct {v0}, Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferAllocator;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->bufferAllocator:Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferAllocator;

    return-void
.end method

.method static disconnect(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 3

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->isConnected()Z

    move-result v0

    invoke-static {p0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->isIoThread(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)Z

    move-result v1

    :try_start_0
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getDatagramChannel()Ljava/nio/channels/DatagramChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/DatagramChannel;->disconnect()Ljava/nio/channels/DatagramChannel;

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    if-eqz v0, :cond_0

    if-eqz v1, :cond_1

    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelDisconnected(Lorg/jboss/netty/channel/Channel;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelDisconnectedLater(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-interface {p1, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    if-eqz v1, :cond_2

    invoke-static {p0, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-static {p0, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaughtLater(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    goto :goto_0
.end method


# virtual methods
.method protected createRegisterTask(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker$ChannelRegistionTask;

    check-cast p1, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;

    invoke-direct {v0, p0, p1, p2}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker$ChannelRegistionTask;-><init>(Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    return-object v0
.end method

.method public bridge synthetic executeInIoThread(Ljava/lang/Runnable;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->executeInIoThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic executeInIoThread(Ljava/lang/Runnable;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->executeInIoThread(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method protected read(Ljava/nio/channels/SelectionKey;)Z
    .locals 9

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getConfig()Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelConfig;

    move-result-object v1

    invoke-interface {v1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelConfig;->getReceiveBufferSizePredictor()Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;

    move-result-object v5

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getConfig()Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelConfig;

    move-result-object v1

    invoke-interface {v1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v6

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/DatagramChannel;

    invoke-interface {v5}, Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;->nextReceiveBufferSize()I

    move-result v4

    iget-object v7, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->bufferAllocator:Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferAllocator;

    invoke-virtual {v7, v4}, Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferAllocator;->get(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-interface {v6}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getDefaultOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v1, v7}, Ljava/nio/channels/DatagramChannel;->receive(Ljava/nio/ByteBuffer;)Ljava/net/SocketAddress;
    :try_end_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    move v4, v2

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    if-lez v8, :cond_0

    invoke-interface {v5, v8}, Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;->previousReceiveBufferSize(I)V

    invoke-interface {v6, v8}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getBuffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v6

    invoke-interface {v6, v2, v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->setBytes(ILjava/nio/ByteBuffer;)V

    invoke-interface {v6, v8}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex(I)V

    invoke-interface {v5, v8}, Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;->previousReceiveBufferSize(I)V

    invoke-static {v0, v6, v1}, Lorg/jboss/netty/channel/Channels;->fireMessageReceived(Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->cancel()V

    invoke-static {v0}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->close(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    move v0, v2

    :goto_1
    return v0

    :catch_0
    move-exception v1

    move-object v1, v4

    move v4, v3

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    move-object v1, v4

    move v4, v3

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1
.end method

.method public bridge synthetic rebuildSelector()V
    .locals 0

    invoke-super {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->rebuildSelector()V

    return-void
.end method

.method public bridge synthetic register(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->register(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;)V

    return-void
.end method

.method public run()V
    .locals 1

    invoke-super {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->run()V

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->bufferAllocator:Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferAllocator;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferAllocator;->releaseExternalResources()V

    return-void
.end method

.method protected scheduleWriteIfNecessary(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel",
            "<*>;)Z"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->thread:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    if-eq v3, v2, :cond_2

    :cond_0
    iget-object v2, p1, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->writeTaskInTaskQueue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->writeTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->registerTask(Ljava/lang/Runnable;)V

    :cond_1
    move v0, v1

    :cond_2
    return v0
.end method

.method public bridge synthetic shutdown()V
    .locals 0

    invoke-super {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->shutdown()V

    return-void
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

    const/4 v6, 0x0

    const/4 v9, 0x0

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->sendBufferPool:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;

    move-object/from16 v2, p1

    check-cast v2, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;

    invoke-virtual {v2}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getDatagramChannel()Ljava/nio/channels/DatagramChannel;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v14, v0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->writeBufferQueue:Ljava/util/Queue;

    invoke-virtual/range {p1 .. p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->getConfig()Lorg/jboss/netty/channel/socket/nio/NioChannelConfig;

    move-result-object v2

    invoke-interface {v2}, Lorg/jboss/netty/channel/socket/nio/NioChannelConfig;->getWriteSpinCount()I

    move-result v11

    move-object/from16 v0, p1

    iget-object v15, v0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->writeLock:Ljava/lang/Object;

    monitor-enter v15

    const/4 v2, 0x1

    :try_start_0
    move-object/from16 v0, p1

    iput-boolean v2, v0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->inWriteNowLoop:Z

    :goto_0
    move-object/from16 v0, p1

    iget-object v8, v0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->currentWriteEvent:Lorg/jboss/netty/channel/MessageEvent;

    if-nez v8, :cond_4

    invoke-interface {v14}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jboss/netty/channel/MessageEvent;

    move-object/from16 v0, p1

    iput-object v2, v0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->currentWriteEvent:Lorg/jboss/netty/channel/MessageEvent;

    if-nez v2, :cond_1

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p1

    iput-boolean v3, v0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->writeSuspended:Z

    :goto_1
    const/4 v3, 0x0

    move-object/from16 v0, p1

    iput-boolean v3, v0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->inWriteNowLoop:Z

    if-eqz v6, :cond_a

    invoke-virtual/range {p0 .. p1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->setOpWrite(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)V

    :cond_0
    :goto_2
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lorg/jboss/netty/channel/Channels;->fireWriteComplete(Lorg/jboss/netty/channel/Channel;J)V

    return-void

    :cond_1
    :try_start_1
    invoke-interface {v2}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v12, v3}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->acquire(Ljava/lang/Object;)Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;

    move-result-object v7

    move-object/from16 v0, p1

    iput-object v7, v0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->currentWriteBuffer:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v8, v2

    :goto_3
    const-wide/16 v2, 0x0

    :try_start_2
    invoke-interface {v8}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v16

    if-nez v16, :cond_6

    move v10, v11

    :goto_4
    if-lez v10, :cond_2

    invoke-interface {v7, v13}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;->transferTo(Ljava/nio/channels/WritableByteChannel;)J
    :try_end_2
    .catch Ljava/nio/channels/AsynchronousCloseException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v2

    const-wide/16 v16, 0x0

    cmp-long v16, v2, v16

    if-eqz v16, :cond_5

    add-long/2addr v4, v2

    :cond_2
    move-wide/from16 v20, v2

    move-wide v2, v4

    move-wide/from16 v4, v20

    :goto_5
    const-wide/16 v16, 0x0

    cmp-long v4, v4, v16

    if-gtz v4, :cond_3

    :try_start_3
    invoke-interface {v7}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;->finished()Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_3
    invoke-interface {v7}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;->release()V

    invoke-interface {v8}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p1

    iput-object v5, v0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->currentWriteEvent:Lorg/jboss/netty/channel/MessageEvent;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    iput-object v5, v0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->currentWriteBuffer:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;
    :try_end_3
    .catch Ljava/nio/channels/AsynchronousCloseException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v7, 0x0

    const/4 v5, 0x0

    :try_start_4
    invoke-interface {v4}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z
    :try_end_4
    .catch Ljava/nio/channels/AsynchronousCloseException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v4, v6

    :goto_6
    move v6, v4

    move-wide v4, v2

    goto :goto_0

    :cond_4
    :try_start_5
    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->currentWriteBuffer:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :cond_5
    :try_start_6
    invoke-interface {v7}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;->finished()Z

    move-result v16

    if-nez v16, :cond_2

    add-int/lit8 v10, v10, -0x1

    goto :goto_4

    :cond_6
    move v10, v11

    :goto_7
    if-lez v10, :cond_b

    move-object/from16 v0, v16

    invoke-interface {v7, v13, v0}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;->transferTo(Ljava/nio/channels/DatagramChannel;Ljava/net/SocketAddress;)J

    move-result-wide v2

    const-wide/16 v18, 0x0

    cmp-long v17, v2, v18

    if-eqz v17, :cond_7

    add-long/2addr v4, v2

    move-wide/from16 v20, v2

    move-wide v2, v4

    move-wide/from16 v4, v20

    goto :goto_5

    :cond_7
    invoke-interface {v7}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;->finished()Z
    :try_end_6
    .catch Ljava/nio/channels/AsynchronousCloseException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v17

    if-eqz v17, :cond_8

    move-wide/from16 v20, v2

    move-wide v2, v4

    move-wide/from16 v4, v20

    goto :goto_5

    :cond_8
    add-int/lit8 v10, v10, -0x1

    goto :goto_7

    :cond_9
    const/4 v6, 0x1

    const/4 v4, 0x1

    :try_start_7
    move-object/from16 v0, p1

    iput-boolean v4, v0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->writeSuspended:Z
    :try_end_7
    .catch Ljava/nio/channels/AsynchronousCloseException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-wide v4, v2

    move v2, v9

    goto/16 :goto_1

    :catch_0
    move-exception v2

    move-object/from16 v20, v2

    move-wide v2, v4

    move-object/from16 v5, v20

    move v4, v6

    move-object v6, v7

    move-object v7, v8

    :goto_8
    :try_start_8
    invoke-interface {v6}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;->release()V

    invoke-interface {v7}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, p1

    iput-object v7, v0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->currentWriteEvent:Lorg/jboss/netty/channel/MessageEvent;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    iput-object v7, v0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->currentWriteBuffer:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;

    invoke-interface {v6, v5}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_6

    :catchall_0
    move-exception v2

    monitor-exit v15
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v2

    :cond_a
    if-eqz v2, :cond_0

    :try_start_9
    invoke-virtual/range {p0 .. p1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->clearOpWrite(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_2

    :catch_1
    move-exception v4

    move-object v5, v4

    move v4, v6

    move-object v6, v7

    move-object v7, v8

    goto :goto_8

    :catch_2
    move-exception v4

    move-object/from16 v20, v4

    move v4, v6

    move-object v6, v5

    move-object/from16 v5, v20

    goto :goto_8

    :catch_3
    move-exception v2

    move-wide v2, v4

    move v4, v6

    goto :goto_6

    :catch_4
    move-exception v4

    move v4, v6

    goto/16 :goto_6

    :cond_b
    move-wide/from16 v20, v2

    move-wide v2, v4

    move-wide/from16 v4, v20

    goto/16 :goto_5
.end method

.method public writeFromUserCode(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel",
            "<*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->isBound()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->cleanUpWriteBuffer(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->scheduleWriteIfNecessary(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->writeSuspended:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->inWriteNowLoop:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->write0(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)V

    goto :goto_0
.end method
