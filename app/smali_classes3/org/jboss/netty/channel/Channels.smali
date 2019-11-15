.class public final Lorg/jboss/netty/channel/Channels;
.super Ljava/lang/Object;
.source "Channels.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bind(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 4

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "localAddress"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v1

    new-instance v2, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;

    sget-object v3, Lorg/jboss/netty/channel/ChannelState;->BOUND:Lorg/jboss/netty/channel/ChannelState;

    invoke-direct {v2, p0, v0, v3, p1}, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lorg/jboss/netty/channel/ChannelPipeline;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    return-object v0
.end method

.method public static bind(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/net/SocketAddress;)V
    .locals 3

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "localAddress"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->BOUND:Lorg/jboss/netty/channel/ChannelState;

    invoke-direct {v0, v1, p1, v2, p2}, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    return-void
.end method

.method public static close(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 5

    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getCloseFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v1

    new-instance v2, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;

    sget-object v3, Lorg/jboss/netty/channel/ChannelState;->OPEN:Lorg/jboss/netty/channel/ChannelState;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v2, p0, v0, v3, v4}, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lorg/jboss/netty/channel/ChannelPipeline;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    return-object v0
.end method

.method public static close(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 4

    new-instance v0, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->OPEN:Lorg/jboss/netty/channel/ChannelState;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, p1, v2, v3}, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    return-void
.end method

.method public static connect(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 4

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "remoteAddress"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;Z)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v1

    new-instance v2, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;

    sget-object v3, Lorg/jboss/netty/channel/ChannelState;->CONNECTED:Lorg/jboss/netty/channel/ChannelState;

    invoke-direct {v2, p0, v0, v3, p1}, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lorg/jboss/netty/channel/ChannelPipeline;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    return-object v0
.end method

.method public static connect(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/net/SocketAddress;)V
    .locals 3

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "remoteAddress"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->CONNECTED:Lorg/jboss/netty/channel/ChannelState;

    invoke-direct {v0, v1, p1, v2, p2}, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    return-void
.end method

.method public static disconnect(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 5

    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v1

    new-instance v2, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;

    sget-object v3, Lorg/jboss/netty/channel/ChannelState;->CONNECTED:Lorg/jboss/netty/channel/ChannelState;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v0, v3, v4}, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lorg/jboss/netty/channel/ChannelPipeline;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    return-object v0
.end method

.method public static disconnect(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 4

    new-instance v0, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->CONNECTED:Lorg/jboss/netty/channel/ChannelState;

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v2, v3}, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    return-void
.end method

