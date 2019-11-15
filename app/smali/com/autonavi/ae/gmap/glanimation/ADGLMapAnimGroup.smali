.class public Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;
.super Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;
.source "ADGLMapAnimGroup.java"


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

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomStartParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    iput-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomEndParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    iput-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_moveParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    iput-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_rotateMapParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    iput-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_rotateCameraParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->reset()V

    iput p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_duration:I

    return-void
.end method

.method public static checkLevel(F)Z
    .locals 1

    const/high16 v0, 0x40400000    # 3.0f

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x41a00000    # 20.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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

    invoke-virtual {v0, p3, v1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->setInterpolatorType(IF)V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomEndParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v0, p2}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->setToValue(F)V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomEndParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v0, p1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->setFromValue(F)V

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

    invoke-virtual {v0, p2, v1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->setInterpolatorType(IF)V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomStartParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v0, p1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->setToValue(F)V

    return-void
.end method


# virtual methods
.method public commitAnimation(Ljava/lang/Object;)V
    .locals 10

    const/high16 v1, 0x43b40000    # 360.0f

    const-wide v8, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    const/4 v7, 0x1

    const/4 v6, 0x0

    iput-boolean v7, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_isOver:Z

    iput-boolean v6, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_hasCheckParams:Z

    check-cast p1, Lcom/autonavi/ae/gmap/GLMapState;

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needZoom:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomStartParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    if-nez v0, :cond_1

    iput-boolean v7, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_hasCheckParams:Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/GLMapState;->getMapZoomer()F

    move-result v0

    iget-object v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomStartParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v2, v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->setFromValue(F)V

    iget-boolean v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_hasMidZoom:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomStartParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v2}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->getToValue()F

    move-result v2

    sub-float v0, v2, v0

    iget-object v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomEndParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v2}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->getFromValue()F

    move-result v2

    iget-object v3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomEndParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v3}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->getToValue()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v4, v0

    cmpg-double v0, v4, v8

    if-ltz v0, :cond_2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v2, v0

    cmpg-double v0, v2, v8

    if-gez v0, :cond_b

    :cond_2
    iput-boolean v6, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_hasMidZoom:Z

    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomStartParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    iget-object v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomEndParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v2}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->getToValue()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->setToValue(F)V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomStartParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->needToCaculate()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomEndParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_hasMidZoom:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomStartParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->getFromValue()F

    move-result v0

    iget-object v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomStartParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v2}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->getToValue()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v2, v0

    cmpg-double v0, v2, v8

    if-gez v0, :cond_4

    iput-boolean v6, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needZoom:Z

    :cond_4
    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needZoom:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_hasMidZoom:Z

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_duration:I

    iget v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_midZoomDuration:I

    sub-int/2addr v0, v2

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_startZoomDuration:I

    iget v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_startZoomDuration:I

    iput v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_endZoomDuration:I

    :cond_5
    :goto_2
    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needMove:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_moveParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/autonavi/ae/gmap/GLMapState;->getGeoCenter(Lcom/autonavi/amap/mapcore/IPoint;)V

    iget v2, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v3, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_moveParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    int-to-float v2, v2

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->setFromValue(FF)V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_moveParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->needToCaculate()Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needMove:Z

    :cond_6
    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needRotateMap:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_rotateMapParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/GLMapState;->getMapAngle()F

    move-result v2

    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_rotateMapParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->getToValue()F

    move-result v0

    const/high16 v3, 0x43340000    # 180.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_7

    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-nez v3, :cond_7

    move v0, v1

    :cond_7
    float-to-int v3, v0

    float-to-int v4, v2

    sub-int/2addr v3, v4

    const/16 v4, 0xb4

    if-le v3, v4, :cond_d

    sub-float/2addr v0, v1

    :cond_8
    :goto_3
    iget-object v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_rotateMapParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v1, v2}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->setFromValue(F)V

    iget-object v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_rotateMapParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v1, v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->setToValue(F)V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_rotateMapParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->needToCaculate()Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needRotateMap:Z

    :cond_9
    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needRotateCamera:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_rotateCameraParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/GLMapState;->getCameraHeaderAngle()F

    move-result v0

    iget-object v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_rotateCameraParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v1, v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->setFromValue(F)V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_rotateCameraParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->needToCaculate()Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needRotateCamera:Z

    :cond_a
    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needMove:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needZoom:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needRotateMap:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needRotateCamera:Z

    if-nez v0, :cond_e

    iput-boolean v7, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_isOver:Z

    :goto_4
    iput-boolean v7, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_hasCheckParams:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_startTime:J

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomStartParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->needToCaculate()Z

    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomEndParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->needToCaculate()Z

    goto/16 :goto_1

    :cond_c
    iget v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_duration:I

    iput v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_startZoomDuration:I

    goto/16 :goto_2

    :cond_d
    const/16 v4, -0xb4

    if-ge v3, v4, :cond_8

    add-float/2addr v0, v1

    goto :goto_3

    :cond_e
    iput-boolean v6, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_isOver:Z

    goto :goto_4
