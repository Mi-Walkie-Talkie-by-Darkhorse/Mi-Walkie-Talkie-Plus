.class public Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;
.super Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;
.source "ADGLMapAnimPivotZoom.java"


# instance fields
.field private _beginCenterGeoX:I

.field private _beginCenterGeoY:I

.field private _hasCheckParams:Z

.field private _mapLevelTo:F

.field private _pivotGeoX:I

.field private _pivotGeoY:I

.field private _winPivotX:F

.field private _winPivotY:F

.field private _zoomCenter:Z

.field _zoomParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_zoomParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->reset()V

    iput p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_duration:I

    return-void
.end method


# virtual methods
.method public commitAnimation(Ljava/lang/Object;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_isOver:Z

    iput-boolean v7, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_hasCheckParams:Z

    check-cast p1, Lcom/autonavi/ae/gmap/GLMapState;

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/GLMapState;->getMapZoomer()F

    move-result v0

    iget v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_mapLevelTo:F

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    const-wide v4, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v1, v2, v4

    if-gez v1, :cond_1

    iput-boolean v6, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_isOver:Z

    iput-boolean v6, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_hasCheckParams:Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_zoomParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v1, v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->setFromValue(F)V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_zoomParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    iget v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_mapLevelTo:F

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->setToValue(F)V

    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_zoomCenter:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/autonavi/ae/gmap/GLMapState;->getGeoCenter(Lcom/autonavi/amap/mapcore/IPoint;)V

    iget v1, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iput v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_beginCenterGeoX:I

    iget v1, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iput v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_beginCenterGeoY:I

    invoke-static {}, Lcom/autonavi/amap/mapcore/FPoint;->obtain()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v1

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v2

    iget v3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_winPivotX:F

    float-to-int v3, v3

    iget v4, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_winPivotY:F

    float-to-int v4, v4

    invoke-virtual {p1, v3, v4, v1}, Lcom/autonavi/ae/gmap/GLMapState;->win2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    iget v3, v1, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v4, v1, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-virtual {p1, v3, v4, v2}, Lcom/autonavi/ae/gmap/GLMapState;->map2Geo(FFLcom/autonavi/amap/mapcore/IPoint;)V

    iget v3, v2, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iput v3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_pivotGeoX:I

    iget v3, v2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iput v3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_pivotGeoY:I

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/FPoint;->recycle()V

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    :cond_2
    iput-boolean v6, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_hasCheckParams:Z

    iput-boolean v7, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_isOver:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_startTime:J

    goto :goto_0
.end method

.method public doAnimation(Ljava/lang/Object;)V
    .locals 11

    const/high16 v2, 0x41a00000    # 20.0f

    const/high16 v1, 0x40400000    # 3.0f

    const/4 v10, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, p1

    check-cast v0, Lcom/autonavi/ae/gmap/GLMapState;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_hasCheckParams:Z

    if-nez v3, :cond_2

    invoke-virtual {p0, p1}, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->commitAnimation(Ljava/lang/Object;)V

    :cond_2
    iget-boolean v3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_isOver:Z

    if-nez v3, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_startTime:J

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_offsetTime:J

    iget-wide v6, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_offsetTime:J

    long-to-float v3, v6

    iget v5, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_duration:I

    int-to-float v5, v5

    div-float/2addr v3, v5

    cmpl-float v5, v3, v4

    if-lez v5, :cond_3

    iput-boolean v10, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_isOver:Z

    move v3, v4

    :cond_3
    const/4 v5, 0x0

    cmpl-float v5, v3, v5

    if-ltz v5, :cond_0

    cmpg-float v5, v3, v4

    if-gtz v5, :cond_0

    iget-object v5, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_zoomParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v5, v3}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->setNormalizedTime(F)V

    iget-object v3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_zoomParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v3}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->getCurValue()F

    move-result v3

    cmpl-float v5, v3, v2

    if-lez v5, :cond_6

    iput-boolean v10, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_isOver:Z

    :goto_1
    cmpg-float v3, v2, v1

    if-gez v3, :cond_5

    iput-boolean v10, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_isOver:Z

    :goto_2
    iget-boolean v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_zoomCenter:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_zoomParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v2}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->getFromValue()F

    move-result v2

    sub-float v2, v1, v2

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    float-to-double v2, v2

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    iget v3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_pivotGeoX:I

    iget v5, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_beginCenterGeoX:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    div-float v5, v4, v2

    sub-float v5, v4, v5

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iget v5, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_pivotGeoY:I

    iget v6, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_beginCenterGeoY:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float v2, v4, v2

    sub-float v2, v4, v2

    mul-float/2addr v2, v5

    float-to-int v2, v2

    iget v4, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_beginCenterGeoX:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_beginCenterGeoY:I

    add-int/2addr v2, v4

    invoke-virtual {v0, v3, v2}, Lcom/autonavi/ae/gmap/GLMapState;->setMapGeoCenter(II)V

    :cond_4
    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapState;->setMapZoomer(F)V

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_2

    :cond_6
    move v2, v3

    goto :goto_1
.end method

.method public reset()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_isOver:Z

    iput-boolean v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_hasCheckParams:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_zoomCenter:Z

    iput v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_mapLevelTo:F

    iput v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_beginCenterGeoX:I

    iput v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_beginCenterGeoY:I

    iput v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_pivotGeoX:I

    iput v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_pivotGeoY:I

    iput v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_winPivotX:F

    iput v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_winPivotY:F

    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_zoomParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_zoomParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->reset()V

    :cond_0
    return-void
.end method

.method public setToMapZoomAndPivot(FILandroid/graphics/Point;)V
    .locals 4

    const/high16 v1, 0x41a00000    # 20.0f

    const/high16 v0, 0x40400000    # 3.0f

    new-instance v2, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-direct {v2}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;-><init>()V

    iput-object v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_zoomParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    iget-object v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_zoomParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, p2, v3}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->setInterpolatorType(IF)V

    cmpl-float v2, p1, v1

    if-lez v2, :cond_2

    :goto_0
    cmpg-float v2, v1, v0

    if-gez v2, :cond_1

    :goto_1
    iput v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_mapLevelTo:F

    if-eqz p3, :cond_0

    iget v0, p3, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iput v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_winPivotX:F

    iget v0, p3, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iput v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_winPivotY:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_zoomCenter:Z

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v1, p1

    goto :goto_0
.end method
