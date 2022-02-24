.class public final Lcom/amap/api/col/l3/aj;
.super Ljava/lang/Object;
.source "CameraUpdateFactoryDelegate.java"


# direct methods
.method public static a()Lcom/autonavi/amap/mapcore/CameraUpdateMessage;
    .locals 2

    .line 1
    new-instance v0, Lcom/amap/api/col/l3/ak;

    invoke-direct {v0}, Lcom/amap/api/col/l3/ak;-><init>()V

    .line 2
    sget-object v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->zoomBy:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    iput-object v1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->nowType:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    iput v1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->amount:F

    return-object v0
.end method

.method public static a(F)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;
    .locals 2

    .line 4
    new-instance v0, Lcom/amap/api/col/l3/ah;

    invoke-direct {v0}, Lcom/amap/api/col/l3/ah;-><init>()V

    .line 5
    sget-object v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->newCameraPosition:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    iput-object v1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->nowType:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    .line 6
    iput p0, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->zoom:F

    return-object v0
.end method

.method public static a(FLandroid/graphics/Point;)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;
    .locals 2

    .line 7
    new-instance v0, Lcom/amap/api/col/l3/ak;

    invoke-direct {v0}, Lcom/amap/api/col/l3/ak;-><init>()V

    .line 8
    sget-object v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->zoomBy:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    iput-object v1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->nowType:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    .line 9
    iput p0, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->amount:F

    .line 10
    iput-object p1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->focus:Landroid/graphics/Point;

    return-object v0
.end method

.method public static a(Landroid/graphics/Point;)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;
    .locals 2

    .line 20
    new-instance v0, Lcom/amap/api/col/l3/ah;

    invoke-direct {v0}, Lcom/amap/api/col/l3/ah;-><init>()V

    .line 21
    sget-object v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->newCameraPosition:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    iput-object v1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->nowType:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    .line 22
    iput-object p0, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->geoPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method public static a(Lcom/amap/api/maps/model/CameraPosition;)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;
    .locals 6

    .line 11
    new-instance v0, Lcom/amap/api/col/l3/ah;

    invoke-direct {v0}, Lcom/amap/api/col/l3/ah;-><init>()V

    .line 12
    sget-object v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->newCameraPosition:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    iput-object v1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->nowType:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    if-eqz p0, :cond_1

    .line 13
    iget-object v1, p0, Lcom/amap/api/maps/model/CameraPosition;->target:Lcom/amap/api/maps/model/LatLng;

    if-nez v1, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    iget-wide v2, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v4, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    const/16 v1, 0x14

    invoke-static {v2, v3, v4, v5, v1}, Lcom/autonavi/amap/mapcore/VirtualEarthProjection;->LatLongToPixels(DDI)Landroid/graphics/Point;

    move-result-object v1

    .line 15
    iput-object v1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->geoPoint:Landroid/graphics/Point;

    .line 16
    iget v1, p0, Lcom/amap/api/maps/model/CameraPosition;->zoom:F

    iput v1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->zoom:F

    .line 17
    iget v1, p0, Lcom/amap/api/maps/model/CameraPosition;->bearing:F

    iput v1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->bearing:F

    .line 18
    iget v1, p0, Lcom/amap/api/maps/model/CameraPosition;->tilt:F

    iput v1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->tilt:F

    .line 19
    iput-object p0, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->cameraPosition:Lcom/amap/api/maps/model/CameraPosition;

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static a(Lcom/amap/api/maps/model/LatLng;F)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;
    .locals 1

    .line 23
    invoke-static {}, Lcom/amap/api/maps/model/CameraPosition;->builder()Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/maps/model/CameraPosition$Builder;->target(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object p0

    .line 24
    invoke-virtual {p0, p1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->zoom(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object p0

    const/high16 p1, 0x7fc00000    # Float.NaN

    invoke-virtual {p0, p1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->bearing(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->tilt(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amap/api/maps/model/CameraPosition$Builder;->build()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object p0

    .line 25
    invoke-static {p0}, Lcom/amap/api/col/l3/aj;->a(Lcom/amap/api/maps/model/CameraPosition;)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/amap/api/maps/model/LatLngBounds;I)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;
    .locals 2

    .line 26
    new-instance v0, Lcom/amap/api/col/l3/ag;

    invoke-direct {v0}, Lcom/amap/api/col/l3/ag;-><init>()V

    .line 27
    sget-object v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->newLatLngBounds:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    iput-object v1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->nowType:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    .line 28
    iput-object p0, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->bounds:Lcom/amap/api/maps/model/LatLngBounds;

    .line 29
    iput p1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->paddingLeft:I

    .line 30
    iput p1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->paddingRight:I

    .line 31
    iput p1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->paddingTop:I

    .line 32
    iput p1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->paddingBottom:I

    return-object v0
.end method

.method public static b()Lcom/autonavi/amap/mapcore/CameraUpdateMessage;
    .locals 2

    .line 1
    new-instance v0, Lcom/amap/api/col/l3/ak;

    invoke-direct {v0}, Lcom/amap/api/col/l3/ak;-><init>()V

    .line 2
    sget-object v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->zoomBy:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    iput-object v1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->nowType:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    const/high16 v1, -0x40800000    # -1.0f

    .line 3
    iput v1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->amount:F

    return-object v0
.end method

.method public static b(F)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;
    .locals 2

    .line 4
    new-instance v0, Lcom/amap/api/col/l3/ah;

    invoke-direct {v0}, Lcom/amap/api/col/l3/ah;-><init>()V

    .line 5
    sget-object v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->newCameraPosition:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    iput-object v1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->nowType:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    .line 6
    iput p0, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->tilt:F

    return-object v0
.end method

.method public static c(F)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;
    .locals 2

    .line 1
    new-instance v0, Lcom/amap/api/col/l3/ah;

    invoke-direct {v0}, Lcom/amap/api/col/l3/ah;-><init>()V

    .line 2
    sget-object v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->newCameraPosition:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    iput-object v1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->nowType:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    .line 3
    iput p0, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->bearing:F

    return-object v0
.end method
