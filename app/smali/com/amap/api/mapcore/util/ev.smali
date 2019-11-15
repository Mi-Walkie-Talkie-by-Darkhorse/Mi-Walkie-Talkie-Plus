.class public Lcom/amap/api/mapcore/util/ev;
.super Ljava/lang/Object;
.source "AMapLocationClient.java"


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationManagerBase;

.field c:Ljava/lang/Object;

.field d:Z

.field e:Ljava/lang/Object;

.field f:Lcom/amap/api/mapcore/util/fx;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/ev;->b:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationManagerBase;

    iput-object v1, p0, Lcom/amap/api/mapcore/util/ev;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/ev;->d:Z

    iput-object v1, p0, Lcom/amap/api/mapcore/util/ev;->e:Ljava/lang/Object;

    iput-object v1, p0, Lcom/amap/api/mapcore/util/ev;->f:Lcom/amap/api/mapcore/util/fx;

    :try_start_0
    invoke-static {}, Lcom/amap/api/mapcore/util/it;->a()Lcom/amap/api/mapcore/util/fx;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ev;->f:Lcom/amap/api/mapcore/util/fx;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/ev;->a(Landroid/content/Context;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 5

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context\u53c2\u6570\u4e0d\u80fd\u4e3anull"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationClient"

    const-string v2, "AMapLocationClient 1"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ev;->a:Landroid/content/Context;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    const-string v0, "com.amap.api.location.AMapLocationClient"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ev;->a:Landroid/content/Context;

    const-string v3, "com.amap.api.location.APSService"

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v0, 0x0

    :try_start_3
    iget-object v3, p0, Lcom/amap/api/mapcore/util/ev;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    :goto_1
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/ev;->d:Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :cond_1
    :goto_2
    :try_start_5
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/ev;->d:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/amap/api/location/AMapLocationClient;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ev;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/location/AMapLocationClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ev;->c:Ljava/lang/Object;

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/ev;->d:Z

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ev;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/ev;->b(Landroid/content/Context;)Lcom/autonavi/amap/mapcore/Inner_3dMap_locationManagerBase;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ev;->b:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationManagerBase;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    :catch_2
    move-exception v2

    goto :goto_1
.end method

.method private b(Landroid/content/Context;)Lcom/autonavi/amap/mapcore/Inner_3dMap_locationManagerBase;
    .locals 6

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ev;->f:Lcom/amap/api/mapcore/util/fx;

    const-string v0, "YY29tLmFtYXAuYXBpLndyYXBwZXIuSW5uZXJfM2RNYXBfbG9jYXRpb25NYW5hZ2VyV3JhcHBlcg=="

    invoke-static {v0}, Lcom/amap/api/mapcore/util/fy;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/amap/api/mapcore/util/in;

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v0

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/amap/api/mapcore/util/ha;->a(Landroid/content/Context;Lcom/amap/api/mapcore/util/fx;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationManagerBase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/mapcore/util/in;

    invoke-direct {v0, p1}, Lcom/amap/api/mapcore/util/in;-><init>(Landroid/content/Context;)V

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/amap/api/mapcore/util/in;

    invoke-direct {v0, p1}, Lcom/amap/api/mapcore/util/in;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/ev;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ev;->c:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->startLocation()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ev;->b:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationManagerBase;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationManagerBase;->startLocation()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationClient"

    const-string v2, "startLocation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/autonavi/amap/mapcore/Inner_3dMap_locationListener;)V
    .locals 3

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener\u53c2\u6570\u4e0d\u80fd\u4e3anull"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationClient"

    const-string v2, "setLocationListener"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/ev;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ev;->c:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/amap/api/mapcore/util/ii;->a(Ljava/lang/Object;Lcom/autonavi/amap/mapcore/Inner_3dMap_locationListener;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ev;->b:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationManagerBase;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationManagerBase;->setLocationListener(Lcom/autonavi/amap/mapcore/Inner_3dMap_locationListener;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public a(Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;)V
    .locals 3

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "LocationManagerOption\u53c2\u6570\u4e0d\u80fd\u4e3anull"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationClient"

    const-string v2, "setLocationOption"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/ev;->d:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/amap/api/mapcore/util/ii;->a()Lcom/amap/api/location/AMapLocationClientOption;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/amap/api/mapcore/util/ii;->a(Lcom/amap/api/location/AMapLocationClientOption;Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ev;->c:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClient;->setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ev;->b:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationManagerBase;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationManagerBase;->setLocationOption(Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public b()V
    .locals 3

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/ev;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ev;->c:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->stopLocation()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ev;->b:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationManagerBase;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationManagerBase;->stopLocation()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationClient"

    const-string v2, "stopLocation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c()V
    .locals 3

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/ev;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ev;->c:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->onDestroy()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ev;->b:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationManagerBase;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationManagerBase;->destroy()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationClient"

    const-string v2, "onDestroy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
