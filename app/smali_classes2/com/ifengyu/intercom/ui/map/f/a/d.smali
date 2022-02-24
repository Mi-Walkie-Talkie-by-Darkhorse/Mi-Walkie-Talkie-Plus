.class public Lcom/ifengyu/intercom/ui/map/f/a/d;
.super Ljava/lang/Object;
.source "MyLocationProvider.java"

# interfaces
.implements Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private final a:Landroid/hardware/SensorManager;

.field private final b:Landroid/hardware/Sensor;

.field private c:Lcom/amap/api/location/AMapLocationClient;

.field private d:Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

.field private e:Lcom/amap/api/location/AMapLocation;

.field private f:F

.field private g:Z

.field private h:J

.field private i:J

.field j:Lcom/amap/api/location/AMapLocationListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/ui/map/f/a/d$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/map/f/a/d$a;-><init>(Lcom/ifengyu/intercom/ui/map/f/a/d;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/f/a/d;->j:Lcom/amap/api/location/AMapLocationListener;

    .line 3
    new-instance v0, Lcom/amap/api/location/AMapLocationClient;

    invoke-direct {v0, p1}, Lcom/amap/api/location/AMapLocationClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/f/a/d;->c:Lcom/amap/api/location/AMapLocationClient;

    .line 4
    new-instance p1, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {p1}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    .line 5
    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Hight_Accuracy:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    invoke-virtual {p1, v0}, Lcom/amap/api/location/AMapLocationClientOption;->setLocationMode(Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;)Lcom/amap/api/location/AMapLocationClientOption;

    const-wide/16 v0, 0x7d0

    .line 6
    invoke-virtual {p1, v0, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setInterval(J)Lcom/amap/api/location/AMapLocationClientOption;

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p1, v0}, Lcom/amap/api/location/AMapLocationClientOption;->setNeedAddress(Z)Lcom/amap/api/location/AMapLocationClientOption;

    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setGpsFirst(Z)Lcom/amap/api/location/AMapLocationClientOption;

    .line 9
    invoke-virtual {p1, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setOnceLocation(Z)Lcom/amap/api/location/AMapLocationClientOption;

    .line 10
    invoke-virtual {p1, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setOnceLocationLatest(Z)Lcom/amap/api/location/AMapLocationClientOption;

    const-wide/16 v2, 0x2710

    .line 11
    invoke-virtual {p1, v2, v3}, Lcom/amap/api/location/AMapLocationClientOption;->setHttpTimeOut(J)Lcom/amap/api/location/AMapLocationClientOption;

    .line 12
    sget-object v2, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;->HTTP:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    invoke-static {v2}, Lcom/amap/api/location/AMapLocationClientOption;->setLocationProtocol(Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;)V

    .line 13
    invoke-virtual {p1, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setSensorEnable(Z)Lcom/amap/api/location/AMapLocationClientOption;

    .line 14
    invoke-virtual {p1, v0}, Lcom/amap/api/location/AMapLocationClientOption;->setWifiScan(Z)Lcom/amap/api/location/AMapLocationClientOption;

    .line 15
    invoke-virtual {p1, v0}, Lcom/amap/api/location/AMapLocationClientOption;->setLocationCacheEnable(Z)Lcom/amap/api/location/AMapLocationClientOption;

    .line 16
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/f/a/d;->c:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0, p1}, Lcom/amap/api/location/AMapLocationClient;->setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V

    .line 17
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/f/a/d;->c:Lcom/amap/api/location/AMapLocationClient;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/f/a/d;->j:Lcom/amap/api/location/AMapLocationListener;

    invoke-virtual {p1, v0}, Lcom/amap/api/location/AMapLocationClient;->setLocationListener(Lcom/amap/api/location/AMapLocationListener;)V

    .line 18
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p1

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/f/a/d;->a:Landroid/hardware/SensorManager;

    const/4 v0, 0x3

    .line 19
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/f/a/d;->b:Landroid/hardware/Sensor;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/map/f/a/d;Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocation;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/f/a/d;->e:Lcom/amap/api/location/AMapLocation;

    return-object p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/map/f/a/d;)Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/map/f/a/d;->d:Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

    return-object p0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/map/f/a/d;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/map/f/a/d;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/map/f/a/d;)Lcom/amap/api/location/AMapLocation;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/map/f/a/d;->e:Lcom/amap/api/location/AMapLocation;

    return-object p0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/map/f/a/d;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/ifengyu/intercom/ui/map/f/a/d;->f:F

    return p0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 4
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/map/f/a/d;->g:Z

    return v0
.end method

.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/f/a/d;->c:Lcom/amap/api/location/AMapLocationClient;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->onDestroy()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/f/a/d;->c:Lcom/amap/api/location/AMapLocationClient;

    .line 4
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/f/a/d;->e:Lcom/amap/api/location/AMapLocation;

    .line 5
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/f/a/d;->d:Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

    return-void
.end method

.method public getLastKnownLocation()Landroid/location/Location;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/f/a/d;->e:Lcom/amap/api/location/AMapLocation;

    return-object v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ifengyu/intercom/ui/map/f/a/d;->h:J

    .line 2
    iget-wide v2, p0, Lcom/ifengyu/intercom/ui/map/f/a/d;->i:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 3
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    .line 4
    aget p1, p1, v0

    iput p1, p0, Lcom/ifengyu/intercom/ui/map/f/a/d;->f:F

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/f/a/d;->e:Lcom/amap/api/location/AMapLocation;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Landroid/location/Location;->setBearing(F)V

    .line 7
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/f/a/d;->d:Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/f/a/d;->e:Lcom/amap/api/location/AMapLocation;

    invoke-interface {p1, v0, p0}, Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;->onLocationChanged(Landroid/location/Location;Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;)V

    .line 8
    :cond_0
    iget-wide v0, p0, Lcom/ifengyu/intercom/ui/map/f/a/d;->h:J

    iput-wide v0, p0, Lcom/ifengyu/intercom/ui/map/f/a/d;->i:J

    :cond_1
    return-void
.end method

.method public startLocationProvider(Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;)Z
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/f/a/d;->d:Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/f/a/d;->c:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocationClient;->startLocation()V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/f/a/d;->a:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/f/a/d;->b:Landroid/hardware/Sensor;

    const/4 v1, 0x3

    invoke-virtual {p1, p0, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 p1, 0x1

    return p1
.end method

.method public stopLocationProvider()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/f/a/d;->d:Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/f/a/d;->c:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->stopLocation()V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/f/a/d;->a:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method
