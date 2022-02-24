.class public final Lcom/amap/api/col/l3/jn;
.super Ljava/lang/Object;
.source "WifiManagerWrapper.java"


# static fields
.field static c:J

.field static d:J

.field static e:J

.field static f:J

.field static g:J

.field public static q:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static r:J

.field static s:I


# instance fields
.field a:Landroid/net/wifi/WifiManager;

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field h:Landroid/content/Context;

.field i:Z

.field j:Ljava/lang/StringBuilder;

.field k:Z

.field l:Z

.field m:Z

.field n:Ljava/lang/String;

.field o:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field public p:Z

.field t:Landroid/net/ConnectivityManager;

.field volatile u:Z

.field private volatile v:Landroid/net/wifi/WifiInfo;

.field private w:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x24

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/amap/api/col/l3/jn;->q:Ljava/util/HashMap;

    const-wide/16 v0, 0x0

    .line 2
    sput-wide v0, Lcom/amap/api/col/l3/jn;->r:J

    const/4 v0, 0x0

    .line 3
    sput v0, Lcom/amap/api/col/l3/jn;->s:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3/jn;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/amap/api/col/l3/jn;->i:Z

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/amap/api/col/l3/jn;->j:Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    .line 5
    iput-boolean v2, p0, Lcom/amap/api/col/l3/jn;->k:Z

    .line 6
    iput-boolean v2, p0, Lcom/amap/api/col/l3/jn;->l:Z

    .line 7
    iput-boolean v2, p0, Lcom/amap/api/col/l3/jn;->m:Z

    .line 8
    iput-object v1, p0, Lcom/amap/api/col/l3/jn;->v:Landroid/net/wifi/WifiInfo;

    .line 9
    iput-object v1, p0, Lcom/amap/api/col/l3/jn;->n:Ljava/lang/String;

    .line 10
    iput-object v1, p0, Lcom/amap/api/col/l3/jn;->o:Ljava/util/TreeMap;

    .line 11
    iput-boolean v2, p0, Lcom/amap/api/col/l3/jn;->p:Z

    .line 12
    iput-object v1, p0, Lcom/amap/api/col/l3/jn;->t:Landroid/net/ConnectivityManager;

    const-wide/16 v1, 0x7530

    .line 13
    iput-wide v1, p0, Lcom/amap/api/col/l3/jn;->w:J

    .line 14
    iput-boolean v0, p0, Lcom/amap/api/col/l3/jn;->u:Z

    .line 15
    iput-object p2, p0, Lcom/amap/api/col/l3/jn;->a:Landroid/net/wifi/WifiManager;

    .line 16
    iput-object p1, p0, Lcom/amap/api/col/l3/jn;->h:Landroid/content/Context;

    return-void
.end method

