.class Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager$HostEntity;
.super Ljava/lang/Object;
.source "HostCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HostEntity"
.end annotation


# instance fields
.field public address:[Ljava/net/InetAddress;

.field public expireTime:J

.field public networkType:Ljava/lang/String;

.field final synthetic this$0:Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager;


# direct methods
.method private constructor <init>(Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager$HostEntity;->this$0:Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager$HostEntity;->expireTime:J

    iput-object v2, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager$HostEntity;->address:[Ljava/net/InetAddress;

    iput-object v2, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager$HostEntity;->networkType:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager;Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager$HostEntity;-><init>(Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager;)V

    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager$HostEntity;->expireTime:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_3

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/Device$Network;->isMobile()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/Device$Network;->getApnName()Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-nez v1, :cond_2

    :goto_2
    return v0

    :cond_0
    move v1, v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/Device$Network$Wifi;->getBSSID()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager$HostEntity;->networkType:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_2
.end method
