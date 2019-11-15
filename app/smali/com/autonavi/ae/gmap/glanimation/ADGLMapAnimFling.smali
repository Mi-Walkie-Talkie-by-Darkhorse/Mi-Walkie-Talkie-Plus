.class public Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;
.super Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;
.source "ADGLMapAnimFling.java"


# instance fields
.field private _fromCenter:Lcom/autonavi/amap/mapcore/IPoint;

.field private _hasCheckParams:Z

.field private _lastMoveX:I

.field private _lastMoveY:I

.field private _moveParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

.field private _needMove:Z

.field private _screenCenterX:I

.field private _screenCenterY:I

.field private _velocityX:F

.field private _velocityY:F


# direct methods
.method public constructor <init>(III)V
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;-><init>()V

    iput p2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_screenCenterX:I

    iput p3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_screenCenterY:I

    iput p2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_lastMoveX:I

    iput p3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_lastMoveY:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_moveParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->reset()V

    iput p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_duration:I

    return-void
.end method


# virtual methods
.method public commitAnimation(Ljava/lang/Object;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x44fa0000    # 2000.0f

    check-cast p1, Lcom/autonavi/ae/gmap/GLMapState;

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v4, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_hasCheckParams:Z

    iput-boolean v5, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_isOver:Z

    iget v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_velocityX:F

    iget v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_duration:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    div-float/2addr v0, v3

    float-to-int v0, v0

    iget v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_velocityY:F

    iget v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_duration:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    float-to-int v1, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_fromCenter:Lcom/autonavi/amap/mapcore/IPoint;

    if-nez v2, :cond_1

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v2

    iput-object v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_fromCenter:Lcom/autonavi/amap/mapcore/IPoint;

    :cond_1
    iget-object v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_fromCenter:Lcom/autonavi/amap/mapcore/IPoint;

    invoke-virtual {p1, v2}, Lcom/autonavi/ae/gmap/GLMapState;->getGeoCenter(Lcom/autonavi/amap/mapcore/IPoint;)V

    iput-boolean v4, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_isOver:Z

    iget-object v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_moveParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    iget v3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_screenCenterX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_screenCenterY:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->setFromValue(FF)V

    iget-object v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_moveParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    iget v3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_screenCenterX:I

    sub-int v0, v3, v0

    int-to-float v0, v0

    iget v3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_screenCenterY:I

    sub-int v1, v3, v1

    int-to-float v1, v1

    invoke-virtual {v2, v0, v1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->setToValue(FF)V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_moveParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->needToCaculate()Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_needMove:Z

    :cond_2
    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_needMove:Z

    if-eqz v0, :cond_3

    :cond_3
    iput-boolean v5, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_hasCheckParams:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_startTime:J

    goto :goto_0
.end method

.method public commitAnimationold(Ljava/lang/Object;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v3, 0x0

    check-cast p1, Lcom/autonavi/ae/gmap/GLMapState;

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_hasCheckParams:Z

    iput-boolean v5, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_isOver:Z

    iget v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_velocityX:F

    iget v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_velocityX:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_velocityY:F

    iget v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_velocityY:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    const v1, 0x3dcccccd    # 0.1f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_2

    const v1, 0x3ca3d70a    # 0.02f

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_fromCenter:Lcom/autonavi/amap/mapcore/IPoint;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v1

    iput-object v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_fromCenter:Lcom/autonavi/amap/mapcore/IPoint;

    :cond_1
    iget-object v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_fromCenter:Lcom/autonavi/amap/mapcore/IPoint;

    invoke-virtual {p1, v1}, Lcom/autonavi/ae/gmap/GLMapState;->getGeoCenter(Lcom/autonavi/amap/mapcore/IPoint;)V

    iput-boolean v3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_isOver:Z

    iget-object v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_moveParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    iget v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_screenCenterX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_screenCenterY:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->setFromValue(FF)V

    iget-object v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_moveParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    iget v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_screenCenterX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_velocityX:F

    mul-float/2addr v3, v0

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_screenCenterY:I

    int-to-float v3, v3

    iget v4, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_velocityY:F

    mul-float/2addr v0, v4

    sub-float v0, v3, v0

    invoke-virtual {v1, v2, v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->setToValue(FF)V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_moveParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->needToCaculate()Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_needMove:Z

    :cond_2
    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_needMove:Z

    if-eqz v0, :cond_3

    :cond_3
    iput-boolean v5, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_hasCheckParams:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_startTime:J

    goto :goto_0
.end method

.method public doAnimation(Ljava/lang/Object;)V
    .locals 8

    const/high16 v2, 0x3f800000    # 1.0f

    move-object v0, p1

    check-cast v0, Lcom/autonavi/ae/gmap/GLMapState;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_hasCheckParams:Z

    if-nez v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->commitAnimation(Ljava/lang/Object;)V

    :cond_2
    iget-boolean v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_isOver:Z

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_startTime:J

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_offsetTime:J

    iget-wide v4, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_offsetTime:J

    long-to-float v1, v4

    iget v3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_duration:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    cmpl-float v3, v1, v2

    if-lez v3, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_isOver:Z

    move v1, v2

    :cond_3
    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_0

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_0

    iget-boolean v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_needMove:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_moveParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    invoke-virtual {v2, v1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->setNormalizedTime(F)V

    iget-object v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_moveParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    invoke-virtual {v1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->getCurXValue()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_moveParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    invoke-virtual {v2}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->getCurYValue()F

    move-result v2

    float-to-int v2, v2

    invoke-static {}, Lcom/autonavi/amap/mapcore/FPoint;->obtain()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v3

    iget v4, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_screenCenterX:I

    add-int/2addr v4, v1

    iget v5, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_lastMoveX:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_screenCenterY:I

    add-int/2addr v5, v2

    iget v6, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_lastMoveY:I

    sub-int/2addr v5, v6

    invoke-virtual {v0, v4, v5, v3}, Lcom/autonavi/ae/gmap/GLMapState;->win2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    iget v4, v3, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v5, v3, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-virtual {v0, v4, v5}, Lcom/autonavi/ae/gmap/GLMapState;->setMapGlCenter(FF)V

    iput v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_lastMoveX:I

    iput v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_lastMoveY:I

    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/FPoint;->recycle()V

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_moveParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_moveParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->reset()V

    :cond_0
    iput v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_velocityX:F

    iput v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_velocityY:F

    iput-boolean v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_needMove:Z

    iput-boolean v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_hasCheckParams:Z

    return-void
.end method

.method public setPositionAndVelocity(FF)V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_moveParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    iput p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_velocityX:F

    iput p2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_velocityY:F

    new-instance v0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    invoke-direct {v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_moveParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_moveParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    const/4 v1, 0x2

    const v2, 0x3f99999a    # 1.2f

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->setInterpolatorType(IF)V

    iput-boolean v3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_needMove:Z

    iput-boolean v3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_hasCheckParams:Z

    return-void
.end method