.end method

.method public doAnimation(Ljava/lang/Object;)V
    .locals 8

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    check-cast v0, Lcom/autonavi/ae/gmap/GLMapState;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_hasCheckParams:Z

    if-nez v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->commitAnimation(Ljava/lang/Object;)V

    :cond_2
    iget-boolean v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_isOver:Z

    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_startTime:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_offsetTime:J

    iget v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_duration:I

    int-to-float v2, v2

    cmpl-float v2, v2, v7

    if-nez v2, :cond_3

    iput-boolean v6, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_isOver:Z

    goto :goto_0

    :cond_3
    iget-wide v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_offsetTime:J

    long-to-float v2, v2

    iget v3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_duration:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    cmpl-float v3, v2, v1

    if-lez v3, :cond_8

    iput-boolean v6, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_isOver:Z

    :goto_1
    iget-boolean v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needZoom:Z

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapState;->getMapZoomer()F

    iget-boolean v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_hasMidZoom:Z

    if-eqz v2, :cond_b

    iget-wide v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_offsetTime:J

    iget v4, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_startZoomDuration:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_9

    iget-wide v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_offsetTime:J

    long-to-float v2, v2

    iget v3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_startZoomDuration:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomStartParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v3, v2}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->setNormalizedTime(F)V

    iget-object v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomStartParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v2}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->getCurValue()F

    move-result v2

    :goto_2
    iget-boolean v3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_isOver:Z

    if-eqz v3, :cond_4

    iget-object v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomEndParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v2}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->getToValue()F

    move-result v2

    :cond_4
    :goto_3
    invoke-virtual {v0, v2}, Lcom/autonavi/ae/gmap/GLMapState;->setMapZoomer(F)V

    :cond_5
    iget-object v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_moveParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needMove:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_moveParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    invoke-virtual {v2, v1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->setNormalizedTime(F)V

    iget-object v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_moveParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    invoke-virtual {v2}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->getFromXValue()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_moveParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    invoke-virtual {v3}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->getFromYValue()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_moveParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    invoke-virtual {v4}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->getToXValue()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_moveParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    invoke-virtual {v5}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->getToYValue()F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_moveParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    invoke-virtual {v6}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->getCurMult()F

    move-result v6

    invoke-virtual {v0, v2, v3}, Lcom/autonavi/ae/gmap/GLMapState;->setMapGeoCenter(II)V

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapState;->getMapGlCenter()Landroid/graphics/PointF;

    move-result-object v2

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-static {}, Lcom/autonavi/amap/mapcore/FPoint;->obtain()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v7

    invoke-virtual {v0, v4, v5, v7}, Lcom/autonavi/ae/gmap/GLMapState;->geo2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    iget v4, v7, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v5, v7, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    sub-float/2addr v4, v3

    mul-float/2addr v4, v6

    sub-float/2addr v5, v2

    mul-float/2addr v5, v6

    add-float/2addr v3, v4

    add-float/2addr v2, v5

    invoke-virtual {v0, v3, v2}, Lcom/autonavi/ae/gmap/GLMapState;->setMapGlCenter(FF)V

    invoke-virtual {v7}, Lcom/autonavi/amap/mapcore/FPoint;->recycle()V

    :cond_6
    iget-object v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_rotateMapParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needRotateMap:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_rotateMapParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v2, v1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->setNormalizedTime(F)V

    iget-object v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_rotateMapParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v2}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->getCurValue()F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/autonavi/ae/gmap/GLMapState;->setMapAngle(F)V

    :cond_7
    iget-object v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_rotateCameraParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needRotateCamera:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_rotateCameraParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v2, v1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->setNormalizedTime(F)V

    iget-object v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_rotateCameraParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->getCurValue()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapState;->setCameraDegree(F)V

    goto/16 :goto_0

    :cond_8
    cmpg-float v1, v2, v7

    if-gez v1, :cond_c

    iput-boolean v6, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_isOver:Z

    goto/16 :goto_0

    :cond_9
    iget-wide v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_offsetTime:J

    iget v4, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_startZoomDuration:I

    iget v5, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_midZoomDuration:I

    add-int/2addr v4, v5

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_a

    iget-object v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomStartParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v2}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->getToValue()F

    move-result v2

    goto/16 :goto_2

    :cond_a
    iget-wide v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_offsetTime:J

    iget v4, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_startZoomDuration:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    iget v4, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_midZoomDuration:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    long-to-float v2, v2

    iget v3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_endZoomDuration:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomEndParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v3, v2}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->setNormalizedTime(F)V

    iget-object v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomEndParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v2}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->getCurValue()F

    move-result v2

    goto/16 :goto_2

    :cond_b
    iget-object v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomStartParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v2, v1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->setNormalizedTime(F)V

    iget-object v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomStartParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v2}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->getCurValue()F

    move-result v2

    goto/16 :goto_3

    :cond_c
    move v1, v2

    goto/16 :goto_1
