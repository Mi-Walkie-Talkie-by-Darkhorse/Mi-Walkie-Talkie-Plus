.class public Lcom/autonavi/amap/mapcore/animation/GLScaleAnimation;
.super Lcom/autonavi/amap/mapcore/animation/GLAnimation;
.source "GLScaleAnimation.java"


# instance fields
.field private mFromX:F

.field private mFromXData:I

.field private mFromY:F

.field private mFromYData:I

.field private mPivotX:F

.field private mPivotY:F

.field private mToX:F

.field private mToXData:I

.field private mToY:F

.field private mToYData:I


# direct methods
.method public constructor <init>(FFFF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/autonavi/amap/mapcore/animation/GLScaleAnimation;->mFromXData:I

    .line 3
    iput v0, p0, Lcom/autonavi/amap/mapcore/animation/GLScaleAnimation;->mToXData:I

    .line 4
    iput v0, p0, Lcom/autonavi/amap/mapcore/animation/GLScaleAnimation;->mFromYData:I

    .line 5
    iput v0, p0, Lcom/autonavi/amap/mapcore/animation/GLScaleAnimation;->mToYData:I

    .line 6
    iput p1, p0, Lcom/autonavi/amap/mapcore/animation/GLScaleAnimation;->mFromX:F

    .line 7
    iput p2, p0, Lcom/autonavi/amap/mapcore/animation/GLScaleAnimation;->mToX:F

    .line 8
    iput p3, p0, Lcom/autonavi/amap/mapcore/animation/GLScaleAnimation;->mFromY:F

    .line 9
    iput p4, p0, Lcom/autonavi/amap/mapcore/animation/GLScaleAnimation;->mToY:F

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/autonavi/amap/mapcore/animation/GLScaleAnimation;->mPivotX:F

    .line 11
    iput p1, p0, Lcom/autonavi/amap/mapcore/animation/GLScaleAnimation;->mPivotY:F

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLcom/autonavi/amap/mapcore/animation/GLTransformation;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->getScaleFactor()F

    .line 2
    iget v0, p0, Lcom/autonavi/amap/mapcore/animation/GLScaleAnimation;->mFromX:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-nez v2, :cond_1

    iget v2, p0, Lcom/autonavi/amap/mapcore/animation/GLScaleAnimation;->mToX:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    iget v2, p0, Lcom/autonavi/amap/mapcore/animation/GLScaleAnimation;->mToX:F

    sub-float/2addr v2, v0

    mul-float v2, v2, p1

    add-float/2addr v0, v2

    .line 4
    :goto_1
    iget v2, p0, Lcom/autonavi/amap/mapcore/animation/GLScaleAnimation;->mFromY:F

    cmpl-float v3, v2, v1

    if-nez v3, :cond_2

    iget v3, p0, Lcom/autonavi/amap/mapcore/animation/GLScaleAnimation;->mToY:F

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_3

    .line 5
    :cond_2
    iget v1, p0, Lcom/autonavi/amap/mapcore/animation/GLScaleAnimation;->mToY:F

    sub-float/2addr v1, v2

    mul-float v1, v1, p1

    add-float/2addr v1, v2

    .line 6
    :cond_3
    iget p1, p0, Lcom/autonavi/amap/mapcore/animation/GLScaleAnimation;->mPivotX:F

    const/4 v2, 0x0

    cmpl-float p1, p1, v2

    float-to-double v2, v0

    .line 7
    iput-wide v2, p2, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scale_x:D

    float-to-double v0, v1

    .line 8
    iput-wide v0, p2, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scale_y:D

    return-void
.end method
