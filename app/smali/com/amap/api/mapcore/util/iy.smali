.class public final Lcom/amap/api/mapcore/util/iy;
.super Ljava/lang/Object;
.source "WifiManagerWrapper.java"


# static fields
.field static e:J

.field static f:J

.field static g:J

.field static h:J


# instance fields
.field a:Landroid/net/wifi/WifiManager;

.field b:Ljava/lang/Object;

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field i:Landroid/content/Context;

.field j:Z

.field k:Ljava/lang/StringBuilder;

.field l:Z

.field m:Z

.field n:Ljava/lang/String;

.field o:Ljava/lang/String;

.field p:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field public q:Z

.field r:Landroid/net/ConnectivityManager;

.field private volatile s:Landroid/net/wifi/WifiInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/amap/api/mapcore/util/iy;->e:J

    sput-wide v0, Lcom/amap/api/mapcore/util/iy;->f:J

    sput-wide v0, Lcom/amap/api/mapcore/util/iy;->g:J

    sput-wide v0, Lcom/amap/api/mapcore/util/iy;->h:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/iy;->b:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/iy;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/iy;->d:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/iy;->j:Z

    iput-object v1, p0, Lcom/amap/api/mapcore/util/iy;->k:Ljava/lang/StringBuilder;

    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/iy;->l:Z

    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/iy;->m:Z

    iput-object v1, p0, Lcom/amap/api/mapcore/util/iy;->s:Landroid/net/wifi/WifiInfo;

    const-string v0, "isScanAlwaysAvailable"

    iput-object v0, p0, Lcom/amap/api/mapcore/util/iy;->n:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/mapcore/util/iy;->o:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/mapcore/util/iy;->p:Ljava/util/TreeMap;

    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/iy;->q:Z

    iput-object v1, p0, Lcom/amap/api/mapcore/util/iy;->r:Landroid/net/ConnectivityManager;

    iput-object p2, p0, Lcom/amap/api/mapcore/util/iy;->a:Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/amap/api/mapcore/util/iy;->i:Landroid/content/Context;

    return-void
.end method

