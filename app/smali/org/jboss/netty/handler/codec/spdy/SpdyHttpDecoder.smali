.class public Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;
.super Lorg/jboss/netty/handler/codec/oneone/OneToOneDecoder;
.source "SpdyHttpDecoder.java"


# instance fields
.field private final maxContentLength:I

.field private final messageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/jboss/netty/handler/codec/http/HttpMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final spdyVersion:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;-><init>(IILjava/util/Map;)V

    return-void
.end method

.method protected constructor <init>(IILjava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/jboss/netty/handler/codec/http/HttpMessage;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/oneone/OneToOneDecoder;-><init>()V

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
    if-gtz p2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxContentLength must be a positive integer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput p1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;->spdyVersion:I

    iput p2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;->maxContentLength:I

    iput-object p3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;->messageMap:Ljava/util/Map;

    return-void
.end method

.method private static createHttpRequest(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)Lorg/jboss/netty/handler/codec/http/HttpRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->getMethod(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)Lorg/jboss/netty/handler/codec/http/HttpMethod;

    move-result-object v0

    invoke-static {p0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->getUrl(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->getVersion(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)Lorg/jboss/netty/handler/codec/http/HttpVersion;

    move-result-object v2

    invoke-static {p0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->removeMethod(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)V

    invoke-static {p0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->removeUrl(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)V

    invoke-static {p0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->removeVersion(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)V

    new-instance v3, Lorg/jboss/netty/handler/codec/http/DefaultHttpRequest;

    invoke-direct {v3, v2, v0, v1}, Lorg/jboss/netty/handler/codec/http/DefaultHttpRequest;-><init>(Lorg/jboss/netty/handler/codec/http/HttpVersion;Lorg/jboss/netty/handler/codec/http/HttpMethod;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->removeScheme(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)V

    const/4 v0, 0x3

    if-lt p0, v0, :cond_0

    invoke-static {p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->getHost(Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->removeHost(Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)V

    invoke-static {v3, v0}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->setHost(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->getHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-static {v3, v0}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->setKeepAlive(Lorg/jboss/netty/handler/codec/http/HttpMessage;Z)V

    const-string v0, "Transfer-Encoding"

    invoke-interface {v3, v0}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->removeHeader(Ljava/lang/String;)V

    return-object v3
.end method

.method private static createHttpResponse(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)Lorg/jboss/netty/handler/codec/http/HttpResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->getStatus(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    invoke-static {p0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->getVersion(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)Lorg/jboss/netty/handler/codec/http/HttpVersion;

    move-result-object v1

    invoke-static {p0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->removeStatus(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)V

    invoke-static {p0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->removeVersion(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)V

    new-instance v2, Lorg/jboss/netty/handler/codec/http/DefaultHttpResponse;

    invoke-direct {v2, v1, v0}, Lorg/jboss/netty/handler/codec/http/DefaultHttpResponse;-><init>(Lorg/jboss/netty/handler/codec/http/HttpVersion;Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;)V

    invoke-interface {p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->getHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

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

    invoke-interface {v2, v1, v0}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v2, v0}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->setKeepAlive(Lorg/jboss/netty/handler/codec/http/HttpMessage;Z)V

    const-string v0, "Transfer-Encoding"

    invoke-interface {v2, v0}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->removeHeader(Ljava/lang/String;)V

    const-string v0, "Trailer"

    invoke-interface {v2, v0}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->removeHeader(Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method protected decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x0

    instance-of v0, p3, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;

    if-eqz v0, :cond_6

    check-cast p3, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;

    invoke-interface {p3}, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;->getStreamId()I

    move-result v1

    invoke-static {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->isServerId(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p3}, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;->getAssociatedToStreamId()I

    move-result v3

    if-nez v3, :cond_0

    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;

    sget-object v4, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->INVALID_STREAM:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    invoke-direct {v0, v1, v4}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;-><init>(ILorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;)V

    invoke-static {p2}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v4

    invoke-static {p1, v4, v0}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;)V

    :cond_0
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;->spdyVersion:I

    invoke-static {v0, p3}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->getUrl(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;

    sget-object v5, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->PROTOCOL_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    invoke-direct {v0, v1, v5}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;-><init>(ILorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;)V

    invoke-static {p2}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v5

    invoke-static {p1, v5, v0}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;)V

    :cond_1
    :try_start_0
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;->spdyVersion:I

    invoke-static {v0, p3}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;->createHttpResponse(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)Lorg/jboss/netty/handler/codec/http/HttpResponse;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpHeaders;->setStreamId(Lorg/jboss/netty/handler/codec/http/HttpMessage;I)V

    invoke-static {v0, v3}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpHeaders;->setAssociatedToStreamId(Lorg/jboss/netty/handler/codec/http/HttpMessage;I)V

    invoke-interface {p3}, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;->getPriority()B

    move-result v3

    invoke-static {v0, v3}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpHeaders;->setPriority(Lorg/jboss/netty/handler/codec/http/HttpMessage;B)V

    invoke-static {v0, v4}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpHeaders;->setUrl(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;)V

    invoke-interface {p3}, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;->isLast()Z

    move-result v3

    if-eqz v3, :cond_3

    const-wide/16 v4, 0x0

    invoke-static {v0, v4, v5}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->setContentLength(Lorg/jboss/netty/handler/codec/http/HttpMessage;J)V

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    invoke-virtual {p0, v1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;->putMessage(ILorg/jboss/netty/handler/codec/http/HttpMessage;)Lorg/jboss/netty/handler/codec/http/HttpMessage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;

    sget-object v3, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->PROTOCOL_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    invoke-direct {v0, v1, v3}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;-><init>(ILorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;)V

    invoke-static {p2}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    :try_start_1
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;->spdyVersion:I

    invoke-static {v0, p3}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;->createHttpRequest(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)Lorg/jboss/netty/handler/codec/http/HttpRequest;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpHeaders;->setStreamId(Lorg/jboss/netty/handler/codec/http/HttpMessage;I)V

    invoke-interface {p3}, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;->isLast()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0, v1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;->putMessage(ILorg/jboss/netty/handler/codec/http/HttpMessage;)Lorg/jboss/netty/handler/codec/http/HttpMessage;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySynReplyFrame;

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySynReplyFrame;-><init>(I)V

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;->setLast(Z)V

    iget v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;->spdyVersion:I

    sget-object v3, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->BAD_REQUEST:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    invoke-static {v1, v0, v3}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->setStatus(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;)V

    iget v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;->spdyVersion:I

    sget-object v3, Lorg/jboss/netty/handler/codec/http/HttpVersion;->HTTP_1_0:Lorg/jboss/netty/handler/codec/http/HttpVersion;

    invoke-static {v1, v0, v3}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->setVersion(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;Lorg/jboss/netty/handler/codec/http/HttpVersion;)V

    invoke-static {p2}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    instance-of v0, p3, Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;

    if-eqz v0, :cond_8

    check-cast p3, Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;

    invoke-interface {p3}, Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;->getStreamId()I

    move-result v1

    :try_start_2
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;->spdyVersion:I

    invoke-static {v0, p3}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;->createHttpResponse(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)Lorg/jboss/netty/handler/codec/http/HttpResponse;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpHeaders;->setStreamId(Lorg/jboss/netty/handler/codec/http/HttpMessage;I)V

    invoke-interface {p3}, Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;->isLast()Z

    move-result v3

    if-eqz v3, :cond_7

    const-wide/16 v4, 0x0

    invoke-static {v0, v4, v5}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->setContentLength(Lorg/jboss/netty/handler/codec/http/HttpMessage;J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;

    sget-object v3, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->PROTOCOL_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    invoke-direct {v0, v1, v3}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;-><init>(ILorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;)V

    invoke-static {p2}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;)V

    goto :goto_1

    :cond_7
    :try_start_3
    invoke-virtual {p0, v1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;->putMessage(ILorg/jboss/netty/handler/codec/http/HttpMessage;)Lorg/jboss/netty/handler/codec/http/HttpMessage;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :cond_8
    instance-of v0, p3, Lorg/jboss/netty/handler/codec/spdy/SpdyHeadersFrame;

    if-eqz v0, :cond_b

    check-cast p3, Lorg/jboss/netty/handler/codec/spdy/SpdyHeadersFrame;

    invoke-interface {p3}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeadersFrame;->getStreamId()I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;->getMessage(I)Lorg/jboss/netty/handler/codec/http/HttpMessage;

    move-result-object v3

    if-nez v3, :cond_9

    move-object v0, v2

    goto/16 :goto_0

    :cond_9
    invoke-interface {p3}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeadersFrame;->getHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_a
    invoke-interface {p3}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeadersFrame;->isLast()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getContent()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v3, v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->setContentLength(Lorg/jboss/netty/handler/codec/http/HttpMessage;J)V

    invoke-virtual {p0, v4}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;->removeMessage(I)Lorg/jboss/netty/handler/codec/http/HttpMessage;

    move-object v0, v3

    goto/16 :goto_0

    :cond_b
    instance-of v0, p3, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;

    if-eqz v0, :cond_f

    check-cast p3, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;

    invoke-interface {p3}, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;->getStreamId()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;->getMessage(I)Lorg/jboss/netty/handler/codec/http/HttpMessage;

    move-result-object v1

    if-nez v1, :cond_c

    move-object v0, v2

    goto/16 :goto_0

    :cond_c
    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getContent()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v4

    iget v5, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;->maxContentLength:I

    invoke-interface {p3}, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;->getData()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v6

    invoke-interface {v6}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v6

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_d

    invoke-virtual {p0, v3}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;->removeMessage(I)Lorg/jboss/netty/handler/codec/http/HttpMessage;

    new-instance v0, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP content length exceeded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;->maxContentLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    sget-object v4, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    if-ne v0, v4, :cond_e

    invoke-interface {p2}, Lorg/jboss/netty/channel/Channel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->dynamicBuffer(Lorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {p3}, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;->getData()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v4

    invoke-interface {v0, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    invoke-interface {v1, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setContent(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    :goto_3
    invoke-interface {p3}, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;->isLast()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    int-to-long v4, v0

    invoke-static {v1, v4, v5}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->setContentLength(Lorg/jboss/netty/handler/codec/http/HttpMessage;J)V

    invoke-virtual {p0, v3}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;->removeMessage(I)Lorg/jboss/netty/handler/codec/http/HttpMessage;

    move-object v0, v1

    goto/16 :goto_0

    :cond_e
    invoke-interface {p3}, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;->getData()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v4

    invoke-interface {v0, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    goto :goto_3

    :cond_f
    instance-of v0, p3, Lorg/jboss/netty/handler/codec/spdy/SpdyRstStreamFrame;

    if-eqz v0, :cond_4

    check-cast p3, Lorg/jboss/netty/handler/codec/spdy/SpdyRstStreamFrame;

    invoke-interface {p3}, Lorg/jboss/netty/handler/codec/spdy/SpdyRstStreamFrame;->getStreamId()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;->removeMessage(I)Lorg/jboss/netty/handler/codec/http/HttpMessage;

    goto/16 :goto_1
.end method

.method protected getMessage(I)Lorg/jboss/netty/handler/codec/http/HttpMessage;
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;->messageMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/http/HttpMessage;

    return-object v0
.end method

.method protected putMessage(ILorg/jboss/netty/handler/codec/http/HttpMessage;)Lorg/jboss/netty/handler/codec/http/HttpMessage;
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;->messageMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/http/HttpMessage;

    return-object v0
.end method

.method protected removeMessage(I)Lorg/jboss/netty/handler/codec/http/HttpMessage;
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpDecoder;->messageMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/http/HttpMessage;

    return-object v0
.end method
