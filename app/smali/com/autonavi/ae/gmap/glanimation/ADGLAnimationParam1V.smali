.class public Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;
.super Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;


# instance fields
.field private _fromValue:F

.field private _toValue:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;-><init>()V

    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->reset()V

    return-void
.end method


# virtual methods
.method public checkParam()V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->_needToCaculate:Z

    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->_hasFromValue:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->_hasToValue:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->_toValue:F

    iget v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->_fromValue:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v2, v0

    const-wide v4, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v0, v2, v4

    if-lez v0, :cond_0

    iput-boolean v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->_needToCaculate:Z

    :cond_0
    iput-boolean v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->_hasCheckedParam:Z

    return-void
.end method

.method public getCurValue()F
    .locals 3

    iget v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->_fromValue:F

    iget v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->_toValue:F

    sub-float/2addr v1, v0

    iget v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->_mult:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getFromValue()F
    .locals 1

    iget v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->_fromValue:F

    return v0
.end method

.method public getToValue()F
    .locals 1

    iget v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->_toValue:F

    return v0
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->reset()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->_fromValue:F

    iput v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->_toValue:F

    return-void
.end method

.method public setFromValue(F)V
    .locals 0

    iput p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->_fromValue:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->_hasFromValue:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->_hasCheckedParam:Z

    return-void
.end method

.method public setToValue(F)V
    .locals 0

    iput p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->_toValue:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->_hasToValue:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->_hasCheckedParam:Z

    return-void
.end method
