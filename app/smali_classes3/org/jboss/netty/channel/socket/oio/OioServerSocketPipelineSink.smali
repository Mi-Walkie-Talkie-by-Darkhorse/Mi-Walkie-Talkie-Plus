.class Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink;
.super Lorg/jboss/netty/channel/socket/oio/AbstractOioChannelSink;
.source "OioServerSocketPipelineSink.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink$1;,
        Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink$Boss;
    }
.end annotation


# static fields
.field static final logger:Lorg/jboss/netty/logging/InternalLogger;


# instance fields
.field private final determiner:Lorg/jboss/netty/util/ThreadNameDeterminer;

.field final workerExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink;->logger:Lorg/jboss/netty/logging/InternalLogger;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;Lorg/jboss/netty/util/ThreadNameDeterminer;)V
    .locals 0

    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannelSink;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink;->workerExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink;->determiner:Lorg/jboss/netty/util/ThreadNameDeterminer;

    return-void
.end method

.method static synthetic access$000(Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink;)Lorg/jboss/netty/util/ThreadNameDeterminer;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink;->determiner:Lorg/jboss/netty/util/ThreadNameDeterminer;

    return-object v0
.end method

.method private bind(Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/net/SocketAddress;)V
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p1, Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;->socket:Ljava/net/ServerSocket;

    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/ServerSocketChannelConfig;

    move-result-object v2

    invoke-interface {v2}, Lorg/jboss/netty/channel/socket/ServerSocketChannelConfig;->getBacklog()I

    move-result v2

    invoke-virtual {v0, p3, v2}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V

    const/4 v1, 0x1

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/jboss/netty/channel/Channels;->fireChannelBound(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V

    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;->getFactory()Lorg/jboss/netty/channel/ChannelFactory;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannelFactory;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannelFactory;->bossExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lorg/jboss/netty/util/ThreadRenamingRunnable;

    new-instance v3, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink$Boss;

    invoke-direct {v3, p0, p1}, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink$Boss;-><init>(Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink;Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Old I/O server boss ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink;->determiner:Lorg/jboss/netty/util/ThreadNameDeterminer;

    invoke-direct {v2, v3, v4, v5}, Lorg/jboss/netty/util/ThreadRenamingRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/String;Lorg/jboss/netty/util/ThreadNameDeterminer;)V

    invoke-static {v0, v2}, Lorg/jboss/netty/util/internal/DeadLockProofWorker;->start(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-interface {p2, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    invoke-static {p1, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    invoke-static {p1, p2}, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink;->close(Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    invoke-static {p1, p2}, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink;->close(Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    :cond_1
    throw v0
.end method

.method private static close(Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 2

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;->isBound()Z

    move-result v0

    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;->socket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;->shutdownLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;->setClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelUnbound(Lorg/jboss/netty/channel/Channel;)V

    :cond_0
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelClosed(Lorg/jboss/netty/channel/Channel;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;->shutdownLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    return-void

    :cond_1
    :try_start_3
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;->shutdownLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    invoke-interface {p1, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    invoke-static {p0, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static handleAcceptedSocket(Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 5

    instance-of v0, p0, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/jboss/netty/channel/ChannelStateEvent;

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/oio/OioAcceptedSocketChannel;

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v3

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink$1;->$SwitchMap$org$jboss$netty$channel$ChannelState:[I

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

    invoke-static {v0, v2}, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->close(Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    :pswitch_1
    if-nez v1, :cond_0

    invoke-static {v0, v2}, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->close(Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    :pswitch_2
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v2, v1}, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->setInterestOps(Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;Lorg/jboss/netty/channel/ChannelFuture;I)V

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lorg/jboss/netty/channel/MessageEvent;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/jboss/netty/channel/MessageEvent;

    invoke-interface {p0}, Lorg/jboss/netty/channel/MessageEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;

    invoke-interface {p0}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    invoke-interface {p0}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/jboss/netty/channel/socket/oio/OioWorker;->write(Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleServerSocket(Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 5

    instance-of v0, p1, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    check-cast p1, Lorg/jboss/netty/channel/ChannelStateEvent;

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelStateEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v3

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink$1;->$SwitchMap$org$jboss$netty$channel$ChannelState:[I

    invoke-virtual {v3}, Lorg/jboss/netty/channel/ChannelState;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0, v2}, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink;->close(Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    :pswitch_1
    if-eqz v1, :cond_2

    check-cast v1, Ljava/net/SocketAddress;

    invoke-direct {p0, v0, v2, v1}, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink;->bind(Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/net/SocketAddress;)V

    goto :goto_0

    :cond_2
    invoke-static {v0, v2}, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink;->close(Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public eventSunk(Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    instance-of v1, v0, Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;

    if-eqz v1, :cond_1

    invoke-direct {p0, p2}, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink;->handleServerSocket(Lorg/jboss/netty/channel/ChannelEvent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, v0, Lorg/jboss/netty/channel/socket/oio/OioAcceptedSocketChannel;

    if-eqz v0, :cond_0

    invoke-static {p2}, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink;->handleAcceptedSocket(Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_0
.end method
