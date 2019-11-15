.class public Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation1V;
.super Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation;
.source "ADGLAnimation1V.java"


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

    iput p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation1V;->_duration:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation1V;->_curValue:F

    return-void
.end method


# virtual methods
.method public doAnimation(Ljava/lang/Object;)V
    .locals 7

    const/4 v6, 0x1

    const/high16 v0, 0x3f800000    # 1.0f

    iget-boolean v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation1V;->_isOver:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation1V;->_startTime:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation1V;->_offsetTime:J

    iget-wide v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation1V;->_offsetTime:J

    long-to-float v1, v2

    iget v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation1V;->_duration:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    cmpl-float v2, v1, v0

    if-lez v2, :cond_2

    iput-boolean v6, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation1V;->_isOver:Z

    :goto_1
    iget-object v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation1V;->_v1Param:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation1V;->_v1Param:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v1, v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->setNormalizedTime(F)V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation1V;->_v1Param:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->getCurValue()F

    move-result v0

    iput v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation1V;->_curValue:F

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_3

    iput-boolean v6, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation1V;->_isOver:Z

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
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

    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation1V;->_v1Param:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->getToValue()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStartValue()F
    .locals 1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation1V;->_v1Param:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation1V;->_v1Param:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->getFromValue()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation1V;->_isOver:Z

    iput v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation1V;->_duration:I

    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation1V;->_v1Param:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation1V;->_v1Param:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

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

    invoke-virtual {v0, p3, v1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->setInterpolatorType(IF)V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation1V;->_v1Param:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v0, p1}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->setFromValue(F)V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation1V;->_v1Param:Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;

    invoke-virtual {v0, p2}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->setToValue(F)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation1V;->_startTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimation1V;->_isOver:Z

    return-void
.end method
