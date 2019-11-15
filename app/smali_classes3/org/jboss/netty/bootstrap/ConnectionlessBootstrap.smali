.class public Lorg/jboss/netty/bootstrap/ConnectionlessBootstrap;
.super Lorg/jboss/netty/bootstrap/Bootstrap;
.source "ConnectionlessBootstrap.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/jboss/netty/bootstrap/Bootstrap;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/channel/ChannelFactory;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/jboss/netty/bootstrap/Bootstrap;-><init>(Lorg/jboss/netty/channel/ChannelFactory;)V

    return-void
.end method


# virtual methods
.method public bind()Lorg/jboss/netty/channel/Channel;
    .locals 2

    const-string v0, "localAddress"

    invoke-virtual {p0, v0}, Lorg/jboss/netty/bootstrap/ConnectionlessBootstrap;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/SocketAddress;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "localAddress option is not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/jboss/netty/bootstrap/ConnectionlessBootstrap;->bind(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    return-object v0
.end method

.method public bind(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/Channel;
    .locals 4

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "localAddress"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/jboss/netty/bootstrap/ConnectionlessBootstrap;->getPipelineFactory()Lorg/jboss/netty/channel/ChannelPipelineFactory;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelPipelineFactory;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {p0}, Lorg/jboss/netty/bootstrap/ConnectionlessBootstrap;->getFactory()Lorg/jboss/netty/channel/ChannelFactory;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/jboss/netty/channel/ChannelFactory;->newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    :try_start_1
    invoke-interface {v1}, Lorg/jboss/netty/channel/Channel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jboss/netty/bootstrap/ConnectionlessBootstrap;->getOptions()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/jboss/netty/channel/ChannelConfig;->setOptions(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v1, p1}, Lorg/jboss/netty/channel/Channel;->bind(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelFuture;->awaitUninterruptibly()Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelFuture;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-interface {v1}, Lorg/jboss/netty/channel/Channel;->close()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelFuture;->awaitUninterruptibly()Lorg/jboss/netty/channel/ChannelFuture;

    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to bind to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelFuture;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_0
    move-exception v0

    new-instance v1, Lorg/jboss/netty/channel/ChannelPipelineException;

    const-string v2, "Failed to initialize a pipeline."

    invoke-direct {v1, v2, v0}, Lorg/jboss/netty/channel/ChannelPipelineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Lorg/jboss/netty/channel/Channel;->close()Lorg/jboss/netty/channel/ChannelFuture;

    throw v0

    :cond_1
    return-object v1
.end method

.method public connect()Lorg/jboss/netty/channel/ChannelFuture;
    .locals 2

    const-string v0, "remoteAddress"

    invoke-virtual {p0, v0}, Lorg/jboss/netty/bootstrap/ConnectionlessBootstrap;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/SocketAddress;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remoteAddress option is not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/jboss/netty/bootstrap/ConnectionlessBootstrap;->connect(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public connect(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "remotedAddress"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "localAddress"

    invoke-virtual {p0, v0}, Lorg/jboss/netty/bootstrap/ConnectionlessBootstrap;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/SocketAddress;

    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/bootstrap/ConnectionlessBootstrap;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "remoteAddress"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/jboss/netty/bootstrap/ConnectionlessBootstrap;->getPipelineFactory()Lorg/jboss/netty/channel/ChannelPipelineFactory;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelPipelineFactory;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {p0}, Lorg/jboss/netty/bootstrap/ConnectionlessBootstrap;->getFactory()Lorg/jboss/netty/channel/ChannelFactory;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/jboss/netty/channel/ChannelFactory;->newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    :try_start_1
    invoke-interface {v1}, Lorg/jboss/netty/channel/Channel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jboss/netty/bootstrap/ConnectionlessBootstrap;->getOptions()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/jboss/netty/channel/ChannelConfig;->setOptions(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_1

    invoke-interface {v1, p2}, Lorg/jboss/netty/channel/Channel;->bind(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    :cond_1
    invoke-interface {v1, p1}, Lorg/jboss/netty/channel/Channel;->connect(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/jboss/netty/channel/ChannelPipelineException;

    const-string v2, "Failed to initialize a pipeline."

    invoke-direct {v1, v2, v0}, Lorg/jboss/netty/channel/ChannelPipelineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Lorg/jboss/netty/channel/Channel;->close()Lorg/jboss/netty/channel/ChannelFuture;

    throw v0
.end method
