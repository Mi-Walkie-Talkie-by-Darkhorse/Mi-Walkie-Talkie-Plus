.class public Lorg/jboss/netty/bootstrap/ServerBootstrap;
.super Lorg/jboss/netty/bootstrap/Bootstrap;
.source "ServerBootstrap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/bootstrap/ServerBootstrap$Binder;
    }
.end annotation


# instance fields
.field private volatile parentHandler:Lorg/jboss/netty/channel/ChannelHandler;


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

    invoke-virtual {p0, v0}, Lorg/jboss/netty/bootstrap/ServerBootstrap;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/SocketAddress;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "localAddress option is not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/jboss/netty/bootstrap/ServerBootstrap;->bind(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    return-object v0
.end method

.method public bind(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/Channel;
    .locals 4

    invoke-virtual {p0, p1}, Lorg/jboss/netty/bootstrap/ServerBootstrap;->bindAsync(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelFuture;->awaitUninterruptibly()Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

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

    :cond_0
    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelFuture;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    return-object v0
.end method

.method public bindAsync()Lorg/jboss/netty/channel/ChannelFuture;
    .locals 2

    const-string v0, "localAddress"

    invoke-virtual {p0, v0}, Lorg/jboss/netty/bootstrap/ServerBootstrap;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/SocketAddress;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "localAddress option is not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/jboss/netty/bootstrap/ServerBootstrap;->bindAsync(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public bindAsync(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 4

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "localAddress"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lorg/jboss/netty/bootstrap/ServerBootstrap$Binder;

    invoke-direct {v0, p0, p1}, Lorg/jboss/netty/bootstrap/ServerBootstrap$Binder;-><init>(Lorg/jboss/netty/bootstrap/ServerBootstrap;Ljava/net/SocketAddress;)V

    invoke-virtual {p0}, Lorg/jboss/netty/bootstrap/ServerBootstrap;->getParentHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v1

    invoke-static {}, Lorg/jboss/netty/channel/Channels;->pipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v2

    const-string v3, "binder"

    invoke-interface {v2, v3, v0}, Lorg/jboss/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    if-eqz v1, :cond_1

    const-string v3, "userHandler"

    invoke-interface {v2, v3, v1}, Lorg/jboss/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    :cond_1
    invoke-virtual {p0}, Lorg/jboss/netty/bootstrap/ServerBootstrap;->getFactory()Lorg/jboss/netty/channel/ChannelFactory;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/jboss/netty/channel/ChannelFactory;->newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    new-instance v2, Lorg/jboss/netty/channel/DefaultChannelFuture;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lorg/jboss/netty/channel/DefaultChannelFuture;-><init>(Lorg/jboss/netty/channel/Channel;Z)V

    invoke-static {v0}, Lorg/jboss/netty/bootstrap/ServerBootstrap$Binder;->access$000(Lorg/jboss/netty/bootstrap/ServerBootstrap$Binder;)Lorg/jboss/netty/channel/DefaultChannelFuture;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/bootstrap/ServerBootstrap$1;

    invoke-direct {v1, p0, v2}, Lorg/jboss/netty/bootstrap/ServerBootstrap$1;-><init>(Lorg/jboss/netty/bootstrap/ServerBootstrap;Lorg/jboss/netty/channel/ChannelFuture;)V

    invoke-virtual {v0, v1}, Lorg/jboss/netty/channel/DefaultChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    return-object v2
.end method

.method public getParentHandler()Lorg/jboss/netty/channel/ChannelHandler;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/bootstrap/ServerBootstrap;->parentHandler:Lorg/jboss/netty/channel/ChannelHandler;

    return-object v0
.end method

.method public setFactory(Lorg/jboss/netty/channel/ChannelFactory;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "factory"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    instance-of v0, p1, Lorg/jboss/netty/channel/ServerChannelFactory;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "factory must be a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lorg/jboss/netty/channel/ServerChannelFactory;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-super {p0, p1}, Lorg/jboss/netty/bootstrap/Bootstrap;->setFactory(Lorg/jboss/netty/channel/ChannelFactory;)V

    return-void
.end method

.method public setParentHandler(Lorg/jboss/netty/channel/ChannelHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/bootstrap/ServerBootstrap;->parentHandler:Lorg/jboss/netty/channel/ChannelHandler;

    return-void
.end method
