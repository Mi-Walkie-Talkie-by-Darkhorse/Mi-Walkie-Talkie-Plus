.class public final Lcom/amap/api/col/l3/ap;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amap/api/maps/LocationSource;
.implements Lcom/autonavi/amap/mapcore/Inner_3dMap_locationListener;


# instance fields
.field a:Z

.field b:J

.field private c:Landroid/os/Bundle;

.field private d:Lcom/amap/api/maps/LocationSource$OnLocationChangedListener;

.field private e:Lcom/amap/api/col/l3/fc;

.field private f:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

.field private g:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3/ap;->c:Landroid/os/Bundle;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3/ap;->a:Z

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/amap/api/col/l3/ap;->b:J

    iput-object p1, p0, Lcom/amap/api/col/l3/ap;->g:Landroid/content/Context;

    return-void
.end method

.method private a(Z)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3/ap;->f:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3/ap;->e:Lcom/amap/api/col/l3/fc;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amap/api/col/l3/fc;->c()V

    new-instance v0, Lcom/amap/api/col/l3/fc;

    iget-object v1, p0, Lcom/amap/api/col/l3/ap;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/col/l3/fc;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/ap;->e:Lcom/amap/api/col/l3/fc;

    invoke-virtual {v0, p0}, Lcom/amap/api/col/l3/fc;->a(Lcom/autonavi/amap/mapcore/Inner_3dMap_locationListener;)V

    iget-object v0, p0, Lcom/amap/api/col/l3/ap;->f:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->setOnceLocation(Z)Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/ap;->f:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    iget-wide v1, p0, Lcom/amap/api/col/l3/ap;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->setInterval(J)Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/ap;->e:Lcom/amap/api/col/l3/fc;

    iget-object v1, p0, Lcom/amap/api/col/l3/ap;->f:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3/fc;->a(Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;)V

    iget-object v0, p0, Lcom/amap/api/col/l3/ap;->e:Lcom/amap/api/col/l3/fc;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/fc;->a()V

    :cond_1
    iput-boolean p1, p0, Lcom/amap/api/col/l3/ap;->a:Z

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/ap;->a(Z)V

    return-void

    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lcom/amap/api/col/l3/ap;->a(Z)V

    return-void
.end method

.method public final a(J)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3/ap;->f:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/l3/ap;->e:Lcom/amap/api/col/l3/fc;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->getInterval()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/ap;->f:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->setInterval(J)Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    iget-object v0, p0, Lcom/amap/api/col/l3/ap;->e:Lcom/amap/api/col/l3/fc;

    iget-object v1, p0, Lcom/amap/api/col/l3/ap;->f:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3/fc;->a(Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;)V

    :cond_0
    iput-wide p1, p0, Lcom/amap/api/col/l3/ap;->b:J

    return-void
.end method

