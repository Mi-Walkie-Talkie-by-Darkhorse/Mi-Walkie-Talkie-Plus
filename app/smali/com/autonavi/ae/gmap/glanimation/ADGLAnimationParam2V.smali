.class public Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;
.super Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;
.source "ADGLAnimationParam2V.java"


# instance fields
.field public _fromXValue:F

.field public _fromYValue:F

.field public _toXValue:F

.field public _toYValue:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;-><init>()V

    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->reset()V

    return-void
.end method


# virtual methods
.method public checkParam()V
    .locals 7

    const/4 v6, 0x1

    const-wide v4, 0x3f1a36e2eb1c432dL    # 1.0E-4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->_needToCaculate:Z

    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->_hasFromValue:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->_hasToValue:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->_toXValue:F

    iget v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->_fromXValue:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->_toYValue:F

    iget v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->_fromYValue:F

    sub-float/2addr v1, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v2, v0

    cmpl-double v0, v2, v4

    if-gtz v0, :cond_0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_1

    :cond_0
    iput-boolean v6, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->_needToCaculate:Z

    :cond_1
    iput-boolean v6, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->_hasCheckedParam:Z

    return-void
.end method

.method public getCurXValue()F
    .locals 3

    iget v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->_fromXValue:F

    iget v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->_toXValue:F

    iget v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->_fromXValue:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->_mult:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getCurYValue()F
    .locals 3

    iget v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->_fromYValue:F

    iget v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->_toYValue:F

    iget v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->_fromYValue:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->_mult:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getFromXValue()F
    .locals 1

    iget v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->_fromXValue:F

    return v0
.end method

.method public getFromYValue()F
    .locals 1

    iget v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->_fromYValue:F

    return v0
.end method

.method public getToXValue()F
    .locals 1

    iget v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->_toXValue:F

    return v0
.end method

.method public getToYValue()F
    .locals 1

    iget v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->_toYValue:F

    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->reset()V

    iput v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->_fromXValue:F

    iput v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->_toXValue:F

    iput v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->_fromYValue:F

    iput v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->_toYValue:F

    return-void
.end method

.method public setFromValue(FF)V
    .locals 1

    iput p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->_fromXValue:F

    iput p2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->_fromYValue:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->_hasFromValue:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->_hasCheckedParam:Z

    return-void
.end method

.method public setToValue(FF)V
    .locals 1

    iput p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->_toXValue:F

    iput p2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->_toYValue:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->_hasToValue:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam2V;->_hasCheckedParam:Z

    return-void
.end method
