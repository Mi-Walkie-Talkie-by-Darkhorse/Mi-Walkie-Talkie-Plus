.class public Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandshakeHandler;
.super Lorg/jboss/netty/channel/SimpleChannelUpstreamHandler;
.source "WebSocketServerProtocolHandshakeHandler.java"


# static fields
.field private static final logger:Lorg/jboss/netty/logging/InternalLogger;


# instance fields
.field private final allowExtensions:Z

.field private final subprotocols:Ljava/lang/String;

.field private final websocketPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandshakeHandler;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandshakeHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelUpstreamHandler;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandshakeHandler;->websocketPath:Ljava/lang/String;

    iput-object p2, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandshakeHandler;->subprotocols:Ljava/lang/String;

    iput-boolean p3, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandshakeHandler;->allowExtensions:Z

    return-void
.end method

.method private static getWebSocketLocation(Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/handler/codec/http/HttpRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "ws"

    const-class v1, Lorg/jboss/netty/handler/ssl/SslHandler;

    invoke-interface {p0, v1}, Lorg/jboss/netty/channel/ChannelPipeline;->get(Ljava/lang/Class;)Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "wss"

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Host"

    invoke-interface {p1, v1}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static sendHttpResponse(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/handler/codec/http/HttpRequest;Lorg/jboss/netty/handler/codec/http/HttpResponse;)V
    .locals 3

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/jboss/netty/channel/Channel;->write(Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    invoke-static {p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->isKeepAlive(Lorg/jboss/netty/handler/codec/http/HttpMessage;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->getStatus()Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->getCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_1

    :cond_0
    sget-object v1, Lorg/jboss/netty/channel/ChannelFutureListener;->CLOSE:Lorg/jboss/netty/channel/ChannelFutureListener;

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public exceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandshakeHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v1, "Exception Caught"

    invoke-interface {v0, v1, p2}, Lorg/jboss/netty/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->close()Lorg/jboss/netty/channel/ChannelFuture;

    return-void
.end method

.method public messageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/jboss/netty/handler/codec/http/HttpRequest;

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/http/HttpRequest;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->getMethod()Lorg/jboss/netty/handler/codec/http/HttpMethod;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/handler/codec/http/HttpMethod;->GET:Lorg/jboss/netty/handler/codec/http/HttpMethod;

    if-eq v1, v2, :cond_1

    new-instance v1, Lorg/jboss/netty/handler/codec/http/DefaultHttpResponse;

    sget-object v2, Lorg/jboss/netty/handler/codec/http/HttpVersion;->HTTP_1_1:Lorg/jboss/netty/handler/codec/http/HttpVersion;

    sget-object v3, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->FORBIDDEN:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    invoke-direct {v1, v2, v3}, Lorg/jboss/netty/handler/codec/http/DefaultHttpResponse;-><init>(Lorg/jboss/netty/handler/codec/http/HttpVersion;Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;)V

    invoke-static {p1, v0, v1}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandshakeHandler;->sendHttpResponse(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/handler/codec/http/HttpRequest;Lorg/jboss/netty/handler/codec/http/HttpResponse;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v2

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandshakeHandler;->websocketPath:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandshakeHandler;->getWebSocketLocation(Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/handler/codec/http/HttpRequest;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandshakeHandler;->subprotocols:Ljava/lang/String;

    iget-boolean v4, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandshakeHandler;->allowExtensions:Z

    invoke-direct {v1, v2, v3, v4}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;->newHandshaker(Lorg/jboss/netty/handler/codec/http/HttpRequest;)Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshakerFactory;->sendUnsupportedWebSocketVersionResponse(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->handshake(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/handler/codec/http/HttpRequest;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandshakeHandler$1;

    invoke-direct {v1, p0, p1}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandshakeHandler$1;-><init>(Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandshakeHandler;Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    invoke-static {p1, v2}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandler;->setHandshaker(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;)V

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    const-string v1, "WS403Responder"

    invoke-static {}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandler;->forbiddenHttpRequestResponder()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v2

    invoke-interface {v0, p0, v1, v2}, Lorg/jboss/netty/channel/ChannelPipeline;->replace(Lorg/jboss/netty/channel/ChannelHandler;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    goto :goto_0
.end method
