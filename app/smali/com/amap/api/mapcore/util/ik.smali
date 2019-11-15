.class public final Lcom/amap/api/mapcore/util/ik;
.super Ljava/lang/Object;
.source "LocationListener.java"

# interfaces
.implements Lcom/amap/api/location/AMapLocationListener;


# instance fields
.field public a:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ik;->a:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationListener;

    return-void
.end method

.method private static a(Lcom/autonavi/amap/mapcore/Inner_3dMap_location;Lcom/amap/api/location/AMapLocation;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setLatitude(D)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setLongitude(D)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setAccuracy(F)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getBearing()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setBearing(F)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAltitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setAltitude(D)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getProvider()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setProvider(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getSpeed()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setSpeed(F)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setTime(J)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setErrorCode(I)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setErrorInfo(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setLocationType(I)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLocationDetail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setLocationDetail(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getProvince()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setProvince(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setCity(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getCityCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setCityCode(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setCountry(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getDistrict()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setDistrict(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setAddress(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAdCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setAdCode(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setExtras(Landroid/os/Bundle;)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getRoad()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setRoad(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LocationListener"

    const-string v2, "converterLocation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/autonavi/amap/mapcore/Inner_3dMap_locationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/ik;->a:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationListener;

    return-void
.end method

.method public final onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/amap/api/mapcore/util/ik;->a(Lcom/autonavi/amap/mapcore/Inner_3dMap_location;Lcom/amap/api/location/AMapLocation;)V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ik;->a:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationListener;

    invoke-interface {v1, v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationListener;->onLocationChanged(Lcom/autonavi/amap/mapcore/Inner_3dMap_location;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LocationListener"

    const-string v2, "onLocationChanged"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
