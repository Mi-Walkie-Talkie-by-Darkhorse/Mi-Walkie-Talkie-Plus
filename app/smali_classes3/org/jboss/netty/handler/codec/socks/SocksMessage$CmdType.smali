.class public final enum Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdType;
.super Ljava/lang/Enum;
.source "SocksMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/handler/codec/socks/SocksMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CmdType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdType;

.field public static final enum BIND:Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdType;

.field public static final enum CONNECT:Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdType;

.field public static final enum UDP:Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdType;

.field public static final enum UNKNOWN:Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdType;


# instance fields
.field private final b:B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-instance v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdType;

    const-string v1, "CONNECT"

    invoke-direct {v0, v1, v6, v3}, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdType;->CONNECT:Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdType;

    new-instance v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdType;

    const-string v1, "BIND"

    invoke-direct {v0, v1, v3, v4}, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdType;->BIND:Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdType;

    new-instance v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdType;

    const-string v1, "UDP"

    invoke-direct {v0, v1, v4, v5}, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdType;->UDP:Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdType;

    new-instance v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdType;

    const-string v1, "UNKNOWN"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v5, v2}, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdType;->UNKNOWN:Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdType;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdType;

    sget-object v1, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdType;->CONNECT:Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdType;->BIND:Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdType;->UDP:Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdType;->UNKNOWN:Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdType;

    aput-object v1, v0, v5

    sput-object v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdType;->$VALUES:[Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdType;

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

    iput-byte p3, p0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdType;->b:B

    return-void
.end method

.method public static fromByte(B)Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdType;
    .locals 5

    invoke-static {}, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdType;->values()[Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget-byte v4, v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdType;->b:B

    if-ne v4, p0, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdType;->UNKNOWN:Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdType;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdType;
    .locals 1

    const-class v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdType;

    return-object v0
.end method

.method public static values()[Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdType;
    .locals 1

    sget-object v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdType;->$VALUES:[Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdType;

    invoke-virtual {v0}, [Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdType;

    return-object v0
.end method


# virtual methods
.method public getByteValue()B
    .locals 1

    iget-byte v0, p0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdType;->b:B

    return v0
.end method
