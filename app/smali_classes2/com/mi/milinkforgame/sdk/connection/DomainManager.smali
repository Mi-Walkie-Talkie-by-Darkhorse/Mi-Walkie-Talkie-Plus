.class public Lcom/mi/milinkforgame/sdk/connection/DomainManager;
.super Ljava/lang/Object;
.source "DomainManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/milinkforgame/sdk/connection/DomainManager$ResolveThread;
    }
.end annotation


# static fields
.field public static final RET_CODE_DNS_LOCAL_EXCEPTION:I = 0x2712

.field public static final RET_CODE_DNS_SUCCESS:I = 0x0

.field public static final RET_CODE_DNS_TIME_OUT:I = 0x2711

.field public static final RET_CODE_DNS_UNKNOWN_HOST:I = 0x2710

.field private static final SLEEP_INTERVAL:I = 0xa

.field private static final TAG:Ljava/lang/String; = "DomainManager"

.field private static final THREAD_MAX_COUNT:I = 0x5

.field private static sInstanse:Lcom/mi/milinkforgame/sdk/connection/DomainManager;


# instance fields
.field private mDefaultHostThreads:[Lcom/mi/milinkforgame/sdk/connection/DomainManager$ResolveThread;

.field private mDomainMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/mi/milinkforgame/sdk/connection/DomainManager;->sInstanse:Lcom/mi/milinkforgame/sdk/connection/DomainManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/mi/milinkforgame/sdk/base/os/info/AccessPoint;->NONE:Lcom/mi/milinkforgame/sdk/base/os/info/AccessPoint;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/base/os/info/AccessPoint;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/connection/DomainManager;->mKey:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/connection/DomainManager;->mDomainMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/connection/DomainManager;->mDefaultHostThreads:[Lcom/mi/milinkforgame/sdk/connection/DomainManager$ResolveThread;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/mi/milinkforgame/sdk/connection/DomainManager$ResolveThread;

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/connection/DomainManager;->mDefaultHostThreads:[Lcom/mi/milinkforgame/sdk/connection/DomainManager$ResolveThread;

    return-void
.end method

.method static synthetic access$000(Lcom/mi/milinkforgame/sdk/connection/DomainManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mi/milinkforgame/sdk/connection/DomainManager;->setDomainIP(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mi/milinkforgame/sdk/connection/DomainManager;JLjava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/mi/milinkforgame/sdk/connection/DomainManager;->statistic(JLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/mi/milinkforgame/sdk/connection/DomainManager;
    .locals 2

    const-class v1, Lcom/mi/milinkforgame/sdk/connection/DomainManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mi/milinkforgame/sdk/connection/DomainManager;->sInstanse:Lcom/mi/milinkforgame/sdk/connection/DomainManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mi/milinkforgame/sdk/connection/DomainManager;

    invoke-direct {v0}, Lcom/mi/milinkforgame/sdk/connection/DomainManager;-><init>()V

    sput-object v0, Lcom/mi/milinkforgame/sdk/connection/DomainManager;->sInstanse:Lcom/mi/milinkforgame/sdk/connection/DomainManager;

    :cond_0
    sget-object v0, Lcom/mi/milinkforgame/sdk/connection/DomainManager;->sInstanse:Lcom/mi/milinkforgame/sdk/connection/DomainManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getKey()Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/Device$Network;->isMobile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/Device$Network;->getApnName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v2, "00:00:00:00:00:00"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    return-object v1

    :cond_0
    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/Device$Network;->isWifi()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/Device$Network$Wifi;->getBSSID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "DomainManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getKey Network("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/Device$Network;->getType()Lcom/mi/milinkforgame/sdk/base/os/info/NetworkType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is unkown"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v1, v0

    goto :goto_1
.end method

.method private isNeedResolve()Z
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/connection/DomainManager;->getKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mi/milinkforgame/sdk/connection/DomainManager;->mKey:Ljava/lang/String;

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/connection/DomainManager;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iput-object v1, p0, Lcom/mi/milinkforgame/sdk/connection/DomainManager;->mKey:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setDomainIP(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/connection/DomainManager;->mDomainMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private declared-synchronized startDefaultHostThread()Lcom/mi/milinkforgame/sdk/connection/DomainManager$ResolveThread;
    .locals 5

    const/4 v3, 0x5

    monitor-enter p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_3

    :try_start_0
    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/connection/DomainManager;->mDefaultHostThreads:[Lcom/mi/milinkforgame/sdk/connection/DomainManager$ResolveThread;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/connection/DomainManager;->mDefaultHostThreads:[Lcom/mi/milinkforgame/sdk/connection/DomainManager$ResolveThread;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/mi/milinkforgame/sdk/connection/DomainManager$ResolveThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/connection/DomainManager;->mDefaultHostThreads:[Lcom/mi/milinkforgame/sdk/connection/DomainManager$ResolveThread;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/mi/milinkforgame/sdk/connection/DomainManager$ResolveThread;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/connection/DomainManager;->mKey:Ljava/lang/String;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/connection/DomainManager;->mDefaultHostThreads:[Lcom/mi/milinkforgame/sdk/connection/DomainManager$ResolveThread;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mi/milinkforgame/sdk/connection/DomainManager$ResolveThread;->setExpired(Z)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/connection/DomainManager;->mKey:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/connection/DomainManager;->mDefaultHostThreads:[Lcom/mi/milinkforgame/sdk/connection/DomainManager$ResolveThread;

    aget-object v0, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/connection/DomainManager;->mDefaultHostThreads:[Lcom/mi/milinkforgame/sdk/connection/DomainManager$ResolveThread;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mi/milinkforgame/sdk/connection/DomainManager$ResolveThread;->setExpired(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    const-string v1, "DomainManager"

    const-string v2, "startDefaultHostThread"

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/connection/DomainManager;->mDefaultHostThreads:[Lcom/mi/milinkforgame/sdk/connection/DomainManager$ResolveThread;

    new-instance v2, Lcom/mi/milinkforgame/sdk/connection/DomainManager$ResolveThread;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->getDefaultHost()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mi/milinkforgame/sdk/connection/DomainManager;->mKey:Ljava/lang/String;

    invoke-direct {v2, p0, v3, v4}, Lcom/mi/milinkforgame/sdk/connection/DomainManager$ResolveThread;-><init>(Lcom/mi/milinkforgame/sdk/connection/DomainManager;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/connection/DomainManager;->mDefaultHostThreads:[Lcom/mi/milinkforgame/sdk/connection/DomainManager$ResolveThread;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/mi/milinkforgame/sdk/connection/DomainManager$ResolveThread;->start()V

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/connection/DomainManager;->mDefaultHostThreads:[Lcom/mi/milinkforgame/sdk/connection/DomainManager$ResolveThread;

    aget-object v0, v1, v0

    goto :goto_2

    :cond_3
    if-ne v0, v3, :cond_4

    const-string v0, "DomainManager"

    const-string v1, "startDefaultHostThread running thread is more than 5"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private startDnsThread(Ljava/lang/String;)Lcom/mi/milinkforgame/sdk/connection/DomainManager$ResolveThread;
    .locals 1

    invoke-static {p1}, Lcom/mi/milinkforgame/sdk/config/MiLinkIpInfoManager;->isDefaultHost(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/connection/DomainManager;->startDefaultHostThread()Lcom/mi/milinkforgame/sdk/connection/DomainManager$ResolveThread;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private statistic(JLjava/lang/String;Ljava/lang/String;I)V
    .locals 15

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "domain [domain = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",ip = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",client localDNS = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/Device$Network$Dns;->updateLocalDns()Lcom/mi/milinkforgame/sdk/base/os/info/DnsInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", errCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-string v3, "DomainManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",timecost = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long v4, v10, p1

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "ms]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_0

    invoke-static {}, Lcom/mi/milinkforgame/sdk/debug/InternalDataMonitor;->getInstance()Lcom/mi/milinkforgame/sdk/debug/InternalDataMonitor;

    move-result-object v3

    const/4 v5, 0x0

    const-string v6, "milink.dnsfail"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v4, p3

    move/from16 v7, p5

    move-wide/from16 v8, p1

    invoke-virtual/range {v3 .. v14}, Lcom/mi/milinkforgame/sdk/debug/InternalDataMonitor;->trace(Ljava/lang/String;ILjava/lang/String;IJJIII)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getDomainIP(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const-wide/16 v10, 0xa

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/connection/DomainManager;->mDomainMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_5

    invoke-static {}, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->getInstance()Lcom/mi/milinkforgame/sdk/config/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->getDnsTimeout()I

    move-result v0

    int-to-long v8, v0

    const-wide/16 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, p1}, Lcom/mi/milinkforgame/sdk/connection/DomainManager;->startDnsThread(Ljava/lang/String;)Lcom/mi/milinkforgame/sdk/connection/DomainManager$ResolveThread;

    move-result-object v4

    if-nez v4, :cond_4

    move-object v0, v5

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-wide/16 v0, 0xa

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-long v0, v6, v10

    move-wide v6, v0

    :goto_1
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/connection/DomainManager;->mDomainMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    cmp-long v0, v6, v8

    if-gtz v0, :cond_2

    invoke-virtual {v4}, Lcom/mi/milinkforgame/sdk/connection/DomainManager$ResolveThread;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_2
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/connection/DomainManager;->mDomainMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    cmp-long v0, v6, v8

    if-lez v0, :cond_3

    if-nez v5, :cond_3

    const/16 v6, 0x2711

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/mi/milinkforgame/sdk/connection/DomainManager;->statistic(JLjava/lang/String;Ljava/lang/String;I)V

    :cond_3
    :goto_2
    move-object v0, v5

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DomainManager"

    const-string v2, "getDomainIP InterruptedException"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v5

    goto :goto_0

    :cond_4
    move-wide v6, v0

    goto :goto_1

    :cond_5
    move-object v5, v0

    goto :goto_2
.end method

.method public queryDomainIP(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/connection/DomainManager;->mDomainMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    move-object p1, v0

    goto :goto_0
.end method

.method public startResolve()V
    .locals 2

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/Device$Network;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "DomainManager"

    const-string v1, "startResolve, but network is unavailable"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "DomainManager"

    const-string v1, "startResolve"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/connection/DomainManager;->isNeedResolve()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/connection/DomainManager;->mDomainMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/connection/DomainManager;->startDefaultHostThread()Lcom/mi/milinkforgame/sdk/connection/DomainManager$ResolveThread;

    goto :goto_0
.end method
