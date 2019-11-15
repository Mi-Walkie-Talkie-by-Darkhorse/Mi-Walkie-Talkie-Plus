.class public final enum Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;
.super Ljava/lang/Enum;
.source "SocksMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/handler/codec/socks/SocksMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CmdStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;

.field public static final enum ADDRESS_NOT_SUPPORTED:Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;

.field public static final enum COMMAND_NOT_SUPPORTED:Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;

.field public static final enum FAILURE:Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;

.field public static final enum FORBIDDEN:Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;

.field public static final enum HOST_UNREACHABLE:Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;

.field public static final enum NETWORK_UNREACHABLE:Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;

.field public static final enum REFUSED:Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;

.field public static final enum SUCCESS:Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;

.field public static final enum TTL_EXPIRED:Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;

.field public static final enum UNASSIGNED:Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;


# instance fields
.field private final b:B


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v4, v4}, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;->SUCCESS:Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;

    const-string v1, "FAILURE"

    invoke-direct {v0, v1, v5, v5}, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;->FAILURE:Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;

    const-string v1, "FORBIDDEN"

    invoke-direct {v0, v1, v6, v6}, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;->FORBIDDEN:Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;

    const-string v1, "NETWORK_UNREACHABLE"

    invoke-direct {v0, v1, v7, v7}, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;->NETWORK_UNREACHABLE:Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;

    const-string v1, "HOST_UNREACHABLE"

    invoke-direct {v0, v1, v8, v8}, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;->HOST_UNREACHABLE:Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;

    const-string v1, "REFUSED"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;->REFUSED:Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;

    const-string v1, "TTL_EXPIRED"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;->TTL_EXPIRED:Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;

    const-string v1, "COMMAND_NOT_SUPPORTED"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;->COMMAND_NOT_SUPPORTED:Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;

    const-string v1, "ADDRESS_NOT_SUPPORTED"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;->ADDRESS_NOT_SUPPORTED:Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;

    const-string v1, "UNASSIGNED"

    const/16 v2, 0x9

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;->UNASSIGNED:Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;

    const/16 v0, 0xa

    new-array v0, v0, [Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;

    sget-object v1, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;->SUCCESS:Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;->FAILURE:Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;

    aput-object v1, v0, v5

    sget-object v1, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;->FORBIDDEN:Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;

    aput-object v1, v0, v6

    sget-object v1, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;->NETWORK_UNREACHABLE:Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;

    aput-object v1, v0, v7

    sget-object v1, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;->HOST_UNREACHABLE:Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;->REFUSED:Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;->TTL_EXPIRED:Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;->COMMAND_NOT_SUPPORTED:Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;->ADDRESS_NOT_SUPPORTED:Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;->UNASSIGNED:Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;

    aput-object v2, v0, v1

    sput-object v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;->$VALUES:[Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;

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

    iput-byte p3, p0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;->b:B

    return-void
.end method

.method public static fromByte(B)Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;
    .locals 5

    invoke-static {}, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;->values()[Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget-byte v4, v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;->b:B

    if-ne v4, p0, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;->UNASSIGNED:Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;
    .locals 1

    const-class v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;

    return-object v0
.end method

.method public static values()[Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;
    .locals 1

    sget-object v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;->$VALUES:[Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;

    invoke-virtual {v0}, [Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;

    return-object v0
.end method


# virtual methods
.method public getByteValue()B
    .locals 1

    iget-byte v0, p0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;->b:B

    return v0
.end method
