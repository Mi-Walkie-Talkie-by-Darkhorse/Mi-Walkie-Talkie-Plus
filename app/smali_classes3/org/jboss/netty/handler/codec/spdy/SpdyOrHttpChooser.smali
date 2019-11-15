.class public abstract Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser;
.super Ljava/lang/Object;
.source "SpdyOrHttpChooser.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelUpstreamHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$1;,
        Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;
    }
.end annotation


# instance fields
.field private final maxHttpContentLength:I

.field private final maxSpdyContentLength:I


# direct methods
.method protected constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser;->maxSpdyContentLength:I

    iput p2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser;->maxHttpContentLength:I

    return-void
.end method


# virtual methods
.method protected addHttpHandlers(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 4

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    const-string v1, "httpRquestDecoder"

    new-instance v2, Lorg/jboss/netty/handler/codec/http/HttpRequestDecoder;

    invoke-direct {v2}, Lorg/jboss/netty/handler/codec/http/HttpRequestDecoder;-><init>()V

    invoke-interface {v0, v1, v2}, Lorg/jboss/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    const-string v1, "httpResponseEncoder"

    new-instance v2, Lorg/jboss/netty/handler/codec/http/HttpResponseEncoder;

    invoke-direct {v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseEncoder;-><init>()V

    invoke-interface {v0, v1, v2}, Lorg/jboss/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    const-string v1, "httpChunkAggregator"

    new-instance v2, Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;

    iget v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser;->maxHttpContentLength:I

    invoke-direct {v2, v3}, Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;-><init>(I)V

    invoke-interface {v0, v1, v2}, Lorg/jboss/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    const-string v1, "httpRquestHandler"

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser;->createHttpRequestHandlerForHttp()Lorg/jboss/netty/channel/ChannelUpstreamHandler;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/jboss/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    return-void
.end method

.method protected addSpdyHandlers(Lorg/jboss/netty/channel/ChannelHandlerContext;I)V
    .locals 4

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    const-string v1, "spdyDecoder"

    new-instance v2, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;

    invoke-direct {v2, p2}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;-><init>(I)V

    invoke-interface {v0, v1, v2}, Lorg/jboss/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    const-string v1, "spdyEncoder"

    new-instance v2, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;

    invoke-direct {v2, p2}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;-><init>(I)V

    invoke-interface {v0, v1, v2}, Lorg/jboss/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    const-string v1, "spdySessionHandler"

    new-instance v2, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;

    const/4 v3, 0x1

    invoke-direct {v2, p2, v3}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;-><init>(IZ)V

    invoke-interface {v0, v1, v2}, Lorg/jboss/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    const-string v1, "spdyHttpEncoder"

    new-instance v2, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder;

    invoke-direct {v2, p2}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder;-><init>(I)V

    invoke-interface {v0, v1, v2}, Lorg/jboss/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    const-string v1, "spdyHttpDecoder"

    new-instance v2, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;

    iget v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser;->maxSpdyContentLength:I

    invoke-direct {v2, p2, v3}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;-><init>(II)V

    invoke-interface {v0, v1, v2}, Lorg/jboss/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    const-string v1, "spdyStreamIdHandler"

    new-instance v2, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpResponseStreamIdHandler;

    invoke-direct {v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpResponseStreamIdHandler;-><init>()V

    invoke-interface {v0, v1, v2}, Lorg/jboss/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    const-string v1, "httpRquestHandler"

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser;->createHttpRequestHandlerForSpdy()Lorg/jboss/netty/channel/ChannelUpstreamHandler;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/jboss/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    return-void
.end method

.method protected abstract createHttpRequestHandlerForHttp()Lorg/jboss/netty/channel/ChannelUpstreamHandler;
.end method

.method protected createHttpRequestHandlerForSpdy()Lorg/jboss/netty/channel/ChannelUpstreamHandler;
    .locals 1

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser;->createHttpRequestHandlerForHttp()Lorg/jboss/netty/channel/ChannelUpstreamHandler;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getProtocol(Ljavax/net/ssl/SSLEngine;)Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;
.end method

.method public handleUpstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    const-class v1, Lorg/jboss/netty/handler/ssl/SslHandler;

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelPipeline;->get(Ljava/lang/Class;)Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/ssl/SslHandler;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SslHandler is needed for SPDY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v1

    invoke-virtual {v0}, Lorg/jboss/netty/handler/ssl/SslHandler;->getEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser;->getProtocol(Ljavax/net/ssl/SSLEngine;)Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;

    move-result-object v0

    sget-object v2, Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$1;->$SwitchMap$org$jboss$netty$handler$codec$spdy$SpdyOrHttpChooser$SelectedProtocol:[I

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown SelectedProtocol"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser;->addSpdyHandlers(Lorg/jboss/netty/channel/ChannelHandlerContext;I)V

    :goto_0
    invoke-interface {v1, p0}, Lorg/jboss/netty/channel/ChannelPipeline;->remove(Lorg/jboss/netty/channel/ChannelHandler;)V

    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    :pswitch_1
    return-void

    :pswitch_2
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser;->addSpdyHandlers(Lorg/jboss/netty/channel/ChannelHandlerContext;I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser;->addHttpHandlers(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
