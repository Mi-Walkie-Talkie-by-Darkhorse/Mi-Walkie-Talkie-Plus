.class public Lcom/amap/api/mapcore/util/x;
.super Lcom/autonavi/amap/mapcore/CameraUpdateMessage;
.source "CameraBoundsMessage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public mergeCameraUpdateDelegate(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V
    .locals 0

    return-void
.end method

.method public runCameraUpdate(Lcom/autonavi/ae/gmap/GLMapState;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/x;->mapConfig:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-static {p0, p1, v0}, Lcom/amap/api/mapcore/util/ee;->a(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;Lcom/autonavi/ae/gmap/GLMapState;Lcom/autonavi/amap/mapcore/MapConfig;)Landroid/util/Pair;

    move-result-object v1

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/autonavi/ae/gmap/GLMapState;->setMapZoomer(F)V

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/autonavi/amap/mapcore/IPoint;

    iget v2, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/autonavi/amap/mapcore/IPoint;

    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {p1, v2, v0}, Lcom/autonavi/ae/gmap/GLMapState;->setMapGeoCenter(II)V

    invoke-virtual {p1, v3}, Lcom/autonavi/ae/gmap/GLMapState;->setCameraDegree(F)V

    invoke-virtual {p1, v3}, Lcom/autonavi/ae/gmap/GLMapState;->setMapAngle(F)V

    return-void
.end method
