.class public final enum Lorg/jboss/netty/handler/codec/socks/SocksCmdResponseDecoder$State;
.super Ljava/lang/Enum;
.source "SocksCmdResponseDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/handler/codec/socks/SocksCmdResponseDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jboss/netty/handler/codec/socks/SocksCmdResponseDecoder$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jboss/netty/handler/codec/socks/SocksCmdResponseDecoder$State;

.field public static final enum CHECK_PROTOCOL_VERSION:Lorg/jboss/netty/handler/codec/socks/SocksCmdResponseDecoder$State;

.field public static final enum READ_CMD_ADDRESS:Lorg/jboss/netty/handler/codec/socks/SocksCmdResponseDecoder$State;

.field public static final enum READ_CMD_HEADER:Lorg/jboss/netty/handler/codec/socks/SocksCmdResponseDecoder$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/jboss/netty/handler/codec/socks/SocksCmdResponseDecoder$State;

    const-string v1, "CHECK_PROTOCOL_VERSION"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/socks/SocksCmdResponseDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/socks/SocksCmdResponseDecoder$State;->CHECK_PROTOCOL_VERSION:Lorg/jboss/netty/handler/codec/socks/SocksCmdResponseDecoder$State;

    new-instance v0, Lorg/jboss/netty/handler/codec/socks/SocksCmdResponseDecoder$State;

    const-string v1, "READ_CMD_HEADER"

    invoke-direct {v0, v1, v3}, Lorg/jboss/netty/handler/codec/socks/SocksCmdResponseDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/socks/SocksCmdResponseDecoder$State;->READ_CMD_HEADER:Lorg/jboss/netty/handler/codec/socks/SocksCmdResponseDecoder$State;

    new-instance v0, Lorg/jboss/netty/handler/codec/socks/SocksCmdResponseDecoder$State;

    const-string v1, "READ_CMD_ADDRESS"

    invoke-direct {v0, v1, v4}, Lorg/jboss/netty/handler/codec/socks/SocksCmdResponseDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/socks/SocksCmdResponseDecoder$State;->READ_CMD_ADDRESS:Lorg/jboss/netty/handler/codec/socks/SocksCmdResponseDecoder$State;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/jboss/netty/handler/codec/socks/SocksCmdResponseDecoder$State;

    sget-object v1, Lorg/jboss/netty/handler/codec/socks/SocksCmdResponseDecoder$State;->CHECK_PROTOCOL_VERSION:Lorg/jboss/netty/handler/codec/socks/SocksCmdResponseDecoder$State;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jboss/netty/handler/codec/socks/SocksCmdResponseDecoder$State;->READ_CMD_HEADER:Lorg/jboss/netty/handler/codec/socks/SocksCmdResponseDecoder$State;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jboss/netty/handler/codec/socks/SocksCmdResponseDecoder$State;->READ_CMD_ADDRESS:Lorg/jboss/netty/handler/codec/socks/SocksCmdResponseDecoder$State;

    aput-object v1, v0, v4

    sput-object v0, Lorg/jboss/netty/handler/codec/socks/SocksCmdResponseDecoder$State;->$VALUES:[Lorg/jboss/netty/handler/codec/socks/SocksCmdResponseDecoder$State;

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

.method public static valueOf(Ljava/lang/String;)Lorg/jboss/netty/handler/codec/socks/SocksCmdResponseDecoder$State;
    .locals 1

    const-class v0, Lorg/jboss/netty/handler/codec/socks/SocksCmdResponseDecoder$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/socks/SocksCmdResponseDecoder$State;

    return-object v0
.end method

.method public static values()[Lorg/jboss/netty/handler/codec/socks/SocksCmdResponseDecoder$State;
    .locals 1

    sget-object v0, Lorg/jboss/netty/handler/codec/socks/SocksCmdResponseDecoder$State;->$VALUES:[Lorg/jboss/netty/handler/codec/socks/SocksCmdResponseDecoder$State;

    invoke-virtual {v0}, [Lorg/jboss/netty/handler/codec/socks/SocksCmdResponseDecoder$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jboss/netty/handler/codec/socks/SocksCmdResponseDecoder$State;

    return-object v0
.end method
