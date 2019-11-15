.class public abstract Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;
.super Ljava/lang/Object;
.source "WebSocketServerHandshaker.java"


# static fields
.field public static final HANDSHAKE_LISTENER:Lorg/jboss/netty/channel/ChannelFutureListener;


# instance fields
.field private final maxFramePayloadLength:J

.field private selectedSubprotocol:Ljava/lang/String;

.field private final subprotocols:[Ljava/lang/String;

.field private final version:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

.field private final webSocketUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker$1;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker$1;-><init>()V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->HANDSHAKE_LISTENER:Lorg/jboss/netty/channel/ChannelFutureListener;

    return-void
.end method

.method protected constructor <init>(Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;-><init>(Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method protected constructor <init>(Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->version:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    iput-object p2, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->webSocketUrl:Ljava/lang/String;

    if-eqz p3, :cond_1

    const/16 v1, 0x2c

    invoke-static {p3, v1}, Lorg/jboss/netty/util/internal/StringUtil;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v1

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->subprotocols:[Ljava/lang/String;

    :goto_1
    iput-wide p4, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->maxFramePayloadLength:J

    return-void

    :cond_1
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->subprotocols:[Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public abstract close(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/handler/codec/http/websocketx/CloseWebSocketFrame;)Lorg/jboss/netty/channel/ChannelFuture;
.end method

.method public getMaxFramePayloadLength()J
    .locals 2

    iget-wide v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->maxFramePayloadLength:J

    return-wide v0
.end method

.method public getSelectedSubprotocol()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->selectedSubprotocol:Ljava/lang/String;

    return-object v0
.end method

.method public getSubprotocols()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->subprotocols:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getVersion()Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->version:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    return-object v0
.end method

.method public getWebSocketUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->webSocketUrl:Ljava/lang/String;

    return-object v0
.end method

.method public abstract handshake(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/handler/codec/http/HttpRequest;)Lorg/jboss/netty/channel/ChannelFuture;
.end method

.method protected selectSubprotocol(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v1, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->subprotocols:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_2

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/16 v0, 0x2c

    invoke-static {p1, v0}, Lorg/jboss/netty/util/internal/StringUtil;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v4, v3

    :goto_1
    if-ge v4, v6, :cond_4

    aget-object v0, v5, v4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v7, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->subprotocols:[Ljava/lang/String;

    array-length v8, v7

    move v2, v3

    :goto_2
    if-ge v2, v8, :cond_3

    aget-object v9, v7, v2

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method protected setSelectedSubprotocol(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->selectedSubprotocol:Ljava/lang/String;

    return-void
.end method
