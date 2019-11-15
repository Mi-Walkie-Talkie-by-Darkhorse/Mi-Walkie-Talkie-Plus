.class public Lcom/autonavi/amap/mapcore/animation/GLRotateAnimation;
.super Lcom/autonavi/amap/mapcore/animation/GLAnimation;
.source "GLRotateAnimation.java"


# instance fields
.field public mCurDegrees:F

.field public mFromDegrees:F

.field private mPivotX:F

.field private mPivotXValue:F

.field private mPivotY:F

.field private mPivotYValue:F

.field public mToDegrees:F


# direct methods
.method public constructor <init>(FFFFF)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;-><init>()V

    iput v1, p0, Lcom/autonavi/amap/mapcore/animation/GLRotateAnimation;->mFromDegrees:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/autonavi/amap/mapcore/animation/GLRotateAnimation;->mToDegrees:F

    iput v1, p0, Lcom/autonavi/amap/mapcore/animation/GLRotateAnimation;->mCurDegrees:F

    iput v1, p0, Lcom/autonavi/amap/mapcore/animation/GLRotateAnimation;->mPivotXValue:F

    iput v1, p0, Lcom/autonavi/amap/mapcore/animation/GLRotateAnimation;->mPivotYValue:F

    iput p1, p0, Lcom/autonavi/amap/mapcore/animation/GLRotateAnimation;->mFromDegrees:F

    iput p2, p0, Lcom/autonavi/amap/mapcore/animation/GLRotateAnimation;->mToDegrees:F

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLcom/autonavi/amap/mapcore/animation/GLTransformation;)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/autonavi/amap/mapcore/animation/GLRotateAnimation;->mFromDegrees:F

    iget v1, p0, Lcom/autonavi/amap/mapcore/animation/GLRotateAnimation;->mToDegrees:F

    iget v2, p0, Lcom/autonavi/amap/mapcore/animation/GLRotateAnimation;->mFromDegrees:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/animation/GLRotateAnimation;->getScaleFactor()F

    iput v0, p0, Lcom/autonavi/amap/mapcore/animation/GLRotateAnimation;->mCurDegrees:F

    iget v1, p0, Lcom/autonavi/amap/mapcore/animation/GLRotateAnimation;->mPivotX:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    iget v1, p0, Lcom/autonavi/amap/mapcore/animation/GLRotateAnimation;->mPivotY:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    float-to-double v0, v0

    iput-wide v0, p2, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->rotate:D

    :goto_0
    return-void

    :cond_0
    float-to-double v0, v0

    iput-wide v0, p2, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->rotate:D

    goto :goto_0
.end method
