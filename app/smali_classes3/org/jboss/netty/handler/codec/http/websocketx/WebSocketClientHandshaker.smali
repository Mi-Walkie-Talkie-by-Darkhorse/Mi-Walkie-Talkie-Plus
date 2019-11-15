.class public abstract Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;
.super Ljava/lang/Object;
.source "WebSocketClientHandshaker.java"


# instance fields
.field private actualSubprotocol:Ljava/lang/String;

.field protected final customHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final expectedSubprotocol:Ljava/lang/String;

.field private handshakeComplete:Z

.field private final maxFramePayloadLength:J

.field private final version:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

.field private final webSocketUrl:Ljava/net/URI;


# direct methods
.method protected constructor <init>(Ljava/net/URI;Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-wide v6, 0x7fffffffffffffffL

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v7}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;-><init>(Ljava/net/URI;Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;Ljava/util/Map;J)V

    return-void
.end method

.method protected constructor <init>(Ljava/net/URI;Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;Ljava/util/Map;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->webSocketUrl:Ljava/net/URI;

    iput-object p2, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->version:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    iput-object p3, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->expectedSubprotocol:Ljava/lang/String;

    iput-object p4, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->customHeaders:Ljava/util/Map;

    iput-wide p5, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->maxFramePayloadLength:J

    return-void
.end method


# virtual methods
.method public abstract finishHandshake(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/handler/codec/http/HttpResponse;)V
.end method

.method public getActualSubprotocol()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->actualSubprotocol:Ljava/lang/String;

    return-object v0
.end method

.method public getExpectedSubprotocol()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->expectedSubprotocol:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxFramePayloadLength()J
    .locals 2

    iget-wide v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->maxFramePayloadLength:J

    return-wide v0
.end method

.method public getVersion()Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->version:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    return-object v0
.end method

.method public getWebSocketUrl()Ljava/net/URI;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->webSocketUrl:Ljava/net/URI;

    return-object v0
.end method

.method public abstract handshake(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public isHandshakeComplete()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->handshakeComplete:Z

    return v0
.end method

.method protected setActualSubprotocol(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->actualSubprotocol:Ljava/lang/String;

    return-void
.end method

.method protected setHandshakeComplete()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->handshakeComplete:Z

    return-void
.end method
