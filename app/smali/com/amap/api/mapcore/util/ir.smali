.class public final Lcom/amap/api/mapcore/util/ir;
.super Ljava/lang/Object;
.source "MapNetLocation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/ir$a;
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Z

.field c:Ljava/lang/String;

.field d:J

.field e:Landroid/net/wifi/WifiInfo;

.field f:Z

.field g:I

.field private h:Lcom/amap/api/mapcore/util/iy;

.field private i:Lcom/amap/api/mapcore/util/ix;

.field private j:Lcom/amap/api/mapcore/util/ir$a;

.field private k:Lcom/amap/api/mapcore/util/ja;

.field private l:Landroid/net/ConnectivityManager;

.field private m:Lcom/amap/api/mapcore/util/jc;

.field private n:Ljava/lang/StringBuilder;

.field private o:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

.field private p:Lcom/amap/api/mapcore/util/ij;

.field private q:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/amap/api/mapcore/util/ir;->a:Landroid/content/Context;

    iput-object v2, p0, Lcom/amap/api/mapcore/util/ir;->h:Lcom/amap/api/mapcore/util/iy;

    iput-object v2, p0, Lcom/amap/api/mapcore/util/ir;->i:Lcom/amap/api/mapcore/util/ix;

    iput-object v2, p0, Lcom/amap/api/mapcore/util/ir;->j:Lcom/amap/api/mapcore/util/ir$a;

    iput-object v2, p0, Lcom/amap/api/mapcore/util/ir;->k:Lcom/amap/api/mapcore/util/ja;

    iput-object v2, p0, Lcom/amap/api/mapcore/util/ir;->l:Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/amap/api/mapcore/util/ir;->m:Lcom/amap/api/mapcore/util/jc;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/ir;->b:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ir;->n:Ljava/lang/StringBuilder;

    iput-object v2, p0, Lcom/amap/api/mapcore/util/ir;->o:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    iput-object v2, p0, Lcom/amap/api/mapcore/util/ir;->c:Ljava/lang/String;

    iput-object v2, p0, Lcom/amap/api/mapcore/util/ir;->p:Lcom/amap/api/mapcore/util/ij;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/ir;->d:J

    iput-object v2, p0, Lcom/amap/api/mapcore/util/ir;->e:Landroid/net/wifi/WifiInfo;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/ir;->f:Z

    const-string v0, "00:00:00:00:00:00"

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ir;->q:Ljava/lang/String;

    const/16 v0, 0xc

    iput v0, p0, Lcom/amap/api/mapcore/util/ir;->g:I

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ir;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ir;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/jg;->b(Landroid/content/Context;)Ljava/lang/String;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ir;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/ir;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ir;->o:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ir;->h:Lcom/amap/api/mapcore/util/iy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ir;->a:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/jg;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    new-instance v1, Lcom/amap/api/mapcore/util/iy;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ir;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/amap/api/mapcore/util/iy;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/ir;->h:Lcom/amap/api/mapcore/util/iy;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ir;->h:Lcom/amap/api/mapcore/util/iy;

    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/ir;->b:Z

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/iy;->a(Z)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ir;->i:Lcom/amap/api/mapcore/util/ix;

    if-nez v0, :cond_1

    new-instance v0, Lcom/amap/api/mapcore/util/ix;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ir;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/ix;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ir;->i:Lcom/amap/api/mapcore/util/ix;

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ir;->k:Lcom/amap/api/mapcore/util/ja;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ir;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ja;->a(Landroid/content/Context;)Lcom/amap/api/mapcore/util/ja;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ir;->k:Lcom/amap/api/mapcore/util/ja;

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ir;->l:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ir;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/jg;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ir;->l:Landroid/net/ConnectivityManager;

    :cond_3
    new-instance v0, Lcom/amap/api/mapcore/util/jc;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/jc;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ir;->m:Lcom/amap/api/mapcore/util/jc;

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/ir;->c()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "NetLocation"

    const-string v2, "<init>"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static varargs a(Lcom/amap/api/mapcore/util/ij;[Ljava/lang/String;)Lcom/amap/api/mapcore/util/ij;
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/amap/api/mapcore/util/im;->a()Lcom/amap/api/mapcore/util/im;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/util/im;->a(Lcom/amap/api/mapcore/util/ij;)Lcom/amap/api/mapcore/util/ij;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0

    :cond_2
    aget-object v0, p1, v2

    const-string v1, "shake"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/amap/api/mapcore/util/im;->a()Lcom/amap/api/mapcore/util/im;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/util/im;->a(Lcom/amap/api/mapcore/util/ij;)Lcom/amap/api/mapcore/util/ij;

    move-result-object p0

    goto :goto_0

    :cond_3
    aget-object v0, p1, v2

    const-string v1, "fusion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/amap/api/mapcore/util/im;->a()Lcom/amap/api/mapcore/util/im;

    invoke-static {p0}, Lcom/amap/api/mapcore/util/im;->b(Lcom/amap/api/mapcore/util/ij;)Lcom/amap/api/mapcore/util/ij;

    move-result-object p0

    goto :goto_0
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/ir;)Lcom/amap/api/mapcore/util/iy;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ir;->h:Lcom/amap/api/mapcore/util/iy;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    :try_start_0
    const-string v0, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/ir;->b:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(J)Z
    .locals 7

    const/4 v0, 0x0

    invoke-static {}, Lcom/amap/api/mapcore/util/jg;->b()J

    move-result-wide v2

    sub-long/2addr v2, p1

    const-wide/16 v4, 0x320

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    const-wide/16 v2, 0x0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ir;->p:Lcom/amap/api/mapcore/util/ij;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/it;->a(Lcom/amap/api/mapcore/util/ij;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/amap/api/mapcore/util/jg;->a()J

    move-result-wide v2

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ir;->p:Lcom/amap/api/mapcore/util/ij;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/ij;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    :cond_0
    const-wide/16 v4, 0x2710

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private c()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ir;->j:Lcom/amap/api/mapcore/util/ir$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/mapcore/util/ir$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amap/api/mapcore/util/ir$a;-><init>(Lcom/amap/api/mapcore/util/ir;B)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ir;->j:Lcom/amap/api/mapcore/util/ir$a;

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ir;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ir;->j:Lcom/amap/api/mapcore/util/ir$a;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ir;->h:Lcom/amap/api/mapcore/util/iy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/iy;->b(Z)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ir;->i:Lcom/amap/api/mapcore/util/ix;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ix;->f()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "NetLocation"

    const-string v2, "initBroadcastListener"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private d()Lcom/amap/api/mapcore/util/ij;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v13, 0x6

    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x5

    new-instance v9, Lcom/amap/api/mapcore/util/ij;

    const-string v0, ""

    invoke-direct {v9, v0}, Lcom/amap/api/mapcore/util/ij;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ir;->h:Lcom/amap/api/mapcore/util/iy;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/iy;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    invoke-virtual {v9, v0}, Lcom/amap/api/mapcore/util/ij;->setErrorCode(I)V

    move-object v0, v9

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ir;->m:Lcom/amap/api/mapcore/util/jc;

    if-nez v0, :cond_1

    new-instance v0, Lcom/amap/api/mapcore/util/jc;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/jc;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ir;->m:Lcom/amap/api/mapcore/util/jc;

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ir;->m:Lcom/amap/api/mapcore/util/jc;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ir;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ir;->o:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isNeedAddress()Z

    move-result v2

    iget-object v3, p0, Lcom/amap/api/mapcore/util/ir;->o:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isOffset()Z

    move-result v3

    iget-object v4, p0, Lcom/amap/api/mapcore/util/ir;->i:Lcom/amap/api/mapcore/util/ix;

    iget-object v5, p0, Lcom/amap/api/mapcore/util/ir;->h:Lcom/amap/api/mapcore/util/iy;

    iget-object v6, p0, Lcom/amap/api/mapcore/util/ir;->l:Landroid/net/ConnectivityManager;

    iget-object v7, p0, Lcom/amap/api/mapcore/util/ir;->q:Ljava/lang/String;

    iget-object v8, p0, Lcom/amap/api/mapcore/util/ir;->c:Ljava/lang/String;

    invoke-virtual/range {v0 .. v8}, Lcom/amap/api/mapcore/util/jc;->a(Landroid/content/Context;ZZLcom/amap/api/mapcore/util/ix;Lcom/amap/api/mapcore/util/iy;Landroid/net/ConnectivityManager;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v2, Lcom/amap/api/mapcore/util/is;

    invoke-direct {v2}, Lcom/amap/api/mapcore/util/is;-><init>()V

    const/4 v1, 0x0

    const-string v0, ""

    :try_start_1
    iget-object v3, p0, Lcom/amap/api/mapcore/util/ir;->m:Lcom/amap/api/mapcore/util/jc;

    invoke-virtual {v3}, Lcom/amap/api/mapcore/util/jc;->a()[B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    :try_start_2
    iget-object v4, p0, Lcom/amap/api/mapcore/util/ir;->k:Lcom/amap/api/mapcore/util/ja;

    iget-object v5, p0, Lcom/amap/api/mapcore/util/ir;->a:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/mapcore/util/jd;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v3, v6}, Lcom/amap/api/mapcore/util/ja;->a(Landroid/content/Context;[BLjava/lang/String;)Lcom/amap/api/mapcore/util/jb;

    move-result-object v3

    iget-object v4, p0, Lcom/amap/api/mapcore/util/ir;->k:Lcom/amap/api/mapcore/util/ja;

    invoke-virtual {v4, v3}, Lcom/amap/api/mapcore/util/ja;->a(Lcom/amap/api/mapcore/util/jb;)Lcom/amap/api/mapcore/util/hx;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v1, v3, Lcom/amap/api/mapcore/util/hx;->a:[B

    iget-object v0, v3, Lcom/amap/api/mapcore/util/hx;->c:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    if-eqz v1, :cond_3

    array-length v4, v1

    if-nez v4, :cond_5

    :cond_3
    invoke-virtual {v9, v12}, Lcom/amap/api/mapcore/util/ij;->setErrorCode(I)V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ir;->n:Ljava/lang/StringBuilder;

    const-string v2, "please check the network"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ir;->n:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " #csid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ir;->n:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/amap/api/mapcore/util/ij;->setLocationDetail(Ljava/lang/String;)V

    move-object v0, v9

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NetLocation"

    const-string v2, "getApsLoc"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ir;->n:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get parames error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Lcom/amap/api/mapcore/util/ij;->setErrorCode(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ir;->n:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/amap/api/mapcore/util/ij;->setLocationDetail(Ljava/lang/String;)V

    move-object v0, v9

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v1, "NetLocation"

    const-string v2, "getApsLoc buildV4Dot2"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v11}, Lcom/amap/api/mapcore/util/ij;->setErrorCode(I)V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ir;->n:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "buildV4Dot2 error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ir;->n:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/amap/api/mapcore/util/ij;->setLocationDetail(Ljava/lang/String;)V

    move-object v0, v9

    goto/16 :goto_0

    :catch_2
    move-exception v0

    const-string v1, "NetLocation"

    const-string v2, "getApsLoc req"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v12}, Lcom/amap/api/mapcore/util/ij;->setErrorCode(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ir;->n:Ljava/lang/StringBuilder;

    const-string v1, "please check the network"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ir;->n:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/amap/api/mapcore/util/ij;->setLocationDetail(Ljava/lang/String;)V

    move-object v0, v9

    goto/16 :goto_0

    :cond_5
    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, v1, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v5, "\"status\":\"0\""

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ir;->a:Landroid/content/Context;

    invoke-virtual {v2, v4, v0, v3}, Lcom/amap/api/mapcore/util/is;->a(Ljava/lang/String;Landroid/content/Context;Lcom/amap/api/mapcore/util/hx;)Lcom/amap/api/mapcore/util/ij;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    const-string v3, "</body></html>"

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v9, v10}, Lcom/amap/api/mapcore/util/ij;->setErrorCode(I)V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ir;->h:Lcom/amap/api/mapcore/util/iy;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ir;->h:Lcom/amap/api/mapcore/util/iy;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ir;->l:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore/util/iy;->a(Landroid/net/ConnectivityManager;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ir;->n:Ljava/lang/StringBuilder;

    const-string v2, "make sure you are logged in to the network"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ir;->n:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " #csid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ir;->n:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/amap/api/mapcore/util/ij;->setLocationDetail(Ljava/lang/String;)V

    move-object v0, v9

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ir;->n:Ljava/lang/StringBuilder;

    const-string v2, "request may be intercepted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_9
    invoke-static {v1}, Lcom/amap/api/mapcore/util/iz;->a([B)[B

    move-result-object v1

    if-nez v1, :cond_b

    invoke-virtual {v9, v10}, Lcom/amap/api/mapcore/util/ij;->setErrorCode(I)V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ir;->n:Ljava/lang/StringBuilder;

    const-string v2, "decrypt response data error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ir;->n:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " #csid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ir;->n:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/amap/api/mapcore/util/ij;->setLocationDetail(Ljava/lang/String;)V

    move-object v0, v9

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore/util/is;->a([B)Lcom/amap/api/mapcore/util/ij;

    move-result-object v2

    if-nez v2, :cond_d

    new-instance v1, Lcom/amap/api/mapcore/util/ij;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/amap/api/mapcore/util/ij;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Lcom/amap/api/mapcore/util/ij;->setErrorCode(I)V

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ir;->n:Ljava/lang/StringBuilder;

    const-string v3, "location is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ir;->n:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " #csid:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ir;->n:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/ij;->setLocationDetail(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_d
    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/ij;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/mapcore/util/ir;->c:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/ij;->getErrorCode()I

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/ij;->getLocationDetail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " #csid:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amap/api/mapcore/util/ij;->setLocationDetail(Ljava/lang/String;)V

    :cond_e
    move-object v0, v2

    goto/16 :goto_0

    :cond_f
    invoke-static {v2}, Lcom/amap/api/mapcore/util/it;->a(Lcom/amap/api/mapcore/util/ij;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/ij;->e()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_10

    :cond_10
    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/ij;->getErrorCode()I

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/ij;->getLocationType()I

    move-result v1

    if-nez v1, :cond_13

    const-string v1, "-5"

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/ij;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "1"

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/ij;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "2"

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/ij;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "14"

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/ij;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "24"

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/ij;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "-1"

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/ij;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    :cond_11
    invoke-virtual {v2, v10}, Lcom/amap/api/mapcore/util/ij;->setLocationType(I)V

    :goto_2
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ir;->n:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/ij;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ir;->n:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " #csid:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ir;->n:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amap/api/mapcore/util/ij;->setLocationDetail(Ljava/lang/String;)V

    :cond_13
    move-object v0, v2

    goto/16 :goto_0

    :cond_14
    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/ij;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v13}, Lcom/amap/api/mapcore/util/ij;->setErrorCode(I)V

    iget-object v3, p0, Lcom/amap/api/mapcore/util/ir;->n:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "location faile retype:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/ij;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rdesc:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_16

    :goto_3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ir;->n:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " #csid:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ir;->n:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amap/api/mapcore/util/ij;->setLocationDetail(Ljava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_0

    :cond_16
    const-string v1, "null"

    goto :goto_3

    :cond_17
    invoke-virtual {v2, v13}, Lcom/amap/api/mapcore/util/ij;->setLocationType(I)V

    goto/16 :goto_2
.end method


# virtual methods
.method public final a()Lcom/autonavi/amap/mapcore/Inner_3dMap_location;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ir;->n:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ir;->n:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ir;->n:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_0
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/ir;->d:J

    invoke-direct {p0, v0, v1}, Lcom/amap/api/mapcore/util/ir;->a(J)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ir;->p:Lcom/amap/api/mapcore/util/ij;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/it;->a(Lcom/amap/api/mapcore/util/ij;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ir;->p:Lcom/amap/api/mapcore/util/ij;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/amap/api/mapcore/util/jg;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/ir;->d:J

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ir;->a:Landroid/content/Context;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ir;->n:Ljava/lang/StringBuilder;

    const-string v1, "context is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setErrorCode(I)V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ir;->n:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setLocationDetail(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ir;->i:Lcom/amap/api/mapcore/util/ix;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ix;->f()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ir;->h:Lcom/amap/api/mapcore/util/iy;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/iy;->b(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/ir;->d()Lcom/amap/api/mapcore/util/ij;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ir;->p:Lcom/amap/api/mapcore/util/ij;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ir;->p:Lcom/amap/api/mapcore/util/ij;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/ir;->a(Lcom/amap/api/mapcore/util/ij;[Ljava/lang/String;)Lcom/amap/api/mapcore/util/ij;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ir;->p:Lcom/amap/api/mapcore/util/ij;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ir;->p:Lcom/amap/api/mapcore/util/ij;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NetLocation"

    const-string v2, "getLocation getCgiListParam"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "NetLocation"

    const-string v2, "getLocation getScanResultsParam"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v1, "NetLocation"

    const-string v2, "getLocation getScanResultsParam"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public final a(Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;)V
    .locals 5

    iput-object p1, p0, Lcom/amap/api/mapcore/util/ir;->o:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ir;->o:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ir;->o:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ir;->h:Lcom/amap/api/mapcore/util/iy;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ir;->o:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isWifiActiveScan()Z

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ir;->o:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isWifiScan()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/iy;->c(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ir;->k:Lcom/amap/api/mapcore/util/ja;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ir;->o:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->getHttpTimeOut()J

    move-result-wide v2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ir;->o:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->getLocationProtocol()Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationProtocol;

    move-result-object v0

    sget-object v4, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationProtocol;->HTTPS:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationProtocol;

    invoke-virtual {v0, v4}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationProtocol;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v2, v3, v0}, Lcom/amap/api/mapcore/util/ja;->a(JZ)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/ir;->b:Z

    iput-object v2, p0, Lcom/amap/api/mapcore/util/ir;->c:Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ir;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ir;->j:Lcom/amap/api/mapcore/util/ir$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ir;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ir;->j:Lcom/amap/api/mapcore/util/ir$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ir;->i:Lcom/amap/api/mapcore/util/ix;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ir;->i:Lcom/amap/api/mapcore/util/ix;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ix;->g()V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ir;->h:Lcom/amap/api/mapcore/util/iy;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ir;->h:Lcom/amap/api/mapcore/util/iy;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/iy;->h()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    iput-object v2, p0, Lcom/amap/api/mapcore/util/ir;->j:Lcom/amap/api/mapcore/util/ir$a;

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iput-object v2, p0, Lcom/amap/api/mapcore/util/ir;->j:Lcom/amap/api/mapcore/util/ir$a;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v2, p0, Lcom/amap/api/mapcore/util/ir;->j:Lcom/amap/api/mapcore/util/ir$a;

    throw v0
.end method
