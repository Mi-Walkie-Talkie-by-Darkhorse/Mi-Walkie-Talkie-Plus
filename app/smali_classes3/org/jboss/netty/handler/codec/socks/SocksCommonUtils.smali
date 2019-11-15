.class final Lorg/jboss/netty/handler/codec/socks/SocksCommonUtils;
.super Ljava/lang/Object;
.source "SocksCommonUtils.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final FIRST_ADDRESS_OCTET_SHIFT:I = 0x18

.field private static final SECOND_ADDRESS_OCTET_SHIFT:I = 0x10

.field private static final THIRD_ADDRESS_OCTET_SHIFT:I = 0x8

.field public static final UNKNOWN_SOCKS_REQUEST:Lorg/jboss/netty/handler/codec/socks/SocksRequest;

.field public static final UNKNOWN_SOCKS_RESPONSE:Lorg/jboss/netty/handler/codec/socks/SocksResponse;

.field private static final XOR_DEFAULT_VALUE:I = 0xff

.field private static final ipv6conseqZeroFiller:[C

.field private static final ipv6hextetSeparator:C = ':'


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/jboss/netty/handler/codec/socks/SocksCommonUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jboss/netty/handler/codec/socks/SocksCommonUtils;->$assertionsDisabled:Z

    new-instance v0, Lorg/jboss/netty/handler/codec/socks/UnknownSocksRequest;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/socks/UnknownSocksRequest;-><init>()V

    sput-object v0, Lorg/jboss/netty/handler/codec/socks/SocksCommonUtils;->UNKNOWN_SOCKS_REQUEST:Lorg/jboss/netty/handler/codec/socks/SocksRequest;

    new-instance v0, Lorg/jboss/netty/handler/codec/socks/UnknownSocksResponse;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/socks/UnknownSocksResponse;-><init>()V

    sput-object v0, Lorg/jboss/netty/handler/codec/socks/SocksCommonUtils;->UNKNOWN_SOCKS_RESPONSE:Lorg/jboss/netty/handler/codec/socks/SocksResponse;

    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/jboss/netty/handler/codec/socks/SocksCommonUtils;->ipv6conseqZeroFiller:[C

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :array_0
    .array-data 2
        0x3as
        0x3as
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static intToIp(I)Ljava/lang/String;
    .locals 3

    const/16 v2, 0x2e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ipv6toCompressedForm([B)Ljava/lang/String;
    .locals 9

    const/16 v8, 0x8

    const/4 v6, -0x1

    const/4 v1, 0x0

    sget-boolean v0, Lorg/jboss/netty/handler/codec/socks/SocksCommonUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    array-length v0, p0

    const/16 v2, 0x10

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    move v4, v1

    move v3, v1

    move v5, v6

    :goto_0
    if-ge v4, v8, :cond_2

    mul-int/lit8 v0, v4, 0x2

    move v2, v0

    move v0, v1

    :goto_1
    array-length v7, p0

    if-ge v2, v7, :cond_1

    aget-byte v7, p0, v2

    if-nez v7, :cond_1

    add-int/lit8 v7, v2, 0x1

    aget-byte v7, p0, v7

    if-nez v7, :cond_1

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    if-le v0, v3, :cond_5

    move v3, v4

    :goto_2
    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v4, v2, 0x1

    move v5, v3

    move v3, v0

    goto :goto_0

    :cond_2
    if-eq v5, v6, :cond_3

    const/4 v0, 0x2

    if-ge v3, v0, :cond_4

    :cond_3
    invoke-static {p0}, Lorg/jboss/netty/handler/codec/socks/SocksCommonUtils;->ipv6toStr([B)Ljava/lang/String;

    move-result-object v0

    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {v0, p0, v1, v5}, Lorg/jboss/netty/handler/codec/socks/SocksCommonUtils;->ipv6toStr(Ljava/lang/StringBuilder;[BII)V

    sget-object v1, Lorg/jboss/netty/handler/codec/socks/SocksCommonUtils;->ipv6conseqZeroFiller:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    add-int v1, v5, v3

    invoke-static {v0, p0, v1, v8}, Lorg/jboss/netty/handler/codec/socks/SocksCommonUtils;->ipv6toStr(Ljava/lang/StringBuilder;[BII)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    move v0, v3

    move v3, v5

    goto :goto_2
.end method

.method public static ipv6toStr([B)Ljava/lang/String;
    .locals 3

    sget-boolean v0, Lorg/jboss/netty/handler/codec/socks/SocksCommonUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    array-length v0, p0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {v0, p0, v1, v2}, Lorg/jboss/netty/handler/codec/socks/SocksCommonUtils;->ipv6toStr(Ljava/lang/StringBuilder;[BII)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static ipv6toStr(Ljava/lang/StringBuilder;[BII)V
    .locals 2

    :goto_0
    if-ge p2, p3, :cond_1

    shl-int/lit8 v0, p2, 0x1

    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    shl-int/lit8 v1, p2, 0x1

    add-int/lit8 v1, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, p3, -0x1

    if-ge p2, v0, :cond_0

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
