.class public final enum Lorg/jboss/netty/handler/codec/socks/SocksMessage$AuthStatus;
.super Ljava/lang/Enum;
.source "SocksMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/handler/codec/socks/SocksMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AuthStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jboss/netty/handler/codec/socks/SocksMessage$AuthStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jboss/netty/handler/codec/socks/SocksMessage$AuthStatus;

.field public static final enum FAILURE:Lorg/jboss/netty/handler/codec/socks/SocksMessage$AuthStatus;

.field public static final enum SUCCESS:Lorg/jboss/netty/handler/codec/socks/SocksMessage$AuthStatus;


# instance fields
.field private final b:B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$AuthStatus;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3, v3}, Lorg/jboss/netty/handler/codec/socks/SocksMessage$AuthStatus;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$AuthStatus;->SUCCESS:Lorg/jboss/netty/handler/codec/socks/SocksMessage$AuthStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$AuthStatus;

    const-string v1, "FAILURE"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v4, v2}, Lorg/jboss/netty/handler/codec/socks/SocksMessage$AuthStatus;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$AuthStatus;->FAILURE:Lorg/jboss/netty/handler/codec/socks/SocksMessage$AuthStatus;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/jboss/netty/handler/codec/socks/SocksMessage$AuthStatus;

    sget-object v1, Lorg/jboss/netty/handler/codec/socks/SocksMessage$AuthStatus;->SUCCESS:Lorg/jboss/netty/handler/codec/socks/SocksMessage$AuthStatus;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jboss/netty/handler/codec/socks/SocksMessage$AuthStatus;->FAILURE:Lorg/jboss/netty/handler/codec/socks/SocksMessage$AuthStatus;

    aput-object v1, v0, v4

    sput-object v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$AuthStatus;->$VALUES:[Lorg/jboss/netty/handler/codec/socks/SocksMessage$AuthStatus;

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

    iput-byte p3, p0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$AuthStatus;->b:B

    return-void
.end method

.method public static fromByte(B)Lorg/jboss/netty/handler/codec/socks/SocksMessage$AuthStatus;
    .locals 5

    invoke-static {}, Lorg/jboss/netty/handler/codec/socks/SocksMessage$AuthStatus;->values()[Lorg/jboss/netty/handler/codec/socks/SocksMessage$AuthStatus;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget-byte v4, v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$AuthStatus;->b:B

    if-ne v4, p0, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$AuthStatus;->FAILURE:Lorg/jboss/netty/handler/codec/socks/SocksMessage$AuthStatus;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jboss/netty/handler/codec/socks/SocksMessage$AuthStatus;
    .locals 1

    const-class v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$AuthStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$AuthStatus;

    return-object v0
.end method

.method public static values()[Lorg/jboss/netty/handler/codec/socks/SocksMessage$AuthStatus;
    .locals 1

    sget-object v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$AuthStatus;->$VALUES:[Lorg/jboss/netty/handler/codec/socks/SocksMessage$AuthStatus;

    invoke-virtual {v0}, [Lorg/jboss/netty/handler/codec/socks/SocksMessage$AuthStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jboss/netty/handler/codec/socks/SocksMessage$AuthStatus;

    return-object v0
.end method


# virtual methods
.method public getByteValue()B
    .locals 1

    iget-byte v0, p0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$AuthStatus;->b:B

    return v0
.end method
