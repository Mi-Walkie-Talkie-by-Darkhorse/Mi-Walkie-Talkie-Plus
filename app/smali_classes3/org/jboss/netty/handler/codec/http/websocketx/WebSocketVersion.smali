.class public final enum Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;
.super Ljava/lang/Enum;
.source "WebSocketVersion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

.field public static final enum UNKNOWN:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

.field public static final enum V00:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

.field public static final enum V07:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

.field public static final enum V08:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

.field public static final enum V13:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;->UNKNOWN:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    const-string v1, "V00"

    invoke-direct {v0, v1, v3}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;->V00:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    const-string v1, "V07"

    invoke-direct {v0, v1, v4}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;->V07:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    const-string v1, "V08"

    invoke-direct {v0, v1, v5}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;->V08:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    const-string v1, "V13"

    invoke-direct {v0, v1, v6}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;->V13:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    sget-object v1, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;->UNKNOWN:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;->V00:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;->V07:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;->V08:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    aput-object v1, v0, v5

    sget-object v1, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;->V13:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    aput-object v1, v0, v6

    sput-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;->$VALUES:[Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

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

.method public static valueOf(Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;
    .locals 1

    const-class v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    return-object v0
.end method

.method public static values()[Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;
    .locals 1

    sget-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;->$VALUES:[Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    invoke-virtual {v0}, [Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    return-object v0
.end method


# virtual methods
.method public toHttpHeaderValue()Ljava/lang/String;
    .locals 3

    sget-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;->V00:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    if-ne p0, v0, :cond_0

    const-string v0, "0"

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;->V07:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    if-ne p0, v0, :cond_1

    const-string v0, "7"

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;->V08:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    if-ne p0, v0, :cond_2

    const-string v0, "8"

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;->V13:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketVersion;

    if-ne p0, v0, :cond_3

    const-string v0, "13"

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown web socket version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
