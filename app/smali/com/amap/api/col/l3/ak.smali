.class public final Lcom/amap/api/col/l3/ak;
.super Lcom/autonavi/amap/mapcore/CameraUpdateMessage;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public final mergeCameraUpdateDelegate(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V
    .locals 2

    iget v0, p1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->zoom:F

    iget v1, p0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->amount:F

    add-float/2addr v0, v1

    iput v0, p1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->zoom:F

    return-void
.end method

.method public final runCameraUpdate(Lcom/autonavi/ae/gmap/GLMapState;)V
    .locals 2

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/GLMapState;->getMapZoomer()F

    move-result v0

    iget v1, p0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->amount:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->zoom:F

    iget-object v1, p0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->mapConfig:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-static {v1, v0}, Lcom/amap/api/col/l3/em;->a(Lcom/autonavi/amap/mapcore/MapConfig;F)F

    move-result v0

    iput v0, p0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->zoom:F

    invoke-virtual {p0, p1}, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->normalChange(Lcom/autonavi/ae/gmap/GLMapState;)V

    return-void
.end method
