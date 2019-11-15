.class public abstract Lorg/jboss/netty/handler/ipfilter/CIDR;
.super Ljava/lang/Object;
.source "CIDR.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/jboss/netty/handler/ipfilter/CIDR;",
        ">;"
    }
.end annotation


# instance fields
.field protected baseAddress:Ljava/net/InetAddress;

.field protected cidrMask:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addressStringToInet(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public static getIpV4FromIpV6(Ljava/net/Inet6Address;)[B
    .locals 7

    const/16 v6, 0xff

    const/16 v5, 0xb

    const/16 v4, 0xa

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v2

    move v0, v1

    :goto_0
    const/16 v3, 0x9

    if-ge v0, v3, :cond_1

    aget-byte v3, v2, v0

    if-eqz v3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This IPv6 address cannot be used in IPv4 context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    aget-byte v0, v2, v4

    if-eqz v0, :cond_2

    aget-byte v0, v2, v4

    if-ne v0, v6, :cond_3

    :cond_2
    aget-byte v0, v2, v5

    if-eqz v0, :cond_4

    aget-byte v0, v2, v5

    if-eq v0, v6, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This IPv6 address cannot be used in IPv4 context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/4 v0, 0x4

    new-array v0, v0, [B

    const/16 v3, 0xc

    aget-byte v3, v2, v3

    aput-byte v3, v0, v1

    const/4 v1, 0x1

    const/16 v3, 0xd

    aget-byte v3, v2, v3

    aput-byte v3, v0, v1

    const/4 v1, 0x2

    const/16 v3, 0xe

    aget-byte v3, v2, v3

    aput-byte v3, v0, v1

    const/4 v1, 0x3

    const/16 v3, 0xf

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static getIpV6FromIpV4(Ljava/net/Inet4Address;)[B
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v0

    const/16 v1, 0x10

    new-array v1, v1, [B

    aput-byte v3, v1, v3

    aput-byte v3, v1, v4

    aput-byte v3, v1, v5

    aput-byte v3, v1, v6

    const/4 v2, 0x4

    aput-byte v3, v1, v2

    const/4 v2, 0x5

    aput-byte v3, v1, v2

    const/4 v2, 0x6

    aput-byte v3, v1, v2

    const/4 v2, 0x7

    aput-byte v3, v1, v2

    const/16 v2, 0x8

    aput-byte v3, v1, v2

    const/16 v2, 0x9

    aput-byte v3, v1, v2

    const/16 v2, 0xa

    aput-byte v3, v1, v2

    const/16 v2, 0xb

    aput-byte v3, v1, v2

    const/16 v2, 0xc

    aget-byte v3, v0, v3

    aput-byte v3, v1, v2

    const/16 v2, 0xd

    aget-byte v3, v0, v4

    aput-byte v3, v1, v2

    const/16 v2, 0xe

    aget-byte v3, v0, v5

    aput-byte v3, v1, v2

    const/16 v2, 0xf

    aget-byte v0, v0, v6

    aput-byte v0, v1, v2

    return-object v1
.end method

.method private static getNetMask(Ljava/lang/String;)I
    .locals 6

    const/4 v5, 0x4

    const/4 v1, 0x0

    new-instance v2, Ljava/util/StringTokenizer;

    const-string v0, "."

    invoke-direct {v2, p0, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-array v3, v5, [I

    move v0, v1

    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_1
    if-ge v0, v5, :cond_1

    aget v2, v3, v0

    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return v1
.end method

.method public static newCIDR(Ljava/lang/String;)Lorg/jboss/netty/handler/ipfilter/CIDR;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/net/UnknownHostException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid CIDR notation used: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lorg/jboss/netty/handler/ipfilter/CIDR;->addressStringToInet(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    const/16 v0, 0x2e

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_2

    const/4 v0, -0x1

    invoke-static {v2, v0}, Lorg/jboss/netty/handler/ipfilter/CIDR;->parseInt(Ljava/lang/String;I)I

    move-result v0

    :cond_1
    :goto_0
    if-gez v0, :cond_3

    new-instance v0, Ljava/net/UnknownHostException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid mask length used: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v2}, Lorg/jboss/netty/handler/ipfilter/CIDR;->getNetMask(Ljava/lang/String;)I

    move-result v0

    instance-of v3, v1, Ljava/net/Inet6Address;

    if-eqz v3, :cond_1

    add-int/lit8 v0, v0, 0x60

    goto :goto_0

    :cond_3
    invoke-static {v1, v0}, Lorg/jboss/netty/handler/ipfilter/CIDR;->newCIDR(Ljava/net/InetAddress;I)Lorg/jboss/netty/handler/ipfilter/CIDR;

    move-result-object v0

    return-object v0
.end method

.method public static newCIDR(Ljava/net/InetAddress;I)Lorg/jboss/netty/handler/ipfilter/CIDR;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    if-gez p1, :cond_0

    new-instance v0, Ljava/net/UnknownHostException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid mask length used: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_2

    const/16 v0, 0x20

    if-le p1, v0, :cond_1

    new-instance v0, Ljava/net/UnknownHostException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid mask length used: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lorg/jboss/netty/handler/ipfilter/CIDR4;

    check-cast p0, Ljava/net/Inet4Address;

    invoke-direct {v0, p0, p1}, Lorg/jboss/netty/handler/ipfilter/CIDR4;-><init>(Ljava/net/Inet4Address;I)V

    :goto_0
    return-object v0

    :cond_2
    const/16 v0, 0x80

    if-le p1, v0, :cond_3

    new-instance v0, Ljava/net/UnknownHostException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid mask length used: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lorg/jboss/netty/handler/ipfilter/CIDR6;

    check-cast p0, Ljava/net/Inet6Address;

    invoke-direct {v0, p0, p1}, Lorg/jboss/netty/handler/ipfilter/CIDR6;-><init>(Ljava/net/Inet6Address;I)V

    goto :goto_0
.end method

.method public static newCIDR(Ljava/net/InetAddress;Ljava/lang/String;)Lorg/jboss/netty/handler/ipfilter/CIDR;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    invoke-static {p1}, Lorg/jboss/netty/handler/ipfilter/CIDR;->getNetMask(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    new-instance v0, Ljava/net/UnknownHostException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid mask length used: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_2

    const/16 v0, 0x20

    if-le v1, v0, :cond_1

    new-instance v0, Ljava/net/UnknownHostException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid mask length used: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lorg/jboss/netty/handler/ipfilter/CIDR4;

    check-cast p0, Ljava/net/Inet4Address;

    invoke-direct {v0, p0, v1}, Lorg/jboss/netty/handler/ipfilter/CIDR4;-><init>(Ljava/net/Inet4Address;I)V

    :goto_0
    return-object v0

    :cond_2
    add-int/lit8 v1, v1, 0x60

    const/16 v0, 0x80

    if-le v1, v0, :cond_3

    new-instance v0, Ljava/net/UnknownHostException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid mask length used: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lorg/jboss/netty/handler/ipfilter/CIDR6;

    check-cast p0, Ljava/net/Inet6Address;

    invoke-direct {v0, p0, v1}, Lorg/jboss/netty/handler/ipfilter/CIDR6;-><init>(Ljava/net/Inet6Address;I)V

    goto :goto_0
.end method

.method private static parseInt(Ljava/lang/String;I)I
    .locals 1

    if-nez p0, :cond_0

    :goto_0
    return p1

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public abstract contains(Ljava/net/InetAddress;)Z
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    instance-of v1, p1, Lorg/jboss/netty/handler/ipfilter/CIDR;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lorg/jboss/netty/handler/ipfilter/CIDR;

    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/ipfilter/CIDR;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getBaseAddress()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/ipfilter/CIDR;->baseAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public abstract getEndAddress()Ljava/net/InetAddress;
.end method

.method public getMask()I
    .locals 1

    iget v0, p0, Lorg/jboss/netty/handler/ipfilter/CIDR;->cidrMask:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/ipfilter/CIDR;->baseAddress:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/jboss/netty/handler/ipfilter/CIDR;->baseAddress:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/jboss/netty/handler/ipfilter/CIDR;->cidrMask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
