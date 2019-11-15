.class Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;
.super Lorg/jboss/netty/channel/socket/nio/AbstractNioChannelSink;
.source "NioClientSocketPipelineSink.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$2;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final logger:Lorg/jboss/netty/logging/InternalLogger;


# instance fields
.field private final bossPool:Lorg/jboss/netty/channel/socket/nio/BossPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jboss/netty/channel/socket/nio/BossPool",
            "<",
            "Lorg/jboss/netty/channel/socket/nio/NioClientBoss;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;->$assertionsDisabled:Z

    const-class v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;->logger:Lorg/jboss/netty/logging/InternalLogger;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/jboss/netty/channel/socket/nio/BossPool;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/socket/nio/BossPool",
            "<",
            "Lorg/jboss/netty/channel/socket/nio/NioClientBoss;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannelSink;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;->bossPool:Lorg/jboss/netty/channel/socket/nio/BossPool;

    return-void
.end method

.method private static bind(Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/net/SocketAddress;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->channel:Ljava/nio/channels/SelectableChannel;

    check-cast v0, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->boundManually:Z

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->setBound()V

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/jboss/netty/channel/Channels;->fireChannelBound(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-interface {p1, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    invoke-static {p0, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private connect(Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/net/SocketAddress;)V
    .locals 4

    iput-object p3, p1, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->requestedRemoteAddress:Ljava/net/SocketAddress;

    :try_start_0
    iget-object v0, p1, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->channel:Ljava/nio/channels/SelectableChannel;

    check-cast v0, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0, p3}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->worker:Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

    invoke-virtual {v0, p1, p2}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->register(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->getCloseFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$1;

    invoke-direct {v1, p0, p2}, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$1;-><init>(Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;Lorg/jboss/netty/channel/ChannelFuture;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    sget-object v0, Lorg/jboss/netty/channel/ChannelFutureListener;->CLOSE_ON_FAILURE:Lorg/jboss/netty/channel/ChannelFutureListener;

    invoke-interface {p2, v0}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    iput-object p2, p1, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->connectFuture:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;->nextBoss()Lorg/jboss/netty/channel/socket/nio/NioClientBoss;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/jboss/netty/channel/socket/nio/NioClientBoss;->register(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    instance-of v0, v1, Ljava/net/ConnectException;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/net/ConnectException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    :goto_1
    invoke-interface {p2, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    invoke-static {p1, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    iget-object v0, p1, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->worker:Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->close(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private nextBoss()Lorg/jboss/netty/channel/socket/nio/NioClientBoss;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;->bossPool:Lorg/jboss/netty/channel/socket/nio/BossPool;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/nio/BossPool;->nextBoss()Lorg/jboss/netty/channel/socket/nio/Boss;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/nio/NioClientBoss;

    return-object v0
.end method


# virtual methods
.method public eventSunk(Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    instance-of v0, p2, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-eqz v0, :cond_3

    check-cast p2, Lorg/jboss/netty/channel/ChannelStateEvent;

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v3

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$2;->$SwitchMap$org$jboss$netty$channel$ChannelState:[I

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

    iget-object v1, v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->worker:Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

    invoke-virtual {v1, v0, v2}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->close(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    :pswitch_1
    if-eqz v1, :cond_1

    check-cast v1, Ljava/net/SocketAddress;

    invoke-static {v0, v2, v1}, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;->bind(Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/net/SocketAddress;)V

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->worker:Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

    invoke-virtual {v1, v0, v2}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->close(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    :pswitch_2
    if-eqz v1, :cond_2

    check-cast v1, Ljava/net/SocketAddress;

    invoke-direct {p0, v0, v2, v1}, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;->connect(Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/net/SocketAddress;)V

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->worker:Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

    invoke-virtual {v1, v0, v2}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->close(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    :pswitch_3
    iget-object v3, v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->worker:Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v0, v2, v1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->setInterestOps(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;Lorg/jboss/netty/channel/ChannelFuture;I)V

    goto :goto_0

    :cond_3
    instance-of v0, p2, Lorg/jboss/netty/channel/MessageEvent;

    if-eqz v0, :cond_0

    check-cast p2, Lorg/jboss/netty/channel/MessageEvent;

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    iget-object v1, v0, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->writeBufferQueue:Ljava/util/Queue;

    invoke-interface {v1, p2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v1

    sget-boolean v2, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;->$assertionsDisabled:Z

    if-nez v2, :cond_4

    if-nez v1, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    iget-object v1, v0, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->worker:Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

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
