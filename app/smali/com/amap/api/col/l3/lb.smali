.class public final Lcom/amap/api/col/l3/lb;
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
            "Ljava/util/ArrayList<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
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
            "Ljava/util/TreeMap<",
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
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3/lb;->b:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3/lb;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3/lb;->d:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3/lb;->j:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3/lb;->k:Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amap/api/col/l3/lb;->l:Z

    iput-boolean v1, p0, Lcom/amap/api/col/l3/lb;->m:Z

    iput-object v0, p0, Lcom/amap/api/col/l3/lb;->s:Landroid/net/wifi/WifiInfo;

    const-string v2, "isScanAlwaysAvailable"

    iput-object v2, p0, Lcom/amap/api/col/l3/lb;->n:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/api/col/l3/lb;->o:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/api/col/l3/lb;->p:Ljava/util/TreeMap;

    iput-boolean v1, p0, Lcom/amap/api/col/l3/lb;->q:Z

    iput-object v0, p0, Lcom/amap/api/col/l3/lb;->r:Landroid/net/ConnectivityManager;

    iput-object p2, p0, Lcom/amap/api/col/l3/lb;->a:Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/amap/api/col/l3/lb;->i:Landroid/content/Context;

    return-void
.end method

.method private static a(I)Z
    .locals 3

    const/16 v0, 0x14

    :try_start_0
    invoke-static {p0, v0}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "APS"

    const-string v2, "wifiSigFine"

    invoke-static {p0, v1, v2}, Lcom/amap/api/col/l3/lg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-lez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Landroid/net/wifi/WifiInfo;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amap/api/col/l3/lj;->a(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public static i()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/amap/api/col/l3/lj;->b()J

    move-result-wide v0

    sget-wide v2, Lcom/amap/api/col/l3/lb;->h:J

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
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/l3/lb;->a:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    iput-object v1, p0, Lcom/amap/api/col/l3/lb;->o:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/amap/api/col/l3/lb;->o:Ljava/lang/String;

    const-string v2, "WifiManagerWrapper"

    const-string v3, "getScanResults"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/l3/lg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3/lb;->o:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v1
.end method

.method private k()Landroid/net/wifi/WifiInfo;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/lb;->a:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/lb;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, "WifiManagerWrapper"

    const-string v2, "getConnectionInfo"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/lg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private l()V
    .locals 5

    invoke-direct {p0}, Lcom/amap/api/col/l3/lb;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/l3/lj;->b()J

    move-result-wide v0

    sget-wide v2, Lcom/amap/api/col/l3/lb;->e:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1324

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3/lb;->r:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/lb;->i:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-static {v0, v1}, Lcom/amap/api/col/l3/lj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/amap/api/col/l3/lb;->r:Landroid/net/ConnectivityManager;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/lb;->r:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3/lb;->a(Landroid/net/ConnectivityManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/amap/api/col/l3/lj;->b()J

    move-result-wide v0

    sget-wide v2, Lcom/amap/api/col/l3/lb;->e:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x26ac

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/lb;->a:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/amap/api/col/l3/lj;->b()J

    move-result-wide v0

    sput-wide v0, Lcom/amap/api/col/l3/lb;->e:J

    iget-object v0, p0, Lcom/amap/api/col/l3/lb;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    invoke-static {}, Lcom/amap/api/col/l3/lj;->b()J

    move-result-wide v0

    sput-wide v0, Lcom/amap/api/col/l3/lb;->g:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    const-string v1, "APS"

    const-string v2, "updateWifi"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/lg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private m()Z
    .locals 9

    iget-object v0, p0, Lcom/amap/api/col/l3/lb;->a:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/lb;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3/lj;->c(Landroid/content/Context;)Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/amap/api/col/l3/lb;->q:Z

    const/4 v2, 0x1

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    iget-boolean v0, p0, Lcom/amap/api/col/l3/lb;->l:Z

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    sget-wide v3, Lcom/amap/api/col/l3/lb;->g:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_3

    :goto_1
    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/amap/api/col/l3/lj;->b()J

    move-result-wide v3

    sget-wide v5, Lcom/amap/api/col/l3/lb;->g:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x1324

    cmp-long v0, v3, v5

    if-gez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/amap/api/col/l3/lj;->b()J

    move-result-wide v3

    sget-wide v7, Lcom/amap/api/col/l3/lb;->h:J

    sub-long/2addr v3, v7

    const-wide/16 v7, 0x5dc

    cmp-long v0, v3, v7

    if-gez v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/amap/api/col/l3/lj;->b()J

    move-result-wide v0

    sget-wide v3, Lcom/amap/api/col/l3/lb;->h:J

    sub-long/2addr v0, v3

    cmp-long v3, v0, v5

    goto :goto_1

    :goto_2
    return v1
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/l3/lb;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final a(Z)V
    .locals 9

    const-class v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/amap/api/col/l3/lb;->i:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/col/l3/lb;->a:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/amap/api/col/l3/lj;->c()I

    move-result p1

    const/16 v2, 0x11

    if-gt p1, v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "android.provider.Settings$Global"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string v5, "wifi_scan_always_enabled"

    const/4 v6, 0x1

    aput-object v5, v3, v6

    new-array v7, v2, [Ljava/lang/Class;

    const-class v8, Landroid/content/ContentResolver;

    aput-object v8, v7, v4

    aput-object v0, v7, v6

    :try_start_0
    const-string v8, "getInt"

    invoke-static {v1, v8, v3, v7}, Lcom/amap/api/col/l3/lh;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x3

    new-array v7, v3, [Ljava/lang/Object;

    aput-object p1, v7, v4

    aput-object v5, v7, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v2

    new-array p1, v3, [Ljava/lang/Class;

    const-class v3, Landroid/content/ContentResolver;

    aput-object v3, p1, v4

    aput-object v0, p1, v6

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, p1, v2

    const-string v0, "putInt"

    invoke-static {v1, v0, v7, p1}, Lcom/amap/api/col/l3/lh;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    const-string v0, "WifiManagerWrapper"

    const-string v1, "enableWifiAlwaysScan"

    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/lg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final a(Landroid/net/ConnectivityManager;)Z
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3/lb;->a:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/amap/api/col/l3/lj;->a(Landroid/net/NetworkInfo;)I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/amap/api/col/l3/lb;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "WifiManagerWrapper"

    const-string v2, "wifiAccess"

    invoke-static {p1, v0, v2}, Lcom/amap/api/col/l3/lg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v1
.end method

.method public final b()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3/lb;->s:Landroid/net/wifi/WifiInfo;

    iget-object v0, p0, Lcom/amap/api/col/l3/lb;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3/lb;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final b(Z)V
    .locals 7

    const/16 v0, 0x14

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/amap/api/col/l3/lb;->m()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/amap/api/col/l3/lj;->b()J

    move-result-wide v1

    sget-wide v3, Lcom/amap/api/col/l3/lb;->f:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x2710

    cmp-long p1, v3, v5

    if-ltz p1, :cond_0

    iget-object p1, p0, Lcom/amap/api/col/l3/lb;->b:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v3, p0, Lcom/amap/api/col/l3/lb;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/amap/api/col/l3/lb;->l()V

    sget-wide v3, Lcom/amap/api/col/l3/lb;->f:J

    sub-long/2addr v1, v3

    cmp-long p1, v1, v5

    if-ltz p1, :cond_1

    const/16 p1, 0x14

    :goto_1
    if-lez p1, :cond_1

    iget-object v1, p0, Lcom/amap/api/col/l3/lb;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x96

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/amap/api/col/l3/lb;->b:Ljava/lang/Object;

    monitor-enter p1

    monitor-exit p1

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lcom/amap/api/col/l3/lb;->l()V

    :cond_3
    :goto_2
    invoke-static {}, Lcom/amap/api/col/l3/lj;->b()J

    move-result-wide v1

    sget-wide v3, Lcom/amap/api/col/l3/lb;->h:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x4e20

    cmp-long p1, v1, v3

    if-lez p1, :cond_4

    iget-object p1, p0, Lcom/amap/api/col/l3/lb;->b:Ljava/lang/Object;

    monitor-enter p1

    :try_start_2
    iget-object v1, p0, Lcom/amap/api/col/l3/lb;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    monitor-exit p1

    throw v0

    :cond_4
    :goto_3
    invoke-static {}, Lcom/amap/api/col/l3/lj;->b()J

    move-result-wide v1

    sput-wide v1, Lcom/amap/api/col/l3/lb;->f:J

    iget-object p1, p0, Lcom/amap/api/col/l3/lb;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/amap/api/col/l3/lj;->b()J

    move-result-wide v1

    sput-wide v1, Lcom/amap/api/col/l3/lb;->h:J

    invoke-direct {p0}, Lcom/amap/api/col/l3/lb;->j()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object v1, p0, Lcom/amap/api/col/l3/lb;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v2, p0, Lcom/amap/api/col/l3/lb;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p1

    monitor-exit v1

    throw p1

    :cond_5
    :goto_4
    iget-object p1, p0, Lcom/amap/api/col/l3/lb;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amap/api/col/l3/lb;->d:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lcom/amap/api/col/l3/lb;->b:Ljava/lang/Object;

    monitor-enter v2

    if-eqz v1, :cond_6

    :try_start_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_6
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    iget-object p1, p0, Lcom/amap/api/col/l3/lb;->c:Ljava/util/ArrayList;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    goto/16 :goto_9

    :cond_7
    invoke-static {}, Lcom/amap/api/col/l3/lj;->b()J

    move-result-wide v1

    sget-wide v3, Lcom/amap/api/col/l3/lb;->h:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x36ee80

    cmp-long p1, v1, v3

    if-lez p1, :cond_8

    invoke-virtual {p0}, Lcom/amap/api/col/l3/lb;->b()V

    iget-object p1, p0, Lcom/amap/api/col/l3/lb;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_8
    iget-object p1, p0, Lcom/amap/api/col/l3/lb;->p:Ljava/util/TreeMap;

    if-nez p1, :cond_9

    new-instance p1, Ljava/util/TreeMap;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object p1, p0, Lcom/amap/api/col/l3/lb;->p:Ljava/util/TreeMap;

    :cond_9
    iget-object p1, p0, Lcom/amap/api/col/l3/lb;->p:Ljava/util/TreeMap;

    invoke-virtual {p1}, Ljava/util/TreeMap;->clear()V

    iget-object p1, p0, Lcom/amap/api/col/l3/lb;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x0

    :goto_5
    if-ge v1, p1, :cond_f

    iget-object v2, p0, Lcom/amap/api/col/l3/lb;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    if-eqz v2, :cond_a

    iget-object v3, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    goto :goto_6

    :cond_a
    const-string v3, ""

    :goto_6
    invoke-static {v3}, Lcom/amap/api/col/l3/lj;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    if-le p1, v0, :cond_b

    iget v3, v2, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v3}, Lcom/amap/api/col/l3/lb;->a(I)Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_b
    iget-object v3, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const-string v4, "<unknown ssid>"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_c
    const-string v3, "unkwn"

    :goto_7
    iput-object v3, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    :cond_d
    iget-object v3, p0, Lcom/amap/api/col/l3/lb;->p:Ljava/util/TreeMap;

    iget v4, v2, Landroid/net/wifi/ScanResult;->level:I

    mul-int/lit8 v4, v4, 0x19

    add-int/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_f
    iget-object p1, p0, Lcom/amap/api/col/l3/lb;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/amap/api/col/l3/lb;->p:Ljava/util/TreeMap;

    invoke-virtual {p1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v1, p0, Lcom/amap/api/col/l3/lb;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_10
    iget-object p1, p0, Lcom/amap/api/col/l3/lb;->p:Ljava/util/TreeMap;

    invoke-virtual {p1}, Ljava/util/TreeMap;->clear()V

    :cond_11
    :goto_9
    return-void

    :catchall_4
    move-exception p1

    monitor-exit v2

    throw p1
.end method

.method public final c()V
    .locals 5

    iget-object v0, p0, Lcom/amap/api/col/l3/lb;->a:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/amap/api/col/l3/lj;->b()J

    move-result-wide v0

    sget-wide v2, Lcom/amap/api/col/l3/lb;->h:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1324

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/col/l3/lb;->j()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "APS"

    const-string v3, "onReceive part1"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/l3/lg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/amap/api/col/l3/lb;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Lcom/amap/api/col/l3/lb;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/amap/api/col/l3/lb;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/amap/api/col/l3/lj;->b()J

    move-result-wide v2

    sput-wide v2, Lcom/amap/api/col/l3/lb;->h:J

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/lb;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    iget-object v1, p0, Lcom/amap/api/col/l3/lb;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :catchall_2
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_2
    return-void
.end method

.method public final c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/l3/lb;->l:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/col/l3/lb;->m:Z

    return-void
.end method

.method public final d()V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/col/l3/lb;->a:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x4

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v2, "APS"

    const-string v3, "onReceive part"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/l3/lg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x4

    :goto_0
    iget-object v2, p0, Lcom/amap/api/col/l3/lb;->d:Ljava/util/ArrayList;

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/amap/api/col/l3/lb;->d:Ljava/util/ArrayList;

    :cond_2
    if-eqz v0, :cond_5

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    if-eq v0, v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/amap/api/col/l3/lb;->b()V

    :goto_1
    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/amap/api/col/l3/lb;->b()V

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/amap/api/col/l3/lb;->b()V

    return-void
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3/lb;->q:Z

    return v0
.end method

.method public final f()Landroid/net/wifi/WifiInfo;
    .locals 1

    invoke-direct {p0}, Lcom/amap/api/col/l3/lb;->k()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3/lb;->s:Landroid/net/wifi/WifiInfo;

    iget-object v0, p0, Lcom/amap/api/col/l3/lb;->s:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3/lb;->j:Z

    return v0
.end method

.method public final h()V
    .locals 1

    invoke-virtual {p0}, Lcom/amap/api/col/l3/lb;->b()V

    iget-object v0, p0, Lcom/amap/api/col/l3/lb;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
