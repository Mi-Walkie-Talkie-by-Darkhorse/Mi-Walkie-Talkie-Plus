.class public Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker13;
.super Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;
.source "WebSocketServerHandshaker13.java"


# static fields
.field public static final WEBSOCKET_13_ACCEPT_GUID:Ljava/lang/String; = "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

.field private static final logger:Lorg/jboss/netty/logging/InternalLogger;


# instance fields
.field private final allowExtensions:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker13;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker13;->logger:Lorg/jboss/netty/logging/InternalLogger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker13;-><init>(Ljava/lang/String;Ljava/lang/String;ZJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZJ)V
    .locals 6

    sget-object v1, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;->V13:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;-><init>(Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;Ljava/lang/String;J)V

    iput-boolean p3, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker13;->allowExtensions:Z

    return-void
.end method

.method static synthetic access$000(Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker13;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker13;->allowExtensions:Z

    return v0
.end method


# virtual methods
.method public close(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/handler/codec/http/websocketx/CloseWebSocketFrame;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 2

    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/Channel;->write(Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    sget-object v1, Lorg/jboss/netty/channel/ChannelFutureListener;->CLOSE:Lorg/jboss/netty/channel/ChannelFutureListener;

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    return-object v0
.end method

.method public handshake(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/handler/codec/http/HttpRequest;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker13;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0}, Lorg/jboss/netty/logging/InternalLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker13;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v1, "Channel %s WS Version 13 server handshake"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-interface {p1}, Lorg/jboss/netty/channel/Channel;->getId()Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lorg/jboss/netty/handler/codec/http/DefaultHttpResponse;

    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpVersion;->HTTP_1_1:Lorg/jboss/netty/handler/codec/http/HttpVersion;

    sget-object v2, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->SWITCHING_PROTOCOLS:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/DefaultHttpResponse;-><init>(Lorg/jboss/netty/handler/codec/http/HttpVersion;Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;)V

    const-string v1, "Sec-WebSocket-Key"

    invoke-interface {p2, v1}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketHandshakeException;

    const-string v1, "not a WebSocket request: missing key"

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/jboss/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-static {v2, v3}, Lorg/jboss/netty/buffer/ChannelBuffers;->copiedBuffer(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    invoke-static {v2}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketUtil;->sha1(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    invoke-static {v2}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketUtil;->base64(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker13;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v3}, Lorg/jboss/netty/logging/InternalLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker13;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v4, "WS Version 13 Server Handshake key: %s. Response: %s."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    aput-object v2, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;)V

    :cond_2
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->SWITCHING_PROTOCOLS:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    invoke-interface {v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->setStatus(Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;)V

    const-string v1, "Upgrade"

    const-string v3, "WebSocket"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "Connection"

    const-string v3, "Upgrade"

    invoke-interface {v0, v1, v3}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "Sec-WebSocket-Accept"

    invoke-interface {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "Sec-WebSocket-Protocol"

    invoke-interface {p2, v1}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v1}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker13;->selectSubprotocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    new-instance v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketHandshakeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested subprotocol(s) not supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string v1, "Sec-WebSocket-Protocol"

    invoke-interface {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker13;->setSelectedSubprotocol(Ljava/lang/String;)V

    :cond_4
    invoke-interface {p1, v0}, Lorg/jboss/netty/channel/Channel;->write(Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker13$1;

    invoke-direct {v1, p0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker13$1;-><init>(Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker13;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    return-object v0
.end method
