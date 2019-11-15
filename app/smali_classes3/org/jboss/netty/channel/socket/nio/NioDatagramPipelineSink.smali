.class Lorg/jboss/netty/channel/socket/nio/NioDatagramPipelineSink;
.super Lorg/jboss/netty/channel/socket/nio/AbstractNioChannelSink;
.source "NioDatagramPipelineSink.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/channel/socket/nio/NioDatagramPipelineSink$1;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final workerPool:Lorg/jboss/netty/channel/socket/nio/WorkerPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jboss/netty/channel/socket/nio/WorkerPool",
            "<",
            "Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramPipelineSink;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramPipelineSink;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/jboss/netty/channel/socket/nio/WorkerPool;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/socket/nio/WorkerPool",
            "<",
            "Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannelSink;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramPipelineSink;->workerPool:Lorg/jboss/netty/channel/socket/nio/WorkerPool;

    return-void
.end method

.method private static bind(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/net/InetSocketAddress;)V
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getDatagramChannel()Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    const/4 v1, 0x1

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    invoke-static {p0, p2}, Lorg/jboss/netty/channel/Channels;->fireChannelBound(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->worker:Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->register(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-interface {p1, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    invoke-static {p0, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    invoke-static {p0, p1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramPipelineSink;->close(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    invoke-static {p0, p1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramPipelineSink;->close(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    :cond_1
    throw v0
.end method

.method private static close(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getDatagramChannel()Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->setClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->isBound()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelUnbound(Lorg/jboss/netty/channel/Channel;)V

    :cond_0
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelClosed(Lorg/jboss/netty/channel/Channel;)V

    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-interface {p1, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    invoke-static {p0, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static connect(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/net/InetSocketAddress;)V
    .locals 3

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->isBound()Z

    move-result v0

    const/4 v1, 0x0

    sget-object v2, Lorg/jboss/netty/channel/ChannelFutureListener;->CLOSE_ON_FAILURE:Lorg/jboss/netty/channel/ChannelFutureListener;

    invoke-interface {p1, v2}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->remoteAddress:Ljava/net/InetSocketAddress;

    :try_start_0
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getDatagramChannel()Ljava/nio/channels/DatagramChannel;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/nio/channels/DatagramChannel;->connect(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;

    const/4 v1, 0x1

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-static {p0, v2}, Lorg/jboss/netty/channel/Channels;->fireChannelBound(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V

    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->getRemoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-static {p0, v2}, Lorg/jboss/netty/channel/Channels;->fireChannelConnected(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->worker:Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

    invoke-virtual {v0, p0, p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->register(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-interface {p1, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    invoke-static {p0, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->worker:Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

    invoke-virtual {v0, p0, p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->close(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->worker:Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

    invoke-virtual {v1, p0, p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->close(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    :cond_2
    throw v0
.end method


# virtual methods
.method public eventSunk(Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    instance-of v1, p2, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-eqz v1, :cond_3

    check-cast p2, Lorg/jboss/netty/channel/ChannelStateEvent;

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v3

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lorg/jboss/netty/channel/socket/nio/NioDatagramPipelineSink$1;->$SwitchMap$org$jboss$netty$channel$ChannelState:[I

    invoke-virtual {v3}, Lorg/jboss/netty/channel/ChannelState;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->worker:Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

    invoke-virtual {v1, v0, v2}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->close(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    :pswitch_1
    if-eqz v1, :cond_1

    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-static {v0, v2, v1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramPipelineSink;->bind(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/net/InetSocketAddress;)V

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->worker:Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

    invoke-virtual {v1, v0, v2}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->close(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    :pswitch_2
    if-eqz v1, :cond_2

    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-static {v0, v2, v1}, Lorg/jboss/netty/channel/socket/nio/NioDatagramPipelineSink;->connect(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/net/InetSocketAddress;)V

    goto :goto_0

    :cond_2
    invoke-static {v0, v2}, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;->disconnect(Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    :pswitch_3
    iget-object v3, v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->worker:Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v0, v2, v1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->setInterestOps(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;Lorg/jboss/netty/channel/ChannelFuture;I)V

    goto :goto_0

    :cond_3
    instance-of v1, p2, Lorg/jboss/netty/channel/MessageEvent;

    if-eqz v1, :cond_0

    check-cast p2, Lorg/jboss/netty/channel/MessageEvent;

    iget-object v1, v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->writeBufferQueue:Ljava/util/Queue;

    invoke-interface {v1, p2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v1

    sget-boolean v2, Lorg/jboss/netty/channel/socket/nio/NioDatagramPipelineSink;->$assertionsDisabled:Z

    if-nez v2, :cond_4

    if-nez v1, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    iget-object v1, v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramChannel;->worker:Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

    invoke-virtual {v1, v0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->writeFromUserCode(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method nextWorker()Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioDatagramPipelineSink;->workerPool:Lorg/jboss/netty/channel/socket/nio/WorkerPool;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/nio/WorkerPool;->nextWorker()Lorg/jboss/netty/channel/socket/Worker;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/nio/NioDatagramWorker;

    return-object v0
.end method
