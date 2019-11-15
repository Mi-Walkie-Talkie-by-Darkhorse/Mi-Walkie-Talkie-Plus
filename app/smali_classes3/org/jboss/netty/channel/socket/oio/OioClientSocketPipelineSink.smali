.class Lorg/jboss/netty/channel/socket/oio/OioClientSocketPipelineSink;
.super Lorg/jboss/netty/channel/socket/oio/AbstractOioChannelSink;
.source "OioClientSocketPipelineSink.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/channel/socket/oio/OioClientSocketPipelineSink$1;
    }
.end annotation


# instance fields
.field private final determiner:Lorg/jboss/netty/util/ThreadNameDeterminer;

.field private final workerExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lorg/jboss/netty/util/ThreadNameDeterminer;)V
    .locals 0

    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannelSink;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/oio/OioClientSocketPipelineSink;->workerExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lorg/jboss/netty/channel/socket/oio/OioClientSocketPipelineSink;->determiner:Lorg/jboss/netty/util/ThreadNameDeterminer;

    return-void
.end method

.method private static bind(Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/net/SocketAddress;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannel;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p2}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannel;->getLocalAddress()Ljava/net/InetSocketAddress;

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

.method private connect(Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/net/SocketAddress;)V
    .locals 6

    const/4 v1, 0x1

    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannel;->isBound()Z

    move-result v0

    const/4 v2, 0x0

    sget-object v3, Lorg/jboss/netty/channel/ChannelFutureListener;->CLOSE_ON_FAILURE:Lorg/jboss/netty/channel/ChannelFutureListener;

    invoke-interface {p2, v3}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    :try_start_0
    iget-object v3, p1, Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannel;->socket:Ljava/net/Socket;

    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v4

    invoke-interface {v4}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->getConnectTimeoutMillis()I

    move-result v4

    invoke-virtual {v3, p3, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v2, Ljava/io/PushbackInputStream;

    iget-object v3, p1, Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannel;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v2, p1, Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannel;->in:Ljava/io/PushbackInputStream;

    iget-object v2, p1, Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannel;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, p1, Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannel;->out:Ljava/io/OutputStream;

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannel;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/jboss/netty/channel/Channels;->fireChannelBound(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V

    :cond_0
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannel;->getRemoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/jboss/netty/channel/Channels;->fireChannelConnected(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/OioClientSocketPipelineSink;->workerExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lorg/jboss/netty/util/ThreadRenamingRunnable;

    new-instance v3, Lorg/jboss/netty/channel/socket/oio/OioWorker;

    invoke-direct {v3, p1}, Lorg/jboss/netty/channel/socket/oio/OioWorker;-><init>(Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Old I/O client worker ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/jboss/netty/channel/socket/oio/OioClientSocketPipelineSink;->determiner:Lorg/jboss/netty/util/ThreadNameDeterminer;

    invoke-direct {v2, v3, v4, v5}, Lorg/jboss/netty/util/ThreadRenamingRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/String;Lorg/jboss/netty/util/ThreadNameDeterminer;)V

    invoke-static {v0, v2}, Lorg/jboss/netty/util/internal/DeadLockProofWorker;->start(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    move v1, v2

    :goto_1
    :try_start_2
    instance-of v2, v0, Ljava/net/ConnectException;

    if-eqz v2, :cond_2

    instance-of v2, v0, Ljava/net/ConnectException;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/net/ConnectException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    move-object v0, v2

    :cond_2
    invoke-interface {p2, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    invoke-static {p1, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_1

    invoke-static {p1, p2}, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->close(Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move v1, v2

    :goto_2
    if-eqz v1, :cond_3

    invoke-static {p1, p2}, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->close(Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    :cond_3
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
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

    check-cast v0, Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannel;

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    instance-of v1, p2, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-eqz v1, :cond_3

    check-cast p2, Lorg/jboss/netty/channel/ChannelStateEvent;

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v3

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lorg/jboss/netty/channel/socket/oio/OioClientSocketPipelineSink$1;->$SwitchMap$org$jboss$netty$channel$ChannelState:[I

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
    if-eqz v1, :cond_1

    check-cast v1, Ljava/net/SocketAddress;

    invoke-static {v0, v2, v1}, Lorg/jboss/netty/channel/socket/oio/OioClientSocketPipelineSink;->bind(Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/net/SocketAddress;)V

    goto :goto_0

    :cond_1
    invoke-static {v0, v2}, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->close(Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    :pswitch_2
    if-eqz v1, :cond_2

    check-cast v1, Ljava/net/SocketAddress;

    invoke-direct {p0, v0, v2, v1}, Lorg/jboss/netty/channel/socket/oio/OioClientSocketPipelineSink;->connect(Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/net/SocketAddress;)V

    goto :goto_0

    :cond_2
    invoke-static {v0, v2}, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->close(Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    :pswitch_3
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v2, v1}, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->setInterestOps(Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;Lorg/jboss/netty/channel/ChannelFuture;I)V

    goto :goto_0

    :cond_3
    instance-of v1, p2, Lorg/jboss/netty/channel/MessageEvent;

    if-eqz v1, :cond_0

    check-cast p2, Lorg/jboss/netty/channel/MessageEvent;

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lorg/jboss/netty/channel/socket/oio/OioWorker;->write(Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
