.class public Lcom/autonavi/amap/mapcore/Inner_3dMap_location;
.super Landroid/location/Location;
.source "Inner_3dMap_location.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final ERROR_CODE_FAILURE_AUTH:I = 0x7

.field public static final ERROR_CODE_FAILURE_CELL:I = 0xb

.field public static final ERROR_CODE_FAILURE_CONNECTION:I = 0x4

.field public static final ERROR_CODE_FAILURE_INIT:I = 0x9

.field public static final ERROR_CODE_FAILURE_LOCATION:I = 0x6

.field public static final ERROR_CODE_FAILURE_LOCATION_PARAMETER:I = 0x3

.field public static final ERROR_CODE_FAILURE_LOCATION_PERMISSION:I = 0xc

.field public static final ERROR_CODE_FAILURE_NOENOUGHSATELLITES:I = 0xe

.field public static final ERROR_CODE_FAILURE_NOWIFIANDAP:I = 0xd

.field public static final ERROR_CODE_FAILURE_PARSER:I = 0x5

.field public static final ERROR_CODE_FAILURE_SIMULATION_LOCATION:I = 0xf

.field public static final ERROR_CODE_FAILURE_WIFI_INFO:I = 0x2

.field public static final ERROR_CODE_INVALID_PARAMETER:I = 0x1

.field public static final ERROR_CODE_SERVICE_FAIL:I = 0xa

.field public static final ERROR_CODE_UNKNOWN:I = 0x8

.field public static final GPS_ACCURACY_BAD:I = 0x0

.field public static final GPS_ACCURACY_GOOD:I = 0x1

.field public static final GPS_ACCURACY_UNKNOWN:I = -0x1

.field public static final LOCATION_SUCCESS:I = 0x0

.field public static final LOCATION_TYPE_AMAP:I = 0x7

.field public static final LOCATION_TYPE_CELL:I = 0x6

.field public static final LOCATION_TYPE_FAST:I = 0x3

.field public static final LOCATION_TYPE_FIX_CACHE:I = 0x4

.field public static final LOCATION_TYPE_GPS:I = 0x1

.field public static final LOCATION_TYPE_OFFLINE:I = 0x8

.field public static final LOCATION_TYPE_SAME_REQ:I = 0x2

.field public static final LOCATION_TYPE_WIFI:I = 0x5


# instance fields
.field private adCode:Ljava/lang/String;

.field private address:Ljava/lang/String;

.field private aoiName:Ljava/lang/String;

.field protected buildingId:Ljava/lang/String;

.field private city:Ljava/lang/String;

.field private cityCode:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field protected desc:Ljava/lang/String;

.field private district:Ljava/lang/String;

.field private errorCode:I

.field private errorInfo:Ljava/lang/String;

.field protected floor:Ljava/lang/String;

.field private isOffset:Z

.field private latitude:D

.field private locationDetail:Ljava/lang/String;

.field private locationType:I

.field private longitude:D

.field private number:Ljava/lang/String;

.field private poiName:Ljava/lang/String;

.field private province:Ljava/lang/String;

.field private road:Ljava/lang/String;

.field private satellites:I

.field private signalIntensity:I

