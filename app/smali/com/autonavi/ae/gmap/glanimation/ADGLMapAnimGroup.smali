.class public Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;
.super Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;


# static fields
.field public static final CAMERA_MAX_DEGREE:I = 0x3c

.field public static final CAMERA_MIN_DEGREE:I = 0x0

.field public static final MAXMAPLEVEL:I = 0x14

.field public static final MINMAPLEVEL:I = 0x3


# instance fields
.field _endZoomDuration:I

.field _hasCheckParams:Z

.field _hasMidZoom:Z

.field _midZoomDuration:I

.field _moveParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

.field public _needMove:Z

.field _needRotateCamera:Z

.field _needRotateMap:Z

.field _needZoom:Z

.field _rotateCameraParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

.field _rotateMapParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

.field _startZoomDuration:I

.field _zoomEndParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

.field _zoomStartParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomStartParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    iput-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomEndParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    iput-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_moveParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    iput-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_rotateMapParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    iput-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_rotateCameraParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->reset()V

    iput p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_duration:I

    return-void
.end method

.method public static checkLevel(F)Z
    .locals 1

    const/high16 v0, 0x40400000    # 3.0f

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x41a00000    # 20.0f

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private initZoomEndParam(FFI)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomEndParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-direct {v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomEndParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomEndParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->reset()V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomEndParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p3, v1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->setInterpolatorType(IF)V

    iget-object p3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomEndParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {p3, p2}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->setToValue(F)V

    iget-object p2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomEndParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {p2, p1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->setFromValue(F)V

    return-void
.end method

.method private initZoomStartParam(FI)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomStartParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-direct {v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomStartParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomStartParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->reset()V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomStartParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p2, v1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->setInterpolatorType(IF)V

    iget-object p2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomStartParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {p2, p1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->setToValue(F)V

    return-void
.end method


# virtual methods
.method public commitAnimation(Ljava/lang/Object;)V
    .locals 8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_isOver:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_hasCheckParams:Z

    check-cast p1, Lcom/autonavi/ae/gmap/GLMapState;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needZoom:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomStartParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    if-nez v2, :cond_1

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_hasCheckParams:Z

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/GLMapState;->getMapZoomer()F

    move-result v2

    iget-object v3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomStartParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v3, v2}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->setFromValue(F)V

    iget-boolean v3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_hasMidZoom:Z

    const-wide v4, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomStartParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v3}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->getToValue()F

    move-result v3

    sub-float/2addr v3, v2

    iget-object v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomEndParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v2}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->getFromValue()F

    move-result v2

    iget-object v6, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomEndParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v6}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->getToValue()F

    move-result v6

    sub-float/2addr v2, v6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v6, v3

    cmpg-double v3, v6, v4

    if-ltz v3, :cond_3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    cmpg-double v6, v2, v4

    if-gez v6, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomStartParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v2}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->needToCaculate()Z

    iget-object v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomEndParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v2}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->needToCaculate()Z

    goto :goto_1

    :cond_3
    :goto_0
    iput-boolean v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_hasMidZoom:Z

    iget-object v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomStartParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    iget-object v3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomEndParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v3}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->getToValue()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->setToValue(F)V

    iget-object v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomStartParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v2}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->needToCaculate()Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomEndParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    :cond_4
    :goto_1
    iget-boolean v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_hasMidZoom:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomStartParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v2}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->getFromValue()F

    move-result v2

    iget-object v3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomStartParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v3}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->getToValue()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    cmpg-double v6, v2, v4

    if-gez v6, :cond_5

    iput-boolean v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needZoom:Z

    :cond_5
    iget-boolean v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needZoom:Z

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_hasMidZoom:Z

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_duration:I

    iget v3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_midZoomDuration:I

    sub-int/2addr v2, v3

    shr-int/2addr v2, v0

    iput v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_startZoomDuration:I

    iput v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_endZoomDuration:I

    goto :goto_2

    :cond_6
    iget v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_duration:I

    iput v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_startZoomDuration:I

    :cond_7
    :goto_2
    iget-boolean v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needMove:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_moveParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/autonavi/ae/gmap/GLMapState;->getGeoCenter(Lcom/autonavi/amap/mapcore/IPoint;)V

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    iget-object v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_moveParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    int-to-float v3, v3

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->setFromValue(FF)V

    iget-object v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_moveParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    invoke-virtual {v2}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->needToCaculate()Z

    move-result v2

    iput-boolean v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needMove:Z

    :cond_8
    iget-boolean v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needRotateMap:Z

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_rotateMapParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    if-eqz v2, :cond_c

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/GLMapState;->getMapAngle()F

    move-result v2

    iget-object v3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_rotateMapParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v3}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->getToValue()F

    move-result v3

    const/high16 v4, 0x43340000    # 180.0f

    const/high16 v5, 0x43b40000    # 360.0f

    cmpl-float v4, v2, v4

    if-lez v4, :cond_9

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-nez v4, :cond_9

    const/high16 v3, 0x43b40000    # 360.0f

    :cond_9
    float-to-int v4, v3

    float-to-int v6, v2

    sub-int/2addr v4, v6

    const/16 v6, 0xb4

    if-le v4, v6, :cond_a

    sub-float/2addr v3, v5

    goto :goto_3

    :cond_a
    const/16 v6, -0xb4

    if-ge v4, v6, :cond_b

    add-float/2addr v3, v5

    :cond_b
    :goto_3
    iget-object v4, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_rotateMapParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v4, v2}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->setFromValue(F)V

    iget-object v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_rotateMapParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v2, v3}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->setToValue(F)V

    iget-object v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_rotateMapParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v2}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->needToCaculate()Z

    move-result v2

    iput-boolean v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needRotateMap:Z

    :cond_c
    iget-boolean v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needRotateCamera:Z

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_rotateCameraParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    if-eqz v2, :cond_d

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/GLMapState;->getCameraHeaderAngle()F

    move-result p1

    iget-object v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_rotateCameraParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v2, p1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->setFromValue(F)V

    iget-object p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_rotateCameraParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->needToCaculate()Z

    move-result p1

    iput-boolean p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needRotateCamera:Z

    :cond_d
    iget-boolean p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needMove:Z

    if-nez p1, :cond_e

    iget-boolean p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needZoom:Z

    if-nez p1, :cond_e

    iget-boolean p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needRotateMap:Z

    if-nez p1, :cond_e

    iget-boolean p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needRotateCamera:Z

    if-nez p1, :cond_e

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_isOver:Z

    goto :goto_4

    :cond_e
    iput-boolean v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_isOver:Z

    :goto_4
    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_hasCheckParams:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_startTime:J

    return-void
