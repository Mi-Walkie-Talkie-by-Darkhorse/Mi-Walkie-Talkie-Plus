.class public Lcom/amap/api/location/AMapLocationClient;
.super Ljava/lang/Object;
.source "AMapLocationClient.java"


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/amap/api/location/LocationManagerBase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/location/AMapLocationClient;->a(Landroid/content/Context;Landroid/content/Intent;)Lcom/amap/api/location/LocationManagerBase;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->b:Lcom/amap/api/location/LocationManagerBase;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    const-string v2, "AMapLocationClient 2"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->a:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/amap/api/location/AMapLocationClient;->a(Landroid/content/Context;Landroid/content/Intent;)Lcom/amap/api/location/LocationManagerBase;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->b:Lcom/amap/api/location/LocationManagerBase;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Landroid/content/Intent;)Lcom/amap/api/location/LocationManagerBase;
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/sl/fq;->b()Lcom/amap/api/col/sl/bz;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/amap/api/col/sl/fw;->a(Landroid/content/Context;Lcom/amap/api/col/sl/bz;)V

    invoke-static {p0}, Lcom/amap/api/col/sl/fw;->c(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0}, Lcom/amap/api/col/sl/fw;->a(Landroid/content/Context;)V

    if-eqz v0, :cond_1

    const-string v0, "IY29tLmFtYXAuYXBpLmxvY2F0aW9uLkxvY2F0aW9uTWFuYWdlcldyYXBwZXI="

    invoke-static {v0}, Lcom/amap/api/col/sl/ca;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/amap/api/col/sl/d;

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v0

    const/4 v0, 0x1

    const-class v5, Landroid/content/Intent;

    aput-object v5, v4, v0

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, v5, v0

    const/4 v0, 0x1

    aput-object p1, v5, v0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/amap/api/col/sl/cy;->a(Landroid/content/Context;Lcom/amap/api/col/sl/bz;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/LocationManagerBase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/sl/d;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/col/sl/d;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-object v0

    :cond_1
    :try_start_1
    new-instance v0, Lcom/amap/api/col/sl/d;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/col/sl/d;-><init>(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/amap/api/col/sl/d;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/col/sl/d;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static setApiKey(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    sput-object p0, Lcom/amap/api/location/AMapLocationClientOption;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationClient"

    const-string v2, "setApiKey"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public disableBackgroundLocation(Z)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->b:Lcom/amap/api/location/LocationManagerBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->b:Lcom/amap/api/location/LocationManagerBase;

    invoke-interface {v0, p1}, Lcom/amap/api/location/LocationManagerBase;->disableBackgroundLocation(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationClient"

    const-string v2, "disableBackgroundLocation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public enableBackgroundLocation(ILandroid/app/Notification;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->b:Lcom/amap/api/location/LocationManagerBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->b:Lcom/amap/api/location/LocationManagerBase;

    invoke-interface {v0, p1, p2}, Lcom/amap/api/location/LocationManagerBase;->enableBackgroundLocation(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationClient"

    const-string v2, "enableBackgroundLocation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getLastKnownLocation()Lcom/amap/api/location/AMapLocation;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->b:Lcom/amap/api/location/LocationManagerBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->b:Lcom/amap/api/location/LocationManagerBase;

    invoke-interface {v0}, Lcom/amap/api/location/LocationManagerBase;->getLastKnownLocation()Lcom/amap/api/location/AMapLocation;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationClient"

    const-string v2, "getLastKnownLocation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "3.8.0"

    return-object v0
.end method

.method public isStarted()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->b:Lcom/amap/api/location/LocationManagerBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->b:Lcom/amap/api/location/LocationManagerBase;

    invoke-interface {v0}, Lcom/amap/api/location/LocationManagerBase;->isStarted()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationClient"

    const-string v2, "isStarted"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->b:Lcom/amap/api/location/LocationManagerBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->b:Lcom/amap/api/location/LocationManagerBase;

    invoke-interface {v0}, Lcom/amap/api/location/LocationManagerBase;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationClient"

    const-string v2, "onDestroy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setLocationListener(Lcom/amap/api/location/AMapLocationListener;)V
    .locals 3

    if-nez p1, :cond_1

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

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->b:Lcom/amap/api/location/LocationManagerBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->b:Lcom/amap/api/location/LocationManagerBase;

    invoke-interface {v0, p1}, Lcom/amap/api/location/LocationManagerBase;->setLocationListener(Lcom/amap/api/location/AMapLocationListener;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V
    .locals 3

    if-nez p1, :cond_1

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

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->b:Lcom/amap/api/location/LocationManagerBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->b:Lcom/amap/api/location/LocationManagerBase;

    invoke-interface {v0, p1}, Lcom/amap/api/location/LocationManagerBase;->setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public startAssistantLocation()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->b:Lcom/amap/api/location/LocationManagerBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->b:Lcom/amap/api/location/LocationManagerBase;

    invoke-interface {v0}, Lcom/amap/api/location/LocationManagerBase;->startAssistantLocation()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationClient"

    const-string v2, "startAssistantLocation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startAssistantLocation(Landroid/webkit/WebView;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->b:Lcom/amap/api/location/LocationManagerBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->b:Lcom/amap/api/location/LocationManagerBase;

    invoke-interface {v0, p1}, Lcom/amap/api/location/LocationManagerBase;->startAssistantLocation(Landroid/webkit/WebView;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationClient"

    const-string v2, "startAssistantLocation1"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startLocation()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->b:Lcom/amap/api/location/LocationManagerBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->b:Lcom/amap/api/location/LocationManagerBase;

    invoke-interface {v0}, Lcom/amap/api/location/LocationManagerBase;->startLocation()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationClient"

    const-string v2, "startLocation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopAssistantLocation()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->b:Lcom/amap/api/location/LocationManagerBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->b:Lcom/amap/api/location/LocationManagerBase;

    invoke-interface {v0}, Lcom/amap/api/location/LocationManagerBase;->stopAssistantLocation()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationClient"

    const-string v2, "stopAssistantLocation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopLocation()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->b:Lcom/amap/api/location/LocationManagerBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->b:Lcom/amap/api/location/LocationManagerBase;

    invoke-interface {v0}, Lcom/amap/api/location/LocationManagerBase;->stopLocation()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationClient"

    const-string v2, "stopLocation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unRegisterLocationListener(Lcom/amap/api/location/AMapLocationListener;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->b:Lcom/amap/api/location/LocationManagerBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->b:Lcom/amap/api/location/LocationManagerBase;

    invoke-interface {v0, p1}, Lcom/amap/api/location/LocationManagerBase;->unRegisterLocationListener(Lcom/amap/api/location/AMapLocationListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationClient"

    const-string v2, "unRegisterLocationListener"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
