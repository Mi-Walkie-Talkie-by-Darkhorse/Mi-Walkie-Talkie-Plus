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

    .line 1
    invoke-direct {p0, p1}, Lcom/autonavi/ae/gmap/gesture/BaseGestureDetector;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->finger0DiffX:F

    .line 3
    iput v0, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->finger0DiffY:F

    .line 4
    iput v0, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->finger1DiffX:F

    .line 5
    iput v0, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->finger1DiffY:F

    .line 6
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->mEdgeSlop:F

    return-void
.end method

.method protected static getRawX(Landroid/view/MotionEvent;I)F
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 2
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result p0

    sub-float/2addr p0, v0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected static getRawY(Landroid/view/MotionEvent;I)F
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    sub-float/2addr v0, v1

    .line 2
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p0

    sub-float/2addr p0, v0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getCurrentSpan()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->mCurrLen:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->mCurrFingerDiffX:F

    .line 3
    iget v1, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->mCurrFingerDiffY:F

    mul-float v0, v0, v0

    mul-float v1, v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->mCurrLen:F

    .line 5
    :cond_0
    iget v0, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->mCurrLen:F

    return v0
.end method

.method public getPointerDelta(I)Landroid/graphics/PointF;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Landroid/graphics/PointF;

    iget v0, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->finger0DiffX:F

    iget v1, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->finger0DiffY:F

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Landroid/graphics/PointF;

    iget v0, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->finger1DiffX:F

    iget v1, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->finger1DiffY:F

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1
.end method

.method public getPreviousSpan()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->mPrevLen:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->mPrevFingerDiffX:F

    .line 3
    iget v1, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->mPrevFingerDiffY:F

    mul-float v0, v0, v0

    mul-float v1, v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->mPrevLen:F

    .line 5
    :cond_0
    iget v0, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->mPrevLen:F

    return v0
.end method

.method protected abstract handleInProgressEvent(ILandroid/view/MotionEvent;)V
.end method

.method protected abstract handleStartProgressEvent(ILandroid/view/MotionEvent;)V
.end method

.method protected isSloppyGesture(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/BaseGestureDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->mEdgeSlop:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->mRightSlopEdge:F

    .line 3
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->mBottomSlopEdge:F

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    const/4 v5, 0x1

    .line 6
    invoke-static {p1, v5}, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v6

    .line 7
    invoke-static {p1, v5}, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result p1

    const/4 v7, 0x0

    cmpg-float v8, v3, v2

    if-ltz v8, :cond_1

    cmpg-float v8, v4, v2

    if-ltz v8, :cond_1

    cmpl-float v3, v3, v1

    if-gtz v3, :cond_1

    cmpl-float v3, v4, v0

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    cmpg-float v4, v6, v2

    if-ltz v4, :cond_3

    cmpg-float v2, p1, v2

    if-ltz v2, :cond_3

    cmpl-float v1, v6, v1

    if-gtz v1, :cond_3

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p1, 0x1

    :goto_3
    if-eqz v3, :cond_4

    if-eqz p1, :cond_4

    return v5

    :cond_4
    if-eqz v3, :cond_5

    return v5

    :cond_5
    if-eqz p1, :cond_6

    return v5

    :cond_6
    return v7
.end method

.method protected updateStateByEvent(Landroid/view/MotionEvent;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Lcom/autonavi/ae/gmap/gesture/BaseGestureDetector;->updateStateByEvent(Landroid/view/MotionEvent;)V

    .line 2
    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/BaseGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 3
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    .line 5
    iput v1, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->mCurrLen:F

    .line 6
    iput v1, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->mPrevLen:F

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    const/4 v4, 0x1

    .line 9
    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 10
    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    sub-float v6, v5, v2

    sub-float v7, v0, v3

    .line 11
    iput v6, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->mPrevFingerDiffX:F

    .line 12
    iput v7, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->mPrevFingerDiffY:F

    .line 13
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 14
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 15
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 16
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float v4, v7, v6

    sub-float v8, p1, v1

    .line 17
    iput v4, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->mCurrFingerDiffX:F

    .line 18
    iput v8, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->mCurrFingerDiffY:F

    sub-float/2addr v6, v2

    .line 19
    iput v6, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->finger0DiffX:F

    sub-float/2addr v1, v3

    .line 20
    iput v1, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->finger0DiffY:F

    sub-float/2addr v7, v5

    .line 21
    iput v7, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->finger1DiffX:F

    sub-float/2addr p1, v0

    .line 22
    iput p1, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->finger1DiffY:F

    :cond_1
    :goto_0
    return-void
.end method
