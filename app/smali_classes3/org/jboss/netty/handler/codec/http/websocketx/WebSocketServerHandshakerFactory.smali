.class public Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;
.super Ljava/lang/Object;
.source "WebSocketServerHandshakerFactory.java"


# instance fields
.field private final allowExtensions:Z

.field private final maxFramePayloadLength:J

.field private final subprotocols:Ljava/lang/String;

.field private final webSocketURL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;-><init>(Ljava/lang/String;Ljava/lang/String;ZJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;->webSocketURL:Ljava/lang/String;

    iput-object p2, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;->subprotocols:Ljava/lang/String;

    iput-boolean p3, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;->allowExtensions:Z

    iput-wide p4, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;->maxFramePayloadLength:J

    return-void
.end method


# virtual methods
.method public newHandshaker(Lorg/jboss/netty/handler/codec/http/HttpRequest;)Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;
    .locals 6

    const-string v0, "Sec-WebSocket-Version"

    invoke-interface {p1, v0}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v1, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;->V13:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;->toHttpHeaderValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker13;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;->webSocketURL:Ljava/lang/String;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;->subprotocols:Ljava/lang/String;

    iget-boolean v3, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;->allowExtensions:Z

    iget-wide v4, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;->maxFramePayloadLength:J

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker13;-><init>(Ljava/lang/String;Ljava/lang/String;ZJ)V

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;->V08:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;->toHttpHeaderValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker08;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;->webSocketURL:Ljava/lang/String;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;->subprotocols:Ljava/lang/String;

    iget-boolean v3, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;->allowExtensions:Z

    iget-wide v4, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;->maxFramePayloadLength:J

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker08;-><init>(Ljava/lang/String;Ljava/lang/String;ZJ)V

    goto :goto_0

    :cond_1
    sget-object v1, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;->V07:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;->toHttpHeaderValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker07;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;->webSocketURL:Ljava/lang/String;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;->subprotocols:Ljava/lang/String;

    iget-boolean v3, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;->allowExtensions:Z

    iget-wide v4, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;->maxFramePayloadLength:J

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker07;-><init>(Ljava/lang/String;Ljava/lang/String;ZJ)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    new-instance v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker00;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;->webSocketURL:Ljava/lang/String;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;->subprotocols:Ljava/lang/String;

    iget-wide v4, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;->maxFramePayloadLength:J

    invoke-direct {v0, v1, v2, v4, v5}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker00;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public sendUnsupportedWebSocketVersionResponse(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 3

    new-instance v0, Lorg/jboss/netty/handler/codec/http/DefaultHttpResponse;

    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpVersion;->HTTP_1_1:Lorg/jboss/netty/handler/codec/http/HttpVersion;

    sget-object v2, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->SWITCHING_PROTOCOLS:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/DefaultHttpResponse;-><init>(Lorg/jboss/netty/handler/codec/http/HttpVersion;Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;)V

    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->UPGRADE_REQUIRED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    invoke-interface {v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->setStatus(Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;)V

    const-string v1, "Sec-WebSocket-Version"

    sget-object v2, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;->V13:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    invoke-virtual {v2}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;->toHttpHeaderValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lorg/jboss/netty/channel/Channel;->write(Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method