.method public static a()J
    .locals 4

    .line 1
    invoke-static {}, Lcom/amap/api/col/l3/ki;->c()J

    move-result-wide v0

    sget-wide v2, Lcom/amap/api/col/l3/jn;->r:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private static a(I)Z
    .locals 3

    const/16 v0, 0x14

    .line 27
    :try_start_0
    invoke-static {p0, v0}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "Aps"

    const-string v2, "wifiSigFine"

    .line 28
    invoke-static {p0, v1, v2}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

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

    .line 20
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amap/api/col/l3/ki;->a(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public static l()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lcom/amap/api/col/l3/ki;->c()J

    move-result-wide v0

    sget-wide v2, Lcom/amap/api/col/l3/jn;->f:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private m()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/jn;->a:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 2
    :try_start_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_2

    .line 4
    new-instance v2, Ljava/util/HashMap;

    const/16 v3, 0x24

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    .line 6
    iget-object v5, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-wide v6, v4, Landroid/net/wifi/ScanResult;->timestamp:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_0
    sget-object v3, Lcom/amap/api/col/l3/jn;->q:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/amap/api/col/l3/jn;->q:Ljava/util/HashMap;

    .line 8
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 9
    :cond_1
    sput-object v2, Lcom/amap/api/col/l3/jn;->q:Ljava/util/HashMap;

    .line 10
    invoke-static {}, Lcom/amap/api/col/l3/ki;->c()J

    move-result-wide v2

    sput-wide v2, Lcom/amap/api/col/l3/jn;->r:J

    goto :goto_1

    .line 11
    :cond_2
    invoke-static {}, Lcom/amap/api/col/l3/ki;->c()J

    move-result-wide v2

    sput-wide v2, Lcom/amap/api/col/l3/jn;->r:J

    .line 12
    :cond_3
    :goto_1
    iput-object v1, p0, Lcom/amap/api/col/l3/jn;->n:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 13
    iput-object v1, p0, Lcom/amap/api/col/l3/jn;->n:Ljava/lang/String;

    const-string v2, "WifiManagerWrapper"

    const-string v3, "getScanResults"

    .line 14
    invoke-static {v0, v2, v3}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3/jn;->n:Ljava/lang/String;

    :cond_4
    :goto_2
    return-object v1
.end method

.method private n()Landroid/net/wifi/WifiInfo;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/jn;->a:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/jn;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, "WifiManagerWrapper"

    const-string v2, "getConnectionInfo"

    .line 3
    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private o()V
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/amap/api/col/l3/jn;->p()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2
    :try_start_0
    invoke-static {}, Lcom/amap/api/col/l3/ki;->c()J

    move-result-wide v0

    sget-wide v2, Lcom/amap/api/col/l3/jn;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1324

    cmp-long v4, v0, v2

    if-ltz v4, :cond_6

    iget-object v2, p0, Lcom/amap/api/col/l3/jn;->t:Landroid/net/ConnectivityManager;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/col/l3/jn;->h:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-static {v2, v3}, Lcom/amap/api/col/l3/ki;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/amap/api/col/l3/jn;->t:Landroid/net/ConnectivityManager;

    :cond_0
    iget-object v2, p0, Lcom/amap/api/col/l3/jn;->t:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v2}, Lcom/amap/api/col/l3/jn;->a(Landroid/net/ConnectivityManager;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x26ac

    cmp-long v4, v0, v2

    if-ltz v4, :cond_6

    :cond_1
    sget v2, Lcom/amap/api/col/l3/jn;->s:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_4

    iget-wide v4, p0, Lcom/amap/api/col/l3/jn;->w:J

    const-wide/16 v6, 0x7530

    cmp-long v2, v4, v6

    if-eqz v2, :cond_2

    iget-wide v6, p0, Lcom/amap/api/col/l3/jn;->w:J

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/amap/api/col/l3/jy;->D()J

    move-result-wide v4

    const-wide/16 v8, -0x1

    cmp-long v2, v4, v8

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/amap/api/col/l3/jy;->D()J

    move-result-wide v6

    :cond_3
    :goto_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v2, v4, :cond_4

    cmp-long v2, v0, v6

    if-ltz v2, :cond_6

    :cond_4
    iget-object v0, p0, Lcom/amap/api/col/l3/jn;->a:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/amap/api/col/l3/ki;->c()J

    move-result-wide v0

    sput-wide v0, Lcom/amap/api/col/l3/jn;->c:J

    sget v0, Lcom/amap/api/col/l3/jn;->s:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_5

    sget v0, Lcom/amap/api/col/l3/jn;->s:I

    add-int/2addr v0, v3

    sput v0, Lcom/amap/api/col/l3/jn;->s:I

    :cond_5
    iget-object v0, p0, Lcom/amap/api/col/l3/jn;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v0

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_7

    .line 3
    invoke-static {}, Lcom/amap/api/col/l3/ki;->c()J

    move-result-wide v0

    sput-wide v0, Lcom/amap/api/col/l3/jn;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    return-void

    :catchall_0
    move-exception v0

    const-string v1, "WifiManager"

    const-string v2, "wifiScan"

    .line 4
    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method private p()Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/jn;->a:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/jn;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3/ki;->h(Landroid/content/Context;)Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/amap/api/col/l3/jn;->p:Z

    const/4 v2, 0x1

    if-nez v0, :cond_1

    goto :goto_2

    .line 2
    :cond_1
    iget-boolean v0, p0, Lcom/amap/api/col/l3/jn;->k:Z

    if-nez v0, :cond_2

    goto :goto_2

    .line 3
    :cond_2
    sget-wide v3, Lcom/amap/api/col/l3/jn;->e:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_3

    :goto_1
    const/4 v1, 0x1

    goto :goto_2

    .line 4
    :cond_3
    invoke-static {}, Lcom/amap/api/col/l3/ki;->c()J

    move-result-wide v3

    sget-wide v5, Lcom/amap/api/col/l3/jn;->e:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x1324

    cmp-long v0, v3, v5

    if-gez v0, :cond_4

    goto :goto_2

    .line 5
    :cond_4
    invoke-static {}, Lcom/amap/api/col/l3/ki;->c()J

    move-result-wide v3

    sget-wide v7, Lcom/amap/api/col/l3/jn;->f:J

    sub-long/2addr v3, v7

    const-wide/16 v7, 0x5dc

    cmp-long v0, v3, v7

    if-gez v0, :cond_5

    goto :goto_2

    .line 6
    :cond_5
    invoke-static {}, Lcom/amap/api/col/l3/ki;->c()J

    move-result-wide v0

    sget-wide v3, Lcom/amap/api/col/l3/jn;->f:J

    sub-long/2addr v0, v3

    cmp-long v3, v0, v5

    goto :goto_1

    :goto_2
    return v1
.end method


# virtual methods
.method public final a(Z)V
    .locals 9

    .line 7
    const-class v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/amap/api/col/l3/jn;->h:Landroid/content/Context;

    .line 8
    invoke-static {}, Lcom/amap/api/col/l3/jy;->C()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/amap/api/col/l3/jn;->m:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v2, p0, Lcom/amap/api/col/l3/jn;->a:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    if-nez p1, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {}, Lcom/amap/api/col/l3/ki;->d()I

    move-result p1

    const/16 v2, 0x11

    if-gt p1, v2, :cond_2

    return-void

    .line 11
    :cond_2
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

    .line 12
    const-class v8, Landroid/content/ContentResolver;

    aput-object v8, v7, v4

    aput-object v0, v7, v6

    :try_start_0
    const-string v8, "getInt"

    .line 13
    invoke-static {v1, v8, v3, v7}, Lcom/amap/api/col/l3/kd;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 14
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x3

    new-array v7, v3, [Ljava/lang/Object;

    aput-object p1, v7, v4

    aput-object v5, v7, v6

    .line 15
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v2

    new-array p1, v3, [Ljava/lang/Class;

    .line 16
    const-class v3, Landroid/content/ContentResolver;

    aput-object v3, p1, v4

    aput-object v0, p1, v6

    .line 17
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, p1, v2

    const-string v0, "putInt"

    .line 18
    invoke-static {v1, v0, v7, p1}, Lcom/amap/api/col/l3/kd;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    const-string v0, "WifiManagerWrapper"

    const-string v1, "enableWifiAlwaysScan"

    .line 19
    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final a(ZZZJ)V
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/amap/api/col/l3/jn;->k:Z

    .line 23
    iput-boolean p2, p0, Lcom/amap/api/col/l3/jn;->l:Z

    .line 24
    iput-boolean p3, p0, Lcom/amap/api/col/l3/jn;->m:Z

    const-wide/16 p1, 0x2710

    cmp-long p3, p4, p1

    if-gez p3, :cond_0

    .line 25
    iput-wide p1, p0, Lcom/amap/api/col/l3/jn;->w:J

    return-void

    .line 26
    :cond_0
    iput-wide p4, p0, Lcom/amap/api/col/l3/jn;->w:J

    return-void
.end method

.method public final a(Landroid/net/ConnectivityManager;)Z
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/jn;->a:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lcom/amap/api/col/l3/ki;->a(Landroid/net/NetworkInfo;)I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/amap/api/col/l3/jn;->a(Landroid/net/wifi/WifiInfo;)Z

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

    .line 6
    invoke-static {p1, v0, v2}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/jn;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Z)V
    .locals 7

    const/16 v0, 0x14

    if-eqz p1, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/amap/api/col/l3/jn;->p()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/amap/api/col/l3/ki;->c()J

    move-result-wide v1

    sget-wide v3, Lcom/amap/api/col/l3/jn;->d:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x2710

    cmp-long p1, v3, v5

    if-ltz p1, :cond_0

    iget-object p1, p0, Lcom/amap/api/col/l3/jn;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    sget-wide v3, Lcom/amap/api/col/l3/jn;->f:J

    sput-wide v3, Lcom/amap/api/col/l3/jn;->g:J

    :cond_0
    invoke-direct {p0}, Lcom/amap/api/col/l3/jn;->o()V

    sget-wide v3, Lcom/amap/api/col/l3/jn;->d:J

    sub-long/2addr v1, v3

    cmp-long p1, v1, v5

    if-ltz p1, :cond_2

    const/16 p1, 0x14

    :goto_0
    if-lez p1, :cond_2

    sget-wide v1, Lcom/amap/api/col/l3/jn;->f:J

    sget-wide v3, Lcom/amap/api/col/l3/jn;->g:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    const-wide/16 v1, 0x96

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/amap/api/col/l3/jn;->o()V

    .line 4
    :cond_2
    iget-boolean p1, p0, Lcom/amap/api/col/l3/jn;->u:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 5
    iput-boolean v1, p0, Lcom/amap/api/col/l3/jn;->u:Z

    .line 6
    invoke-virtual {p0}, Lcom/amap/api/col/l3/jn;->d()V

    .line 7
    :cond_3
    sget-wide v2, Lcom/amap/api/col/l3/jn;->g:J

    sget-wide v4, Lcom/amap/api/col/l3/jn;->f:J

    cmp-long p1, v2, v4

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/amap/api/col/l3/jn;->m()Ljava/util/List;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    const-string v3, "WifiManager"

    const-string v4, "updateScanResult"

    invoke-static {v2, v3, v4}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    sget-wide v2, Lcom/amap/api/col/l3/jn;->f:J

    sput-wide v2, Lcom/amap/api/col/l3/jn;->g:J

    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/amap/api/col/l3/jn;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/amap/api/col/l3/jn;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/amap/api/col/l3/jn;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 8
    :cond_5
    :goto_2
    invoke-static {}, Lcom/amap/api/col/l3/ki;->c()J

    move-result-wide v2

    sget-wide v4, Lcom/amap/api/col/l3/jn;->f:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x4e20

    cmp-long p1, v2, v4

    if-lez p1, :cond_6

    .line 9
    iget-object p1, p0, Lcom/amap/api/col/l3/jn;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 10
    :cond_6
    invoke-static {}, Lcom/amap/api/col/l3/ki;->c()J

    move-result-wide v2

    sput-wide v2, Lcom/amap/api/col/l3/jn;->d:J

    .line 11
    iget-object p1, p0, Lcom/amap/api/col/l3/jn;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 12
    invoke-static {}, Lcom/amap/api/col/l3/ki;->c()J

    move-result-wide v2

    sput-wide v2, Lcom/amap/api/col/l3/jn;->f:J

    .line 13
    invoke-direct {p0}, Lcom/amap/api/col/l3/jn;->m()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 14
    iget-object v2, p0, Lcom/amap/api/col/l3/jn;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 15
    :cond_7
    iget-object p1, p0, Lcom/amap/api/col/l3/jn;->b:Ljava/util/ArrayList;

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    goto/16 :goto_7

    :cond_8
    invoke-static {}, Lcom/amap/api/col/l3/ki;->c()J

    move-result-wide v2

    sget-wide v4, Lcom/amap/api/col/l3/jn;->f:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x36ee80

    cmp-long p1, v2, v4

    if-lez p1, :cond_9

    invoke-virtual {p0}, Lcom/amap/api/col/l3/jn;->d()V

    :cond_9
    iget-object p1, p0, Lcom/amap/api/col/l3/jn;->o:Ljava/util/TreeMap;

    if-nez p1, :cond_a

    new-instance p1, Ljava/util/TreeMap;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object p1, p0, Lcom/amap/api/col/l3/jn;->o:Ljava/util/TreeMap;

    :cond_a
    iget-object p1, p0, Lcom/amap/api/col/l3/jn;->o:Ljava/util/TreeMap;

    invoke-virtual {p1}, Ljava/util/TreeMap;->clear()V

    iget-object p1, p0, Lcom/amap/api/col/l3/jn;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_3
    if-ge v1, p1, :cond_10

    iget-object v2, p0, Lcom/amap/api/col/l3/jn;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    if-eqz v2, :cond_b

    iget-object v3, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    goto :goto_4

    :cond_b
    const-string v3, ""

    :goto_4
    invoke-static {v3}, Lcom/amap/api/col/l3/ki;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    if-le p1, v0, :cond_c

    iget v3, v2, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v3}, Lcom/amap/api/col/l3/jn;->a(I)Z

    move-result v3

    if-eqz v3, :cond_f

    :cond_c
    iget-object v3, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    iget-object v3, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const-string v4, "<unknown ssid>"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_d
    const-string v3, "unkwn"

    :goto_5
    iput-object v3, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    :cond_e
    iget-object v3, p0, Lcom/amap/api/col/l3/jn;->o:Ljava/util/TreeMap;

    iget v4, v2, Landroid/net/wifi/ScanResult;->level:I

    mul-int/lit8 v4, v4, 0x19

    add-int/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_10
    iget-object p1, p0, Lcom/amap/api/col/l3/jn;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/amap/api/col/l3/jn;->o:Ljava/util/TreeMap;

    invoke-virtual {p1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v1, p0, Lcom/amap/api/col/l3/jn;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_11
    iget-object p1, p0, Lcom/amap/api/col/l3/jn;->o:Ljava/util/TreeMap;

    invoke-virtual {p1}, Ljava/util/TreeMap;->clear()V

    :cond_12
    :goto_7
    return-void
.end method

.method public final c()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/jn;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/amap/api/col/l3/jn;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/amap/api/col/l3/jn;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/amap/api/col/l3/jn;->v:Landroid/net/wifi/WifiInfo;

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/jn;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final e()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/jn;->a:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/amap/api/col/l3/ki;->c()J

    move-result-wide v0

    sget-wide v2, Lcom/amap/api/col/l3/jn;->f:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1324

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 3
    invoke-static {}, Lcom/amap/api/col/l3/ki;->c()J

    move-result-wide v0

    sput-wide v0, Lcom/amap/api/col/l3/jn;->f:J

    :cond_1
    return-void
.end method

.method public final f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/jn;->a:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x4

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v2, "Aps"

    const-string v3, "onReceive part"

    .line 3
    invoke-static {v0, v2, v3}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x4

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/amap/api/col/l3/jn;->b:Ljava/util/ArrayList;

    if-nez v2, :cond_2

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/amap/api/col/l3/jn;->b:Ljava/util/ArrayList;

    :cond_2
    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_3

    goto :goto_1

    .line 6
    :cond_3
    iput-boolean v2, p0, Lcom/amap/api/col/l3/jn;->u:Z

    :goto_1
    return-void
.end method

.method public final g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/col/l3/jn;->p:Z

    return v0
.end method

.method public final h()Landroid/net/wifi/WifiInfo;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/amap/api/col/l3/jn;->n()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3/jn;->v:Landroid/net/wifi/WifiInfo;

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/jn;->v:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method public final i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/col/l3/jn;->i:Z

    return v0
.end method

.method public final j()Ljava/lang/String;
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/jn;->j:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x2bc

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/amap/api/col/l3/jn;->j:Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 4
    :goto_0
    iput-boolean v1, p0, Lcom/amap/api/col/l3/jn;->i:Z

    .line 5
    invoke-virtual {p0}, Lcom/amap/api/col/l3/jn;->h()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3/jn;->v:Landroid/net/wifi/WifiInfo;

    .line 6
    iget-object v0, p0, Lcom/amap/api/col/l3/jn;->v:Landroid/net/wifi/WifiInfo;

    invoke-static {v0}, Lcom/amap/api/col/l3/jn;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/amap/api/col/l3/jn;->v:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, ""

    .line 8
    :goto_1
    iget-object v2, p0, Lcom/amap/api/col/l3/jn;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2
    const/4 v6, 0x1

    if-ge v3, v2, :cond_4

    .line 9
    iget-object v7, p0, Lcom/amap/api/col/l3/jn;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/ScanResult;

    iget-object v7, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 10
    iget-boolean v8, p0, Lcom/amap/api/col/l3/jn;->l:Z

    if-nez v8, :cond_2

    .line 11
    iget-object v8, p0, Lcom/amap/api/col/l3/jn;->b:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/ScanResult;

    iget-object v8, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const-string v9, "<unknown ssid>"

    .line 12
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const/4 v4, 0x1

    .line 13
    :cond_2
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v5, "access"

    const/4 v8, 0x1

    goto :goto_3

    :cond_3
    const-string v8, "nb"

    move-object v12, v8

    move v8, v5

    move-object v5, v12

    .line 14
    :goto_3
    iget-object v9, p0, Lcom/amap/api/col/l3/jn;->j:Ljava/lang/StringBuilder;

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v7, v11, v1

    aput-object v5, v11, v6

    const-string v5, "#%s,%s"

    invoke-static {v10, v5, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    move v5, v8

    goto :goto_2

    .line 15
    :cond_4
    iget-object v1, p0, Lcom/amap/api/col/l3/jn;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_5

    const/4 v4, 0x1

    .line 16
    :cond_5
    iget-boolean v1, p0, Lcom/amap/api/col/l3/jn;->l:Z

    if-nez v1, :cond_6

    if-nez v4, :cond_6

    .line 17
    iput-boolean v6, p0, Lcom/amap/api/col/l3/jn;->i:Z

    :cond_6
    if-nez v5, :cond_7

    .line 18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 19
    iget-object v1, p0, Lcom/amap/api/col/l3/jn;->j:Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget-object v0, p0, Lcom/amap/api/col/l3/jn;->j:Ljava/lang/StringBuilder;

    const-string v1, ",access"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    :cond_7
    iget-object v0, p0, Lcom/amap/api/col/l3/jn;->j:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/amap/api/col/l3/jn;->d()V

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/jn;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