.method public final activate(Lcom/amap/api/maps/LocationSource$OnLocationChangedListener;)V
    .locals 2

    iput-object p1, p0, Lcom/amap/api/col/l3/ap;->d:Lcom/amap/api/maps/LocationSource$OnLocationChangedListener;

    iget-object p1, p0, Lcom/amap/api/col/l3/ap;->e:Lcom/amap/api/col/l3/fc;

    if-nez p1, :cond_0

    new-instance p1, Lcom/amap/api/col/l3/fc;

    iget-object v0, p0, Lcom/amap/api/col/l3/ap;->g:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/amap/api/col/l3/fc;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amap/api/col/l3/ap;->e:Lcom/amap/api/col/l3/fc;

    new-instance p1, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-direct {p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3/ap;->f:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    iget-object p1, p0, Lcom/amap/api/col/l3/ap;->e:Lcom/amap/api/col/l3/fc;

    invoke-virtual {p1, p0}, Lcom/amap/api/col/l3/fc;->a(Lcom/autonavi/amap/mapcore/Inner_3dMap_locationListener;)V

    iget-object p1, p0, Lcom/amap/api/col/l3/ap;->f:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    iget-wide v0, p0, Lcom/amap/api/col/l3/ap;->b:J

    invoke-virtual {p1, v0, v1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->setInterval(J)Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    iget-object p1, p0, Lcom/amap/api/col/l3/ap;->f:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    iget-boolean v0, p0, Lcom/amap/api/col/l3/ap;->a:Z

    invoke-virtual {p1, v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->setOnceLocation(Z)Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    iget-object p1, p0, Lcom/amap/api/col/l3/ap;->f:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    sget-object v0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;->Hight_Accuracy:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;

    invoke-virtual {p1, v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->setLocationMode(Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;)Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    iget-object p1, p0, Lcom/amap/api/col/l3/ap;->e:Lcom/amap/api/col/l3/fc;

    iget-object v0, p0, Lcom/amap/api/col/l3/ap;->f:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-virtual {p1, v0}, Lcom/amap/api/col/l3/fc;->a(Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;)V

    iget-object p1, p0, Lcom/amap/api/col/l3/ap;->e:Lcom/amap/api/col/l3/fc;

    invoke-virtual {p1}, Lcom/amap/api/col/l3/fc;->a()V

    :cond_0
    return-void
.end method

.method public final deactivate()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3/ap;->d:Lcom/amap/api/maps/LocationSource$OnLocationChangedListener;

    iget-object v1, p0, Lcom/amap/api/col/l3/ap;->e:Lcom/amap/api/col/l3/fc;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/amap/api/col/l3/fc;->b()V

    iget-object v1, p0, Lcom/amap/api/col/l3/ap;->e:Lcom/amap/api/col/l3/fc;

    invoke-virtual {v1}, Lcom/amap/api/col/l3/fc;->c()V

    :cond_0
    iput-object v0, p0, Lcom/amap/api/col/l3/ap;->e:Lcom/amap/api/col/l3/fc;

    return-void
.end method

.method public final onLocationChanged(Lcom/autonavi/amap/mapcore/Inner_3dMap_location;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/ap;->d:Lcom/amap/api/maps/LocationSource$OnLocationChangedListener;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3/ap;->c:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3/ap;->c:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/ap;->c:Landroid/os/Bundle;

    const-string v1, "errorCode"

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getErrorCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/amap/api/col/l3/ap;->c:Landroid/os/Bundle;

    const-string v1, "errorInfo"

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getErrorInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/l3/ap;->c:Landroid/os/Bundle;

    const-string v1, "locationType"

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getLocationType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/amap/api/col/l3/ap;->c:Landroid/os/Bundle;

    const-string v1, "Accuracy"

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getAccuracy()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v0, p0, Lcom/amap/api/col/l3/ap;->c:Landroid/os/Bundle;

    const-string v1, "AdCode"

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getAdCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/l3/ap;->c:Landroid/os/Bundle;

    const-string v1, "Address"

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/l3/ap;->c:Landroid/os/Bundle;

    const-string v1, "AoiName"

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getAoiName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/l3/ap;->c:Landroid/os/Bundle;

    const-string v1, "City"

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/l3/ap;->c:Landroid/os/Bundle;

    const-string v1, "CityCode"

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getCityCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/l3/ap;->c:Landroid/os/Bundle;

    const-string v1, "Country"

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/l3/ap;->c:Landroid/os/Bundle;

    const-string v1, "District"

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getDistrict()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/l3/ap;->c:Landroid/os/Bundle;

    const-string v1, "Street"

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getStreet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/l3/ap;->c:Landroid/os/Bundle;

    const-string v1, "StreetNum"

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getStreetNum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/l3/ap;->c:Landroid/os/Bundle;

    const-string v1, "PoiName"

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getPoiName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/l3/ap;->c:Landroid/os/Bundle;

    const-string v1, "Province"

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getProvince()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/l3/ap;->c:Landroid/os/Bundle;

    const-string v1, "Speed"

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getSpeed()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v0, p0, Lcom/amap/api/col/l3/ap;->c:Landroid/os/Bundle;

    const-string v1, "Floor"

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getFloor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/l3/ap;->c:Landroid/os/Bundle;

    const-string v1, "Bearing"

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getBearing()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v0, p0, Lcom/amap/api/col/l3/ap;->c:Landroid/os/Bundle;

    const-string v1, "BuildingId"

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getBuildingId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/l3/ap;->c:Landroid/os/Bundle;

    const-string v1, "Altitude"

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getAltitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    iget-object v0, p0, Lcom/amap/api/col/l3/ap;->c:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/amap/api/col/l3/ap;->d:Lcom/amap/api/maps/LocationSource$OnLocationChangedListener;

    invoke-interface {v0, p1}, Lcom/amap/api/maps/LocationSource$OnLocationChangedListener;->onLocationChanged(Landroid/location/Location;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
