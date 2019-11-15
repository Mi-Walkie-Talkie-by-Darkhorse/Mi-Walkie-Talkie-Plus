.class final Lorg/jboss/netty/bootstrap/ServerBootstrap$Binder;
.super Lorg/jboss/netty/channel/SimpleChannelUpstreamHandler;
.source "ServerBootstrap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/bootstrap/ServerBootstrap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Binder"
.end annotation


# instance fields
.field private final bindFuture:Lorg/jboss/netty/channel/DefaultChannelFuture;

.field private final childOptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final localAddress:Ljava/net/SocketAddress;

.field final synthetic this$0:Lorg/jboss/netty/bootstrap/ServerBootstrap;


# direct methods
.method constructor <init>(Lorg/jboss/netty/bootstrap/ServerBootstrap;Ljava/net/SocketAddress;)V
    .locals 3

    iput-object p1, p0, Lorg/jboss/netty/bootstrap/ServerBootstrap$Binder;->this$0:Lorg/jboss/netty/bootstrap/ServerBootstrap;

    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelUpstreamHandler;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/bootstrap/ServerBootstrap$Binder;->childOptions:Ljava/util/Map;

    new-instance v0, Lorg/jboss/netty/channel/DefaultChannelFuture;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/channel/DefaultChannelFuture;-><init>(Lorg/jboss/netty/channel/Channel;Z)V

    iput-object v0, p0, Lorg/jboss/netty/bootstrap/ServerBootstrap$Binder;->bindFuture:Lorg/jboss/netty/channel/DefaultChannelFuture;

    iput-object p2, p0, Lorg/jboss/netty/bootstrap/ServerBootstrap$Binder;->localAddress:Ljava/net/SocketAddress;

    return-void
.end method

.method static synthetic access$000(Lorg/jboss/netty/bootstrap/ServerBootstrap$Binder;)Lorg/jboss/netty/channel/DefaultChannelFuture;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/bootstrap/ServerBootstrap$Binder;->bindFuture:Lorg/jboss/netty/channel/DefaultChannelFuture;

    return-object v0
.end method


# virtual methods
.method public channelOpen(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .locals 6

    :try_start_0
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/bootstrap/ServerBootstrap$Binder;->this$0:Lorg/jboss/netty/bootstrap/ServerBootstrap;

    invoke-virtual {v1}, Lorg/jboss/netty/bootstrap/ServerBootstrap;->getPipelineFactory()Lorg/jboss/netty/channel/ChannelPipelineFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelConfig;->setPipelineFactory(Lorg/jboss/netty/channel/ChannelPipelineFactory;)V

    iget-object v0, p0, Lorg/jboss/netty/bootstrap/ServerBootstrap$Binder;->this$0:Lorg/jboss/netty/bootstrap/ServerBootstrap;

    invoke-virtual {v0}, Lorg/jboss/netty/bootstrap/ServerBootstrap;->getOptions()Ljava/util/Map;

    move-result-object v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "child."

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v4, p0, Lorg/jboss/netty/bootstrap/ServerBootstrap$Binder;->childOptions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v5, 0x6

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    throw v0

    :cond_1
    :try_start_1
    const-string v1, "pipelineFactory"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v0

    invoke-interface {v0, v2}, Lorg/jboss/netty/channel/ChannelConfig;->setOptions(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/bootstrap/ServerBootstrap$Binder;->localAddress:Ljava/net/SocketAddress;

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/Channel;->bind(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/bootstrap/ServerBootstrap$Binder$1;

    invoke-direct {v1, p0}, Lorg/jboss/netty/bootstrap/ServerBootstrap$Binder$1;-><init>(Lorg/jboss/netty/bootstrap/ServerBootstrap$Binder;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    return-void
.end method

.method public childChannelOpen(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChildChannelStateEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChildChannelStateEvent;->getChildChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/bootstrap/ServerBootstrap$Binder;->childOptions:Ljava/util/Map;

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelConfig;->setOptions(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    return-void

    :catch_0
    move-exception v0

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChildChannelStateEvent;->getChildChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public exceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ExceptionEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/bootstrap/ServerBootstrap$Binder;->bindFuture:Lorg/jboss/netty/channel/DefaultChannelFuture;

    invoke-interface {p2}, Lorg/jboss/netty/channel/ExceptionEvent;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jboss/netty/channel/DefaultChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    return-void
.end method
