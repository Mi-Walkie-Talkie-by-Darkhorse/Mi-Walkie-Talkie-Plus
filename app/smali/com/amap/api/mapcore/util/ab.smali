.class public Lcom/amap/api/mapcore/util/ab;
.super Lcom/autonavi/amap/mapcore/CameraUpdateMessage;
.source "CameraZoomMessage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public mergeCameraUpdateDelegate(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V
    .locals 2

    iget v0, p1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->zoom:F

    iget v1, p0, Lcom/amap/api/mapcore/util/ab;->amount:F

    add-float/2addr v0, v1

    iput v0, p1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->zoom:F

    return-void
.end method

.method public runCameraUpdate(Lcom/autonavi/ae/gmap/GLMapState;)V
    .locals 2

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/GLMapState;->getMapZoomer()F

    move-result v0

    iget v1, p0, Lcom/amap/api/mapcore/util/ab;->amount:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/ab;->zoom:F

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ab;->mapConfig:Lcom/autonavi/amap/mapcore/MapConfig;

    iget v1, p0, Lcom/amap/api/mapcore/util/ab;->zoom:F

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/ee;->a(Lcom/autonavi/amap/mapcore/MapConfig;F)F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/ab;->zoom:F

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/ab;->normalChange(Lcom/autonavi/ae/gmap/GLMapState;)V

    return-void
.end method
