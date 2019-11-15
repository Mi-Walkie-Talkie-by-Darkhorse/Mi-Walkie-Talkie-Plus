.class public Lorg/jboss/netty/handler/ipfilter/CIDR6;
.super Lorg/jboss/netty/handler/ipfilter/CIDR;
.source "CIDR6.java"


# static fields
.field private static final logger:Lorg/jboss/netty/logging/InternalLogger;


# instance fields
.field private addressBigInt:Ljava/math/BigInteger;

.field private final addressEndBigInt:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/jboss/netty/handler/ipfilter/CIDR6;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/handler/ipfilter/CIDR6;->logger:Lorg/jboss/netty/logging/InternalLogger;

    return-void
.end method

.method protected constructor <init>(Ljava/net/Inet6Address;I)V
    .locals 2

    invoke-direct {p0}, Lorg/jboss/netty/handler/ipfilter/CIDR;-><init>()V

    iput p2, p0, Lorg/jboss/netty/handler/ipfilter/CIDR6;->cidrMask:I

    invoke-static {p1}, Lorg/jboss/netty/handler/ipfilter/CIDR6;->ipv6AddressToBigInteger(Ljava/net/InetAddress;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/ipfilter/CIDR6;->addressBigInt:Ljava/math/BigInteger;

    invoke-static {p2}, Lorg/jboss/netty/handler/ipfilter/CIDR6;->ipv6CidrMaskToMask(I)Ljava/math/BigInteger;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/handler/ipfilter/CIDR6;->addressBigInt:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/ipfilter/CIDR6;->addressBigInt:Ljava/math/BigInteger;

    iget-object v0, p0, Lorg/jboss/netty/handler/ipfilter/CIDR6;->addressBigInt:Ljava/math/BigInteger;

    invoke-static {v0}, Lorg/jboss/netty/handler/ipfilter/CIDR6;->bigIntToIPv6Address(Ljava/math/BigInteger;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/ipfilter/CIDR6;->baseAddress:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lorg/jboss/netty/handler/ipfilter/CIDR6;->addressBigInt:Ljava/math/BigInteger;

    iget v1, p0, Lorg/jboss/netty/handler/ipfilter/CIDR6;->cidrMask:I

    invoke-static {v1}, Lorg/jboss/netty/handler/ipfilter/CIDR6;->ipv6CidrMaskToBaseAddress(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/ipfilter/CIDR6;->addressEndBigInt:Ljava/math/BigInteger;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static bigIntToIPv6Address(Ljava/math/BigInteger;)Ljava/net/InetAddress;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    const/16 v5, 0x11

    const/4 v4, 0x0

    const/16 v3, 0x10

    new-array v0, v3, [B

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    array-length v2, v1

    if-le v2, v3, :cond_1

    array-length v2, v1

    if-ne v2, v5, :cond_0

    aget-byte v2, v1, v4

    if-eqz v2, :cond_1

    :cond_0
    new-instance v0, Ljava/net/UnknownHostException;

    const-string v1, "invalid IPv6 address (too big)"

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    array-length v2, v1

    if-ne v2, v3, :cond_2

    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    array-length v2, v1

    if-ne v2, v5, :cond_3

    const/4 v2, 0x1

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0

    :cond_3
    array-length v2, v1

    rsub-int/lit8 v2, v2, 0x10

    array-length v3, v1

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1
.end method

.method private static ipv6AddressToBigInteger(Ljava/net/InetAddress;)Ljava/math/BigInteger;
    .locals 3

    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/net/Inet4Address;

    invoke-static {p0}, Lorg/jboss/netty/handler/ipfilter/CIDR6;->getIpV6FromIpV4(Ljava/net/Inet4Address;)[B

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    move-object v0, v1

    goto :goto_1
.end method

.method private static ipv6CidrMaskToBaseAddress(I)Ljava/math/BigInteger;
    .locals 2

    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    rsub-int v1, p0, 0x80

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method private static ipv6CidrMaskToMask(I)Ljava/math/BigInteger;
    .locals 2

    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    rsub-int v1, p0, 0x80

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->not()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lorg/jboss/netty/handler/ipfilter/CIDR;

    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/ipfilter/CIDR6;->compareTo(Lorg/jboss/netty/handler/ipfilter/CIDR;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/jboss/netty/handler/ipfilter/CIDR;)I
    .locals 5

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    instance-of v3, p1, Lorg/jboss/netty/handler/ipfilter/CIDR4;

    if-eqz v3, :cond_4

    iget-object v3, p1, Lorg/jboss/netty/handler/ipfilter/CIDR;->baseAddress:Ljava/net/InetAddress;

    invoke-static {v3}, Lorg/jboss/netty/handler/ipfilter/CIDR6;->ipv6AddressToBigInteger(Ljava/net/InetAddress;)Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lorg/jboss/netty/handler/ipfilter/CIDR6;->addressBigInt:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-nez v3, :cond_3

    iget v3, p1, Lorg/jboss/netty/handler/ipfilter/CIDR;->cidrMask:I

    iget v4, p0, Lorg/jboss/netty/handler/ipfilter/CIDR6;->cidrMask:I

    if-ne v3, v4, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v0, p1, Lorg/jboss/netty/handler/ipfilter/CIDR;->cidrMask:I

    iget v3, p0, Lorg/jboss/netty/handler/ipfilter/CIDR6;->cidrMask:I

    if-ge v0, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_0

    :cond_4
    check-cast p1, Lorg/jboss/netty/handler/ipfilter/CIDR6;

    iget-object v3, p1, Lorg/jboss/netty/handler/ipfilter/CIDR6;->addressBigInt:Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/jboss/netty/handler/ipfilter/CIDR6;->addressBigInt:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget v3, p1, Lorg/jboss/netty/handler/ipfilter/CIDR6;->cidrMask:I

    iget v4, p0, Lorg/jboss/netty/handler/ipfilter/CIDR6;->cidrMask:I

    if-eq v3, v4, :cond_0

    :cond_5
    iget-object v0, p1, Lorg/jboss/netty/handler/ipfilter/CIDR6;->addressBigInt:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/jboss/netty/handler/ipfilter/CIDR6;->addressBigInt:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p1, Lorg/jboss/netty/handler/ipfilter/CIDR6;->cidrMask:I

    iget v3, p0, Lorg/jboss/netty/handler/ipfilter/CIDR6;->cidrMask:I

    if-ge v0, v3, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_0
.end method

.method public contains(Ljava/net/InetAddress;)Z
    .locals 2

    invoke-static {p1}, Lorg/jboss/netty/handler/ipfilter/CIDR6;->ipv6AddressToBigInteger(Ljava/net/InetAddress;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/handler/ipfilter/CIDR6;->addressBigInt:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lorg/jboss/netty/handler/ipfilter/CIDR6;->addressEndBigInt:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEndAddress()Ljava/net/InetAddress;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/handler/ipfilter/CIDR6;->addressEndBigInt:Ljava/math/BigInteger;

    invoke-static {v0}, Lorg/jboss/netty/handler/ipfilter/CIDR6;->bigIntToIPv6Address(Ljava/math/BigInteger;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lorg/jboss/netty/handler/ipfilter/CIDR6;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0}, Lorg/jboss/netty/logging/InternalLogger;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/jboss/netty/handler/ipfilter/CIDR6;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v1, "invalid ip address calculated as an end address"

    invoke-interface {v0, v1}, Lorg/jboss/netty/logging/InternalLogger;->error(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