.end method

.method public doAnimation(Ljava/lang/Object;)V
    .locals 8

    move-object v0, p1

    check-cast v0, Lcom/autonavi/ae/gmap/GLMapState;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_hasCheckParams:Z

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->commitAnimation(Ljava/lang/Object;)V

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

    iget p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_duration:I

    int-to-float v3, p1

    const/4 v4, 0x0

    const/4 v5, 0x1

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iput-boolean v5, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_isOver:Z

    return-void

    :cond_3
    long-to-float v1, v1

    int-to-float p1, p1

    div-float/2addr v1, p1

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float v2, v1, p1

    if-lez v2, :cond_4

    iput-boolean v5, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_isOver:Z

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_4
    cmpg-float p1, v1, v4

    if-gez p1, :cond_5

    iput-boolean v5, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_isOver:Z

    return-void

    :cond_5
    :goto_0
    iget-boolean p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needZoom:Z

    if-eqz p1, :cond_a

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapState;->getMapZoomer()F

    iget-boolean p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_hasMidZoom:Z

    if-eqz p1, :cond_8

    iget-wide v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_offsetTime:J

    iget p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_startZoomDuration:I

    int-to-long v4, p1

    cmp-long v6, v2, v4

    if-gtz v6, :cond_6

    long-to-float v2, v2

    int-to-float p1, p1

    div-float/2addr v2, p1

    iget-object p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomStartParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {p1, v2}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->setNormalizedTime(F)V

    iget-object p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomStartParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->getCurValue()F

    move-result p1

    goto :goto_1

    :cond_6
    iget v4, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_midZoomDuration:I

    add-int v5, p1, v4

    int-to-long v5, v5

    cmp-long v7, v2, v5

    if-gtz v7, :cond_7

    iget-object p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomStartParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->getToValue()F

    move-result p1

    goto :goto_1

    :cond_7
    int-to-long v5, p1

    sub-long/2addr v2, v5

    int-to-long v4, v4

    sub-long/2addr v2, v4

    long-to-float p1, v2

    iget v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_endZoomDuration:I

    int-to-float v2, v2

    div-float/2addr p1, v2

    iget-object v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomEndParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v2, p1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->setNormalizedTime(F)V

    iget-object p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomEndParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->getCurValue()F

    move-result p1

    :goto_1
    iget-boolean v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_isOver:Z

    if-eqz v2, :cond_9

    iget-object p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomEndParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->getToValue()F

    move-result p1

    goto :goto_2

    :cond_8
    iget-object p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomStartParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {p1, v1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->setNormalizedTime(F)V

    iget-object p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomStartParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->getCurValue()F

    move-result p1

    :cond_9
    :goto_2
    invoke-virtual {v0, p1}, Lcom/autonavi/ae/gmap/GLMapState;->setMapZoomer(F)V

    :cond_a
    iget-object p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_moveParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    if-eqz p1, :cond_b

    iget-boolean v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needMove:Z

    if-eqz v2, :cond_b

    invoke-virtual {p1, v1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->setNormalizedTime(F)V

    iget-object p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_moveParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->getFromXValue()F

    move-result p1

    float-to-int p1, p1

    iget-object v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_moveParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    invoke-virtual {v2}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->getFromYValue()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_moveParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    invoke-virtual {v3}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->getToXValue()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_moveParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    invoke-virtual {v4}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->getToYValue()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_moveParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    invoke-virtual {v5}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->getCurMult()F

    move-result v5

    invoke-virtual {v0, p1, v2}, Lcom/autonavi/ae/gmap/GLMapState;->setMapGeoCenter(II)V

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapState;->getMapGlCenter()Landroid/graphics/PointF;

    move-result-object p1

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {}, Lcom/autonavi/amap/mapcore/FPoint;->obtain()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v6

    invoke-virtual {v0, v3, v4, v6}, Lcom/autonavi/ae/gmap/GLMapState;->geo2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    iget v3, v6, Landroid/graphics/PointF;->x:F

    iget v4, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v2

    mul-float v3, v3, v5

    sub-float/2addr v4, p1

    mul-float v4, v4, v5

    add-float/2addr v2, v3

    add-float/2addr p1, v4

    invoke-virtual {v0, v2, p1}, Lcom/autonavi/ae/gmap/GLMapState;->setMapGlCenter(FF)V

    invoke-virtual {v6}, Lcom/autonavi/amap/mapcore/FPoint;->recycle()V

    :cond_b
    iget-object p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_rotateMapParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    if-eqz p1, :cond_c

    iget-boolean v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needRotateMap:Z

    if-eqz v2, :cond_c

    invoke-virtual {p1, v1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->setNormalizedTime(F)V

    iget-object p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_rotateMapParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->getCurValue()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/autonavi/ae/gmap/GLMapState;->setMapAngle(F)V

    :cond_c
    iget-object p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_rotateCameraParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    if-eqz p1, :cond_d

    iget-boolean v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needRotateCamera:Z

    if-eqz v2, :cond_d

    invoke-virtual {p1, v1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->setNormalizedTime(F)V

    iget-object p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_rotateCameraParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->getCurValue()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/autonavi/ae/gmap/GLMapState;->setCameraDegree(F)V

    :cond_d
    return-void
.end method

.method public isValid()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needRotateCamera:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needRotateMap:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needMove:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needZoom:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_isOver:Z

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_hasCheckParams:Z

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needZoom:Z

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needMove:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_moveParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needRotateMap:Z

    iput-object v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_rotateMapParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_hasMidZoom:Z

    iput v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_duration:I

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->reset()V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_moveParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->reset()V

    :cond_1
    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomStartParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->reset()V

    :cond_2
    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomEndParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->reset()V

    :cond_3
    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_rotateCameraParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->reset()V

    :cond_4
    return-void
.end method

.method public setDuration(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_duration:I

    return-void
.end method

.method public setToCameraDegree(FI)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needRotateCamera:Z

    const/high16 v0, 0x42700000    # 60.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needRotateCamera:Z

    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_rotateCameraParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-direct {v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_rotateCameraParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_rotateCameraParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->reset()V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_rotateCameraParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p2, v1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->setInterpolatorType(IF)V

    iget-object p2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_rotateCameraParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {p2, p1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->setToValue(F)V

    :cond_1
    return-void
.end method

.method public setToMapAngle(FI)V
    .locals 2

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p1, v0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needRotateMap:Z

    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_rotateMapParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-direct {v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_rotateMapParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_rotateMapParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->reset()V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_rotateMapParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p2, v1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->setInterpolatorType(IF)V

    iget-object p2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_rotateMapParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {p2, p1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->setToValue(F)V

    return-void
.end method

.method public setToMapCenterGeo(III)V
    .locals 2

    if-lez p1, :cond_1

    if-lez p2, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needMove:Z

    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_moveParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    invoke-direct {v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_moveParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_moveParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->reset()V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_moveParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p3, v1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->setInterpolatorType(IF)V

    iget-object p3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_moveParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {p3, p1, p2}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->setToValue(FF)V

    :cond_1
    return-void
.end method

.method public setToMapLevel(FFI)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needZoom:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_midZoomDuration:I

    iput-boolean v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_hasMidZoom:Z

    if-lez p3, :cond_0

    iget v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_duration:I

    if-ge p3, v2, :cond_0

    iput p3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_midZoomDuration:I

    :cond_0
    invoke-static {p1}, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->checkLevel(F)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-static {p2}, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->checkLevel(F)Z

    move-result p3

    if-eqz p3, :cond_1

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_hasMidZoom:Z

    invoke-direct {p0, p2, v1}, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->initZoomStartParam(FI)V

    invoke-direct {p0, p2, p1, v1}, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->initZoomEndParam(FFI)V

    return-void

    :cond_1
    invoke-static {p1}, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->checkLevel(F)Z

    move-result p3

    if-eqz p3, :cond_2

    iput-boolean v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_hasMidZoom:Z

    invoke-direct {p0, p1, v1}, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->initZoomStartParam(FI)V

    return-void

    :cond_2
    invoke-static {p2}, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->checkLevel(F)Z

    move-result p1

    if-eqz p1, :cond_3

    iput-boolean v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_hasMidZoom:Z

    invoke-direct {p0, p2, v1}, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->initZoomStartParam(FI)V

    return-void

    :cond_3
    iput-boolean v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needZoom:Z

    return-void
.end method

.method public setToMapLevel(FI)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needZoom:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_midZoomDuration:I

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_hasMidZoom:Z

    invoke-static {p1}, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->checkLevel(F)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->initZoomStartParam(FI)V

    return-void

    :cond_0
    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needZoom:Z

    return-void
.end method

.method public typeEqueal(Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needRotateCamera:Z

    iget-boolean v1, p1, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needRotateCamera:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needRotateMap:Z

    iget-boolean v1, p1, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needRotateMap:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needZoom:Z

    iget-boolean v1, p1, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needZoom:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needMove:Z

    iget-boolean p1, p1, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needMove:Z

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
