.class public abstract Lorg/jboss/netty/handler/codec/oneone/OneToOneEncoder;
.super Ljava/lang/Object;
.source "OneToOneEncoder.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelDownstreamHandler;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected doEncode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v0}, Lorg/jboss/netty/handler/codec/oneone/OneToOneEncoder;->encode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected abstract encode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public handleDownstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    instance-of v0, p2, Lorg/jboss/netty/channel/MessageEvent;

    if-nez v0, :cond_1

    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    check-cast p2, Lorg/jboss/netty/channel/MessageEvent;

    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/handler/codec/oneone/OneToOneEncoder;->doEncode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_0
.end method
