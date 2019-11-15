.class public Lorg/jboss/netty/channel/socket/nio/NioWorker;
.super Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;
.source "NioWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;
    }
.end annotation


# instance fields
.field private final recvBufferPool:Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferAllocator;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;-><init>(Ljava/util/concurrent/Executor;)V

    new-instance v0, Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferAllocator;

    invoke-direct {v0}, Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferAllocator;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->recvBufferPool:Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferAllocator;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lorg/jboss/netty/util/ThreadNameDeterminer;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;-><init>(Ljava/util/concurrent/Executor;Lorg/jboss/netty/util/ThreadNameDeterminer;)V

    new-instance v0, Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferAllocator;

    invoke-direct {v0}, Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferAllocator;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->recvBufferPool:Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferAllocator;

    return-void
.end method


# virtual methods
.method protected createRegisterTask(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;)Ljava/lang/Runnable;
    .locals 2

    instance-of v0, p1, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-instance v1, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;

    check-cast p1, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    invoke-direct {v1, p0, p1, p2, v0}, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;-><init>(Lorg/jboss/netty/channel/socket/nio/NioWorker;Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;Z)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .locals 10

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    invoke-virtual {v1}, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/nio/NioSocketChannelConfig;

    move-result-object v2

    invoke-interface {v2}, Lorg/jboss/netty/channel/socket/nio/NioSocketChannelConfig;->getReceiveBufferSizePredictor()Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;

    move-result-object v6

    invoke-interface {v6}, Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;->nextReceiveBufferSize()I

    move-result v2

    invoke-virtual {v1}, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/nio/NioSocketChannelConfig;

    move-result-object v5

    invoke-interface {v5}, Lorg/jboss/netty/channel/socket/nio/NioSocketChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v7

    iget-object v5, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->recvBufferPool:Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferAllocator;

    invoke-virtual {v5, v2}, Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferAllocator;->get(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {v7}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getDefaultOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v8

    move v2, v4

    move v5, v4

    :cond_0
    :try_start_0
    invoke-virtual {v0, v8}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v5

    if-lez v5, :cond_4

    add-int/2addr v2, v5

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->hasRemaining()Z
    :try_end_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v9

    if-nez v9, :cond_0

    move v0, v2

    :goto_0
    move v2, v0

    move v0, v4

    :goto_1
    if-lez v2, :cond_1

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-interface {v7, v2}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getBuffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v7

    invoke-interface {v7, v4, v8}, Lorg/jboss/netty/buffer/ChannelBuffer;->setBytes(ILjava/nio/ByteBuffer;)V

    invoke-interface {v7, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex(I)V

    invoke-interface {v6, v2}, Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;->previousReceiveBufferSize(I)V

    invoke-static {v1, v7}, Lorg/jboss/netty/channel/Channels;->fireMessageReceived(Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)V

    :cond_1
    if-ltz v5, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->cancel()V

    invoke-static {v1}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/jboss/netty/channel/socket/nio/NioWorker;->close(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    move v0, v4

    :goto_2
    return v0

    :catch_0
    move-exception v0

    move v0, v5

    move v5, v0

    move v0, v3

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v1, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    move v0, v3

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_0
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

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->recvBufferPool:Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferAllocator;

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

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->thread:Ljava/lang/Thread;

    if-eq v2, v3, :cond_1

    iget-object v2, p1, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->writeTaskInTaskQueue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->writeTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lorg/jboss/netty/channel/socket/nio/NioWorker;->registerTask(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic shutdown()V
    .locals 0

    invoke-super {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->shutdown()V

    return-void
.end method
