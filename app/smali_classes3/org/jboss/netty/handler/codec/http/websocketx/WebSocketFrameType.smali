.class public final enum Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrameType;
.super Ljava/lang/Enum;
.source "WebSocketFrameType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrameType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrameType;

.field public static final enum BINARY:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrameType;

.field public static final enum CLOSE:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrameType;

.field public static final enum CONTINUATION:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrameType;

.field public static final enum PING:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrameType;

.field public static final enum PONG:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrameType;

.field public static final enum TEXT:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrameType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrameType;

    const-string v1, "TEXT"

    invoke-direct {v0, v1, v3}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrameType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrameType;->TEXT:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrameType;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrameType;

    const-string v1, "BINARY"

    invoke-direct {v0, v1, v4}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrameType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrameType;->BINARY:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrameType;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrameType;

    const-string v1, "PING"

    invoke-direct {v0, v1, v5}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrameType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrameType;->PING:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrameType;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrameType;

    const-string v1, "PONG"

    invoke-direct {v0, v1, v6}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrameType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrameType;->PONG:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrameType;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrameType;

    const-string v1, "CLOSE"

    invoke-direct {v0, v1, v7}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrameType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrameType;->CLOSE:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrameType;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrameType;

    const-string v1, "CONTINUATION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrameType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrameType;->CONTINUATION:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrameType;

    const/4 v0, 0x6

    new-array v0, v0, [Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrameType;

    sget-object v1, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrameType;->TEXT:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrameType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrameType;->BINARY:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrameType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrameType;->PING:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrameType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrameType;->PONG:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrameType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrameType;->CLOSE:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrameType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrameType;->CONTINUATION:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrameType;

    aput-object v2, v0, v1

    sput-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrameType;->$VALUES:[Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrameType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrameType;
    .locals 1

    const-class v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrameType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrameType;

    return-object v0
.end method

.method public static values()[Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrameType;
    .locals 1

    sget-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrameType;->$VALUES:[Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrameType;

    invoke-virtual {v0}, [Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrameType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrameType;

    return-object v0
.end method
