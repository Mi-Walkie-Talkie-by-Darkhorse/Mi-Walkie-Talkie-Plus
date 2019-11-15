.class public Lorg/jboss/netty/handler/codec/spdy/SpdyHttpCodec;
.super Ljava/lang/Object;
.source "SpdyHttpCodec.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelDownstreamHandler;
.implements Lorg/jboss/netty/channel/ChannelUpstreamHandler;


# instance fields
.field private final decoder:Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;

.field private final encoder:Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpCodec;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;

    invoke-direct {v0, p1, p2}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;-><init>(II)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpCodec;->decoder:Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;

    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder;

    invoke-direct {v0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder;-><init>(I)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpCodec;->encoder:Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder;

    return-void
.end method


# virtual methods
.method public handleDownstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpCodec;->encoder:Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder;

    invoke-virtual {v0, p1, p2}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder;->handleDownstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V

    return-void
.end method

.method public handleUpstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpCodec;->decoder:Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;

    invoke-virtual {v0, p1, p2}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;->handleUpstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V

    return-void
.end method
