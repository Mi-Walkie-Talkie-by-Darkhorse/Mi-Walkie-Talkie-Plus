.class public final Lcom/amap/api/col/l3/ag;
.super Lcom/autonavi/amap/mapcore/CameraUpdateMessage;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public final mergeCameraUpdateDelegate(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V
    .locals 0

    return-void
.end method

.method public final runCameraUpdate(Lcom/autonavi/ae/gmap/GLMapState;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->mapConfig:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-static {p0, v0}, Lcom/amap/api/col/l3/em;->a(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;Lcom/autonavi/amap/mapcore/MapConfig;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/autonavi/ae/gmap/GLMapState;->setMapZoomer(F)V

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/autonavi/amap/mapcore/IPoint;

    iget v1, v1, Landroid/graphics/Point;->x:I

    check-cast v0, Lcom/autonavi/amap/mapcore/IPoint;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v1, v0}, Lcom/autonavi/ae/gmap/GLMapState;->setMapGeoCenter(II)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/autonavi/ae/gmap/GLMapState;->setCameraDegree(F)V

    invoke-virtual {p1, v0}, Lcom/autonavi/ae/gmap/GLMapState;->setMapAngle(F)V

    return-void
.end method
