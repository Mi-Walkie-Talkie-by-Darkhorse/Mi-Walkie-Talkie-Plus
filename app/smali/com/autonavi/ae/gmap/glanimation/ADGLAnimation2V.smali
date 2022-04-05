.class public Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation2V;
.super Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;


# instance fields
.field private _curValue1:F

.field private _curValue2:F

.field private _v2Param:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation2V;->_v2Param:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation2V;->reset()V

    iput p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_duration:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation2V;->_curValue1:F

    iput p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation2V;->_curValue2:F

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
    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation2V;->_v2Param:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->setNormalizedTime(F)V

    iget-object p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation2V;->_v2Param:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->getCurXValue()F

    move-result p1

    iput p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation2V;->_curValue1:F

    iget-object p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation2V;->_v2Param:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->getCurYValue()F

    move-result p1

    iput p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation2V;->_curValue2:F

    :cond_3
    return-void
.end method

.method public getCurValue(I)F
    .locals 0

    if-nez p1, :cond_0

    iget p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation2V;->_curValue1:F

    return p1

    :cond_0
    iget p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation2V;->_curValue2:F

    return p1
.end method

.method public getEndValue(I)F
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation2V;->_v2Param:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->getToXValue()F

    move-result p1

    return p1

    :cond_0
    return v0

    :cond_1
    iget-object p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation2V;->_v2Param:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->getToYValue()F

    move-result p1

    return p1

    :cond_2
    return v0
.end method

.method public getStartValue(I)F
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation2V;->_v2Param:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->getFromXValue()F

    move-result p1

    return p1

    :cond_0
    return v0

    :cond_1
    iget-object p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation2V;->_v2Param:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->getFromYValue()F

    move-result p1

    return p1

    :cond_2
    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_isOver:Z

    iput v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_duration:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation2V;->_curValue1:F

    iput v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation2V;->_curValue2:F

    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation2V;->_v2Param:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->reset()V

    :cond_0
    return-void
.end method

.method public setAnimationValue(FFFFI)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation2V;->_v2Param:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    invoke-direct {v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation2V;->_v2Param:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation2V;->_v2Param:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->reset()V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation2V;->_v2Param:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p5, v1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->setInterpolatorType(IF)V

    iget-object p5, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation2V;->_v2Param:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    invoke-virtual {p5, p1, p3}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->setFromValue(FF)V

    iget-object p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation2V;->_v2Param:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;

    invoke-virtual {p1, p2, p4}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->setToValue(FF)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_startTime:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;->_isOver:Z

    return-void
.end method
