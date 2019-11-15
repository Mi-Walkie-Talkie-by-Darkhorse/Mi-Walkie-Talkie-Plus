.class public Lorg/jboss/netty/handler/codec/http/HttpServerCodec;
.super Ljava/lang/Object;
.source "HttpServerCodec.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelDownstreamHandler;
.implements Lorg/jboss/netty/channel/ChannelUpstreamHandler;


# instance fields
.field private final decoder:Lorg/jboss/netty/handler/codec/http/HttpRequestDecoder;

.field private final encoder:Lorg/jboss/netty/handler/codec/http/HttpResponseEncoder;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v1, 0x2000

    const/16 v0, 0x1000

    invoke-direct {p0, v0, v1, v1}, Lorg/jboss/netty/handler/codec/http/HttpServerCodec;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseEncoder;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/http/HttpResponseEncoder;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpServerCodec;->encoder:Lorg/jboss/netty/handler/codec/http/HttpResponseEncoder;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpRequestDecoder;

    invoke-direct {v0, p1, p2, p3}, Lorg/jboss/netty/handler/codec/http/HttpRequestDecoder;-><init>(III)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpServerCodec;->decoder:Lorg/jboss/netty/handler/codec/http/HttpRequestDecoder;

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

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpServerCodec;->encoder:Lorg/jboss/netty/handler/codec/http/HttpResponseEncoder;

    invoke-virtual {v0, p1, p2}, Lorg/jboss/netty/handler/codec/http/HttpResponseEncoder;->handleDownstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V

    return-void
.end method

.method public handleUpstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpServerCodec;->decoder:Lorg/jboss/netty/handler/codec/http/HttpRequestDecoder;

    invoke-virtual {v0, p1, p2}, Lorg/jboss/netty/handler/codec/http/HttpRequestDecoder;->handleUpstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V

    return-void
.end method
