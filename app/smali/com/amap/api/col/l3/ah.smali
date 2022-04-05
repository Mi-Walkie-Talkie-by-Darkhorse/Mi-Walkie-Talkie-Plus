.class public final Lcom/amap/api/col/l3/ah;
.super Lcom/autonavi/amap/mapcore/CameraUpdateMessage;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public final mergeCameraUpdateDelegate(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->geoPoint:Landroid/graphics/Point;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->geoPoint:Landroid/graphics/Point;

    :cond_0
    iput-object v0, p1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->geoPoint:Landroid/graphics/Point;

    iget v0, p0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->zoom:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->zoom:F

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->zoom:F

    :goto_0
    iput v0, p1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->zoom:F

    iget v0, p0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->bearing:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->bearing:F

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->bearing:F

    :goto_1
    iput v0, p1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->bearing:F

    iget v0, p0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->tilt:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->tilt:F

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->tilt:F

    :goto_2
    iput v0, p1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->tilt:F

    return-void
.end method

.method public final runCameraUpdate(Lcom/autonavi/ae/gmap/GLMapState;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->normalChange(Lcom/autonavi/ae/gmap/GLMapState;)V

    return-void
.end method
