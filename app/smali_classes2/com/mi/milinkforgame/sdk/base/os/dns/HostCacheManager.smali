.class public Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager;
.super Ljava/lang/Object;
.source "HostCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager$HostEntity;,
        Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager$Cache;
    }
.end annotation


# static fields
.field private static manager:Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager;


# instance fields
.field private final MAX_CACHE_SIZE:I

.field private data:Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager$Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager$Cache",
            "<",
            "Ljava/lang/String;",
            "Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager$HostEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager;->manager:Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v1, 0x80

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager;->MAX_CACHE_SIZE:I

    new-instance v0, Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager$Cache;

    invoke-direct {v0, p0, v1}, Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager$Cache;-><init>(Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager;I)V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager;->data:Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager$Cache;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager;
    .locals 2

    const-class v1, Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager;->manager:Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager;

    invoke-direct {v0}, Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager;-><init>()V

    sput-object v0, Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager;->manager:Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager;

    :cond_0
    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager;->manager:Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addCache(Ljava/lang/String;[Ljava/net/InetAddress;J)V
    .locals 3

    const-string v0, "dnstest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "$$$addCache["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/base/debug/CustomLogcat;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager$HostEntity;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager$HostEntity;-><init>(Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager;Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager$1;)V

    iput-wide p3, v1, Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager$HostEntity;->expireTime:J

    iput-object p2, v1, Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager$HostEntity;->address:[Ljava/net/InetAddress;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/Device$Network;->isMobile()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/Device$Network;->getApnName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, v1, Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager$HostEntity;->networkType:Ljava/lang/String;

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager;->data:Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager$Cache;

    invoke-virtual {v0, p1}, Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager$Cache;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager;->data:Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager$Cache;

    invoke-virtual {v0, p1}, Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager$Cache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager;->data:Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager$Cache;

    invoke-virtual {v0, p1, v1}, Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager$Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/Device$Network$Wifi;->getBSSID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCacheItemByHost(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager;->data:Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager$Cache;

    invoke-virtual {v0, p1}, Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager$Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager$HostEntity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager$HostEntity;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager;->data:Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager$Cache;

    invoke-virtual {v0, p1}, Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager$Cache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, v0, Lcom/mi/milinkforgame/sdk/base/os/dns/HostCacheManager$HostEntity;->address:[Ljava/net/InetAddress;

    goto :goto_0
.end method