.field private street:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/location/Location;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->province:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->city:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->district:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->cityCode:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->adCode:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->address:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->poiName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->country:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->road:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->street:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->number:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->isOffset:Z

    iput v1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->errorCode:I

    const-string v0, "success"

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->errorInfo:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->locationDetail:Ljava/lang/String;

    iput v1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->locationType:I

    iput-wide v2, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->latitude:D

    iput-wide v2, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->longitude:D

    iput v1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->satellites:I

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->aoiName:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->signalIntensity:I

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->buildingId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->floor:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->desc:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->latitude:D

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->longitude:D

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->province:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->city:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->district:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->cityCode:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->adCode:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->address:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->poiName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->country:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->road:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->street:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->number:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->isOffset:Z

    iput v1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->errorCode:I

    const-string v0, "success"

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->errorInfo:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->locationDetail:Ljava/lang/String;

    iput v1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->locationType:I

    iput-wide v2, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->latitude:D

    iput-wide v2, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->longitude:D

    iput v1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->satellites:I

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->aoiName:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->signalIntensity:I

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->buildingId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->floor:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->desc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clone()Lcom/autonavi/amap/mapcore/Inner_3dMap_location;
    .locals 4

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;

    invoke-direct {v0, p0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;-><init>(Landroid/location/Location;)V

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->province:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setProvince(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->city:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setCity(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->district:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setDistrict(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->cityCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setCityCode(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->adCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setAdCode(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setAddress(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->poiName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setPoiName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->country:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setCountry(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->road:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setRoad(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->street:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setStreet(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setNumber(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->isOffset:Z

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setOffset(Z)V

    iget v1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->errorCode:I

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setErrorCode(I)V

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->errorInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setErrorInfo(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->locationDetail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setLocationDetail(Ljava/lang/String;)V

    iget v1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->locationType:I

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setLocationType(I)V

    iget-wide v2, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->latitude:D

    invoke-virtual {v0, v2, v3}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setLatitude(D)V

    iget-wide v2, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->longitude:D

    invoke-virtual {v0, v2, v3}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setLongitude(D)V

    iget v1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->satellites:I

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setSatellites(I)V

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->aoiName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setAoiName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->buildingId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setBuildingId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->floor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setFloor(Ljava/lang/String;)V

    iget v1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->signalIntensity:I

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setGpsAccuracyStatus(I)V

    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setExtras(Landroid/os/Bundle;)V

    return-object v0

    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->clone()Lcom/autonavi/amap/mapcore/Inner_3dMap_location;

    move-result-object v0

    return-object v0
.end method

.method public getAccuracy()F
    .locals 1

    invoke-super {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    return v0
.end method

.method public getAdCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->adCode:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getAltitude()D
    .locals 2

    invoke-super {p0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getAoiName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->aoiName:Ljava/lang/String;

    return-object v0
.end method

.method public getBearing()F
    .locals 1

    invoke-super {p0}, Landroid/location/Location;->getBearing()F

    move-result v0

    return v0
.end method

.method public getBuildingId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->buildingId:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCityCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->cityCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getDistrict()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->district:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->errorCode:I

    return v0
.end method

.method public getErrorInfo()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->errorInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->errorCode:I

    if-eqz v1, :cond_0

    const-string v1, " \u8bf7\u5230http://lbs.amap.com/api/android-location-sdk/guide/utilities/errorcode/\u67e5\u770b\u9519\u8bef\u7801\u8bf4\u660e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ",\u9519\u8bef\u8be6\u7ec6\u4fe1\u606f:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->locationDetail:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->errorInfo:Ljava/lang/String;

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->errorInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getFloor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->floor:Ljava/lang/String;

    return-object v0
.end method

.method public getGpsAccuracyStatus()I
    .locals 1

    iget v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->signalIntensity:I

    return v0
.end method

.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->latitude:D

    return-wide v0
.end method

.method public getLocationDetail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->locationDetail:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationType()I
    .locals 1

    iget v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->locationType:I

    return v0
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->longitude:D

    return-wide v0
.end method

.method public getPoiName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->poiName:Ljava/lang/String;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->province:Ljava/lang/String;

    return-object v0
.end method

.method public getRoad()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->road:Ljava/lang/String;

    return-object v0
.end method

.method public getSatellites()I
    .locals 1

    iget v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->satellites:I

    return v0
.end method

.method public getSpeed()F
    .locals 1

    invoke-super {p0}, Landroid/location/Location;->getSpeed()F

    move-result v0

    return v0
.end method

.method public getStreet()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->street:Ljava/lang/String;

    return-object v0
.end method

.method public getStreetNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->number:Ljava/lang/String;

    return-object v0
.end method

.method public isOffset()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->isOffset:Z

    return v0
.end method

.method public setAdCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->adCode:Ljava/lang/String;

    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->address:Ljava/lang/String;

    return-void
.end method

.method public setAoiName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->aoiName:Ljava/lang/String;

    return-void
.end method

.method public setBuildingId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->buildingId:Ljava/lang/String;

    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->city:Ljava/lang/String;

    return-void
.end method

.method public setCityCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->cityCode:Ljava/lang/String;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->country:Ljava/lang/String;

    return-void
.end method

.method public setDistrict(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->district:Ljava/lang/String;

    return-void
.end method

.method public setErrorCode(I)V
    .locals 1

    iget v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->errorCode:I

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/amap/api/mapcore/util/jg;->b(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->errorInfo:Ljava/lang/String;

    iput p1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->errorCode:I

    goto :goto_0
.end method

.method public setErrorInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->errorInfo:Ljava/lang/String;

    return-void
.end method

.method public setFloor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->floor:Ljava/lang/String;

    return-void
.end method

.method public setGpsAccuracyStatus(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->signalIntensity:I

    return-void
.end method

.method public setLatitude(D)V
    .locals 1

    iput-wide p1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->latitude:D

    return-void
.end method

.method public setLocationDetail(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->locationDetail:Ljava/lang/String;

    return-void
.end method

.method public setLocationType(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->locationType:I

    return-void
.end method

.method public setLongitude(D)V
    .locals 1

    iput-wide p1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->longitude:D

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->number:Ljava/lang/String;

    return-void
.end method

.method public setOffset(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->isOffset:Z

    return-void
.end method

.method public setPoiName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->poiName:Ljava/lang/String;

    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->province:Ljava/lang/String;

    return-void
.end method

.method public setRoad(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->road:Ljava/lang/String;

    return-void
.end method

.method public setSatellites(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->satellites:I

    return-void
.end method

.method public setStreet(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->street:Ljava/lang/String;

    return-void
.end method

.method protected toJson(I)Lorg/json/JSONObject;
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    :try_start_1
    const-string v1, "altitude"

    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getAltitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "speed"

    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getSpeed()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "bearing"

    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getBearing()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    const-string v1, "citycode"

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->cityCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "desc"

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "adcode"

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->adCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "country"

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->country:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "province"

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->province:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "city"

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->city:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "district"

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->district:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "road"

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->road:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "street"

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->street:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "number"

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->number:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "poiname"

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->poiName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "errorCode"

    iget v2, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->errorCode:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "errorInfo"

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->errorInfo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "locationType"

    iget v2, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->locationType:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "locationDetail"

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->locationDetail:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "aoiname"

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->aoiName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "address"

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->address:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "poiid"

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->buildingId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "floor"

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->floor:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :pswitch_1
    const-string v1, "time"

    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :pswitch_2
    const-string v1, "provider"

    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "lon"

    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "lat"

    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "accuracy"

    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getAccuracy()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "isOffset"

    iget-boolean v2, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->isOffset:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    const/4 v0, 0x0

    const-string v2, "AmapLoc"

    const-string v3, "toStr"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v1

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public toStr()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->toStr(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStr(I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->toJson(I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-nez v1, :cond_0

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "AMapLocation"

    const-string v3, "toStr part2"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "latitude="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->latitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "longitude="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->longitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "province="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->province:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "city="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->city:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "district="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->district:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cityCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->cityCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "adCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->adCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "address="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "country="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->country:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "road="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->road:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "poiName="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->poiName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "street="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->street:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "streetNum="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "aoiName="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->aoiName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "poiid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->buildingId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "floor="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->floor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "errorCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->errorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "errorInfo="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->errorInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "locationDetail="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->locationDetail:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "locationType="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->locationType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
