.class public Lcom/ifengyu/intercom/ui/map/d/a/d;
.super Ljava/lang/Object;
.source "MyLocationProvider.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;


# instance fields
.field a:Lcom/amap/api/location/AMapLocationListener;

.field private final b:Landroid/hardware/SensorManager;

.field private final c:Landroid/hardware/Sensor;

.field private d:Lcom/amap/api/location/AMapLocationClient;

.field private e:Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

.field private f:Lcom/amap/api/location/AMapLocation;

.field private g:F

.field private h:Z

.field private i:J

.field private j:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ifengyu/intercom/ui/map/d/a/d$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/map/d/a/d$1;-><init>(Lcom/ifengyu/intercom/ui/map/d/a/d;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/d/a/d;->a:Lcom/amap/api/location/AMapLocationListener;

    new-instance v0, Lcom/amap/api/location/AMapLocationClient;

    invoke-direct {v0, p1}, Lcom/amap/api/location/AMapLocationClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/d/a/d;->d:Lcom/amap/api/location/AMapLocationClient;

    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    sget-object v1, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Hight_Accuracy:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setLocationMode(Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;)Lcom/amap/api/location/AMapLocationClientOption;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/location/AMapLocationClientOption;->setInterval(J)Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v5}, Lcom/amap/api/location/AMapLocationClientOption;->setNeedAddress(Z)Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v4}, Lcom/amap/api/location/AMapLocationClientOption;->setGpsFirst(Z)Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v4}, Lcom/amap/api/location/AMapLocationClientOption;->setOnceLocation(Z)Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v4}, Lcom/amap/api/location/AMapLocationClientOption;->setOnceLocationLatest(Z)Lcom/amap/api/location/AMapLocationClientOption;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/location/AMapLocationClientOption;->setHttpTimeOut(J)Lcom/amap/api/location/AMapLocationClientOption;

    sget-object v1, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;->HTTP:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    invoke-static {v1}, Lcom/amap/api/location/AMapLocationClientOption;->setLocationProtocol(Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;)V

    invoke-virtual {v0, v4}, Lcom/amap/api/location/AMapLocationClientOption;->setSensorEnable(Z)Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v5}, Lcom/amap/api/location/AMapLocationClientOption;->setWifiScan(Z)Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v5}, Lcom/amap/api/location/AMapLocationClientOption;->setLocationCacheEnable(Z)Lcom/amap/api/location/AMapLocationClientOption;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/d/a/d;->d:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocationClient;->setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/d/a/d;->d:Lcom/amap/api/location/AMapLocationClient;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/d/a/d;->a:Lcom/amap/api/location/AMapLocationListener;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClient;->setLocationListener(Lcom/amap/api/location/AMapLocationListener;)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/MiTalkiApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/d/a/d;->b:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/d/a/d;->b:Landroid/hardware/SensorManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/d/a/d;->c:Landroid/hardware/Sensor;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/map/d/a/d;Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocation;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/d/a/d;->f:Lcom/amap/api/location/AMapLocation;

    return-object p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/map/d/a/d;)Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/d/a/d;->e:Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

    return-object v0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/map/d/a/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/map/d/a/d;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/map/d/a/d;)Lcom/amap/api/location/AMapLocation;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/d/a/d;->f:Lcom/amap/api/location/AMapLocation;

    return-object v0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/map/d/a/d;)F
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/map/d/a/d;->g:F

    return v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/map/d/a/d;->h:Z

    return v0
.end method

.method public destroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/d/a/d;->d:Lcom/amap/api/location/AMapLocationClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/d/a/d;->d:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->onDestroy()V

    :cond_0
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/map/d/a/d;->d:Lcom/amap/api/location/AMapLocationClient;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/map/d/a/d;->f:Lcom/amap/api/location/AMapLocation;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/map/d/a/d;->e:Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

    return-void
.end method

.method public getLastKnownLocation()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/d/a/d;->f:Lcom/amap/api/location/AMapLocation;

    return-object v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ifengyu/intercom/ui/map/d/a/d;->i:J

    iget-wide v0, p0, Lcom/ifengyu/intercom/ui/map/d/a/d;->i:J

    iget-wide v2, p0, Lcom/ifengyu/intercom/ui/map/d/a/d;->j:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/ui/map/d/a/d;->g:F

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/d/a/d;->f:Lcom/amap/api/location/AMapLocation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/d/a/d;->f:Lcom/amap/api/location/AMapLocation;

    iget v1, p0, Lcom/ifengyu/intercom/ui/map/d/a/d;->g:F

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setBearing(F)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/d/a/d;->e:Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/d/a/d;->f:Lcom/amap/api/location/AMapLocation;

    invoke-interface {v0, v1, p0}, Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;->onLocationChanged(Landroid/location/Location;Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;)V

    :cond_0
    iget-wide v0, p0, Lcom/ifengyu/intercom/ui/map/d/a/d;->i:J

    iput-wide v0, p0, Lcom/ifengyu/intercom/ui/map/d/a/d;->j:J

    :cond_1
    return-void
.end method

.method public startLocationProvider(Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;)Z
    .locals 3

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/d/a/d;->e:Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/d/a/d;->d:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->startLocation()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/d/a/d;->b:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/d/a/d;->c:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 v0, 0x1

    return v0
.end method

.method public stopLocationProvider()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/d/a/d;->e:Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/d/a/d;->d:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->stopLocation()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/d/a/d;->b:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method
