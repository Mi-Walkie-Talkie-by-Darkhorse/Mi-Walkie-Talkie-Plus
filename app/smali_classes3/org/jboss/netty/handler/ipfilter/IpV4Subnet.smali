.class public Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;
.super Ljava/lang/Object;
.source "IpV4Subnet.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/jboss/netty/handler/ipfilter/IpSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;",
        ">;",
        "Lorg/jboss/netty/handler/ipfilter/IpSet;"
    }
.end annotation


# static fields
.field private static final BYTE_ADDRESS_MASK:I = 0xff

.field private static final SUBNET_MASK:I = -0x80000000

.field private static final logger:Lorg/jboss/netty/logging/InternalLogger;


# instance fields
.field private cidrMask:I

.field private inetAddress:Ljava/net/InetAddress;

.field private mask:I

.field private subnet:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->logger:Lorg/jboss/netty/logging/InternalLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->mask:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->inetAddress:Ljava/net/InetAddress;

    iput v1, p0, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->subnet:I

    iput v1, p0, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->cidrMask:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->setNetAddress(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->setNetAddress(Ljava/net/InetAddress;I)V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->setNetAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    return-void
.end method

.method private setCidrNetMask(I)V
    .locals 2

    iput p1, p0, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->cidrMask:I

    const/high16 v0, -0x80000000

    iget v1, p0, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->cidrMask:I

    add-int/lit8 v1, v1, -0x1

    shr-int/2addr v0, v1

    iput v0, p0, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->mask:I

    return-void
.end method

.method private setNetAddress(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/16 v0, 0x2f

    invoke-static {p1, v0}, Lorg/jboss/netty/util/internal/StringUtil;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "netAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: CIDR or Decimal Notation)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    aget-object v1, v0, v4

    invoke-direct {p0, v1}, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->setNetId(Ljava/lang/String;)V

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->setCidrNetMask(I)V

    :goto_0
    return-void

    :cond_1
    aget-object v1, v0, v4

    invoke-direct {p0, v1}, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->setNetId(Ljava/lang/String;)V

    aget-object v0, v0, v3

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->setNetMask(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setNetAddress(Ljava/net/InetAddress;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->setNetId(Ljava/net/InetAddress;)V

    invoke-direct {p0, p2}, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->setCidrNetMask(I)V

    return-void
.end method

.method private setNetAddress(Ljava/net/InetAddress;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->setNetId(Ljava/net/InetAddress;)V

    invoke-direct {p0, p2}, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->setNetMask(Ljava/lang/String;)V

    return-void
.end method

.method private setNetId(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->setNetId(Ljava/net/InetAddress;)V

    return-void
.end method

.method private setNetId(Ljava/net/InetAddress;)V
    .locals 1

    iput-object p1, p0, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->inetAddress:Ljava/net/InetAddress;

    invoke-static {p1}, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->toInt(Ljava/net/InetAddress;)I

    move-result v0

    iput v0, p0, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->subnet:I

    return-void
.end method

.method private setNetMask(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x4

    const/4 v1, 0x0

    new-instance v2, Ljava/util/StringTokenizer;

    const-string v0, "."

    invoke-direct {v2, p1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

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
    invoke-direct {p0, v1}, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->setCidrNetMask(I)V

    return-void
.end method

.method private static toInt(Ljava/net/InetAddress;)I
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-byte v4, v2, v0

    shl-int/lit8 v1, v1, 0x8

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;

    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->compareTo(Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;)I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, -0x1

    iget v2, p1, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->subnet:I

    iget v3, p0, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->subnet:I

    if-ne v2, v3, :cond_1

    iget v2, p1, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->cidrMask:I

    iget v3, p0, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->cidrMask:I

    if-ne v2, v3, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p1, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->subnet:I

    iget v3, p0, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->subnet:I

    if-lt v2, v3, :cond_0

    iget v2, p1, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->subnet:I

    iget v3, p0, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->subnet:I

    if-le v2, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p1, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->cidrMask:I

    iget v3, p0, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->cidrMask:I

    if-ge v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->contains(Ljava/net/InetAddress;)Z

    move-result v0

    return v0
.end method

.method public contains(Ljava/net/InetAddress;)Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->mask:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->toInt(Ljava/net/InetAddress;)I

    move-result v1

    iget v2, p0, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->mask:I

    and-int/2addr v1, v2

    iget v2, p0, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->subnet:I

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;

    iget v1, p1, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->subnet:I

    iget v2, p0, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->subnet:I

    if-ne v1, v2, :cond_0

    iget v1, p1, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->cidrMask:I

    iget v2, p0, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->cidrMask:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->subnet:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->inetAddress:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;->cidrMask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
