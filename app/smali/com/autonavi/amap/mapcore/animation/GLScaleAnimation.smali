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
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;-><init>()V

    iput v0, p0, Lcom/autonavi/amap/mapcore/animation/GLScaleAnimation;->mFromXData:I

    iput v0, p0, Lcom/autonavi/amap/mapcore/animation/GLScaleAnimation;->mToXData:I

    iput v0, p0, Lcom/autonavi/amap/mapcore/animation/GLScaleAnimation;->mFromYData:I

    iput v0, p0, Lcom/autonavi/amap/mapcore/animation/GLScaleAnimation;->mToYData:I

    iput p1, p0, Lcom/autonavi/amap/mapcore/animation/GLScaleAnimation;->mFromX:F

    iput p2, p0, Lcom/autonavi/amap/mapcore/animation/GLScaleAnimation;->mToX:F

    iput p3, p0, Lcom/autonavi/amap/mapcore/animation/GLScaleAnimation;->mFromY:F

    iput p4, p0, Lcom/autonavi/amap/mapcore/animation/GLScaleAnimation;->mToY:F

    iput v1, p0, Lcom/autonavi/amap/mapcore/animation/GLScaleAnimation;->mPivotX:F

    iput v1, p0, Lcom/autonavi/amap/mapcore/animation/GLScaleAnimation;->mPivotY:F

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLcom/autonavi/amap/mapcore/animation/GLTransformation;)V
    .locals 5

    const/4 v4, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/animation/GLScaleAnimation;->getScaleFactor()F

    iget v0, p0, Lcom/autonavi/amap/mapcore/animation/GLScaleAnimation;->mFromX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/autonavi/amap/mapcore/animation/GLScaleAnimation;->mToX:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    :cond_0
    iget v0, p0, Lcom/autonavi/amap/mapcore/animation/GLScaleAnimation;->mFromX:F

    iget v2, p0, Lcom/autonavi/amap/mapcore/animation/GLScaleAnimation;->mToX:F

    iget v3, p0, Lcom/autonavi/amap/mapcore/animation/GLScaleAnimation;->mFromX:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v0, v2

    :goto_0
    iget v2, p0, Lcom/autonavi/amap/mapcore/animation/GLScaleAnimation;->mFromY:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_1

    iget v2, p0, Lcom/autonavi/amap/mapcore/animation/GLScaleAnimation;->mToY:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_2

    :cond_1
    iget v1, p0, Lcom/autonavi/amap/mapcore/animation/GLScaleAnimation;->mFromY:F

    iget v2, p0, Lcom/autonavi/amap/mapcore/animation/GLScaleAnimation;->mToY:F

    iget v3, p0, Lcom/autonavi/amap/mapcore/animation/GLScaleAnimation;->mFromY:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    :cond_2
    iget v2, p0, Lcom/autonavi/amap/mapcore/animation/GLScaleAnimation;->mPivotX:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_3

    iget v2, p0, Lcom/autonavi/amap/mapcore/animation/GLScaleAnimation;->mPivotY:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_3

    float-to-double v2, v0

    iput-wide v2, p2, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scale_x:D

    float-to-double v0, v1

    iput-wide v0, p2, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scale_y:D

    :goto_1
    return-void

    :cond_3
    float-to-double v2, v0

    iput-wide v2, p2, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scale_x:D

    float-to-double v0, v1

    iput-wide v0, p2, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scale_y:D

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method
