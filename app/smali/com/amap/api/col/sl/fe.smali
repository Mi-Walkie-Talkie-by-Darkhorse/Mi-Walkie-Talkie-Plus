.class public final Lcom/amap/api/col/sl/fe;
.super Ljava/lang/Object;
.source "WifiManagerWrapper.java"


# static fields
.field static d:J

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

.field volatile s:Z

.field private volatile t:Landroid/net/wifi/WifiInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/amap/api/col/sl/fe;->d:J

    sput-wide v0, Lcom/amap/api/col/sl/fe;->e:J

    sput-wide v0, Lcom/amap/api/col/sl/fe;->f:J

    sput-wide v0, Lcom/amap/api/col/sl/fe;->g:J

    sput-wide v0, Lcom/amap/api/col/sl/fe;->h:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/sl/fe;->b:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/sl/fe;->c:Ljava/util/ArrayList;

    iput-boolean v3, p0, Lcom/amap/api/col/sl/fe;->j:Z

    iput-object v1, p0, Lcom/amap/api/col/sl/fe;->k:Ljava/lang/StringBuilder;

    iput-boolean v2, p0, Lcom/amap/api/col/sl/fe;->l:Z

    iput-boolean v2, p0, Lcom/amap/api/col/sl/fe;->m:Z

    iput-object v1, p0, Lcom/amap/api/col/sl/fe;->t:Landroid/net/wifi/WifiInfo;

    const-string v0, "isScanAlwaysAvailable"

    iput-object v0, p0, Lcom/amap/api/col/sl/fe;->n:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/sl/fe;->o:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/sl/fe;->p:Ljava/util/TreeMap;

    iput-boolean v2, p0, Lcom/amap/api/col/sl/fe;->q:Z

    iput-object v1, p0, Lcom/amap/api/col/sl/fe;->r:Landroid/net/ConnectivityManager;

    iput-boolean v3, p0, Lcom/amap/api/col/sl/fe;->s:Z

    iput-object p2, p0, Lcom/amap/api/col/sl/fe;->a:Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/amap/api/col/sl/fe;->i:Landroid/content/Context;

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

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

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

    invoke-static {v2}, Lcom/amap/api/col/sl/fy;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static k()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/amap/api/col/sl/fy;->b()J

    move-result-wide v0

    sget-wide v2, Lcom/amap/api/col/sl/fe;->g:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private m()Ljava/util/List;
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

    iget-object v0, p0, Lcom/amap/api/col/sl/fe;->a:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/fe;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/amap/api/col/sl/fe;->o:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/fe;->o:Ljava/lang/String;

    :cond_0
    :goto_1
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    iput-object v1, p0, Lcom/amap/api/col/sl/fe;->o:Ljava/lang/String;

    const-string v2, "WifiManagerWrapper"

    const-string v3, "getScanResults"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private n()Landroid/net/wifi/WifiInfo;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/fe;->a:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/fe;->a:Landroid/net/wifi/WifiManager;

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

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private o()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/sl/fe;->a:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/fe;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private p()V
    .locals 4

    invoke-direct {p0}, Lcom/amap/api/col/sl/fe;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/sl/fy;->b()J

    move-result-wide v0

    sget-wide v2, Lcom/amap/api/col/sl/fe;->d:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1324

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/sl/fe;->r:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/fe;->i:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-static {v0, v1}, Lcom/amap/api/col/sl/fy;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/amap/api/col/sl/fe;->r:Landroid/net/ConnectivityManager;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/sl/fe;->r:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Lcom/amap/api/col/sl/fe;->a(Landroid/net/ConnectivityManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/amap/api/col/sl/fy;->b()J

    move-result-wide v0

    sget-wide v2, Lcom/amap/api/col/sl/fe;->d:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x26ac

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/sl/fe;->a:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/amap/api/col/sl/fy;->b()J

    move-result-wide v0

    sput-wide v0, Lcom/amap/api/col/sl/fe;->d:J

    iget-object v0, p0, Lcom/amap/api/col/sl/fe;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/amap/api/col/sl/fy;->b()J

    move-result-wide v0

    sput-wide v0, Lcom/amap/api/col/sl/fe;->f:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "WifiManager"

    const-string v2, "wifiScan"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private q()Z
    .locals 10

    const-wide/16 v8, 0x1324

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/amap/api/col/sl/fe;->a:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/amap/api/col/sl/fe;->q:Z

    iget-boolean v0, p0, Lcom/amap/api/col/sl/fe;->q:Z

    if-nez v0, :cond_2

    :cond_0
    :goto_1
    return v1

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/sl/fe;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/sl/fy;->g(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/amap/api/col/sl/fe;->l:Z

    if-eqz v0, :cond_0

    sget-wide v4, Lcom/amap/api/col/sl/fe;->f:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/amap/api/col/sl/fy;->b()J

    move-result-wide v4

    sget-wide v6, Lcom/amap/api/col/sl/fe;->f:J

    sub-long/2addr v4, v6

    cmp-long v0, v4, v8

    if-ltz v0, :cond_0

    invoke-static {}, Lcom/amap/api/col/sl/fy;->b()J

    move-result-wide v4

    sget-wide v6, Lcom/amap/api/col/sl/fe;->g:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x5dc

    cmp-long v0, v4, v6

    if-ltz v0, :cond_0

    invoke-static {}, Lcom/amap/api/col/sl/fy;->b()J

    move-result-wide v0

    sget-wide v4, Lcom/amap/api/col/sl/fe;->g:J

    sub-long/2addr v0, v4

    cmp-long v0, v0, v8

    if-lez v0, :cond_4

    move v1, v2

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/fe;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Z)V
    .locals 7

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/amap/api/col/sl/fe;->i:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/col/sl/fe;->a:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/amap/api/col/sl/fy;->c()I

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

    invoke-static {v2, v4, v0, v3}, Lcom/amap/api/col/sl/ft;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

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

    invoke-static {v2, v3, v0, v1}, Lcom/amap/api/col/sl/ft;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "WifiManagerWrapper"

    const-string v2, "enableWifiAlwaysScan"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(ZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/sl/fe;->l:Z

    iput-boolean p2, p0, Lcom/amap/api/col/sl/fe;->m:Z

    return-void
.end method

.method public final a(Landroid/net/ConnectivityManager;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amap/api/col/sl/fe;->a:Landroid/net/wifi/WifiManager;

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/col/sl/fy;->a(Landroid/net/NetworkInfo;)I

    move-result v3

    if-ne v3, v0, :cond_1

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/col/sl/fe;->a(Landroid/net/wifi/WifiInfo;)Z
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

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final b()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/sl/fe;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/amap/api/col/sl/fe;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/sl/fe;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 10

    const-wide/16 v8, 0x2710

    const/16 v3, 0x14

    const/4 v1, 0x0

    if-eqz p1, :cond_8

    invoke-direct {p0}, Lcom/amap/api/col/sl/fe;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/amap/api/col/sl/fy;->b()J

    move-result-wide v4

    sget-wide v6, Lcom/amap/api/col/sl/fe;->e:J

    sub-long v6, v4, v6

    cmp-long v0, v6, v8

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/fe;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-wide v6, Lcom/amap/api/col/sl/fe;->g:J

    sput-wide v6, Lcom/amap/api/col/sl/fe;->h:J

    :cond_0
    invoke-direct {p0}, Lcom/amap/api/col/sl/fe;->p()V

    sget-wide v6, Lcom/amap/api/col/sl/fe;->e:J

    sub-long/2addr v4, v6

    cmp-long v0, v4, v8

    if-ltz v0, :cond_1

    move v0, v3

    :goto_0
    if-lez v0, :cond_1

    sget-wide v4, Lcom/amap/api/col/sl/fe;->g:J

    sget-wide v6, Lcom/amap/api/col/sl/fe;->h:J

    cmp-long v2, v4, v6

    if-nez v2, :cond_1

    const-wide/16 v4, 0x96

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/sl/fe;->b:Ljava/lang/Object;

    monitor-enter v0

    monitor-exit v0

    :cond_2
    :goto_2
    iget-boolean v0, p0, Lcom/amap/api/col/sl/fe;->s:Z

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/amap/api/col/sl/fe;->s:Z

    invoke-virtual {p0}, Lcom/amap/api/col/sl/fe;->c()V

    :cond_3
    sget-wide v4, Lcom/amap/api/col/sl/fe;->h:J

    sget-wide v6, Lcom/amap/api/col/sl/fe;->g:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/amap/api/col/sl/fe;->m()Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :goto_3
    sget-wide v4, Lcom/amap/api/col/sl/fe;->g:J

    sput-wide v4, Lcom/amap/api/col/sl/fe;->h:J

    if-eqz v0, :cond_9

    iget-object v2, p0, Lcom/amap/api/col/sl/fe;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/amap/api/col/sl/fe;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_4
    :goto_4
    invoke-static {}, Lcom/amap/api/col/sl/fy;->b()J

    move-result-wide v4

    sget-wide v6, Lcom/amap/api/col/sl/fe;->g:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x4e20

    cmp-long v0, v4, v6

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/sl/fe;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_5
    invoke-static {}, Lcom/amap/api/col/sl/fy;->b()J

    move-result-wide v4

    sput-wide v4, Lcom/amap/api/col/sl/fe;->e:J

    iget-object v0, p0, Lcom/amap/api/col/sl/fe;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/amap/api/col/sl/fy;->b()J

    move-result-wide v4

    sput-wide v4, Lcom/amap/api/col/sl/fe;->g:J

    invoke-direct {p0}, Lcom/amap/api/col/sl/fe;->m()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/amap/api/col/sl/fe;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_6
    iget-object v0, p0, Lcom/amap/api/col/sl/fe;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/amap/api/col/sl/fe;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_7
    :goto_5
    return-void

    :cond_8
    invoke-direct {p0}, Lcom/amap/api/col/sl/fe;->p()V

    goto :goto_2

    :catch_0
    move-exception v2

    const-string v4, "WifiManager"

    const-string v5, "updateScanResult"

    invoke-static {v2, v4, v5}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/amap/api/col/sl/fe;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_4

    :cond_a
    invoke-static {}, Lcom/amap/api/col/sl/fy;->b()J

    move-result-wide v4

    sget-wide v6, Lcom/amap/api/col/sl/fe;->g:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x36ee80

    cmp-long v0, v4, v6

    if-lez v0, :cond_b

    invoke-virtual {p0}, Lcom/amap/api/col/sl/fe;->c()V

    :cond_b
    iget-object v0, p0, Lcom/amap/api/col/sl/fe;->p:Ljava/util/TreeMap;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/TreeMap;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/amap/api/col/sl/fe;->p:Ljava/util/TreeMap;

    :cond_c
    iget-object v0, p0, Lcom/amap/api/col/sl/fe;->p:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    iget-object v0, p0, Lcom/amap/api/col/sl/fe;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    :goto_6
    if-ge v2, v4, :cond_12

    iget-object v0, p0, Lcom/amap/api/col/sl/fe;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    if-eqz v0, :cond_10

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    :goto_7
    invoke-static {v1}, Lcom/amap/api/col/sl/fy;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    if-le v4, v3, :cond_d

    iget v1, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v1}, Lcom/amap/api/col/sl/fe;->a(I)Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_d
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "<unknown ssid>"

    iget-object v5, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    :cond_e
    :goto_8
    iget-object v1, p0, Lcom/amap/api/col/sl/fe;->p:Ljava/util/TreeMap;

    iget v5, v0, Landroid/net/wifi/ScanResult;->level:I

    mul-int/lit8 v5, v5, 0x19

    add-int/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6

    :cond_10
    const-string v1, ""

    goto :goto_7

    :cond_11
    const-string v1, "unkwn"

    iput-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    goto :goto_8

    :cond_12
    iget-object v0, p0, Lcom/amap/api/col/sl/fe;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/amap/api/col/sl/fe;->p:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v2, p0, Lcom/amap/api/col/sl/fe;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_13
    iget-object v0, p0, Lcom/amap/api/col/sl/fe;->p:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    goto/16 :goto_5

    :catch_1
    move-exception v2

    goto/16 :goto_1
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/sl/fe;->t:Landroid/net/wifi/WifiInfo;

    iget-object v0, p0, Lcom/amap/api/col/sl/fe;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final d()V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/col/sl/fe;->a:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/amap/api/col/sl/fy;->b()J

    move-result-wide v0

    sget-wide v2, Lcom/amap/api/col/sl/fe;->g:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1324

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Lcom/amap/api/col/sl/fy;->b()J

    move-result-wide v0

    sput-wide v0, Lcom/amap/api/col/sl/fe;->g:J

    goto :goto_0
.end method

.method public final e()V
    .locals 4

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/amap/api/col/sl/fe;->a:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/sl/fe;->a:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/col/sl/fe;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/amap/api/col/sl/fe;->c:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/amap/api/col/sl/fe;->c:Ljava/util/ArrayList;

    :cond_2
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/sl/fe;->s:Z

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "APS"

    const-string v3, "onReceive part"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/sl/fe;->q:Z

    return v0
.end method

.method public final g()Landroid/net/wifi/WifiInfo;
    .locals 1

    invoke-direct {p0}, Lcom/amap/api/col/sl/fe;->n()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/fe;->t:Landroid/net/wifi/WifiInfo;

    iget-object v0, p0, Lcom/amap/api/col/sl/fe;->t:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/sl/fe;->j:Z

    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 13

    const/4 v2, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/amap/api/col/sl/fe;->k:Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x2bc

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/amap/api/col/sl/fe;->k:Ljava/lang/StringBuilder;

    :goto_0
    iput-boolean v5, p0, Lcom/amap/api/col/sl/fe;->j:Z

    const-string v0, ""

    invoke-virtual {p0}, Lcom/amap/api/col/sl/fe;->g()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/col/sl/fe;->t:Landroid/net/wifi/WifiInfo;

    iget-object v1, p0, Lcom/amap/api/col/sl/fe;->t:Landroid/net/wifi/WifiInfo;

    invoke-static {v1}, Lcom/amap/api/col/sl/fe;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v0, p0, Lcom/amap/api/col/sl/fe;->t:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    iget-object v0, p0, Lcom/amap/api/col/sl/fe;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v6, v5

    move v4, v5

    move v3, v5

    :goto_2
    if-ge v6, v7, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/sl/fe;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v8, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/amap/api/col/sl/fe;->m:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/amap/api/col/sl/fe;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const-string v9, "<unknown ssid>"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v2

    :goto_3
    const-string v3, "nb"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v3, "access"

    move v4, v2

    :cond_0
    iget-object v9, p0, Lcom/amap/api/col/sl/fe;->k:Ljava/lang/StringBuilder;

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "#%s,%s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v8, v12, v5

    aput-object v3, v12, v2

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move v3, v0

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/sl/fe;->k:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amap/api/col/sl/fe;->k:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v5, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/sl/fe;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_8

    move v6, v2

    :goto_4
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/col/sl/fe;->m:Z

    if-nez v0, :cond_7

    if-nez v6, :cond_7

    invoke-direct {p0}, Lcom/amap/api/col/sl/fe;->o()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    move v3, v5

    :goto_5
    if-eqz v7, :cond_3

    :try_start_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_3

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iget-object v8, p0, Lcom/amap/api/col/sl/fe;->k:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    :goto_6
    add-int/lit8 v5, v5, 0x1

    move v3, v0

    goto :goto_5

    :catch_0
    move-exception v0

    move v3, v5

    :cond_3
    :goto_7
    iget-boolean v0, p0, Lcom/amap/api/col/sl/fe;->m:Z

    if-nez v0, :cond_4

    if-nez v6, :cond_4

    if-nez v3, :cond_4

    iput-boolean v2, p0, Lcom/amap/api/col/sl/fe;->j:Z

    :cond_4
    if-nez v4, :cond_5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/sl/fe;->k:Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amap/api/col/sl/fe;->k:Ljava/lang/StringBuilder;

    const-string v1, ",access"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v0, p0, Lcom/amap/api/col/sl/fe;->k:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_1
    move-exception v0

    goto :goto_7

    :cond_6
    move v0, v3

    goto :goto_6

    :cond_7
    move v3, v5

    goto :goto_7

    :cond_8
    move v6, v3

    goto :goto_4

    :cond_9
    move v0, v3

    goto/16 :goto_3

    :cond_a
    move-object v1, v0

    goto/16 :goto_1
.end method

.method public final j()V
    .locals 1

    invoke-virtual {p0}, Lcom/amap/api/col/sl/fe;->c()V

    iget-object v0, p0, Lcom/amap/api/col/sl/fe;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final l()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/col/sl/fe;->o()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
