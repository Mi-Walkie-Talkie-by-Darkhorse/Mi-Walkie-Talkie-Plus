.class public final Lcom/amap/api/col/l3/ai;
.super Lcom/autonavi/amap/mapcore/CameraUpdateMessage;
.source "CameraScrollMessage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public final mergeCameraUpdateDelegate(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V
    .locals 0

    return-void
.end method

.method public final runCameraUpdate(Lcom/autonavi/ae/gmap/GLMapState;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->xPixel:F

    .line 2
    iget v1, p0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->yPixel:F

    .line 3
    iget v2, p0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->width:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v2, v0

    .line 4
    iget v0, p0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->height:I

    int-to-float v0, v0

    div-float/2addr v0, v3

    add-float/2addr v0, v1

    .line 5
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    float-to-int v2, v2

    float-to-int v0, v0

    int-to-float v2, v2

    int-to-float v0, v0

    .line 6
    invoke-virtual {p1, v2, v0, v1}, Lcom/autonavi/ae/gmap/GLMapState;->screenToP20Point(FFLandroid/graphics/Point;)V

    .line 7
    iget v0, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v0, v1}, Lcom/autonavi/ae/gmap/GLMapState;->setMapGeoCenter(II)V

    return-void
.end method
