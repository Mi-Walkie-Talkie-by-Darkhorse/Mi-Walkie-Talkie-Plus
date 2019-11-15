.class public Lorg/jboss/netty/handler/ipfilter/IpSubnet;
.super Ljava/lang/Object;
.source "IpSubnet.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/jboss/netty/handler/ipfilter/IpSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/jboss/netty/handler/ipfilter/IpSubnet;",
        ">;",
        "Lorg/jboss/netty/handler/ipfilter/IpSet;"
    }
.end annotation


# static fields
.field private static final logger:Lorg/jboss/netty/logging/InternalLogger;


# instance fields
.field private final cidr:Lorg/jboss/netty/handler/ipfilter/CIDR;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/jboss/netty/handler/ipfilter/IpSubnet;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/handler/ipfilter/IpSubnet;->logger:Lorg/jboss/netty/logging/InternalLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jboss/netty/handler/ipfilter/IpSubnet;->cidr:Lorg/jboss/netty/handler/ipfilter/CIDR;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/jboss/netty/handler/ipfilter/CIDR;->newCIDR(Ljava/lang/String;)Lorg/jboss/netty/handler/ipfilter/CIDR;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/ipfilter/IpSubnet;->cidr:Lorg/jboss/netty/handler/ipfilter/CIDR;

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Lorg/jboss/netty/handler/ipfilter/CIDR;->newCIDR(Ljava/net/InetAddress;I)Lorg/jboss/netty/handler/ipfilter/CIDR;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/ipfilter/IpSubnet;->cidr:Lorg/jboss/netty/handler/ipfilter/CIDR;

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Lorg/jboss/netty/handler/ipfilter/CIDR;->newCIDR(Ljava/net/InetAddress;Ljava/lang/String;)Lorg/jboss/netty/handler/ipfilter/CIDR;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/ipfilter/IpSubnet;->cidr:Lorg/jboss/netty/handler/ipfilter/CIDR;

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lorg/jboss/netty/handler/ipfilter/IpSubnet;

    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/ipfilter/IpSubnet;->compareTo(Lorg/jboss/netty/handler/ipfilter/IpSubnet;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/jboss/netty/handler/ipfilter/IpSubnet;)I
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/handler/ipfilter/IpSubnet;->cidr:Lorg/jboss/netty/handler/ipfilter/CIDR;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/ipfilter/CIDR;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lorg/jboss/netty/handler/ipfilter/IpSubnet;->cidr:Lorg/jboss/netty/handler/ipfilter/CIDR;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/ipfilter/CIDR;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
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

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/ipfilter/IpSubnet;->contains(Ljava/net/InetAddress;)Z

    move-result v0

    return v0
.end method

.method public contains(Ljava/net/InetAddress;)Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/ipfilter/IpSubnet;->cidr:Lorg/jboss/netty/handler/ipfilter/CIDR;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/handler/ipfilter/IpSubnet;->cidr:Lorg/jboss/netty/handler/ipfilter/CIDR;

    invoke-virtual {v0, p1}, Lorg/jboss/netty/handler/ipfilter/CIDR;->contains(Ljava/net/InetAddress;)Z

    move-result v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lorg/jboss/netty/handler/ipfilter/IpSubnet;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    check-cast p1, Lorg/jboss/netty/handler/ipfilter/IpSubnet;

    iget-object v0, p1, Lorg/jboss/netty/handler/ipfilter/IpSubnet;->cidr:Lorg/jboss/netty/handler/ipfilter/CIDR;

    iget-object v1, p0, Lorg/jboss/netty/handler/ipfilter/IpSubnet;->cidr:Lorg/jboss/netty/handler/ipfilter/CIDR;

    invoke-virtual {v0, v1}, Lorg/jboss/netty/handler/ipfilter/CIDR;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/ipfilter/IpSubnet;->cidr:Lorg/jboss/netty/handler/ipfilter/CIDR;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/ipfilter/CIDR;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/ipfilter/IpSubnet;->cidr:Lorg/jboss/netty/handler/ipfilter/CIDR;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/ipfilter/CIDR;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
