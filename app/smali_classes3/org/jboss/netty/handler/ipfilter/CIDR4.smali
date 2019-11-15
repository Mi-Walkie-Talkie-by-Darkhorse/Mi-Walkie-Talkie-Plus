.class public Lorg/jboss/netty/handler/ipfilter/CIDR4;
.super Lorg/jboss/netty/handler/ipfilter/CIDR;
.source "CIDR4.java"


# instance fields
.field private final addressEndInt:I

.field private addressInt:I


# direct methods
.method protected constructor <init>(Ljava/net/Inet4Address;I)V
    .locals 2

    invoke-direct {p0}, Lorg/jboss/netty/handler/ipfilter/CIDR;-><init>()V

    iput p2, p0, Lorg/jboss/netty/handler/ipfilter/CIDR4;->cidrMask:I

    invoke-static {p1}, Lorg/jboss/netty/handler/ipfilter/CIDR4;->ipv4AddressToInt(Ljava/net/InetAddress;)I

    move-result v0

    iput v0, p0, Lorg/jboss/netty/handler/ipfilter/CIDR4;->addressInt:I

    invoke-static {p2}, Lorg/jboss/netty/handler/ipfilter/CIDR4;->ipv4PrefixLengthToMask(I)I

    move-result v0

    iget v1, p0, Lorg/jboss/netty/handler/ipfilter/CIDR4;->addressInt:I

    and-int/2addr v0, v1

    iput v0, p0, Lorg/jboss/netty/handler/ipfilter/CIDR4;->addressInt:I

    :try_start_0
    iget v0, p0, Lorg/jboss/netty/handler/ipfilter/CIDR4;->addressInt:I

    invoke-static {v0}, Lorg/jboss/netty/handler/ipfilter/CIDR4;->intToIPv4Address(I)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/ipfilter/CIDR4;->baseAddress:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget v0, p0, Lorg/jboss/netty/handler/ipfilter/CIDR4;->addressInt:I

    iget v1, p0, Lorg/jboss/netty/handler/ipfilter/CIDR4;->cidrMask:I

    invoke-static {v1}, Lorg/jboss/netty/handler/ipfilter/CIDR4;->ipv4PrefixLengthToLength(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jboss/netty/handler/ipfilter/CIDR4;->addressEndInt:I

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static intToIPv4Address(I)Ljava/net/InetAddress;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method private static ipv4AddressToInt(Ljava/net/InetAddress;)I
    .locals 1

    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/net/Inet6Address;

    invoke-static {p0}, Lorg/jboss/netty/handler/ipfilter/CIDR4;->getIpV4FromIpV6(Ljava/net/Inet6Address;)[B

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lorg/jboss/netty/handler/ipfilter/CIDR4;->ipv4AddressToInt([B)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    goto :goto_0
.end method

.method private static ipv4AddressToInt([B)I
    .locals 4

    const/4 v0, 0x0

    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-byte v3, p0, v0

    shl-int/lit8 v1, v1, 0x8

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private static ipv4PrefixLengthToLength(I)I
    .locals 2

    const/4 v0, 0x1

    rsub-int/lit8 v1, p0, 0x20

    shl-int/2addr v0, v1

    return v0
.end method

.method private static ipv4PrefixLengthToMask(I)I
    .locals 2

    const/4 v0, 0x1

    rsub-int/lit8 v1, p0, 0x20

    shl-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    xor-int/lit8 v0, v0, -0x1

    return v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lorg/jboss/netty/handler/ipfilter/CIDR;

    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/ipfilter/CIDR4;->compareTo(Lorg/jboss/netty/handler/ipfilter/CIDR;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/jboss/netty/handler/ipfilter/CIDR;)I
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    instance-of v0, p1, Lorg/jboss/netty/handler/ipfilter/CIDR6;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lorg/jboss/netty/handler/ipfilter/CIDR;->baseAddress:Ljava/net/InetAddress;

    check-cast v0, Ljava/net/Inet6Address;

    invoke-static {v0}, Lorg/jboss/netty/handler/ipfilter/CIDR4;->getIpV4FromIpV6(Ljava/net/Inet6Address;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/handler/ipfilter/CIDR4;->ipv4AddressToInt([B)I

    move-result v0

    iget v4, p0, Lorg/jboss/netty/handler/ipfilter/CIDR4;->addressInt:I

    if-ne v0, v4, :cond_0

    iget v4, p1, Lorg/jboss/netty/handler/ipfilter/CIDR;->cidrMask:I

    iget v5, p0, Lorg/jboss/netty/handler/ipfilter/CIDR4;->cidrMask:I

    if-ne v4, v5, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lorg/jboss/netty/handler/ipfilter/CIDR4;->addressInt:I

    if-ge v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    iget v1, p0, Lorg/jboss/netty/handler/ipfilter/CIDR4;->addressInt:I

    if-le v0, v1, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    iget v0, p1, Lorg/jboss/netty/handler/ipfilter/CIDR;->cidrMask:I

    iget v1, p0, Lorg/jboss/netty/handler/ipfilter/CIDR4;->cidrMask:I

    if-ge v0, v1, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    check-cast p1, Lorg/jboss/netty/handler/ipfilter/CIDR4;

    iget v0, p1, Lorg/jboss/netty/handler/ipfilter/CIDR4;->addressInt:I

    iget v4, p0, Lorg/jboss/netty/handler/ipfilter/CIDR4;->addressInt:I

    if-ne v0, v4, :cond_5

    iget v0, p1, Lorg/jboss/netty/handler/ipfilter/CIDR4;->cidrMask:I

    iget v4, p0, Lorg/jboss/netty/handler/ipfilter/CIDR4;->cidrMask:I

    if-ne v0, v4, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget v0, p1, Lorg/jboss/netty/handler/ipfilter/CIDR4;->addressInt:I

    iget v1, p0, Lorg/jboss/netty/handler/ipfilter/CIDR4;->addressInt:I

    if-ge v0, v1, :cond_6

    move v0, v2

    goto :goto_0

    :cond_6
    iget v0, p1, Lorg/jboss/netty/handler/ipfilter/CIDR4;->addressInt:I

    iget v1, p0, Lorg/jboss/netty/handler/ipfilter/CIDR4;->addressInt:I

    if-le v0, v1, :cond_7

    move v0, v3

    goto :goto_0

    :cond_7
    iget v0, p1, Lorg/jboss/netty/handler/ipfilter/CIDR4;->cidrMask:I

    iget v1, p0, Lorg/jboss/netty/handler/ipfilter/CIDR4;->cidrMask:I

    if-ge v0, v1, :cond_8

    move v0, v3

    goto :goto_0

    :cond_8
    move v0, v2

    goto :goto_0
.end method

.method public contains(Ljava/net/InetAddress;)Z
    .locals 2

    invoke-static {p1}, Lorg/jboss/netty/handler/ipfilter/CIDR4;->ipv4AddressToInt(Ljava/net/InetAddress;)I

    move-result v0

    iget v1, p0, Lorg/jboss/netty/handler/ipfilter/CIDR4;->addressInt:I

    if-lt v0, v1, :cond_0

    iget v1, p0, Lorg/jboss/netty/handler/ipfilter/CIDR4;->addressEndInt:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEndAddress()Ljava/net/InetAddress;
    .locals 1

    :try_start_0
    iget v0, p0, Lorg/jboss/netty/handler/ipfilter/CIDR4;->addressEndInt:I

    invoke-static {v0}, Lorg/jboss/netty/handler/ipfilter/CIDR4;->intToIPv4Address(I)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
