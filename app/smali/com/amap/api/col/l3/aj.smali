.class public final Lcom/amap/api/col/l3/aj;
.super Ljava/lang/Object;


# direct methods
.method public static a()Lcom/autonavi/amap/mapcore/CameraUpdateMessage;
    .locals 2

    new-instance v0, Lcom/amap/api/col/l3/ak;

    invoke-direct {v0}, Lcom/amap/api/col/l3/ak;-><init>()V

    sget-object v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->zoomBy:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    iput-object v1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->nowType:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->amount:F

    return-object v0
.end method

.method public static a(F)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;
    .locals 2

    new-instance v0, Lcom/amap/api/col/l3/ah;

    invoke-direct {v0}, Lcom/amap/api/col/l3/ah;-><init>()V

    sget-object v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->newCameraPosition:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    iput-object v1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->nowType:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    iput p0, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->zoom:F

    return-object v0
.end method

.method public static a(FLandroid/graphics/Point;)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;
    .locals 2

    new-instance v0, Lcom/amap/api/col/l3/ak;

    invoke-direct {v0}, Lcom/amap/api/col/l3/ak;-><init>()V

    sget-object v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->zoomBy:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    iput-object v1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->nowType:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    iput p0, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->amount:F

    iput-object p1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->focus:Landroid/graphics/Point;

    return-object v0
.end method

.method public static a(Landroid/graphics/Point;)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;
    .locals 2

    new-instance v0, Lcom/amap/api/col/l3/ah;

    invoke-direct {v0}, Lcom/amap/api/col/l3/ah;-><init>()V

    sget-object v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->newCameraPosition:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    iput-object v1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->nowType:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    iput-object p0, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->geoPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method public static a(Lcom/amap/api/maps/model/CameraPosition;)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;
    .locals 6

    new-instance v0, Lcom/amap/api/col/l3/ah;

    invoke-direct {v0}, Lcom/amap/api/col/l3/ah;-><init>()V

    sget-object v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->newCameraPosition:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    iput-object v1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->nowType:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    if-eqz p0, :cond_1

    iget-object v1, p0, Lcom/amap/api/maps/model/CameraPosition;->target:Lcom/amap/api/maps/model/LatLng;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v4, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    const/16 v1, 0x14

    invoke-static {v2, v3, v4, v5, v1}, Lcom/autonavi/amap/mapcore/VirtualEarthProjection;->LatLongToPixels(DDI)Landroid/graphics/Point;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->geoPoint:Landroid/graphics/Point;

    iget v1, p0, Lcom/amap/api/maps/model/CameraPosition;->zoom:F

    iput v1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->zoom:F

    iget v1, p0, Lcom/amap/api/maps/model/CameraPosition;->bearing:F

    iput v1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->bearing:F

    iget v1, p0, Lcom/amap/api/maps/model/CameraPosition;->tilt:F

    iput v1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->tilt:F

    iput-object p0, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->cameraPosition:Lcom/amap/api/maps/model/CameraPosition;

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static a(Lcom/amap/api/maps/model/LatLng;F)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;
    .locals 1

    invoke-static {}, Lcom/amap/api/maps/model/CameraPosition;->builder()Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/maps/model/CameraPosition$Builder;->target(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->zoom(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object p0

    const/high16 p1, 0x7fc00000    # Float.NaN

    invoke-virtual {p0, p1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->bearing(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->tilt(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amap/api/maps/model/CameraPosition$Builder;->build()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object p0

    invoke-static {p0}, Lcom/amap/api/col/l3/aj;->a(Lcom/amap/api/maps/model/CameraPosition;)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/amap/api/maps/model/LatLngBounds;I)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;
    .locals 2

    new-instance v0, Lcom/amap/api/col/l3/ag;

    invoke-direct {v0}, Lcom/amap/api/col/l3/ag;-><init>()V

    sget-object v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->newLatLngBounds:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    iput-object v1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->nowType:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    iput-object p0, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->bounds:Lcom/amap/api/maps/model/LatLngBounds;

    iput p1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->paddingLeft:I

    iput p1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->paddingRight:I

    iput p1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->paddingTop:I

    iput p1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->paddingBottom:I

    return-object v0
.end method

.method public static b()Lcom/autonavi/amap/mapcore/CameraUpdateMessage;
    .locals 2

    new-instance v0, Lcom/amap/api/col/l3/ak;

    invoke-direct {v0}, Lcom/amap/api/col/l3/ak;-><init>()V

    sget-object v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->zoomBy:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    iput-object v1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->nowType:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->amount:F

    return-object v0
.end method

.method public static b(F)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;
    .locals 2

    new-instance v0, Lcom/amap/api/col/l3/ah;

    invoke-direct {v0}, Lcom/amap/api/col/l3/ah;-><init>()V

    sget-object v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->newCameraPosition:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    iput-object v1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->nowType:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    iput p0, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->tilt:F

    return-object v0
.end method

.method public static c(F)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;
    .locals 2

    new-instance v0, Lcom/amap/api/col/l3/ah;

    invoke-direct {v0}, Lcom/amap/api/col/l3/ah;-><init>()V

    sget-object v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->newCameraPosition:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    iput-object v1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->nowType:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    iput p0, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->bearing:F

    return-object v0
.end method
