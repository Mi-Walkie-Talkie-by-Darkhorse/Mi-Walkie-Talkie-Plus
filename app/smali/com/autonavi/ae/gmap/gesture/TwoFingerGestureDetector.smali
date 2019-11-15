.class public abstract Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;
.super Lcom/autonavi/ae/gmap/gesture/BaseGestureDetector;
.source "TwoFingerGestureDetector.java"


# instance fields
.field private finger0DiffX:F

.field private finger0DiffY:F

.field private finger1DiffX:F

.field private finger1DiffY:F

.field private mBottomSlopEdge:F

.field protected mCurrFingerDiffX:F

.field protected mCurrFingerDiffY:F

.field private mCurrLen:F

.field private final mEdgeSlop:F

.field protected mPrevFingerDiffX:F

.field protected mPrevFingerDiffY:F

.field private mPrevLen:F

.field private mRightSlopEdge:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/autonavi/ae/gmap/gesture/BaseGestureDetector;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->finger0DiffX:F

    iput v0, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->finger0DiffY:F

    iput v0, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->finger1DiffX:F

    iput v0, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->finger1DiffY:F

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->mEdgeSlop:F

    return-void
.end method

.method protected static getRawX(Landroid/view/MotionEvent;I)F
    .locals 2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float v0, v1, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static getRawY(Landroid/view/MotionEvent;I)F
    .locals 2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    sub-float v0, v1, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCurrentSpan()F
    .locals 2

    iget v0, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->mCurrLen:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->mCurrFingerDiffX:F

    iget v1, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->mCurrFingerDiffY:F

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->mCurrLen:F

    :cond_0
    iget v0, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->mCurrLen:F

    return v0
.end method

.method public getPointerDelta(I)Landroid/graphics/PointF;
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->finger0DiffX:F

    iget v2, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->finger0DiffY:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->finger1DiffX:F

    iget v2, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->finger1DiffY:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0
.end method

.method public getPreviousSpan()F
    .locals 2

    iget v0, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->mPrevLen:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->mPrevFingerDiffX:F

    iget v1, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->mPrevFingerDiffY:F

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->mPrevLen:F

    :cond_0
    iget v0, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->mPrevLen:F

    return v0
.end method

.method protected abstract handleInProgressEvent(ILandroid/view/MotionEvent;)V
.end method

.method protected abstract handleStartProgressEvent(ILandroid/view/MotionEvent;)V
.end method

.method protected isSloppyGesture(Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    iget v4, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->mEdgeSlop:F

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->mRightSlopEdge:F

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    iget v3, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->mEdgeSlop:F

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->mBottomSlopEdge:F

    iget v2, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->mEdgeSlop:F

    iget v4, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->mRightSlopEdge:F

    iget v5, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->mBottomSlopEdge:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    invoke-static {p1, v0}, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v7

    invoke-static {p1, v0}, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v8

    cmpg-float v9, v3, v2

    if-ltz v9, :cond_0

    cmpg-float v9, v6, v2

    if-ltz v9, :cond_0

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_0

    cmpl-float v3, v6, v5

    if-lez v3, :cond_3

    :cond_0
    move v3, v0

    :goto_0
    cmpg-float v6, v7, v2

    if-ltz v6, :cond_1

    cmpg-float v2, v8, v2

    if-ltz v2, :cond_1

    cmpl-float v2, v7, v4

    if-gtz v2, :cond_1

    cmpl-float v2, v8, v5

    if-lez v2, :cond_4

    :cond_1
    move v2, v0

    :goto_1
    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    :cond_2
    :goto_2
    return v0

    :cond_3
    move v3, v1

    goto :goto_0

    :cond_4
    move v2, v1

    goto :goto_1

    :cond_5
    if-nez v3, :cond_2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_2
.end method

.method protected updateStateByEvent(Landroid/view/MotionEvent;)V
    .locals 10

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/autonavi/ae/gmap/gesture/BaseGestureDetector;->updateStateByEvent(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    iget-object v1, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    if-eq v2, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput v4, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->mCurrLen:F

    iput v4, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->mPrevLen:F

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    sub-float v4, v3, v1

    sub-float v5, v0, v2

    iput v4, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->mPrevFingerDiffX:F

    iput v5, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->mPrevFingerDiffY:F

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    sub-float v8, v6, v4

    sub-float v9, v7, v5

    iput v8, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->mCurrFingerDiffX:F

    iput v9, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->mCurrFingerDiffY:F

    sub-float v1, v4, v1

    iput v1, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->finger0DiffX:F

    sub-float v1, v5, v2

    iput v1, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->finger0DiffY:F

    sub-float v1, v6, v3

    iput v1, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->finger1DiffX:F

    sub-float v0, v7, v0

    iput v0, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->finger1DiffY:F

    goto :goto_0
.end method