.end method

.method public isValid()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needRotateCamera:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needRotateMap:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needMove:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needZoom:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_isOver:Z

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_hasCheckParams:Z

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needZoom:Z

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needMove:Z

    iput-object v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_moveParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needRotateMap:Z

    iput-object v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_rotateMapParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_hasMidZoom:Z

    iput v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_duration:I

    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_rotateMapParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_rotateMapParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->reset()V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_moveParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_moveParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->reset()V

    :cond_1
    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomStartParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomStartParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->reset()V

    :cond_2
    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomEndParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_zoomEndParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->reset()V

    :cond_3
    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_rotateCameraParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_rotateCameraParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->reset()V

    :cond_4
    return-void
.end method

.method public setDuration(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_duration:I

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

    invoke-virtual {v0, p2, v1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->setInterpolatorType(IF)V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_rotateCameraParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v0, p1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->setToValue(F)V

    :cond_1
    return-void
.end method

.method public setToMapAngle(FI)V
    .locals 3

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float v0, p1, v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needRotateMap:Z

    iget-object v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_rotateMapParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    if-nez v1, :cond_0

    new-instance v1, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-direct {v1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;-><init>()V

    iput-object v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_rotateMapParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    :cond_0
    iget-object v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_rotateMapParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->reset()V

    iget-object v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_rotateMapParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, p2, v2}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->setInterpolatorType(IF)V

    iget-object v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_rotateMapParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v1, v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->setToValue(F)V

    return-void
.end method

.method public setToMapCenterGeo(III)V
    .locals 3

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

    invoke-virtual {v0, p3, v1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->setInterpolatorType(IF)V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_moveParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->setToValue(FF)V

    :cond_1
    return-void
.end method

.method public setToMapLevel(FFI)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-boolean v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needZoom:Z

    iput v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_midZoomDuration:I

    iput-boolean v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_hasMidZoom:Z

    if-lez p3, :cond_0

    iget v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_duration:I

    if-ge p3, v0, :cond_0

    iput p3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_midZoomDuration:I

    :cond_0
    invoke-static {p1}, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->checkLevel(F)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->checkLevel(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_hasMidZoom:Z

    invoke-direct {p0, p2, v1}, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->initZoomStartParam(FI)V

    invoke-direct {p0, p2, p1, v1}, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->initZoomEndParam(FFI)V

    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->checkLevel(F)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_hasMidZoom:Z

    invoke-direct {p0, p1, v1}, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->initZoomStartParam(FI)V

    goto :goto_0

    :cond_2
    invoke-static {p2}, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->checkLevel(F)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_hasMidZoom:Z

    invoke-direct {p0, p2, v1}, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->initZoomStartParam(FI)V

    goto :goto_0

    :cond_3
    iput-boolean v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needZoom:Z

    goto :goto_0
.end method

.method public setToMapLevel(FI)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needZoom:Z

    iput v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_midZoomDuration:I

    iput-boolean v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_hasMidZoom:Z

    invoke-static {p1}, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->checkLevel(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->initZoomStartParam(FI)V

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needZoom:Z

    goto :goto_0
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

    iget-boolean v1, p1, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimGroup;->_needMove:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
