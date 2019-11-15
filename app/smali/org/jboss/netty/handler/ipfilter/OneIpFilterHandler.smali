.class public Lorg/jboss/netty/handler/ipfilter/OneIpFilterHandler;
.super Lorg/jboss/netty/handler/ipfilter/IpFilteringHandlerImpl;
.source "OneIpFilterHandler.java"


# annotations
.annotation runtime Lorg/jboss/netty/channel/ChannelHandler$Sharable;
.end annotation


# instance fields
.field private final connectedSet:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/net/InetAddress;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/jboss/netty/handler/ipfilter/IpFilteringHandlerImpl;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/ipfilter/OneIpFilterHandler;->connectedSet:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method


# virtual methods
.method protected accept(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;Ljava/net/InetSocketAddress;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/handler/ipfilter/OneIpFilterHandler;->connectedSet:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lorg/jboss/netty/handler/ipfilter/OneIpFilterHandler;->connectedSet:Ljava/util/concurrent/ConcurrentMap;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v0, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public handleUpstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lorg/jboss/netty/handler/ipfilter/IpFilteringHandlerImpl;->handleUpstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V

    instance-of v0, p2, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/jboss/netty/channel/ChannelStateEvent;

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->CONNECTED:Lorg/jboss/netty/channel/ChannelState;

    if-ne v1, v2, :cond_0

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/ipfilter/OneIpFilterHandler;->isBlocked(Lorg/jboss/netty/channel/ChannelHandlerContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lorg/jboss/netty/handler/ipfilter/OneIpFilterHandler;->connectedSet:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
