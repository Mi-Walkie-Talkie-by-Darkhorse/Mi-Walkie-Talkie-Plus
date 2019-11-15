.class public Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshakerFactory;
.super Ljava/lang/Object;
.source "WebSocketClientHandshakerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newHandshaker(Ljava/net/URI;Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;ZLjava/util/Map;)Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;"
        }
    .end annotation

    const-wide v6, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshakerFactory;->newHandshaker(Ljava/net/URI;Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;ZLjava/util/Map;J)Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;

    move-result-object v0

    return-object v0
.end method

.method public newHandshaker(Ljava/net/URI;Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;ZLjava/util/Map;J)Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)",
            "Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;"
        }
    .end annotation

    sget-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;->V13:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    if-ne p2, v0, :cond_0

    new-instance v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker13;

    sget-object v2, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;->V13:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-wide v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker13;-><init>(Ljava/net/URI;Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;ZLjava/util/Map;J)V

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;->V08:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    if-ne p2, v0, :cond_1

    new-instance v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker08;

    sget-object v2, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;->V08:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-wide v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker08;-><init>(Ljava/net/URI;Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;ZLjava/util/Map;J)V

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;->V07:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    if-ne p2, v0, :cond_2

    new-instance v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker07;

    sget-object v2, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;->V07:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-wide v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker07;-><init>(Ljava/net/URI;Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;ZLjava/util/Map;J)V

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;->V00:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    if-ne p2, v0, :cond_3

    new-instance v1, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker00;

    sget-object v3, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;->V00:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    move-object v2, p1

    move-object v4, p3

    move-object v5, p5

    move-wide v6, p6

    invoke-direct/range {v1 .. v7}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketClientHandshaker00;-><init>(Ljava/net/URI;Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;Ljava/util/Map;J)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    new-instance v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketHandshakeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Protocol version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
