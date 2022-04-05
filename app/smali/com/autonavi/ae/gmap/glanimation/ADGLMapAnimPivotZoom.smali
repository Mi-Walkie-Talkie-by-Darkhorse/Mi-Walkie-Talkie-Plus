.class public Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;
.super Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;


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

    iput p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_duration:I

    return-void
.end method


# virtual methods
.method public commitAnimation(Ljava/lang/Object;)V
    .locals 8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_isOver:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_hasCheckParams:Z

    check-cast p1, Lcom/autonavi/ae/gmap/GLMapState;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/GLMapState;->getMapZoomer()F

    move-result v2

    iget v3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_mapLevelTo:F

    sub-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    const-wide v5, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v7, v3, v5

    if-gez v7, :cond_1

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_isOver:Z

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_hasCheckParams:Z

    return-void

    :cond_1
    iget-object v3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_zoomParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v3, v2}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->setFromValue(F)V

    iget-object v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_zoomParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    iget v3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_mapLevelTo:F

    invoke-virtual {v2, v3}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->setToValue(F)V

    iget-boolean v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_zoomCenter:Z

    if-nez v2, :cond_2

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/autonavi/ae/gmap/GLMapState;->getGeoCenter(Lcom/autonavi/amap/mapcore/IPoint;)V

    iget v3, v2, Landroid/graphics/Point;->x:I

    iput v3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_beginCenterGeoX:I

    iget v3, v2, Landroid/graphics/Point;->y:I

    iput v3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_beginCenterGeoY:I

    invoke-static {}, Lcom/autonavi/amap/mapcore/FPoint;->obtain()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v3

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v4

    iget v5, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_winPivotX:F

    float-to-int v5, v5

    iget v6, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_winPivotY:F

    float-to-int v6, v6

    invoke-virtual {p1, v5, v6, v3}, Lcom/autonavi/ae/gmap/GLMapState;->win2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    iget v5, v3, Landroid/graphics/PointF;->x:F

    iget v6, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v5, v6, v4}, Lcom/autonavi/ae/gmap/GLMapState;->map2Geo(FFLcom/autonavi/amap/mapcore/IPoint;)V

    iget p1, v4, Landroid/graphics/Point;->x:I

    iput p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_pivotGeoX:I

    iget p1, v4, Landroid/graphics/Point;->y:I

    iput p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_pivotGeoY:I

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/FPoint;->recycle()V

    invoke-virtual {v4}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    :cond_2
    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_hasCheckParams:Z

    iput-boolean v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_isOver:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_startTime:J

    return-void
.end method

.method public doAnimation(Ljava/lang/Object;)V
    .locals 7

    move-object v0, p1

    check-cast v0, Lcom/autonavi/ae/gmap/GLMapState;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_hasCheckParams:Z

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->commitAnimation(Ljava/lang/Object;)V

    :cond_1
    iget-boolean p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_isOver:Z

    if-eqz p1, :cond_2

    return-void

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_startTime:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_offsetTime:J

    long-to-float p1, v1

    iget v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_duration:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, p1, v2

    if-lez v3, :cond_3

    iput-boolean v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_isOver:Z

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_3
    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_7

    cmpg-float v3, p1, v2

    if-gtz v3, :cond_7

    iget-object v3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_zoomParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v3, p1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->setNormalizedTime(F)V

    iget-object p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_zoomParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->getCurValue()F

    move-result p1

    const/high16 v3, 0x41a00000    # 20.0f

    cmpl-float v4, p1, v3

    if-lez v4, :cond_4

    iput-boolean v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_isOver:Z

    const/high16 p1, 0x41a00000    # 20.0f

    :cond_4
    const/high16 v3, 0x40400000    # 3.0f

    cmpg-float v4, p1, v3

    if-gez v4, :cond_5

    iput-boolean v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_isOver:Z

    const/high16 p1, 0x40400000    # 3.0f

    :cond_5
    iget-boolean v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_zoomCenter:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_zoomParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->getFromValue()F

    move-result v1

    sub-float v1, p1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    float-to-double v5, v1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v1, v3

    iget v3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_pivotGeoX:I

    iget v4, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_beginCenterGeoX:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float v1, v2, v1

    sub-float/2addr v2, v1

    mul-float v3, v3, v2

    float-to-int v1, v3

    iget v3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_pivotGeoY:I

    iget v5, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_beginCenterGeoY:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    mul-float v3, v3, v2

    float-to-int v2, v3

    add-int/2addr v4, v1

    add-int/2addr v5, v2

    invoke-virtual {v0, v4, v5}, Lcom/autonavi/ae/gmap/GLMapState;->setMapGeoCenter(II)V

    :cond_6
    invoke-virtual {v0, p1}, Lcom/autonavi/ae/gmap/GLMapState;->setMapZoomer(F)V

    :cond_7
    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_isOver:Z

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_hasCheckParams:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_zoomCenter:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_mapLevelTo:F

    iput v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_beginCenterGeoX:I

    iput v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_beginCenterGeoY:I

    iput v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_pivotGeoX:I

    iput v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_pivotGeoY:I

    iput v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_winPivotX:F

    iput v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_winPivotY:F

    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_zoomParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->reset()V

    :cond_0
    return-void
.end method

.method public setToMapZoomAndPivot(FILandroid/graphics/Point;)V
    .locals 2

    new-instance v0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-direct {v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_zoomParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p2, v1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->setInterpolatorType(IF)V

    const/high16 p2, 0x41a00000    # 20.0f

    cmpl-float v0, p1, p2

    if-lez v0, :cond_0

    const/high16 p1, 0x41a00000    # 20.0f

    :cond_0
    const/high16 p2, 0x40400000    # 3.0f

    cmpg-float v0, p1, p2

    if-gez v0, :cond_1

    const/high16 p1, 0x40400000    # 3.0f

    :cond_1
    iput p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_mapLevelTo:F

    if-eqz p3, :cond_2

    iget p1, p3, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    iput p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_winPivotX:F

    iget p1, p3, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    iput p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_winPivotY:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_zoomCenter:Z

    :cond_2
    return-void
.end method
