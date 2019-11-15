.class public Lcom/amap/api/mapcore/util/aa;
.super Ljava/lang/Object;
.source "CameraUpdateFactoryDelegate.java"


# direct methods
.method public static a()Lcom/autonavi/amap/mapcore/CameraUpdateMessage;
    .locals 2

    new-instance v0, Lcom/amap/api/mapcore/util/ab;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/ab;-><init>()V

    sget-object v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->zoomBy:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    iput-object v1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->nowType:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->amount:F

    return-object v0
.end method

.method public static a(F)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;
    .locals 2

    new-instance v0, Lcom/amap/api/mapcore/util/y;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/y;-><init>()V

    sget-object v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->newCameraPosition:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    iput-object v1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->nowType:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    iput p0, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->zoom:F

    return-object v0
.end method

.method public static a(FF)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;
    .locals 2

    new-instance v0, Lcom/amap/api/mapcore/util/z;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/z;-><init>()V

    sget-object v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->scrollBy:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    iput-object v1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->nowType:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    iput p0, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->xPixel:F

    iput p1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->yPixel:F

    return-object v0
.end method

.method public static a(FLandroid/graphics/Point;)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;
    .locals 2

    new-instance v0, Lcom/amap/api/mapcore/util/ab;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/ab;-><init>()V

    sget-object v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->zoomBy:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    iput-object v1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->nowType:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    iput p0, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->amount:F

    iput-object p1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->focus:Landroid/graphics/Point;

    return-object v0
.end method

.method public static a(Landroid/graphics/Point;)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;
    .locals 2

    new-instance v0, Lcom/amap/api/mapcore/util/y;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/y;-><init>()V

    sget-object v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->newCameraPosition:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    iput-object v1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->nowType:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    iput-object p0, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->geoPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method public static a(Lcom/amap/api/maps/model/CameraPosition;)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;
    .locals 6

    new-instance v0, Lcom/amap/api/mapcore/util/y;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/y;-><init>()V

    sget-object v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->newCameraPosition:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    iput-object v1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->nowType:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/amap/api/maps/model/CameraPosition;->target:Lcom/amap/api/maps/model/LatLng;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/amap/api/maps/model/CameraPosition;->target:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-object v1, p0, Lcom/amap/api/maps/model/CameraPosition;->target:Lcom/amap/api/maps/model/LatLng;

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

    goto :goto_0
.end method

.method public static a(Lcom/amap/api/maps/model/LatLng;)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;
    .locals 2

    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-static {}, Lcom/amap/api/maps/model/CameraPosition;->builder()Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/maps/model/CameraPosition$Builder;->target(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->zoom(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->bearing(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->tilt(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/CameraPosition$Builder;->build()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore/util/aa;->a(Lcom/amap/api/maps/model/CameraPosition;)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/amap/api/maps/model/LatLng;F)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;
    .locals 2

    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-static {}, Lcom/amap/api/maps/model/CameraPosition;->builder()Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/maps/model/CameraPosition$Builder;->target(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->zoom(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->bearing(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->tilt(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/CameraPosition$Builder;->build()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore/util/aa;->a(Lcom/amap/api/maps/model/CameraPosition;)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/amap/api/maps/model/LatLngBounds;I)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;
    .locals 2

    new-instance v0, Lcom/amap/api/mapcore/util/x;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/x;-><init>()V

    sget-object v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->newLatLngBounds:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    iput-object v1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->nowType:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    iput-object p0, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->bounds:Lcom/amap/api/maps/model/LatLngBounds;

    iput p1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->paddingLeft:I

    iput p1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->paddingRight:I

    iput p1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->paddingTop:I

    iput p1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->paddingBottom:I

    return-object v0
.end method

.method public static a(Lcom/amap/api/maps/model/LatLngBounds;III)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;
    .locals 2

    new-instance v0, Lcom/amap/api/mapcore/util/x;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/x;-><init>()V

    sget-object v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->newLatLngBoundsWithSize:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    iput-object v1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->nowType:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    iput-object p0, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->bounds:Lcom/amap/api/maps/model/LatLngBounds;

    iput p3, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->paddingLeft:I

    iput p3, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->paddingRight:I

    iput p3, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->paddingTop:I

    iput p3, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->paddingBottom:I

    iput p1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->width:I

    iput p2, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->height:I

    return-object v0
.end method

.method public static a(Lcom/amap/api/maps/model/LatLngBounds;IIII)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;
    .locals 2

    new-instance v0, Lcom/amap/api/mapcore/util/x;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/x;-><init>()V

    sget-object v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->newLatLngBounds:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    iput-object v1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->nowType:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    iput-object p0, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->bounds:Lcom/amap/api/maps/model/LatLngBounds;

    iput p1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->paddingLeft:I

    iput p2, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->paddingRight:I

    iput p3, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->paddingTop:I

    iput p4, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->paddingBottom:I

    return-object v0
.end method

.method public static b()Lcom/autonavi/amap/mapcore/CameraUpdateMessage;
    .locals 2

    new-instance v0, Lcom/amap/api/mapcore/util/ab;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/ab;-><init>()V

    sget-object v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->zoomBy:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    iput-object v1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->nowType:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->amount:F

    return-object v0
.end method

.method public static b(F)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/amap/api/mapcore/util/aa;->a(FLandroid/graphics/Point;)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;

    move-result-object v0

    return-object v0
.end method

.method public static b(FLandroid/graphics/Point;)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;
    .locals 2

    new-instance v0, Lcom/amap/api/mapcore/util/y;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/y;-><init>()V

    sget-object v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->newCameraPosition:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    iput-object v1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->nowType:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    iput-object p1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->geoPoint:Landroid/graphics/Point;

    iput p0, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->bearing:F

    return-object v0
.end method

.method public static c()Lcom/autonavi/amap/mapcore/CameraUpdateMessage;
    .locals 1

    new-instance v0, Lcom/amap/api/mapcore/util/y;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/y;-><init>()V

    return-object v0
.end method

.method public static c(F)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;
    .locals 2

    new-instance v0, Lcom/amap/api/mapcore/util/y;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/y;-><init>()V

    sget-object v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->newCameraPosition:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    iput-object v1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->nowType:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    iput p0, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->tilt:F

    return-object v0
.end method

.method public static d(F)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;
    .locals 2

    new-instance v0, Lcom/amap/api/mapcore/util/y;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/y;-><init>()V

    sget-object v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->newCameraPosition:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    iput-object v1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->nowType:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    iput p0, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->bearing:F

    return-object v0
.end method
