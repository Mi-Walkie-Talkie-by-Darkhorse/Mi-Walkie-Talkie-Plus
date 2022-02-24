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
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;-><init>()V

    const/4 p3, 0x0

    .line 2
    iput p3, p0, Lcom/autonavi/amap/mapcore/animation/GLRotateAnimation;->mFromDegrees:F

    const/high16 p4, 0x3f800000    # 1.0f

    .line 3
    iput p4, p0, Lcom/autonavi/amap/mapcore/animation/GLRotateAnimation;->mToDegrees:F

    .line 4
    iput p3, p0, Lcom/autonavi/amap/mapcore/animation/GLRotateAnimation;->mCurDegrees:F

    .line 5
    iput p3, p0, Lcom/autonavi/amap/mapcore/animation/GLRotateAnimation;->mPivotXValue:F

    .line 6
    iput p3, p0, Lcom/autonavi/amap/mapcore/animation/GLRotateAnimation;->mPivotYValue:F

    .line 7
    iput p1, p0, Lcom/autonavi/amap/mapcore/animation/GLRotateAnimation;->mFromDegrees:F

    .line 8
    iput p2, p0, Lcom/autonavi/amap/mapcore/animation/GLRotateAnimation;->mToDegrees:F

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLcom/autonavi/amap/mapcore/animation/GLTransformation;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/autonavi/amap/mapcore/animation/GLRotateAnimation;->mFromDegrees:F

    iget v1, p0, Lcom/autonavi/amap/mapcore/animation/GLRotateAnimation;->mToDegrees:F

    sub-float/2addr v1, v0

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    .line 2
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->getScaleFactor()F

    .line 3
    iput v0, p0, Lcom/autonavi/amap/mapcore/animation/GLRotateAnimation;->mCurDegrees:F

    .line 4
    iget p1, p0, Lcom/autonavi/amap/mapcore/animation/GLRotateAnimation;->mPivotX:F

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    float-to-double v0, v0

    .line 5
    iput-wide v0, p2, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->rotate:D

    return-void
.end method
