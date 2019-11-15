.class public abstract Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;
.super Ljava/lang/Object;
.source "ADGLAnimationParam.java"


# instance fields
.field protected _factor:F

.field protected _hasCheckedParam:Z

.field protected _hasFromValue:Z

.field protected _hasToValue:Z

.field protected _interpolationType:I

.field protected _mult:F

.field protected _needToCaculate:Z

.field protected _normalizedTime:F


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->_hasCheckedParam:Z

    iput-boolean v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->_needToCaculate:Z

    iput v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->_interpolationType:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->_factor:F

    iput-boolean v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->_hasCheckedParam:Z

    iput-boolean v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->_needToCaculate:Z

    iput-boolean v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->_hasFromValue:Z

    iput-boolean v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->_hasToValue:Z

    return-void
.end method

.method static bounce(F)F
    .locals 2

    mul-float v0, p0, p0

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public abstract checkParam()V
.end method

.method public getCurMult()F
    .locals 1

    iget v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->_mult:F

    return v0
.end method

.method public getInterpolatorType()I
    .locals 1

    iget v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->_interpolationType:I

    return v0
.end method

.method public needToCaculate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->_hasCheckedParam:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->checkParam()V

    :cond_0
    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->_hasCheckedParam:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->_needToCaculate:Z

    if-eqz v0, :cond_1

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

    iput-boolean v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->_hasCheckedParam:Z

    iput-boolean v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->_needToCaculate:Z

    iput v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->_interpolationType:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->_factor:F

    iput-boolean v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->_hasCheckedParam:Z

    iput-boolean v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->_needToCaculate:Z

    iput-boolean v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->_hasFromValue:Z

    iput-boolean v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->_hasToValue:Z

    return-void
.end method

.method public setInterpolatorType(IF)V
    .locals 0

    iput p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->_interpolationType:I

    iput p2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->_factor:F

    return-void
.end method

.method public setNormalizedTime(F)V
    .locals 6

    const/4 v0, 0x0

    const/high16 v2, 0x40800000    # 4.0f

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v3, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->_normalizedTime:F

    iget v1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->_interpolationType:I

    packed-switch v1, :pswitch_data_0

    move p1, v0

    :goto_0
    :pswitch_0
    iput p1, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->_mult:F

    return-void

    :pswitch_1
    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3e800000    # 0.25f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    mul-float/2addr p1, v2

    goto :goto_0

    :cond_1
    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_2

    mul-float v0, v2, p1

    sub-float p1, v5, v0

    goto :goto_0

    :cond_2
    const/high16 v1, 0x3f400000    # 0.75f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_3

    mul-float v0, v2, p1

    sub-float p1, v0, v5

    goto :goto_0

    :cond_3
    cmpg-float v1, p1, v3

    if-gtz v1, :cond_4

    mul-float v0, v2, p1

    sub-float p1, v2, v0

    goto :goto_0

    :cond_4
    move p1, v0

    goto :goto_0

    :pswitch_2
    float-to-double v0, p1

    iget v2, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->_factor:F

    mul-float/2addr v2, v5

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p1, v0

    goto :goto_0

    :pswitch_3
    iget v0, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->_factor:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_5

    sub-float v0, v3, p1

    sub-float v1, v3, p1

    mul-float/2addr v0, v1

    sub-float p1, v3, v0

    goto :goto_0

    :cond_5
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-float v2, v3, p1

    float-to-double v2, v2

    iget v4, p0, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->_factor:F

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-double/2addr v0, v2

    double-to-float p1, v0

    goto :goto_0

    :pswitch_4
    add-float v0, p1, v3

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-float p1, v0

    goto :goto_0

    :pswitch_5
    const v0, 0x3f8fb15b    # 1.1226f

    mul-float/2addr v0, p1

    const v1, 0x3eb4fdf4    # 0.3535f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_6

    invoke-static {v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->bounce(F)F

    move-result p1

    goto :goto_0

    :cond_6
    const v1, 0x3f3da512    # 0.7408f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_7

    const v1, 0x3f0c14a5

    sub-float/2addr v0, v1

    invoke-static {v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->bounce(F)F

    move-result v0

    const v1, 0x3f333333    # 0.7f

    add-float p1, v0, v1

    goto/16 :goto_0

    :cond_7
    const v1, 0x3f76e2eb    # 0.9644f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_8

    const v1, 0x3f5a43fe    # 0.8526f

    sub-float/2addr v0, v1

    invoke-static {v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->bounce(F)F

    move-result v0

    const v1, 0x3f666666    # 0.9f

    add-float p1, v0, v1

    goto/16 :goto_0

    :cond_8
    const v1, 0x3f859168    # 1.0435f

    sub-float/2addr v0, v1

    invoke-static {v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLAnimationParam;->bounce(F)F

    move-result v0

    const v1, 0x3f733333    # 0.95f

    add-float p1, v0, v1

    goto/16 :goto_0

    :pswitch_6
    sub-float v0, p1, v3

    mul-float v1, v0, v0

    add-float v2, v5, v3

    mul-float/2addr v0, v2

    add-float/2addr v0, v5

    mul-float/2addr v0, v1

    add-float p1, v0, v3

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_1
    .end packed-switch
.end method
