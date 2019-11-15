.class public final enum Lorg/jboss/netty/handler/codec/socks/SocksMessage$AddressType;
.super Ljava/lang/Enum;
.source "SocksMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/handler/codec/socks/SocksMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AddressType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jboss/netty/handler/codec/socks/SocksMessage$AddressType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jboss/netty/handler/codec/socks/SocksMessage$AddressType;

.field public static final enum DOMAIN:Lorg/jboss/netty/handler/codec/socks/SocksMessage$AddressType;

.field public static final enum IPv4:Lorg/jboss/netty/handler/codec/socks/SocksMessage$AddressType;

.field public static final enum IPv6:Lorg/jboss/netty/handler/codec/socks/SocksMessage$AddressType;

.field public static final enum UNKNOWN:Lorg/jboss/netty/handler/codec/socks/SocksMessage$AddressType;


# instance fields
.field private final b:B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x1

    new-instance v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$AddressType;

    const-string v1, "IPv4"

    invoke-direct {v0, v1, v5, v3}, Lorg/jboss/netty/handler/codec/socks/SocksMessage$AddressType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$AddressType;->IPv4:Lorg/jboss/netty/handler/codec/socks/SocksMessage$AddressType;

    new-instance v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$AddressType;

    const-string v1, "DOMAIN"

    invoke-direct {v0, v1, v3, v4}, Lorg/jboss/netty/handler/codec/socks/SocksMessage$AddressType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$AddressType;->DOMAIN:Lorg/jboss/netty/handler/codec/socks/SocksMessage$AddressType;

    new-instance v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$AddressType;

    const-string v1, "IPv6"

    invoke-direct {v0, v1, v6, v7}, Lorg/jboss/netty/handler/codec/socks/SocksMessage$AddressType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$AddressType;->IPv6:Lorg/jboss/netty/handler/codec/socks/SocksMessage$AddressType;

    new-instance v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$AddressType;

    const-string v1, "UNKNOWN"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v4, v2}, Lorg/jboss/netty/handler/codec/socks/SocksMessage$AddressType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$AddressType;->UNKNOWN:Lorg/jboss/netty/handler/codec/socks/SocksMessage$AddressType;

    new-array v0, v7, [Lorg/jboss/netty/handler/codec/socks/SocksMessage$AddressType;

    sget-object v1, Lorg/jboss/netty/handler/codec/socks/SocksMessage$AddressType;->IPv4:Lorg/jboss/netty/handler/codec/socks/SocksMessage$AddressType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/jboss/netty/handler/codec/socks/SocksMessage$AddressType;->DOMAIN:Lorg/jboss/netty/handler/codec/socks/SocksMessage$AddressType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jboss/netty/handler/codec/socks/SocksMessage$AddressType;->IPv6:Lorg/jboss/netty/handler/codec/socks/SocksMessage$AddressType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/jboss/netty/handler/codec/socks/SocksMessage$AddressType;->UNKNOWN:Lorg/jboss/netty/handler/codec/socks/SocksMessage$AddressType;

    aput-object v1, v0, v4

    sput-object v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$AddressType;->$VALUES:[Lorg/jboss/netty/handler/codec/socks/SocksMessage$AddressType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-byte p3, p0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$AddressType;->b:B

    return-void
.end method

.method public static fromByte(B)Lorg/jboss/netty/handler/codec/socks/SocksMessage$AddressType;
    .locals 5

    invoke-static {}, Lorg/jboss/netty/handler/codec/socks/SocksMessage$AddressType;->values()[Lorg/jboss/netty/handler/codec/socks/SocksMessage$AddressType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget-byte v4, v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$AddressType;->b:B

    if-ne v4, p0, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$AddressType;->UNKNOWN:Lorg/jboss/netty/handler/codec/socks/SocksMessage$AddressType;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jboss/netty/handler/codec/socks/SocksMessage$AddressType;
    .locals 1

    const-class v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$AddressType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$AddressType;

    return-object v0
.end method

.method public static values()[Lorg/jboss/netty/handler/codec/socks/SocksMessage$AddressType;
    .locals 1

    sget-object v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$AddressType;->$VALUES:[Lorg/jboss/netty/handler/codec/socks/SocksMessage$AddressType;

    invoke-virtual {v0}, [Lorg/jboss/netty/handler/codec/socks/SocksMessage$AddressType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jboss/netty/handler/codec/socks/SocksMessage$AddressType;

    return-object v0
.end method


# virtual methods
.method public getByteValue()B
    .locals 1

    iget-byte v0, p0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$AddressType;->b:B

    return v0
.end method
