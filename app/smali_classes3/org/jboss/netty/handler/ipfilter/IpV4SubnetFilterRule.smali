.class public Lorg/jboss/netty/handler/ipfilter/IpV4SubnetFilterRule;
.super Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;
.source "IpV4SubnetFilterRule.java"

# interfaces
.implements Lorg/jboss/netty/handler/ipfilter/IpFilterRule;


# instance fields
.field private isAllowRule:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/handler/ipfilter/IpV4SubnetFilterRule;->isAllowRule:Z

    iput-boolean p1, p0, Lorg/jboss/netty/handler/ipfilter/IpV4SubnetFilterRule;->isAllowRule:Z

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/handler/ipfilter/IpV4SubnetFilterRule;->isAllowRule:Z

    iput-boolean p1, p0, Lorg/jboss/netty/handler/ipfilter/IpV4SubnetFilterRule;->isAllowRule:Z

    return-void
.end method

.method public constructor <init>(ZLjava/net/InetAddress;I)V
    .locals 1

    invoke-direct {p0, p2, p3}, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;-><init>(Ljava/net/InetAddress;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/handler/ipfilter/IpV4SubnetFilterRule;->isAllowRule:Z

    iput-boolean p1, p0, Lorg/jboss/netty/handler/ipfilter/IpV4SubnetFilterRule;->isAllowRule:Z

    return-void
.end method

.method public constructor <init>(ZLjava/net/InetAddress;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p2, p3}, Lorg/jboss/netty/handler/ipfilter/IpV4Subnet;-><init>(Ljava/net/InetAddress;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/handler/ipfilter/IpV4SubnetFilterRule;->isAllowRule:Z

    iput-boolean p1, p0, Lorg/jboss/netty/handler/ipfilter/IpV4SubnetFilterRule;->isAllowRule:Z

    return-void
.end method


# virtual methods
.method public isAllowRule()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jboss/netty/handler/ipfilter/IpV4SubnetFilterRule;->isAllowRule:Z

    return v0
.end method

.method public isDenyRule()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jboss/netty/handler/ipfilter/IpV4SubnetFilterRule;->isAllowRule:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
