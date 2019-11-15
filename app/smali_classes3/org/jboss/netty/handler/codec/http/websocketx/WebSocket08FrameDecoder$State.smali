.class public final enum Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;
.super Ljava/lang/Enum;
.source "WebSocket08FrameDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

.field public static final enum CORRUPT:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

.field public static final enum FRAME_START:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

.field public static final enum MASKING_KEY:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

.field public static final enum PAYLOAD:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    const-string v1, "FRAME_START"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;->FRAME_START:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    const-string v1, "MASKING_KEY"

    invoke-direct {v0, v1, v3}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;->MASKING_KEY:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    const-string v1, "PAYLOAD"

    invoke-direct {v0, v1, v4}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;->PAYLOAD:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    const-string v1, "CORRUPT"

    invoke-direct {v0, v1, v5}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;->CORRUPT:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    sget-object v1, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;->FRAME_START:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;->MASKING_KEY:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;->PAYLOAD:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;->CORRUPT:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    aput-object v1, v0, v5

    sput-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;->$VALUES:[Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

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

.method public static valueOf(Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;
    .locals 1

    const-class v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    return-object v0
.end method

.method public static values()[Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;
    .locals 1

    sget-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;->$VALUES:[Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    invoke-virtual {v0}, [Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    return-object v0
.end method
