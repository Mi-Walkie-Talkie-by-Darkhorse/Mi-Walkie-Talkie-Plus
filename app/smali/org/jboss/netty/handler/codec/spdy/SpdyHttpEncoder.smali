.class public Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder;
.super Ljava/lang/Object;
.source "SpdyHttpEncoder.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelDownstreamHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder$SpdyFrameWriter;
    }
.end annotation


# instance fields
.field private volatile currentStreamID:I

.field private final spdyVersion:I


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder;->spdyVersion:I

    return-void
.end method

.method private createSynReplyFrame(Lorg/jboss/netty/handler/codec/http/HttpResponse;)Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p1}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->isChunked()Z

    move-result v3

    invoke-static {p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpHeaders;->getStreamId(Lorg/jboss/netty/handler/codec/http/HttpMessage;)I

    move-result v4

    invoke-static {p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpHeaders;->removeStreamId(Lorg/jboss/netty/handler/codec/http/HttpMessage;)V

    const-string v0, "Connection"

    invoke-interface {p1, v0}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->removeHeader(Ljava/lang/String;)V

    const-string v0, "Keep-Alive"

    invoke-interface {p1, v0}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->removeHeader(Ljava/lang/String;)V

    const-string v0, "Proxy-Connection"

    invoke-interface {p1, v0}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->removeHeader(Ljava/lang/String;)V

    const-string v0, "Transfer-Encoding"

    invoke-interface {p1, v0}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->removeHeader(Ljava/lang/String;)V

    new-instance v5, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySynReplyFrame;

    invoke-direct {v5, v4}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySynReplyFrame;-><init>(I)V

    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder;->spdyVersion:I

    invoke-interface {p1}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->getStatus()Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v1

    invoke-static {v0, v5, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->setStatus(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;)V

    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder;->spdyVersion:I

    invoke-interface {p1}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->getProtocolVersion()Lorg/jboss/netty/handler/codec/http/HttpVersion;

    move-result-object v1

    invoke-static {v0, v5, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->setVersion(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;Lorg/jboss/netty/handler/codec/http/HttpVersion;)V

    invoke-interface {p1}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->getHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v5, v1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    iput v4, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder;->currentStreamID:I

    invoke-interface {v5, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;->setLast(Z)V

    :goto_1
    return-object v5

    :cond_1
    invoke-interface {p1}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->getContent()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    invoke-interface {v5, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;->setLast(Z)V

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2
.end method

.method private createSynStreamFrame(Lorg/jboss/netty/handler/codec/http/HttpMessage;)Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p1}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->isChunked()Z

    move-result v4

    invoke-static {p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpHeaders;->getStreamId(Lorg/jboss/netty/handler/codec/http/HttpMessage;)I

    move-result v5

    invoke-static {p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpHeaders;->getAssociatedToStreamId(Lorg/jboss/netty/handler/codec/http/HttpMessage;)I

    move-result v0

    invoke-static {p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpHeaders;->getPriority(Lorg/jboss/netty/handler/codec/http/HttpMessage;)B

    move-result v6

    invoke-static {p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpHeaders;->getUrl(Lorg/jboss/netty/handler/codec/http/HttpMessage;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpHeaders;->getScheme(Lorg/jboss/netty/handler/codec/http/HttpMessage;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpHeaders;->removeStreamId(Lorg/jboss/netty/handler/codec/http/HttpMessage;)V

    invoke-static {p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpHeaders;->removeAssociatedToStreamId(Lorg/jboss/netty/handler/codec/http/HttpMessage;)V

    invoke-static {p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpHeaders;->removePriority(Lorg/jboss/netty/handler/codec/http/HttpMessage;)V

    invoke-static {p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpHeaders;->removeUrl(Lorg/jboss/netty/handler/codec/http/HttpMessage;)V

    invoke-static {p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpHeaders;->removeScheme(Lorg/jboss/netty/handler/codec/http/HttpMessage;)V

    const-string v8, "Connection"

    invoke-interface {p1, v8}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->removeHeader(Ljava/lang/String;)V

    const-string v8, "Keep-Alive"

    invoke-interface {p1, v8}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->removeHeader(Ljava/lang/String;)V

    const-string v8, "Proxy-Connection"

    invoke-interface {p1, v8}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->removeHeader(Ljava/lang/String;)V

    const-string v8, "Transfer-Encoding"

    invoke-interface {p1, v8}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->removeHeader(Ljava/lang/String;)V

    new-instance v8, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySynStreamFrame;

    invoke-direct {v8, v5, v0, v6}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySynStreamFrame;-><init>(IIB)V

    instance-of v0, p1, Lorg/jboss/netty/handler/codec/http/HttpRequest;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/jboss/netty/handler/codec/http/HttpRequest;

    iget v6, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder;->spdyVersion:I

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->getMethod()Lorg/jboss/netty/handler/codec/http/HttpMethod;

    move-result-object v9

    invoke-static {v6, v8, v9}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->setMethod(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;Lorg/jboss/netty/handler/codec/http/HttpMethod;)V

    iget v6, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder;->spdyVersion:I

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v8, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->setUrl(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;Ljava/lang/String;)V

    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder;->spdyVersion:I

    invoke-interface {p1}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getProtocolVersion()Lorg/jboss/netty/handler/codec/http/HttpVersion;

    move-result-object v6

    invoke-static {v0, v8, v6}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->setVersion(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;Lorg/jboss/netty/handler/codec/http/HttpVersion;)V

    :cond_0
    instance-of v0, p1, Lorg/jboss/netty/handler/codec/http/HttpResponse;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/jboss/netty/handler/codec/http/HttpResponse;

    iget v6, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder;->spdyVersion:I

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->getStatus()Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    invoke-static {v6, v8, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->setStatus(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;)V

    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder;->spdyVersion:I

    invoke-static {v0, v8, v7}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->setUrl(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;Ljava/lang/String;)V

    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder;->spdyVersion:I

    invoke-interface {p1}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getProtocolVersion()Lorg/jboss/netty/handler/codec/http/HttpVersion;

    move-result-object v6

    invoke-static {v0, v8, v6}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->setVersion(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;Lorg/jboss/netty/handler/codec/http/HttpVersion;)V

    invoke-interface {v8, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;->setUnidirectional(Z)V

    :cond_1
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder;->spdyVersion:I

    const/4 v6, 0x3

    if-lt v0, v6, :cond_2

    invoke-static {p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->getHost(Lorg/jboss/netty/handler/codec/http/HttpMessage;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "Host"

    invoke-interface {p1, v6}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->removeHeader(Ljava/lang/String;)V

    invoke-static {v8, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->setHost(Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;Ljava/lang/String;)V

    :cond_2
    if-nez v1, :cond_6

    const-string v0, "https"

    :goto_0
    iget v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder;->spdyVersion:I

    invoke-static {v1, v8, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->setScheme(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v8, v1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    if-eqz v4, :cond_4

    iput v5, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder;->currentStreamID:I

    invoke-interface {v8, v3}, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;->setLast(Z)V

    :goto_2
    return-object v8

    :cond_4
    invoke-interface {p1}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getContent()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    if-nez v0, :cond_5

    move v0, v2

    :goto_3
    invoke-interface {v8, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;->setLast(Z)V

    goto :goto_2

    :cond_5
    move v0, v3

    goto :goto_3

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method

.method private static getContentFuture(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;ILorg/jboss/netty/handler/codec/http/HttpMessage;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 3

    invoke-interface {p3}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getContent()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyDataFrame;

    invoke-direct {v1, p2}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyDataFrame;-><init>(I)V

    invoke-interface {p3}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getContent()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;->setData(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;->setLast(Z)V

    invoke-interface {p1}, Lorg/jboss/netty/channel/MessageEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    new-instance v2, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder$SpdyFrameWriter;

    invoke-direct {v2, p0, p1, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder$SpdyFrameWriter;-><init>(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    goto :goto_0
.end method


# virtual methods
.method public handleDownstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    instance-of v0, p2, Lorg/jboss/netty/channel/MessageEvent;

    if-nez v0, :cond_0

    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    :goto_0
    return-void

    :cond_0
    move-object v0, p2

    check-cast v0, Lorg/jboss/netty/channel/MessageEvent;

    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lorg/jboss/netty/handler/codec/http/HttpRequest;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/jboss/netty/handler/codec/http/HttpRequest;

    invoke-direct {p0, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder;->createSynStreamFrame(Lorg/jboss/netty/handler/codec/http/HttpMessage;)Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;

    move-result-object v2

    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;->getStreamId()I

    move-result v3

    invoke-static {p1, v0, v3, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder;->getContentFuture(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;ILorg/jboss/netty/handler/codec/http/HttpMessage;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    invoke-static {p1, v1, v2, v0}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    goto :goto_0

    :cond_1
    instance-of v2, v1, Lorg/jboss/netty/handler/codec/http/HttpResponse;

    if-eqz v2, :cond_3

    check-cast v1, Lorg/jboss/netty/handler/codec/http/HttpResponse;

    const-string v2, "X-SPDY-Associated-To-Stream-ID"

    invoke-interface {v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder;->createSynStreamFrame(Lorg/jboss/netty/handler/codec/http/HttpMessage;)Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;

    move-result-object v2

    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;->getStreamId()I

    move-result v3

    invoke-static {p1, v0, v3, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder;->getContentFuture(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;ILorg/jboss/netty/handler/codec/http/HttpMessage;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    invoke-static {p1, v1, v2, v0}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder;->createSynReplyFrame(Lorg/jboss/netty/handler/codec/http/HttpResponse;)Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;

    move-result-object v2

    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;->getStreamId()I

    move-result v3

    invoke-static {p1, v0, v3, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder;->getContentFuture(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;ILorg/jboss/netty/handler/codec/http/HttpMessage;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    invoke-static {p1, v1, v2, v0}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    goto :goto_0

    :cond_3
    instance-of v2, v1, Lorg/jboss/netty/handler/codec/http/HttpChunk;

    if-eqz v2, :cond_7

    check-cast v1, Lorg/jboss/netty/handler/codec/http/HttpChunk;

    new-instance v3, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyDataFrame;

    iget v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder;->currentStreamID:I

    invoke-direct {v3, v2}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyDataFrame;-><init>(I)V

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/HttpChunk;->getContent()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;->setData(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/HttpChunk;->isLast()Z

    move-result v2

    invoke-interface {v3, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;->setLast(Z)V

    instance-of v2, v1, Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;

    if-eqz v2, :cond_6

    check-cast v1, Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;->getHeaders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    invoke-static {p1, v1, v3, v0}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    goto/16 :goto_0

    :cond_4
    new-instance v4, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyHeadersFrame;

    iget v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder;->currentStreamID:I

    invoke-direct {v4, v2}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyHeadersFrame;-><init>(I)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v4, v2, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeadersFrame;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-static {v1}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    new-instance v2, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder$SpdyFrameWriter;

    invoke-direct {v2, p1, v0, v3}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpEncoder$SpdyFrameWriter;-><init>(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    invoke-static {p1, v1, v4, v0}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    goto/16 :goto_0

    :cond_6
    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    invoke-static {p1, v1, v3, v0}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    goto/16 :goto_0

    :cond_7
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    goto/16 :goto_0
.end method
