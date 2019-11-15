.class public Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;
.super Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;
.source "ADGLAnimationParam1V.java"


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
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->_needToCaculate:Z

    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->_hasFromValue:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->_hasToValue:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->_toValue:F

    iget v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->_fromValue:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    iput-boolean v4, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->_needToCaculate:Z

    :cond_0
    iput-boolean v4, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->_hasCheckedParam:Z

    return-void
.end method

.method public getCurValue()F
    .locals 3

    iget v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->_fromValue:F

    iget v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->_toValue:F

    iget v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->_fromValue:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->_mult:F

    mul-float/2addr v1, v2

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

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->reset()V

    iput v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->_fromValue:F

    iput v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->_toValue:F

    return-void
.end method

.method public setFromValue(F)V
    .locals 1

    iput p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->_fromValue:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->_hasFromValue:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->_hasCheckedParam:Z

    return-void
.end method

.method public setToValue(F)V
    .locals 1

    iput p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->_toValue:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->_hasToValue:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam1V;->_hasCheckedParam:Z

    return-void
.end method
