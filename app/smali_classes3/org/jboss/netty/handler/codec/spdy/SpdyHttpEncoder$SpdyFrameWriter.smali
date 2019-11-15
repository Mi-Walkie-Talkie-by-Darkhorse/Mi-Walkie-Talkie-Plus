.class Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder$SpdyFrameWriter;
.super Ljava/lang/Object;
.source "SpdyHttpEncoder.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpdyFrameWriter"
.end annotation


# instance fields
.field private final ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

.field private final e:Lorg/jboss/netty/channel/MessageEvent;

.field private final spdyFrame:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder$SpdyFrameWriter;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    iput-object p2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder$SpdyFrameWriter;->e:Lorg/jboss/netty/channel/MessageEvent;

    iput-object p3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder$SpdyFrameWriter;->spdyFrame:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public operationComplete(Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder$SpdyFrameWriter;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder$SpdyFrameWriter;->e:Lorg/jboss/netty/channel/MessageEvent;

    invoke-interface {v1}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder$SpdyFrameWriter;->spdyFrame:Ljava/lang/Object;

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder$SpdyFrameWriter;->e:Lorg/jboss/netty/channel/MessageEvent;

    invoke-interface {v3}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder$SpdyFrameWriter;->e:Lorg/jboss/netty/channel/MessageEvent;

    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelFuture;->cancel()Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder$SpdyFrameWriter;->e:Lorg/jboss/netty/channel/MessageEvent;

    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method
