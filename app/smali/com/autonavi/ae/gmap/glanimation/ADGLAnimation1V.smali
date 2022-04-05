.class public Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation1V;
.super Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;


# instance fields
.field private _curValue:F

.field private _v1Param:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation1V;->_v1Param:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation1V;->reset()V

    iput p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_duration:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation1V;->_curValue:F

    return-void
.end method


# virtual methods
.method public doAnimation(Ljava/lang/Object;)V
    .locals 4

    iget-boolean p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_isOver:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_startTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_offsetTime:J

    long-to-float p1, v0

    iget v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_duration:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    if-lez v2, :cond_1

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_isOver:Z

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_2

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_isOver:Z

    return-void

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation1V;->_v1Param:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->setNormalizedTime(F)V

    iget-object p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation1V;->_v1Param:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->getCurValue()F

    move-result p1

    iput p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation1V;->_curValue:F

    :cond_3
    return-void
.end method

.method public getCurValue()F
    .locals 1

    iget v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation1V;->_curValue:F

    return v0
.end method

.method public getEndValue()F
    .locals 1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation1V;->_v1Param:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->getToValue()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getStartValue()F
    .locals 1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation1V;->_v1Param:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->getFromValue()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_isOver:Z

    iput v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_duration:I

    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation1V;->_v1Param:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->reset()V

    :cond_0
    return-void
.end method

.method public setAnimationValue(FFI)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation1V;->_v1Param:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-direct {v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation1V;->_v1Param:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation1V;->_v1Param:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->reset()V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation1V;->_v1Param:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p3, v1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->setInterpolatorType(IF)V

    iget-object p3, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation1V;->_v1Param:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {p3, p1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->setFromValue(F)V

    iget-object p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation1V;->_v1Param:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {p1, p2}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->setToValue(F)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_startTime:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_isOver:Z

    return-void
.end method
