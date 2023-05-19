.class public final Lcom/amap/api/maps/CameraUpdateFactory;
.super Ljava/lang/Object;
.source "CameraUpdateFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeBearing(F)Lcom/amap/api/maps/CameraUpdate;
    .locals 2

    .line 1
    new-instance v0, Lcom/amap/api/maps/CameraUpdate;

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr p0, v1

    invoke-static {p0}, Lcom/amap/api/col/l3/aj;->c(F)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amap/api/maps/CameraUpdate;-><init>(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V

    return-object v0
.end method

.method public static changeBearingGeoCenter(FLcom/autonavi/amap/mapcore/IPoint;)Lcom/amap/api/maps/CameraUpdate;
    .locals 3

    if-nez p1, :cond_0

    .line 1
    new-instance p0, Lcom/amap/api/maps/CameraUpdate;

    new-instance p1, Lcom/amap/api/col/l3/ah;

    invoke-direct {p1}, Lcom/amap/api/col/l3/ah;-><init>()V

    invoke-direct {p0, p1}, Lcom/amap/api/maps/CameraUpdate;-><init>(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/amap/api/maps/CameraUpdate;

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr p0, v1

    new-instance v1, Landroid/graphics/Point;

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v2, p1}, Landroid/graphics/Point;-><init>(II)V

    new-instance p1, Lcom/amap/api/col/l3/ah;

    invoke-direct {p1}, Lcom/amap/api/col/l3/ah;-><init>()V

    sget-object v2, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->newCameraPosition:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    iput-object v2, p1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->nowType:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    iput-object v1, p1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->geoPoint:Landroid/graphics/Point;

    iput p0, p1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->bearing:F

    invoke-direct {v0, p1}, Lcom/amap/api/maps/CameraUpdate;-><init>(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V

    return-object v0
.end method

.method public static changeLatLng(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/CameraUpdate;
    .locals 4

    if-nez p0, :cond_0

    .line 1
    new-instance p0, Lcom/amap/api/maps/CameraUpdate;

    new-instance v0, Lcom/amap/api/col/l3/ah;

    invoke-direct {v0}, Lcom/amap/api/col/l3/ah;-><init>()V

    invoke-direct {p0, v0}, Lcom/amap/api/maps/CameraUpdate;-><init>(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V

    return-object p0

    .line 2
    :cond_0
    iget-wide v0, p0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v2, p0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    const/16 p0, 0x14

    invoke-static {v0, v1, v2, v3, p0}, Lcom/autonavi/amap/mapcore/VirtualEarthProjection;->LatLongToPixels(DDI)Landroid/graphics/Point;

    move-result-object p0

    .line 3
    new-instance v0, Lcom/amap/api/maps/CameraUpdate;

    invoke-static {p0}, Lcom/amap/api/col/l3/aj;->a(Landroid/graphics/Point;)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amap/api/maps/CameraUpdate;-><init>(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V

    return-object v0
.end method

.method public static changeTilt(F)Lcom/amap/api/maps/CameraUpdate;
    .locals 1

    .line 1
    new-instance v0, Lcom/amap/api/maps/CameraUpdate;

    invoke-static {p0}, Lcom/amap/api/col/l3/aj;->b(F)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amap/api/maps/CameraUpdate;-><init>(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V

    return-object v0
.end method

.method public static newCameraPosition(Lcom/amap/api/maps/model/CameraPosition;)Lcom/amap/api/maps/CameraUpdate;
    .locals 1

    if-nez p0, :cond_0

    .line 1
    new-instance p0, Lcom/amap/api/maps/CameraUpdate;

    new-instance v0, Lcom/amap/api/col/l3/ah;

    invoke-direct {v0}, Lcom/amap/api/col/l3/ah;-><init>()V

    invoke-direct {p0, v0}, Lcom/amap/api/maps/CameraUpdate;-><init>(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/amap/api/maps/CameraUpdate;

    .line 3
    invoke-static {p0}, Lcom/amap/api/col/l3/aj;->a(Lcom/amap/api/maps/model/CameraPosition;)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amap/api/maps/CameraUpdate;-><init>(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V

    return-object v0
.end method

.method public static newLatLng(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/CameraUpdate;
    .locals 2

    if-nez p0, :cond_0

    .line 1
    new-instance p0, Lcom/amap/api/maps/CameraUpdate;

    new-instance v0, Lcom/amap/api/col/l3/ah;

    invoke-direct {v0}, Lcom/amap/api/col/l3/ah;-><init>()V

    invoke-direct {p0, v0}, Lcom/amap/api/maps/CameraUpdate;-><init>(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/amap/api/maps/CameraUpdate;

    invoke-static {}, Lcom/amap/api/maps/model/CameraPosition;->builder()Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/amap/api/maps/model/CameraPosition$Builder;->target(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object p0

    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-virtual {p0, v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->zoom(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->bearing(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->tilt(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amap/api/maps/model/CameraPosition$Builder;->build()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object p0

    invoke-static {p0}, Lcom/amap/api/col/l3/aj;->a(Lcom/amap/api/maps/model/CameraPosition;)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amap/api/maps/CameraUpdate;-><init>(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V

    return-object v0
.end method

.method public static newLatLngBounds(Lcom/amap/api/maps/model/LatLngBounds;I)Lcom/amap/api/maps/CameraUpdate;
    .locals 1

    if-nez p0, :cond_0

    .line 1
    new-instance p0, Lcom/amap/api/maps/CameraUpdate;

    new-instance p1, Lcom/amap/api/col/l3/ah;

    invoke-direct {p1}, Lcom/amap/api/col/l3/ah;-><init>()V

    invoke-direct {p0, p1}, Lcom/amap/api/maps/CameraUpdate;-><init>(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/amap/api/maps/CameraUpdate;

    invoke-static {p0, p1}, Lcom/amap/api/col/l3/aj;->a(Lcom/amap/api/maps/model/LatLngBounds;I)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amap/api/maps/CameraUpdate;-><init>(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V

    return-object v0
.end method

.method public static newLatLngBounds(Lcom/amap/api/maps/model/LatLngBounds;III)Lcom/amap/api/maps/CameraUpdate;
    .locals 3

    if-nez p0, :cond_0

    .line 3
    new-instance p0, Lcom/amap/api/maps/CameraUpdate;

    new-instance p1, Lcom/amap/api/col/l3/ah;

    invoke-direct {p1}, Lcom/amap/api/col/l3/ah;-><init>()V

    invoke-direct {p0, p1}, Lcom/amap/api/maps/CameraUpdate;-><init>(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Lcom/amap/api/maps/CameraUpdate;

    .line 5
    new-instance v1, Lcom/amap/api/col/l3/ag;

    invoke-direct {v1}, Lcom/amap/api/col/l3/ag;-><init>()V

    sget-object v2, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->newLatLngBoundsWithSize:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    iput-object v2, v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->nowType:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    iput-object p0, v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->bounds:Lcom/amap/api/maps/model/LatLngBounds;

    iput p3, v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->paddingLeft:I

    iput p3, v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->paddingRight:I

    iput p3, v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->paddingTop:I

    iput p3, v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->paddingBottom:I

    iput p1, v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->width:I

    iput p2, v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->height:I

    invoke-direct {v0, v1}, Lcom/amap/api/maps/CameraUpdate;-><init>(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V

    return-object v0
.end method

.method public static newLatLngBoundsRect(Lcom/amap/api/maps/model/LatLngBounds;IIII)Lcom/amap/api/maps/CameraUpdate;
    .locals 3

    if-nez p0, :cond_0

    .line 1
    new-instance p0, Lcom/amap/api/maps/CameraUpdate;

    new-instance p1, Lcom/amap/api/col/l3/ah;

    invoke-direct {p1}, Lcom/amap/api/col/l3/ah;-><init>()V

    invoke-direct {p0, p1}, Lcom/amap/api/maps/CameraUpdate;-><init>(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/amap/api/maps/CameraUpdate;

    new-instance v1, Lcom/amap/api/col/l3/ag;

    invoke-direct {v1}, Lcom/amap/api/col/l3/ag;-><init>()V

    sget-object v2, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->newLatLngBounds:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    iput-object v2, v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->nowType:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    iput-object p0, v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->bounds:Lcom/amap/api/maps/model/LatLngBounds;

    iput p1, v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->paddingLeft:I

    iput p2, v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->paddingRight:I

    iput p3, v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->paddingTop:I

    iput p4, v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->paddingBottom:I

    invoke-direct {v0, v1}, Lcom/amap/api/maps/CameraUpdate;-><init>(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V

    return-object v0
.end method

.method public static newLatLngZoom(Lcom/amap/api/maps/model/LatLng;F)Lcom/amap/api/maps/CameraUpdate;
    .locals 1

    if-nez p0, :cond_0

    .line 1
    new-instance p0, Lcom/amap/api/maps/CameraUpdate;

    new-instance p1, Lcom/amap/api/col/l3/ah;

    invoke-direct {p1}, Lcom/amap/api/col/l3/ah;-><init>()V

    invoke-direct {p0, p1}, Lcom/amap/api/maps/CameraUpdate;-><init>(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/amap/api/maps/CameraUpdate;

    invoke-static {p0, p1}, Lcom/amap/api/col/l3/aj;->a(Lcom/amap/api/maps/model/LatLng;F)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amap/api/maps/CameraUpdate;-><init>(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V

    return-object v0
.end method

.method public static scrollBy(FF)Lcom/amap/api/maps/CameraUpdate;
    .locals 3

    .line 1
    new-instance v0, Lcom/amap/api/maps/CameraUpdate;

    new-instance v1, Lcom/amap/api/col/l3/ai;

    invoke-direct {v1}, Lcom/amap/api/col/l3/ai;-><init>()V

    sget-object v2, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->scrollBy:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    iput-object v2, v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->nowType:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    iput p0, v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->xPixel:F

    iput p1, v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->yPixel:F

    invoke-direct {v0, v1}, Lcom/amap/api/maps/CameraUpdate;-><init>(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V

    return-object v0
.end method

.method public static zoomBy(F)Lcom/amap/api/maps/CameraUpdate;
    .locals 2

    .line 1
    new-instance v0, Lcom/amap/api/maps/CameraUpdate;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/amap/api/col/l3/aj;->a(FLandroid/graphics/Point;)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amap/api/maps/CameraUpdate;-><init>(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V

    return-object v0
.end method

.method public static zoomBy(FLandroid/graphics/Point;)Lcom/amap/api/maps/CameraUpdate;
    .locals 1

    .line 2
    new-instance v0, Lcom/amap/api/maps/CameraUpdate;

    invoke-static {p0, p1}, Lcom/amap/api/col/l3/aj;->a(FLandroid/graphics/Point;)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amap/api/maps/CameraUpdate;-><init>(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V

    return-object v0
.end method

.method public static zoomIn()Lcom/amap/api/maps/CameraUpdate;
    .locals 2

    .line 1
    new-instance v0, Lcom/amap/api/maps/CameraUpdate;

    invoke-static {}, Lcom/amap/api/col/l3/aj;->a()Lcom/autonavi/amap/mapcore/CameraUpdateMessage;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/maps/CameraUpdate;-><init>(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V

    return-object v0
.end method

.method public static zoomOut()Lcom/amap/api/maps/CameraUpdate;
    .locals 2

    .line 1
    new-instance v0, Lcom/amap/api/maps/CameraUpdate;

    invoke-static {}, Lcom/amap/api/col/l3/aj;->b()Lcom/autonavi/amap/mapcore/CameraUpdateMessage;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/maps/CameraUpdate;-><init>(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V

    return-object v0
.end method

.method public static zoomTo(F)Lcom/amap/api/maps/CameraUpdate;
    .locals 1

    .line 1
    new-instance v0, Lcom/amap/api/maps/CameraUpdate;

    invoke-static {p0}, Lcom/amap/api/col/l3/aj;->a(F)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amap/api/maps/CameraUpdate;-><init>(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V

    return-object v0
.end method
