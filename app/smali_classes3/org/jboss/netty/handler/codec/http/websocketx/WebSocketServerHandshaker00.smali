.class public Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker00;
.super Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;
.source "WebSocketServerHandshaker00.java"


# static fields
.field private static final logger:Lorg/jboss/netty/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker00;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker00;->logger:Lorg/jboss/netty/logging/InternalLogger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker00;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    sget-object v1, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;->V00:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;-><init>(Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public close(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/handler/codec/http/websocketx/CloseWebSocketFrame;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 1

    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/Channel;->write(Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public handshake(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/handler/codec/http/HttpRequest;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker00;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v2}, Lorg/jboss/netty/logging/InternalLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker00;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v3, "Channel %s WS Version 00 server handshake"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-interface {p1}, Lorg/jboss/netty/channel/Channel;->getId()Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;)V

    :cond_0
    const-string v2, "Upgrade"

    const-string v3, "Connection"

    invoke-interface {p2, v3}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "WebSocket"

    const-string v3, "Upgrade"

    invoke-interface {p2, v3}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    new-instance v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketHandshakeException;

    const-string v1, "not a WebSocket handshake request: missing upgrade"

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string v2, "Sec-WebSocket-Key1"

    invoke-interface {p2, v2}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "Sec-WebSocket-Key2"

    invoke-interface {p2, v2}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_0
    new-instance v2, Lorg/jboss/netty/handler/codec/http/DefaultHttpResponse;

    sget-object v3, Lorg/jboss/netty/handler/codec/http/HttpVersion;->HTTP_1_1:Lorg/jboss/netty/handler/codec/http/HttpVersion;

    new-instance v4, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v5, 0x65

    if-eqz v0, :cond_4

    const-string v1, "WebSocket Protocol Handshake"

    :goto_1
    invoke-direct {v4, v5, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    invoke-direct {v2, v3, v4}, Lorg/jboss/netty/handler/codec/http/DefaultHttpResponse;-><init>(Lorg/jboss/netty/handler/codec/http/HttpVersion;Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;)V

    const-string v1, "Upgrade"

    const-string v3, "WebSocket"

    invoke-interface {v2, v1, v3}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "Connection"

    const-string v3, "Upgrade"

    invoke-interface {v2, v1, v3}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v0, :cond_8

    const-string v0, "Sec-WebSocket-Origin"

    const-string v1, "Origin"

    invoke-interface {p2, v1}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "Sec-WebSocket-Location"

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker00;->getWebSocketUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "Sec-WebSocket-Protocol"

    invoke-interface {p2, v0}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker00;->selectSubprotocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    new-instance v1, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketHandshakeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested subprotocol(s) not supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketHandshakeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    const-string v1, "Web Socket Protocol Handshake"

    goto :goto_1

    :cond_5
    const-string v0, "Sec-WebSocket-Protocol"

    invoke-interface {v2, v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker00;->setSelectedSubprotocol(Ljava/lang/String;)V

    :cond_6
    const-string v0, "Sec-WebSocket-Key1"

    invoke-interface {p2, v0}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sec-WebSocket-Key2"

    invoke-interface {p2, v1}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "[^0-9]"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v3, "[^ ]"

    const-string v6, ""

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v6, v0

    div-long/2addr v4, v6

    long-to-int v0, v4

    const-string v3, "[^0-9]"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v3, "[^ ]"

    const-string v6, ""

    invoke-virtual {v1, v3, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-long v6, v1

    div-long/2addr v4, v6

    long-to-int v1, v4

    invoke-interface {p2}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->getContent()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    invoke-interface {v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readLong()J

    move-result-wide v4

    const/16 v3, 0x10

    invoke-static {v3}, Lorg/jboss/netty/buffer/ChannelBuffers;->buffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeInt(I)V

    invoke-interface {v3, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeInt(I)V

    invoke-interface {v3, v4, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeLong(J)V

    invoke-static {v3}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketUtil;->md5(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->setContent(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    :cond_7
    :goto_2
    invoke-interface {p1, v2}, Lorg/jboss/netty/channel/Channel;->write(Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker00$1;

    invoke-direct {v1, p0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker00$1;-><init>(Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker00;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    return-object v0

    :cond_8
    const-string v0, "WebSocket-Origin"

    const-string v1, "Origin"

    invoke-interface {p2, v1}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "WebSocket-Location"

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker00;->getWebSocketUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "WebSocket-Protocol"

    invoke-interface {p2, v0}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v1, "WebSocket-Protocol"

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker00;->selectSubprotocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2
.end method
