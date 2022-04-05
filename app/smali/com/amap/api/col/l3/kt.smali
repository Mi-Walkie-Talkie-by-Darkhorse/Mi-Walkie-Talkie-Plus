.class public final Lcom/amap/api/col/l3/kt;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3/kt$a;,
        Lcom/amap/api/col/l3/kt$b;
    }
.end annotation


# static fields
.field private static k:I = 0xc8

.field private static l:Z = true


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/amap/api/col/l3/ko;

.field c:Lcom/amap/api/col/l3/ku;

.field d:Lcom/amap/api/col/l3/kt$b;

.field e:Landroid/os/Handler;

.field f:Landroid/os/Handler;

.field g:Z

.field h:Z

.field i:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

.field j:Ljava/lang/Object;

.field private m:Lorg/json/JSONArray;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3/kt;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/amap/api/col/l3/kt;->b:Lcom/amap/api/col/l3/ko;

    iput-object v0, p0, Lcom/amap/api/col/l3/kt;->c:Lcom/amap/api/col/l3/ku;

    iput-object v0, p0, Lcom/amap/api/col/l3/kt;->d:Lcom/amap/api/col/l3/kt$b;

    iput-object v0, p0, Lcom/amap/api/col/l3/kt;->e:Landroid/os/Handler;

    iput-object v0, p0, Lcom/amap/api/col/l3/kt;->f:Landroid/os/Handler;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amap/api/col/l3/kt;->g:Z

    iput-boolean v1, p0, Lcom/amap/api/col/l3/kt;->h:Z

    iput-object v0, p0, Lcom/amap/api/col/l3/kt;->i:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    iput-object v0, p0, Lcom/amap/api/col/l3/kt;->m:Lorg/json/JSONArray;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3/kt;->j:Ljava/lang/Object;

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3/kt;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/amap/api/col/l3/kt;->f:Landroid/os/Handler;

    new-instance p1, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-direct {p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3/kt;->i:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-direct {p0}, Lcom/amap/api/col/l3/kt;->e()V

    new-instance p1, Lcom/amap/api/col/l3/kt$b;

    const-string p2, "locServiceAction"

    invoke-direct {p1, p0, p2}, Lcom/amap/api/col/l3/kt$b;-><init>(Lcom/amap/api/col/l3/kt;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amap/api/col/l3/kt;->d:Lcom/amap/api/col/l3/kt$b;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/os/HandlerThread;->setPriority(I)V

    iget-object p1, p0, Lcom/amap/api/col/l3/kt;->d:Lcom/amap/api/col/l3/kt$b;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Lcom/amap/api/col/l3/kt$a;

    iget-object p2, p0, Lcom/amap/api/col/l3/kt;->d:Lcom/amap/api/col/l3/kt$b;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/amap/api/col/l3/kt$a;-><init>(Lcom/amap/api/col/l3/kt;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/amap/api/col/l3/kt;->e:Landroid/os/Handler;

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Context\u53c2\u6570\u4e0d\u80fd\u4e3anull"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const-string p2, "LocationService"

    const-string v0, "<init>"

    invoke-static {p1, p2, v0}, Lcom/amap/api/col/l3/lg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private e()V
    .locals 4

    const-string v0, "maploc"

    const-string v1, "LocationService"

    :try_start_0
    iget-object v2, p0, Lcom/amap/api/col/l3/kt;->i:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    if-nez v2, :cond_0

    new-instance v2, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-direct {v2}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;-><init>()V

    iput-object v2, p0, Lcom/amap/api/col/l3/kt;->i:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    :cond_0
    iget-boolean v2, p0, Lcom/amap/api/col/l3/kt;->h:Z

    if-eqz v2, :cond_1

    return-void

    :cond_1
    new-instance v2, Lcom/amap/api/col/l3/ko;

    iget-object v3, p0, Lcom/amap/api/col/l3/kt;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/amap/api/col/l3/ko;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/amap/api/col/l3/kt;->b:Lcom/amap/api/col/l3/ko;

    new-instance v2, Lcom/amap/api/col/l3/ku;

    iget-object v3, p0, Lcom/amap/api/col/l3/kt;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/amap/api/col/l3/ku;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/amap/api/col/l3/kt;->c:Lcom/amap/api/col/l3/ku;

    iget-object v3, p0, Lcom/amap/api/col/l3/kt;->i:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-virtual {v2, v3}, Lcom/amap/api/col/l3/ku;->a(Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/amap/api/col/l3/kt;->a:Landroid/content/Context;

    const-string v3, "ue"

    invoke-static {v2, v0, v3}, Lcom/amap/api/col/l3/li;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/amap/api/col/l3/kt;->l:Z

    iget-object v2, p0, Lcom/amap/api/col/l3/kt;->a:Landroid/content/Context;

    const-string v3, "opn"

    invoke-static {v2, v0, v3}, Lcom/amap/api/col/l3/li;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/amap/api/col/l3/kt;->k:I

    const/16 v2, 0x1f4

    if-le v0, v2, :cond_2

    sput v2, Lcom/amap/api/col/l3/kt;->k:I

    :cond_2
    sget v0, Lcom/amap/api/col/l3/kt;->k:I

    const/16 v2, 0x1e

    if-ge v0, v2, :cond_3

    sput v2, Lcom/amap/api/col/l3/kt;->k:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    const-string v2, "getSPConfig"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/lg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3/kt;->h:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    const-string v2, "init"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/lg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized f()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/kt;->m:Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/kt;->m:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/amap/api/col/l3/lg;->b()Lcom/amap/api/col/l3/gh;

    move-result-object v0

    new-instance v1, Lcom/amap/api/col/l3/ij;

    iget-object v2, p0, Lcom/amap/api/col/l3/kt;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/amap/api/col/l3/kt;->m:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/amap/api/col/l3/ij;-><init>(Landroid/content/Context;Lcom/amap/api/col/l3/gh;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/l3/kt;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/amap/api/col/l3/ik;->a(Lcom/amap/api/col/l3/ij;Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3/kt;->m:Lorg/json/JSONArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    const-string v1, "LocationService"

    const-string v2, "writeOfflineLog"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/lg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 10

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/col/l3/kt;->e()V

    iget-object v0, p0, Lcom/amap/api/col/l3/kt;->i:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->getLocationMode()Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;

    move-result-object v0

    sget-object v1, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;->Battery_Saving:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/amap/api/col/l3/kt;->g:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/amap/api/col/l3/kt;->g:Z

    iget-object v0, p0, Lcom/amap/api/col/l3/kt;->b:Lcom/amap/api/col/l3/ko;

    iget-boolean v2, v0, Lcom/amap/api/col/l3/ko;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v2, :cond_1

    :try_start_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/amap/api/col/l3/ko;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    :cond_0
    move-object v9, v2

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v3, v0, Lcom/amap/api/col/l3/ko;->b:Landroid/location/LocationManager;

    const-string v4, "gps"

    const-string v5, "force_xtra_injection"

    invoke-virtual {v3, v4, v5, v2}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    :try_start_3
    iget-object v3, v0, Lcom/amap/api/col/l3/ko;->b:Landroid/location/LocationManager;

    const-string v4, "gps"

    const-wide/16 v5, 0x320

    const/4 v7, 0x0

    iget-object v8, v0, Lcom/amap/api/col/l3/ko;->i:Landroid/location/LocationListener;

    invoke-virtual/range {v3 .. v9}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    const-string v3, "MAPGPSLocation"

    const-string v4, "requestLocationUpdates"

    invoke-static {v2, v3, v4}, Lcom/amap/api/col/l3/lg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :catch_0
    :goto_0
    iput-boolean v1, v0, Lcom/amap/api/col/l3/ko;->e:Z

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/kt;->e:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3/kt;->e:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_2
    return-void

    :catchall_2
    move-exception v0

    const-string v1, "LocationService"

    const-string v2, "getLocation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/lg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;)V
    .locals 1

    iput-object p1, p0, Lcom/amap/api/col/l3/kt;->i:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    if-nez p1, :cond_0

    new-instance v0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3/kt;->i:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/kt;->c:Lcom/amap/api/col/l3/ku;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/ku;->a(Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;)V

    :cond_1
    return-void
.end method

.method final b()V
    .locals 10

    const-string v0, "LocationService"

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3/kt;->i:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->getLocationMode()Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;

    move-result-object v1

    sget-object v2, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;->Battery_Saving:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/amap/api/col/l3/kt;->g:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/l3/kt;->b:Lcom/amap/api/col/l3/ko;

    invoke-virtual {v1}, Lcom/amap/api/col/l3/ko;->a()V

    iput-boolean v2, p0, Lcom/amap/api/col/l3/kt;->g:Z

    :cond_0
    iget-object v1, p0, Lcom/amap/api/col/l3/kt;->b:Lcom/amap/api/col/l3/ko;

    iget-boolean v3, v1, Lcom/amap/api/col/l3/ko;->d:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/amap/api/col/l3/lj;->b()J

    move-result-wide v6

    iget-wide v8, v1, Lcom/amap/api/col/l3/ko;->c:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x2710

    cmp-long v3, v6, v8

    if-gtz v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    iput-object v4, v1, Lcom/amap/api/col/l3/ko;->f:Lcom/autonavi/amap/mapcore/Inner_3dMap_location;

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/amap/api/col/l3/kt;->b:Lcom/amap/api/col/l3/ko;

    invoke-virtual {v1}, Lcom/amap/api/col/l3/ko;->b()Lcom/autonavi/amap/mapcore/Inner_3dMap_location;

    move-result-object v4

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/amap/api/col/l3/kt;->i:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->getLocationMode()Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;

    move-result-object v1

    sget-object v3, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;->Device_Sensors:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/amap/api/col/l3/kt;->c:Lcom/amap/api/col/l3/ku;

    invoke-virtual {v1}, Lcom/amap/api/col/l3/ku;->a()Lcom/autonavi/amap/mapcore/Inner_3dMap_location;

    move-result-object v4

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/amap/api/col/l3/kt;->f:Landroid/os/Handler;

    if-eqz v1, :cond_5

    if-eqz v4, :cond_5

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v5, v1, Landroid/os/Message;->what:I

    iget-object v3, p0, Lcom/amap/api/col/l3/kt;->f:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_5
    :try_start_1
    sget-boolean v1, Lcom/amap/api/col/l3/kt;->l:Z

    if-nez v1, :cond_6

    return-void

    :cond_6
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getErrorCode()I

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {v4}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getLocationType()I

    move-result v1

    if-eq v1, v5, :cond_7

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/amap/api/col/l3/kt;->m:Lorg/json/JSONArray;

    if-nez v1, :cond_8

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iput-object v1, p0, Lcom/amap/api/col/l3/kt;->m:Lorg/json/JSONArray;

    :cond_8
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "lon"

    invoke-virtual {v4}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getLongitude()D

    move-result-wide v5

    invoke-virtual {v1, v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v3, "lat"

    invoke-virtual {v4}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v3, "type"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "timestamp"

    invoke-static {}, Lcom/amap/api/col/l3/lj;->a()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/amap/api/col/l3/kt;->m:Lorg/json/JSONArray;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/col/l3/kt;->m:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    sget v2, Lcom/amap/api/col/l3/kt;->k:I

    if-lt v1, v2, :cond_9

    invoke-direct {p0}, Lcom/amap/api/col/l3/kt;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_9
    :goto_2
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    const-string v2, "recordOfflineLocLog"

    invoke-static {v1, v0, v2}, Lcom/amap/api/col/l3/lg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_a
    return-void

    :catchall_1
    move-exception v1

    const-string v2, "doGetLocation"

    invoke-static {v1, v0, v2}, Lcom/amap/api/col/l3/lg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3/kt;->g:Z

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/kt;->j:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/amap/api/col/l3/kt;->e:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/l3/kt;->e:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/amap/api/col/l3/kt;->b:Lcom/amap/api/col/l3/ko;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3/kt;->b:Lcom/amap/api/col/l3/ko;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/ko;->a()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    const-string v1, "LocationService"

    const-string v2, "stopLocation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/lg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final d()V
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3/kt;->c()V

    iget-object v0, p0, Lcom/amap/api/col/l3/kt;->j:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v1, p0, Lcom/amap/api/col/l3/kt;->e:Landroid/os/Handler;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/l3/kt;->e:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    iput-object v2, p0, Lcom/amap/api/col/l3/kt;->e:Landroid/os/Handler;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lcom/amap/api/col/l3/kt;->d:Lcom/amap/api/col/l3/kt$b;

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    :try_start_3
    iget-object v0, p0, Lcom/amap/api/col/l3/kt;->d:Lcom/amap/api/col/l3/kt$b;

    const-class v1, Landroid/os/HandlerThread;

    const-string v3, "quitSafely"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v3, v4}, Lcom/amap/api/col/l3/lh;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    :try_start_4
    iget-object v0, p0, Lcom/amap/api/col/l3/kt;->d:Lcom/amap/api/col/l3/kt$b;

    :goto_0
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/kt;->d:Lcom/amap/api/col/l3/kt$b;

    goto :goto_0

    :cond_2
    :goto_1
    iput-object v2, p0, Lcom/amap/api/col/l3/kt;->d:Lcom/amap/api/col/l3/kt$b;

    iget-object v0, p0, Lcom/amap/api/col/l3/kt;->c:Lcom/amap/api/col/l3/ku;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/ku;->b()V

    invoke-direct {p0}, Lcom/amap/api/col/l3/kt;->f()V

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    const-string v1, "LocationService"

    const-string v2, "destroy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/lg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