.method private static a(I)Z
    .locals 4

    const/16 v0, 0x14

    const/16 v1, 0x14

    :try_start_0
    invoke-static {p0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v1

    const-string v2, "APS"

    const-string v3, "wifiSigFine"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a(Landroid/net/wifi/WifiInfo;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/mapcore/util/jg;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static i()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/amap/api/mapcore/util/jg;->b()J

    move-result-wide v0

    sget-wide v2, Lcom/amap/api/mapcore/util/iy;->h:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private j()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/iy;->a:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/iy;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/amap/api/mapcore/util/iy;->o:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/iy;->o:Ljava/lang/String;

    :cond_0
    :goto_1
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    iput-object v1, p0, Lcom/amap/api/mapcore/util/iy;->o:Ljava/lang/String;

    const-string v2, "WifiManagerWrapper"

    const-string v3, "getScanResults"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private k()Landroid/net/wifi/WifiInfo;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/iy;->a:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/iy;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "WifiManagerWrapper"

    const-string v2, "getConnectionInfo"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private l()I
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/iy;->a:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/iy;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private m()Z
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/amap/api/mapcore/util/jg;->b()J

    move-result-wide v2

    sget-wide v4, Lcom/amap/api/mapcore/util/iy;->e:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1324

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/iy;->n()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/amap/api/mapcore/util/jg;->b()J

    move-result-wide v2

    sget-wide v4, Lcom/amap/api/mapcore/util/iy;->e:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x26ac

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/amap/api/mapcore/util/iy;->a:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/amap/api/mapcore/util/jg;->b()J

    move-result-wide v0

    sput-wide v0, Lcom/amap/api/mapcore/util/iy;->e:J

    iget-object v0, p0, Lcom/amap/api/mapcore/util/iy;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v0

    goto :goto_0
.end method

.method private n()Z
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/iy;->r:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/iy;->i:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/jg;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/iy;->r:Landroid/net/ConnectivityManager;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/iy;->r:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/iy;->a(Landroid/net/ConnectivityManager;)Z

    move-result v0

    return v0
.end method

.method private o()Z
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/iy;->a:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/iy;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/jg;->c(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method private p()V
    .locals 5

    iget-object v0, p0, Lcom/amap/api/mapcore/util/iy;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/iy;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/amap/api/mapcore/util/jg;->b()J

    move-result-wide v0

    sget-wide v2, Lcom/amap/api/mapcore/util/iy;->h:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/iy;->b()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/iy;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/iy;->p:Ljava/util/TreeMap;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/TreeMap;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/iy;->p:Ljava/util/TreeMap;

    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/iy;->p:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/iy;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_9

    iget-object v0, p0, Lcom/amap/api/mapcore/util/iy;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    if-eqz v0, :cond_7

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    :goto_2
    invoke-static {v1}, Lcom/amap/api/mapcore/util/jg;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x14

    if-le v3, v1, :cond_4

    iget v1, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v1}, Lcom/amap/api/mapcore/util/iy;->a(I)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_4
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "<unknown ssid>"

    iget-object v4, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    :cond_5
    :goto_3
    iget-object v1, p0, Lcom/amap/api/mapcore/util/iy;->p:Ljava/util/TreeMap;

    iget v4, v0, Landroid/net/wifi/ScanResult;->level:I

    mul-int/lit8 v4, v4, 0x19

    add-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_7
    const-string v1, ""

    goto :goto_2

    :cond_8
    const-string v1, "unkwn"

    iput-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/amap/api/mapcore/util/iy;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/iy;->p:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/iy;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lcom/amap/api/mapcore/util/iy;->p:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    goto/16 :goto_0
.end method

.method private q()V
    .locals 8

    const-wide/16 v6, 0x2710

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/iy;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/amap/api/mapcore/util/jg;->b()J

    move-result-wide v2

    const/16 v0, 0x14

    sget-wide v4, Lcom/amap/api/mapcore/util/iy;->f:J

    sub-long v4, v2, v4

    cmp-long v1, v4, v6

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/iy;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v4, p0, Lcom/amap/api/mapcore/util/iy;->d:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/iy;->s()V

    sget-wide v4, Lcom/amap/api/mapcore/util/iy;->f:J

    sub-long/2addr v2, v4

    cmp-long v1, v2, v6

    if-ltz v1, :cond_1

    :goto_0
    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/amap/api/mapcore/util/iy;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/16 v2, 0x96

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/iy;->b:Ljava/lang/Object;

    monitor-enter v0

    monitor-exit v0

    :cond_2
    return-void

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private r()V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/iy;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/iy;->d:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lcom/amap/api/mapcore/util/iy;->b:Ljava/lang/Object;

    monitor-enter v2

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private s()V
    .locals 3

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/iy;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/iy;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amap/api/mapcore/util/jg;->b()J

    move-result-wide v0

    sput-wide v0, Lcom/amap/api/mapcore/util/iy;->g:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "APS"

    const-string v2, "updateWifi"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private t()Z
    .locals 8

    const-wide/16 v6, 0x1324

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/iy;->o()Z

    move-result v2

    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/iy;->q:Z

    iget-boolean v2, p0, Lcom/amap/api/mapcore/util/iy;->q:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p0, Lcom/amap/api/mapcore/util/iy;->l:Z

    if-eqz v2, :cond_0

    sget-wide v2, Lcom/amap/api/mapcore/util/iy;->g:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/amap/api/mapcore/util/jg;->b()J

    move-result-wide v2

    sget-wide v4, Lcom/amap/api/mapcore/util/iy;->g:J

    sub-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-ltz v2, :cond_0

    invoke-static {}, Lcom/amap/api/mapcore/util/jg;->b()J

    move-result-wide v2

    sget-wide v4, Lcom/amap/api/mapcore/util/iy;->h:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x5dc

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    invoke-static {}, Lcom/amap/api/mapcore/util/jg;->b()J

    move-result-wide v2

    sget-wide v4, Lcom/amap/api/mapcore/util/iy;->h:J

    sub-long/2addr v2, v4

    cmp-long v0, v2, v6

    if-lez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore/util/iy;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final a(Z)V
    .locals 7

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/iy;->i:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/iy;->a:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/amap/api/mapcore/util/jg;->c()I

    move-result v1

    const/16 v2, 0x11

    if-le v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android.provider.Settings$Global"

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v1, v0, v6

    const-string v3, "wifi_scan_always_enabled"

    aput-object v3, v0, v5

    new-array v3, v4, [Ljava/lang/Class;

    const-class v4, Landroid/content/ContentResolver;

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    :try_start_0
    const-string v4, "getInt"

    invoke-static {v2, v4, v0, v3}, Lcom/amap/api/mapcore/util/je;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v3, "wifi_scan_always_enabled"

    aput-object v3, v0, v1

    const/4 v1, 0x2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/ContentResolver;

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v1, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v1, v3

    const-string v3, "putInt"

    invoke-static {v2, v3, v0, v1}, Lcom/amap/api/mapcore/util/je;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "WifiManagerWrapper"

    const-string v2, "enableWifiAlwaysScan"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Landroid/net/ConnectivityManager;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/iy;->a:Landroid/net/wifi/WifiManager;

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/mapcore/util/jg;->a(Landroid/net/NetworkInfo;)I

    move-result v3

    if-ne v3, v0, :cond_1

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/mapcore/util/iy;->a(Landroid/net/wifi/WifiInfo;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "WifiManagerWrapper"

    const-string v3, "wifiAccess"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final b()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/iy;->s:Landroid/net/wifi/WifiInfo;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/iy;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/iy;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(Z)V
    .locals 4

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/iy;->q()V

    :goto_0
    invoke-static {}, Lcom/amap/api/mapcore/util/jg;->b()J

    move-result-wide v0

    sget-wide v2, Lcom/amap/api/mapcore/util/iy;->h:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x4e20

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/iy;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/iy;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {}, Lcom/amap/api/mapcore/util/jg;->b()J

    move-result-wide v0

    sput-wide v0, Lcom/amap/api/mapcore/util/iy;->f:J

    iget-object v0, p0, Lcom/amap/api/mapcore/util/iy;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/amap/api/mapcore/util/jg;->b()J

    move-result-wide v0

    sput-wide v0, Lcom/amap/api/mapcore/util/iy;->h:J

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/iy;->j()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/amap/api/mapcore/util/iy;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Lcom/amap/api/mapcore/util/iy;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/iy;->r()V

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/iy;->p()V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/iy;->s()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c()V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/iy;->a:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/amap/api/mapcore/util/jg;->b()J

    move-result-wide v0

    sget-wide v2, Lcom/amap/api/mapcore/util/iy;->h:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1324

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/iy;->j()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/amap/api/mapcore/util/iy;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Lcom/amap/api/mapcore/util/iy;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/amap/api/mapcore/util/iy;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/amap/api/mapcore/util/jg;->b()J

    move-result-wide v2

    sput-wide v2, Lcom/amap/api/mapcore/util/iy;->h:J

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v1

    const-string v2, "APS"

    const-string v3, "onReceive part1"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/amap/api/mapcore/util/iy;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/iy;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/iy;->l:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/iy;->m:Z

    return-void
.end method

.method public final d()V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/iy;->a:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x4

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/iy;->l()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/iy;->d:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/iy;->d:Ljava/util/ArrayList;

    :cond_1
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/iy;->b()V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "APS"

    const-string v3, "onReceive part"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/iy;->b()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/iy;->b()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/iy;->q:Z

    return v0
.end method

.method public final f()Landroid/net/wifi/WifiInfo;
    .locals 1

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/iy;->k()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/iy;->s:Landroid/net/wifi/WifiInfo;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/iy;->s:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/iy;->j:Z

    return v0
.end method

.method public final h()V
    .locals 1

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/iy;->b()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/iy;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