.method public static failedFuture(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 1

    new-instance v0, Lorg/jboss/netty/channel/FailedChannelFuture;

    invoke-direct {v0, p0, p1}, Lorg/jboss/netty/channel/FailedChannelFuture;-><init>(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static filterDownstreamInterestOps(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x5

    return v0
.end method

.method public static fireChannelBound(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V
    .locals 3

    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->BOUND:Lorg/jboss/netty/channel/ChannelState;

    invoke-direct {v1, p0, v2, p1}, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelPipeline;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    return-void
.end method

.method public static fireChannelBound(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;)V
    .locals 3

    new-instance v0, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->BOUND:Lorg/jboss/netty/channel/ChannelState;

    invoke-direct {v0, v1, v2, p1}, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    return-void
.end method

.method public static fireChannelClosed(Lorg/jboss/netty/channel/Channel;)V
    .locals 4

    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->OPEN:Lorg/jboss/netty/channel/ChannelState;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, p0, v2, v3}, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelPipeline;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getParent()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getParent()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/jboss/netty/channel/Channels;->fireChildChannelStateChanged(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/Channel;)V

    :cond_0
    return-void
.end method

.method public static fireChannelClosed(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 4

    new-instance v0, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->OPEN:Lorg/jboss/netty/channel/ChannelState;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2, v3}, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    return-void
.end method

.method public static fireChannelClosedLater(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 2

    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/Channels$6;

    invoke-direct {v1, p0}, Lorg/jboss/netty/channel/Channels$6;-><init>(Lorg/jboss/netty/channel/Channel;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelPipeline;->execute(Ljava/lang/Runnable;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public static fireChannelConnected(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V
    .locals 3

    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->CONNECTED:Lorg/jboss/netty/channel/ChannelState;

    invoke-direct {v1, p0, v2, p1}, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelPipeline;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    return-void
.end method

.method public static fireChannelConnected(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;)V
    .locals 3

    new-instance v0, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->CONNECTED:Lorg/jboss/netty/channel/ChannelState;

    invoke-direct {v0, v1, v2, p1}, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    return-void
.end method

.method public static fireChannelDisconnected(Lorg/jboss/netty/channel/Channel;)V
    .locals 4

    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->CONNECTED:Lorg/jboss/netty/channel/ChannelState;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelPipeline;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    return-void
.end method

.method public static fireChannelDisconnected(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 4

    new-instance v0, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->CONNECTED:Lorg/jboss/netty/channel/ChannelState;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    return-void
.end method

.method public static fireChannelDisconnectedLater(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 2

    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/Channels$4;

    invoke-direct {v1, p0}, Lorg/jboss/netty/channel/Channels$4;-><init>(Lorg/jboss/netty/channel/Channel;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelPipeline;->execute(Ljava/lang/Runnable;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public static fireChannelInterestChanged(Lorg/jboss/netty/channel/Channel;)V
    .locals 4

    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->INTEREST_OPS:Lorg/jboss/netty/channel/ChannelState;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelPipeline;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    return-void
.end method

.method public static fireChannelInterestChanged(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 4

    new-instance v0, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->INTEREST_OPS:Lorg/jboss/netty/channel/ChannelState;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    return-void
.end method

.method public static fireChannelInterestChangedLater(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 2

    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/Channels$3;

    invoke-direct {v1, p0}, Lorg/jboss/netty/channel/Channels$3;-><init>(Lorg/jboss/netty/channel/Channel;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelPipeline;->execute(Ljava/lang/Runnable;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public static fireChannelOpen(Lorg/jboss/netty/channel/Channel;)V
    .locals 4

    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getParent()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getParent()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/jboss/netty/channel/Channels;->fireChildChannelStateChanged(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/Channel;)V

    :cond_0
    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->OPEN:Lorg/jboss/netty/channel/ChannelState;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v1, p0, v2, v3}, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelPipeline;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    return-void
.end method

.method public static fireChannelOpen(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 4

    new-instance v0, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->OPEN:Lorg/jboss/netty/channel/ChannelState;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2, v3}, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    return-void
.end method

.method public static fireChannelUnbound(Lorg/jboss/netty/channel/Channel;)V
    .locals 4

    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->BOUND:Lorg/jboss/netty/channel/ChannelState;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelPipeline;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    return-void
.end method

.method public static fireChannelUnbound(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 4

    new-instance v0, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->BOUND:Lorg/jboss/netty/channel/ChannelState;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/jboss/netty/channel/UpstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    return-void
.end method

.method public static fireChannelUnboundLater(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 2

    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/Channels$5;

    invoke-direct {v1, p0}, Lorg/jboss/netty/channel/Channels$5;-><init>(Lorg/jboss/netty/channel/Channel;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelPipeline;->execute(Ljava/lang/Runnable;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method private static fireChildChannelStateChanged(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/Channel;)V
    .locals 2

    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/DefaultChildChannelStateEvent;

    invoke-direct {v1, p0, p1}, Lorg/jboss/netty/channel/DefaultChildChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/Channel;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelPipeline;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    return-void
.end method

.method public static fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V
    .locals 2

    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/DefaultExceptionEvent;

    invoke-direct {v1, p0, p1}, Lorg/jboss/netty/channel/DefaultExceptionEvent;-><init>(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelPipeline;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    return-void
.end method

.method public static fireExceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Lorg/jboss/netty/channel/DefaultExceptionEvent;

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/jboss/netty/channel/DefaultExceptionEvent;-><init>(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    return-void
.end method

.method public static fireExceptionCaughtLater(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 2

    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/Channels$7;

    invoke-direct {v1, p0, p1}, Lorg/jboss/netty/channel/Channels$7;-><init>(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelPipeline;->execute(Ljava/lang/Runnable;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public static fireExceptionCaughtLater(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 2

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/Channels$8;

    invoke-direct {v1, p0, p1}, Lorg/jboss/netty/channel/Channels$8;-><init>(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelPipeline;->execute(Ljava/lang/Runnable;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public static fireMessageReceived(Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/jboss/netty/channel/Channels;->fireMessageReceived(Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    return-void
.end method

.method public static fireMessageReceived(Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;Ljava/net/SocketAddress;)V
    .locals 2

    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/UpstreamMessageEvent;

    invoke-direct {v1, p0, p1, p2}, Lorg/jboss/netty/channel/UpstreamMessageEvent;-><init>(Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelPipeline;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    return-void
.end method

.method public static fireMessageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Lorg/jboss/netty/channel/UpstreamMessageEvent;

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lorg/jboss/netty/channel/UpstreamMessageEvent;-><init>(Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    return-void
.end method

.method public static fireMessageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/net/SocketAddress;)V
    .locals 2

    new-instance v0, Lorg/jboss/netty/channel/UpstreamMessageEvent;

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/jboss/netty/channel/UpstreamMessageEvent;-><init>(Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    return-void
.end method

.method public static fireWriteComplete(Lorg/jboss/netty/channel/Channel;J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/DefaultWriteCompletionEvent;

    invoke-direct {v1, p0, p1, p2}, Lorg/jboss/netty/channel/DefaultWriteCompletionEvent;-><init>(Lorg/jboss/netty/channel/Channel;J)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelPipeline;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_0
.end method

.method public static fireWriteComplete(Lorg/jboss/netty/channel/ChannelHandlerContext;J)V
    .locals 3

    new-instance v0, Lorg/jboss/netty/channel/DefaultWriteCompletionEvent;

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/jboss/netty/channel/DefaultWriteCompletionEvent;-><init>(Lorg/jboss/netty/channel/Channel;J)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    return-void
.end method

.method public static fireWriteCompleteLater(Lorg/jboss/netty/channel/Channel;J)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 3

    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/Channels$2;

    invoke-direct {v1, p0, p1, p2}, Lorg/jboss/netty/channel/Channels$2;-><init>(Lorg/jboss/netty/channel/Channel;J)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelPipeline;->execute(Ljava/lang/Runnable;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public static future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;Z)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public static future(Lorg/jboss/netty/channel/Channel;Z)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 1

    new-instance v0, Lorg/jboss/netty/channel/DefaultChannelFuture;

    invoke-direct {v0, p0, p1}, Lorg/jboss/netty/channel/DefaultChannelFuture;-><init>(Lorg/jboss/netty/channel/Channel;Z)V

    return-object v0
.end method

.method public static pipeline()Lorg/jboss/netty/channel/ChannelPipeline;
    .locals 1

    new-instance v0, Lorg/jboss/netty/channel/DefaultChannelPipeline;

    invoke-direct {v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;-><init>()V

    return-object v0
.end method

.method public static pipeline(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/ChannelPipeline;
    .locals 4

    invoke-static {}, Lorg/jboss/netty/channel/Channels;->pipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v2

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelPipeline;->toMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/ChannelHandler;

    invoke-interface {v2, v1, v0}, Lorg/jboss/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static varargs pipeline([Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/ChannelPipeline;
    .locals 4

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "handlers"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lorg/jboss/netty/channel/Channels;->pipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    aget-object v2, p0, v0

    if-nez v2, :cond_2

    :cond_1
    return-object v1

    :cond_2
    invoke-static {v0}, Lorg/jboss/netty/util/internal/ConversionUtil;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Lorg/jboss/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static pipelineFactory(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/ChannelPipelineFactory;
    .locals 1

    new-instance v0, Lorg/jboss/netty/channel/Channels$1;

    invoke-direct {v0, p0}, Lorg/jboss/netty/channel/Channels$1;-><init>(Lorg/jboss/netty/channel/ChannelPipeline;)V

    return-object v0
.end method

.method public static setInterestOps(Lorg/jboss/netty/channel/Channel;I)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 5

    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->validateInterestOps(I)V

    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->filterDownstreamInterestOps(I)I

    move-result v0

    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v2

    new-instance v3, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;

    sget-object v4, Lorg/jboss/netty/channel/ChannelState;->INTEREST_OPS:Lorg/jboss/netty/channel/ChannelState;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v3, p0, v1, v4, v0}, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Lorg/jboss/netty/channel/ChannelPipeline;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    return-object v1
.end method

.method public static setInterestOps(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;I)V
    .locals 4

    invoke-static {p2}, Lorg/jboss/netty/channel/Channels;->validateInterestOps(I)V

    invoke-static {p2}, Lorg/jboss/netty/channel/Channels;->filterDownstreamInterestOps(I)I

    move-result v0

    new-instance v1, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v2

    sget-object v3, Lorg/jboss/netty/channel/ChannelState;->INTEREST_OPS:Lorg/jboss/netty/channel/ChannelState;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v2, p1, v3, v0}, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {p0, v1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    return-void
.end method

.method public static succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 1

    instance-of v0, p0, Lorg/jboss/netty/channel/AbstractChannel;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/jboss/netty/channel/AbstractChannel;

    invoke-virtual {p0}, Lorg/jboss/netty/channel/AbstractChannel;->getSucceededFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/jboss/netty/channel/SucceededChannelFuture;

    invoke-direct {v0, p0}, Lorg/jboss/netty/channel/SucceededChannelFuture;-><init>(Lorg/jboss/netty/channel/Channel;)V

    goto :goto_0
.end method

.method public static unbind(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 5

    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v1

    new-instance v2, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;

    sget-object v3, Lorg/jboss/netty/channel/ChannelState;->BOUND:Lorg/jboss/netty/channel/ChannelState;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v0, v3, v4}, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lorg/jboss/netty/channel/ChannelPipeline;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    return-object v0
.end method

.method public static unbind(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 4

    new-instance v0, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->BOUND:Lorg/jboss/netty/channel/ChannelState;

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v2, v3}, Lorg/jboss/netty/channel/DownstreamChannelStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    return-void
.end method

.method private static validateInterestOps(I)V
    .locals 3

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid interestOps: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static write(Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public static write(Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 3

    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    invoke-interface {p0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v1

    new-instance v2, Lorg/jboss/netty/channel/DownstreamMessageEvent;

    invoke-direct {v2, p0, v0, p1, p2}, Lorg/jboss/netty/channel/DownstreamMessageEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    invoke-interface {v1, v2}, Lorg/jboss/netty/channel/ChannelPipeline;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    return-object v0
.end method

.method public static write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    return-void
.end method

.method public static write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V
    .locals 2

    new-instance v0, Lorg/jboss/netty/channel/DownstreamMessageEvent;

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2, p3}, Lorg/jboss/netty/channel/DownstreamMessageEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    return-void
.end method
