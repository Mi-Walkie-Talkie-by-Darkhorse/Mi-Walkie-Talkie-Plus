.class public Lorg/jboss/netty/handler/codec/spdy/SpdyFrameCodec;
.super Ljava/lang/Object;
.source "SpdyFrameCodec.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelDownstreamHandler;
.implements Lorg/jboss/netty/channel/ChannelUpstreamHandler;


# instance fields
.field private final decoder:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;

.field private final encoder:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameCodec;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 7

    const/16 v2, 0x2000

    const/16 v3, 0x4000

    const/4 v4, 0x6

    const/16 v5, 0xf

    const/16 v6, 0x8

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameCodec;-><init>(IIIIII)V

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;

    invoke-direct {v0, p1, p2, p3}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;-><init>(III)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameCodec;->decoder:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;

    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;

    invoke-direct {v0, p1, p4, p5, p6}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;-><init>(IIII)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameCodec;->encoder:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;

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

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameCodec;->encoder:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;

    invoke-virtual {v0, p1, p2}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->handleDownstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V

    return-void
.end method

.method public handleUpstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameCodec;->decoder:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;

    invoke-virtual {v0, p1, p2}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->handleUpstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V

    return-void
.end method
