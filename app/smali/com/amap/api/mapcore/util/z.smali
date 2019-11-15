.class public Lcom/amap/api/mapcore/util/z;
.super Lcom/autonavi/amap/mapcore/CameraUpdateMessage;
.source "CameraScrollMessage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/autonavi/ae/gmap/GLMapState;IILandroid/graphics/Point;)V
    .locals 2

    int-to-float v0, p2

    int-to-float v1, p3

    invoke-virtual {p1, v0, v1, p4}, Lcom/autonavi/ae/gmap/GLMapState;->screenToP20Point(FFLandroid/graphics/Point;)V

    return-void
.end method

.method public mergeCameraUpdateDelegate(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V
    .locals 0

    return-void
.end method

.method public runCameraUpdate(Lcom/autonavi/ae/gmap/GLMapState;)V
    .locals 4

    const/high16 v3, 0x40000000    # 2.0f

    iget v0, p0, Lcom/amap/api/mapcore/util/z;->xPixel:F

    iget v1, p0, Lcom/amap/api/mapcore/util/z;->yPixel:F

    iget v2, p0, Lcom/amap/api/mapcore/util/z;->width:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    iget v2, p0, Lcom/amap/api/mapcore/util/z;->height:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    float-to-int v0, v0

    float-to-int v1, v1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/amap/api/mapcore/util/z;->a(Lcom/autonavi/ae/gmap/GLMapState;IILandroid/graphics/Point;)V

    iget v0, v2, Landroid/graphics/Point;->x:I

    iget v1, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v0, v1}, Lcom/autonavi/ae/gmap/GLMapState;->setMapGeoCenter(II)V

    return-void
.end method
