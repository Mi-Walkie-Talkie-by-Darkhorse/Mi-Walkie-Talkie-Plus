.class public abstract Lorg/jboss/netty/handler/ipfilter/IpFilteringHandlerImpl;
.super Ljava/lang/Object;
.source "IpFilteringHandlerImpl.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelUpstreamHandler;
.implements Lorg/jboss/netty/handler/ipfilter/IpFilteringHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/ipfilter/IpFilteringHandlerImpl$1;
    }
.end annotation


# instance fields
.field private listener:Lorg/jboss/netty/handler/ipfilter/IpFilterListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract accept(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;Ljava/net/InetSocketAddress;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected continues(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/handler/ipfilter/IpFilteringHandlerImpl;->listener:Lorg/jboss/netty/handler/ipfilter/IpFilterListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/ipfilter/IpFilteringHandlerImpl;->listener:Lorg/jboss/netty/handler/ipfilter/IpFilterListener;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/handler/ipfilter/IpFilterListener;->continues(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected handleAllowedChannel(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;Ljava/net/InetSocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/handler/ipfilter/IpFilteringHandlerImpl;->listener:Lorg/jboss/netty/handler/ipfilter/IpFilterListener;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/handler/ipfilter/IpFilteringHandlerImpl;->listener:Lorg/jboss/netty/handler/ipfilter/IpFilterListener;

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/handler/ipfilter/IpFilterListener;->allowed(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;Ljava/net/InetSocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    goto :goto_0
.end method

.method protected handleRefusedChannel(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;Ljava/net/InetSocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/handler/ipfilter/IpFilteringHandlerImpl;->listener:Lorg/jboss/netty/handler/ipfilter/IpFilterListener;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/handler/ipfilter/IpFilteringHandlerImpl;->listener:Lorg/jboss/netty/handler/ipfilter/IpFilterListener;

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/handler/ipfilter/IpFilterListener;->refused(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;Ljava/net/InetSocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    goto :goto_0
.end method

.method public handleUpstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    instance-of v0, p2, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/jboss/netty/channel/ChannelStateEvent;

    sget-object v1, Lorg/jboss/netty/handler/ipfilter/IpFilteringHandlerImpl$1;->$SwitchMap$org$jboss$netty$channel$ChannelState:[I

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jboss/netty/channel/ChannelState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/ipfilter/IpFilteringHandlerImpl;->isBlocked(Lorg/jboss/netty/channel/ChannelHandlerContext;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/handler/ipfilter/IpFilteringHandlerImpl;->continues(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_1
    :goto_1
    return-void

    :pswitch_0
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/ipfilter/IpFilteringHandlerImpl;->isBlocked(Lorg/jboss/netty/channel/ChannelHandlerContext;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/handler/ipfilter/IpFilteringHandlerImpl;->continues(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_2
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_1

    :pswitch_1
    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-interface {v1}, Lorg/jboss/netty/channel/Channel;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {p0, p1, p2, v1}, Lorg/jboss/netty/handler/ipfilter/IpFilteringHandlerImpl;->accept(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;Ljava/net/InetSocketAddress;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->setAttachment(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2, v1}, Lorg/jboss/netty/handler/ipfilter/IpFilteringHandlerImpl;->handleRefusedChannel(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;Ljava/net/InetSocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    if-eqz v1, :cond_4

    sget-object v2, Lorg/jboss/netty/channel/ChannelFutureListener;->CLOSE:Lorg/jboss/netty/channel/ChannelFutureListener;

    invoke-interface {v1, v2}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    :goto_2
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/ipfilter/IpFilteringHandlerImpl;->isBlocked(Lorg/jboss/netty/channel/ChannelHandlerContext;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/handler/ipfilter/IpFilteringHandlerImpl;->continues(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_3
    :goto_3
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->setAttachment(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-static {v1}, Lorg/jboss/netty/channel/Channels;->close(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    goto :goto_2

    :cond_5
    invoke-virtual {p0, p1, p2, v1}, Lorg/jboss/netty/handler/ipfilter/IpFilteringHandlerImpl;->handleAllowedChannel(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;Ljava/net/InetSocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    goto :goto_3

    :cond_6
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/ipfilter/IpFilteringHandlerImpl;->isBlocked(Lorg/jboss/netty/channel/ChannelHandlerContext;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/handler/ipfilter/IpFilteringHandlerImpl;->continues(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_7
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected isBlocked(Lorg/jboss/netty/channel/ChannelHandlerContext;)Z
    .locals 1

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getAttachment()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeIpFilterListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jboss/netty/handler/ipfilter/IpFilteringHandlerImpl;->listener:Lorg/jboss/netty/handler/ipfilter/IpFilterListener;

    return-void
.end method

.method public setIpFilterListener(Lorg/jboss/netty/handler/ipfilter/IpFilterListener;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/handler/ipfilter/IpFilteringHandlerImpl;->listener:Lorg/jboss/netty/handler/ipfilter/IpFilterListener;

    return-void
.end method
