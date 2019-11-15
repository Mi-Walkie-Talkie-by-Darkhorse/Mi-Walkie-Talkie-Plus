.class public final enum Lorg/jboss/netty/handler/codec/socks/SocksInitResponseDecoder$State;
.super Ljava/lang/Enum;
.source "SocksInitResponseDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/handler/codec/socks/SocksInitResponseDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jboss/netty/handler/codec/socks/SocksInitResponseDecoder$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jboss/netty/handler/codec/socks/SocksInitResponseDecoder$State;

.field public static final enum CHECK_PROTOCOL_VERSION:Lorg/jboss/netty/handler/codec/socks/SocksInitResponseDecoder$State;

.field public static final enum READ_PREFFERED_AUTH_TYPE:Lorg/jboss/netty/handler/codec/socks/SocksInitResponseDecoder$State;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/jboss/netty/handler/codec/socks/SocksInitResponseDecoder$State;

    const-string v1, "CHECK_PROTOCOL_VERSION"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/socks/SocksInitResponseDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/socks/SocksInitResponseDecoder$State;->CHECK_PROTOCOL_VERSION:Lorg/jboss/netty/handler/codec/socks/SocksInitResponseDecoder$State;

    new-instance v0, Lorg/jboss/netty/handler/codec/socks/SocksInitResponseDecoder$State;

    const-string v1, "READ_PREFFERED_AUTH_TYPE"

    invoke-direct {v0, v1, v3}, Lorg/jboss/netty/handler/codec/socks/SocksInitResponseDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/socks/SocksInitResponseDecoder$State;->READ_PREFFERED_AUTH_TYPE:Lorg/jboss/netty/handler/codec/socks/SocksInitResponseDecoder$State;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/jboss/netty/handler/codec/socks/SocksInitResponseDecoder$State;

    sget-object v1, Lorg/jboss/netty/handler/codec/socks/SocksInitResponseDecoder$State;->CHECK_PROTOCOL_VERSION:Lorg/jboss/netty/handler/codec/socks/SocksInitResponseDecoder$State;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jboss/netty/handler/codec/socks/SocksInitResponseDecoder$State;->READ_PREFFERED_AUTH_TYPE:Lorg/jboss/netty/handler/codec/socks/SocksInitResponseDecoder$State;

    aput-object v1, v0, v3

    sput-object v0, Lorg/jboss/netty/handler/codec/socks/SocksInitResponseDecoder$State;->$VALUES:[Lorg/jboss/netty/handler/codec/socks/SocksInitResponseDecoder$State;

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

.method public static valueOf(Ljava/lang/String;)Lorg/jboss/netty/handler/codec/socks/SocksInitResponseDecoder$State;
    .locals 1

    const-class v0, Lorg/jboss/netty/handler/codec/socks/SocksInitResponseDecoder$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/socks/SocksInitResponseDecoder$State;

    return-object v0
.end method

.method public static values()[Lorg/jboss/netty/handler/codec/socks/SocksInitResponseDecoder$State;
    .locals 1

    sget-object v0, Lorg/jboss/netty/handler/codec/socks/SocksInitResponseDecoder$State;->$VALUES:[Lorg/jboss/netty/handler/codec/socks/SocksInitResponseDecoder$State;

    invoke-virtual {v0}, [Lorg/jboss/netty/handler/codec/socks/SocksInitResponseDecoder$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jboss/netty/handler/codec/socks/SocksInitResponseDecoder$State;

    return-object v0
.end method
