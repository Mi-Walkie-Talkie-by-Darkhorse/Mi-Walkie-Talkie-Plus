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

    .line 1
    invoke-direct {p0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_zoomParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    .line 3
    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->reset()V

    .line 4
    iput p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_duration:I

    return-void
.end method


# virtual methods
.method public commitAnimation(Ljava/lang/Object;)V
    .locals 8

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_isOver:Z

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_hasCheckParams:Z

    .line 3
    check-cast p1, Lcom/autonavi/ae/gmap/GLMapState;

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/GLMapState;->getMapZoomer()F

    move-result v2

    .line 5
    iget v3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_mapLevelTo:F

    sub-float/2addr v3, v2

    .line 6
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    const-wide v5, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v7, v3, v5

    if-gez v7, :cond_1

    .line 7
    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_isOver:Z

    .line 8
    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_hasCheckParams:Z

    return-void

    .line 9
    :cond_1
    iget-object v3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_zoomParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v3, v2}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->setFromValue(F)V

    .line 10
    iget-object v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_zoomParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    iget v3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_mapLevelTo:F

    invoke-virtual {v2, v3}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->setToValue(F)V

    .line 11
    iget-boolean v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_zoomCenter:Z

    if-nez v2, :cond_2

    .line 12
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v2

    .line 13
    invoke-virtual {p1, v2}, Lcom/autonavi/ae/gmap/GLMapState;->getGeoCenter(Lcom/autonavi/amap/mapcore/IPoint;)V

    .line 14
    iget v3, v2, Landroid/graphics/Point;->x:I

    iput v3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_beginCenterGeoX:I

    .line 15
    iget v3, v2, Landroid/graphics/Point;->y:I

    iput v3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_beginCenterGeoY:I

    .line 16
    invoke-static {}, Lcom/autonavi/amap/mapcore/FPoint;->obtain()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v3

    .line 17
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v4

    .line 18
    iget v5, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_winPivotX:F

    float-to-int v5, v5

    iget v6, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_winPivotY:F

    float-to-int v6, v6

    invoke-virtual {p1, v5, v6, v3}, Lcom/autonavi/ae/gmap/GLMapState;->win2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 19
    iget v5, v3, Landroid/graphics/PointF;->x:F

    iget v6, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v5, v6, v4}, Lcom/autonavi/ae/gmap/GLMapState;->map2Geo(FFLcom/autonavi/amap/mapcore/IPoint;)V

    .line 20
    iget p1, v4, Landroid/graphics/Point;->x:I

    iput p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_pivotGeoX:I

    .line 21
    iget p1, v4, Landroid/graphics/Point;->y:I

    iput p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_pivotGeoY:I

    .line 22
    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    .line 23
    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/FPoint;->recycle()V

    .line 24
    invoke-virtual {v4}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    .line 25
    :cond_2
    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_hasCheckParams:Z

    .line 26
    iput-boolean v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_isOver:Z

    .line 27
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_startTime:J

    return-void
.end method

.method public doAnimation(Ljava/lang/Object;)V
    .locals 7

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/autonavi/ae/gmap/GLMapState;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_hasCheckParams:Z

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {p0, p1}, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->commitAnimation(Ljava/lang/Object;)V

    .line 4
    :cond_1
    iget-boolean p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_isOver:Z

    if-eqz p1, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 6
    iget-wide v3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_startTime:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_offsetTime:J

    long-to-float p1, v1

    .line 7
    iget v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_duration:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, p1, v2

    if-lez v3, :cond_3

    .line 8
    iput-boolean v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_isOver:Z

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_3
    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_7

    cmpg-float v3, p1, v2

    if-gtz v3, :cond_7

    .line 9
    iget-object v3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_zoomParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v3, p1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->setNormalizedTime(F)V

    .line 10
    iget-object p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_zoomParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->getCurValue()F

    move-result p1

    const/high16 v3, 0x41a00000    # 20.0f

    cmpl-float v4, p1, v3

    if-lez v4, :cond_4

    .line 11
    iput-boolean v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_isOver:Z

    const/high16 p1, 0x41a00000    # 20.0f

    :cond_4
    const/high16 v3, 0x40400000    # 3.0f

    cmpg-float v4, p1, v3

    if-gez v4, :cond_5

    .line 12
    iput-boolean v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_isOver:Z

    const/high16 p1, 0x40400000    # 3.0f

    .line 13
    :cond_5
    iget-boolean v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_zoomCenter:Z

    if-nez v1, :cond_6

    .line 14
    iget-object v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_zoomParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->getFromValue()F

    move-result v1

    sub-float v1, p1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    float-to-double v5, v1

    .line 15
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v1, v3

    .line 16
    iget v3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_pivotGeoX:I

    iget v4, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_beginCenterGeoX:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float v1, v2, v1

    sub-float/2addr v2, v1

    mul-float v3, v3, v2

    float-to-int v1, v3

    .line 17
    iget v3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_pivotGeoY:I

    iget v5, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_beginCenterGeoY:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    mul-float v3, v3, v2

    float-to-int v2, v3

    add-int/2addr v4, v1

    add-int/2addr v5, v2

    .line 18
    invoke-virtual {v0, v4, v5}, Lcom/autonavi/ae/gmap/GLMapState;->setMapGeoCenter(II)V

    .line 19
    :cond_6
    invoke-virtual {v0, p1}, Lcom/autonavi/ae/gmap/GLMapState;->setMapZoomer(F)V

    :cond_7
    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_isOver:Z

    .line 2
    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_hasCheckParams:Z

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_zoomCenter:Z

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_mapLevelTo:F

    .line 5
    iput v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_beginCenterGeoX:I

    .line 6
    iput v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_beginCenterGeoY:I

    .line 7
    iput v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_pivotGeoX:I

    .line 8
    iput v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_pivotGeoY:I

    .line 9
    iput v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_winPivotX:F

    .line 10
    iput v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_winPivotY:F

    .line 11
    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_zoomParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->reset()V

    :cond_0
    return-void
.end method

.method public setToMapZoomAndPivot(FILandroid/graphics/Point;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-direct {v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_zoomParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2
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

    .line 3
    :cond_1
    iput p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_mapLevelTo:F

    if-eqz p3, :cond_2

    .line 4
    iget p1, p3, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    iput p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_winPivotX:F

    .line 5
    iget p1, p3, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    iput p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_winPivotY:F

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimPivotZoom;->_zoomCenter:Z

    :cond_2
    return-void
.end method
