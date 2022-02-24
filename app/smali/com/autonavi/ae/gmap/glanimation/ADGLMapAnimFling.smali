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
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;-><init>()V

    .line 2
    iput p2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_screenCenterX:I

    .line 3
    iput p3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_screenCenterY:I

    .line 4
    iput p2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_lastMoveX:I

    .line 5
    iput p3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_lastMoveY:I

    const/4 p2, 0x0

    .line 6
    iput-object p2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_moveParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    .line 7
    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->reset()V

    .line 8
    iput p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_duration:I

    return-void
.end method


# virtual methods
.method public commitAnimation(Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p1, Lcom/autonavi/ae/gmap/GLMapState;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_hasCheckParams:Z

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_isOver:Z

    .line 4
    iget v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_velocityX:F

    iget v3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_duration:I

    int-to-float v4, v3

    mul-float v2, v2, v4

    const/high16 v4, 0x44fa0000    # 2000.0f

    div-float/2addr v2, v4

    float-to-int v2, v2

    .line 5
    iget v5, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_velocityY:F

    int-to-float v3, v3

    mul-float v5, v5, v3

    div-float/2addr v5, v4

    float-to-int v3, v5

    .line 6
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-eqz v4, :cond_2

    .line 7
    iget-object v4, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_fromCenter:Lcom/autonavi/amap/mapcore/IPoint;

    if-nez v4, :cond_1

    .line 8
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v4

    iput-object v4, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_fromCenter:Lcom/autonavi/amap/mapcore/IPoint;

    .line 9
    :cond_1
    iget-object v4, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_fromCenter:Lcom/autonavi/amap/mapcore/IPoint;

    invoke-virtual {p1, v4}, Lcom/autonavi/ae/gmap/GLMapState;->getGeoCenter(Lcom/autonavi/amap/mapcore/IPoint;)V

    .line 10
    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_isOver:Z

    .line 11
    iget-object p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_moveParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    iget v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_screenCenterX:I

    int-to-float v0, v0

    iget v4, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_screenCenterY:I

    int-to-float v4, v4

    invoke-virtual {p1, v0, v4}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->setFromValue(FF)V

    .line 12
    iget-object p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_moveParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    iget v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_screenCenterX:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_screenCenterY:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->setToValue(FF)V

    .line 13
    iget-object p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_moveParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->needToCaculate()Z

    move-result p1

    iput-boolean p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_needMove:Z

    .line 14
    :cond_2
    iput-boolean v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_hasCheckParams:Z

    .line 15
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_startTime:J

    return-void
.end method

.method public commitAnimationold(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Lcom/autonavi/ae/gmap/GLMapState;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_hasCheckParams:Z

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_isOver:Z

    .line 4
    iget v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_velocityX:F

    mul-float v2, v2, v2

    iget v3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_velocityY:F

    mul-float v3, v3, v3

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    const v3, 0x3dcccccd    # 0.1f

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_2

    const v3, 0x3ca3d70a    # 0.02f

    mul-float v2, v2, v3

    .line 5
    iget-object v3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_fromCenter:Lcom/autonavi/amap/mapcore/IPoint;

    if-nez v3, :cond_1

    .line 6
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v3

    iput-object v3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_fromCenter:Lcom/autonavi/amap/mapcore/IPoint;

    .line 7
    :cond_1
    iget-object v3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_fromCenter:Lcom/autonavi/amap/mapcore/IPoint;

    invoke-virtual {p1, v3}, Lcom/autonavi/ae/gmap/GLMapState;->getGeoCenter(Lcom/autonavi/amap/mapcore/IPoint;)V

    .line 8
    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_isOver:Z

    .line 9
    iget-object p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_moveParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    iget v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_screenCenterX:I

    int-to-float v0, v0

    iget v3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_screenCenterY:I

    int-to-float v3, v3

    invoke-virtual {p1, v0, v3}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->setFromValue(FF)V

    .line 10
    iget-object p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_moveParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    iget v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_screenCenterX:I

    int-to-float v0, v0

    iget v3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_velocityX:F

    mul-float v3, v3, v2

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_screenCenterY:I

    int-to-float v3, v3

    iget v4, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_velocityY:F

    mul-float v4, v4, v2

    sub-float/2addr v3, v4

    invoke-virtual {p1, v0, v3}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->setToValue(FF)V

    .line 11
    iget-object p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_moveParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->needToCaculate()Z

    move-result p1

    iput-boolean p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_needMove:Z

    .line 12
    :cond_2
    iput-boolean v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_hasCheckParams:Z

    .line 13
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_startTime:J

    return-void
.end method

.method public doAnimation(Ljava/lang/Object;)V
    .locals 6

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/autonavi/ae/gmap/GLMapState;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_hasCheckParams:Z

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {p0, p1}, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->commitAnimation(Ljava/lang/Object;)V

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

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    if-lez v2, :cond_3

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_isOver:Z

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_3
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_4

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_4

    .line 9
    iget-boolean v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_needMove:Z

    if-eqz v1, :cond_4

    .line 10
    iget-object v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_moveParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    invoke-virtual {v1, p1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->setNormalizedTime(F)V

    .line 11
    iget-object p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_moveParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->getCurXValue()F

    move-result p1

    float-to-int p1, p1

    .line 12
    iget-object v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_moveParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    invoke-virtual {v1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->getCurYValue()F

    move-result v1

    float-to-int v1, v1

    .line 13
    invoke-static {}, Lcom/autonavi/amap/mapcore/FPoint;->obtain()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v2

    .line 14
    iget v3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_screenCenterX:I

    add-int/2addr v3, p1

    iget v4, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_lastMoveX:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_screenCenterY:I

    add-int/2addr v4, v1

    iget v5, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_lastMoveY:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v3, v4, v2}, Lcom/autonavi/ae/gmap/GLMapState;->win2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 15
    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v4, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v3, v4}, Lcom/autonavi/ae/gmap/GLMapState;->setMapGlCenter(FF)V

    .line 16
    iput p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_lastMoveX:I

    .line 17
    iput v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_lastMoveY:I

    .line 18
    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/FPoint;->recycle()V

    :cond_4
    return-void
.end method

.method public reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_moveParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->reset()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_velocityX:F

    .line 4
    iput v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_velocityY:F

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_needMove:Z

    .line 6
    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_hasCheckParams:Z

    return-void
.end method

.method public setPositionAndVelocity(FF)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_moveParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    .line 2
    iput p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_velocityX:F

    .line 3
    iput p2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_velocityY:F

    .line 4
    new-instance p1, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    invoke-direct {p1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;-><init>()V

    iput-object p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_moveParam:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    const/4 p2, 0x2

    const v0, 0x3f99999a    # 1.2f

    .line 5
    invoke-virtual {p1, p2, v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->setInterpolatorType(IF)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_needMove:Z

    .line 7
    iput-boolean p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimFling;->_hasCheckParams:Z

    return-void
.end method
