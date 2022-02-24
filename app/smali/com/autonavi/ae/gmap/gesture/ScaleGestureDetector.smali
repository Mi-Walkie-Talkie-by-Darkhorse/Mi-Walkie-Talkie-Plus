.class public Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;
.super Ljava/lang/Object;
.source "ScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector$SimpleOnScaleGestureListener;,
        Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector$OnScaleGestureListener;
    }
.end annotation


# static fields
.field private static final PRESSURE_THRESHOLD:F = 0.67f


# instance fields
.field private mActive0MostRecent:Z

.field private mActiveId0:I

.field private mActiveId1:I

.field private mBottomSlopEdge:F

.field private final mContext:Landroid/content/Context;

.field private mCurrEvent:Landroid/view/MotionEvent;

.field private mCurrFingerDiffX:F

.field private mCurrFingerDiffY:F

.field private mCurrLen:F

.field private mCurrPressure:F

.field private final mEdgeSlop:F

.field private mFocusX:F

.field private mFocusY:F

.field private mGestureInProgress:Z

.field private mInvalidGesture:Z

.field private final mListener:Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector$OnScaleGestureListener;

.field private mPrevEvent:Landroid/view/MotionEvent;

.field private mPrevFingerDiffX:F

.field private mPrevFingerDiffY:F

.field private mPrevLen:F

.field private mPrevPressure:F

.field private mRightSlopEdge:F

.field private mScaleFactor:F

.field private mSloppyGesture:Z

.field private mTimeDelta:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector$OnScaleGestureListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 3
    iput-object p1, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mContext:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mListener:Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector$OnScaleGestureListener;

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mEdgeSlop:F

    return-void
.end method

.method private findNewActiveIndex(Landroid/view/MotionEvent;II)I
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    if-eq v1, p3, :cond_0

    if-eq v1, p2, :cond_0

    .line 3
    iget v2, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mEdgeSlop:F

    .line 4
    iget v3, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mRightSlopEdge:F

    .line 5
    iget v4, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mBottomSlopEdge:F

    .line 6
    invoke-static {p1, v1}, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v5

    .line 7
    invoke-static {p1, v1}, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v6

    cmpl-float v7, v5, v2

    if-ltz v7, :cond_0

    cmpl-float v2, v6, v2

    if-ltz v2, :cond_0

    cmpg-float v2, v5, v3

    if-gtz v2, :cond_0

    cmpg-float v2, v6, v4

    if-gtz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    return v1
.end method

.method private static getRawX(Landroid/view/MotionEvent;I)F
    .locals 2

    if-gez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-nez p1, :cond_1

    .line 1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result p0

    return p0

    .line 2
    :cond_1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result p0

    add-float/2addr p0, v0

    return p0
.end method

.method private static getRawY(Landroid/view/MotionEvent;I)F
    .locals 2

    if-gez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-nez p1, :cond_1

    .line 1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result p0

    return p0

    .line 2
    :cond_1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p0

    add-float/2addr p0, v0

    return p0
.end method

.method private reset()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 3
    iput-object v1, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 6
    iput-object v1, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    :cond_1
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mSloppyGesture:Z

    .line 8
    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mGestureInProgress:Z

    const/4 v1, -0x1

    .line 9
    iput v1, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mActiveId0:I

    .line 10
    iput v1, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mActiveId1:I

    .line 11
    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mInvalidGesture:Z

    return-void
.end method

.method private setContext(Landroid/view/MotionEvent;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 3
    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    const/high16 v0, -0x40800000    # -1.0f

    .line 4
    iput v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mCurrLen:F

    .line 5
    iput v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mPrevLen:F

    .line 6
    iput v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mScaleFactor:F

    .line 7
    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 8
    iget v1, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mActiveId0:I

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 9
    iget v2, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mActiveId1:I

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 10
    iget v3, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mActiveId0:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 11
    iget v4, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mActiveId1:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    if-ltz v1, :cond_2

    if-ltz v2, :cond_2

    if-ltz v3, :cond_2

    if-gez v4, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 14
    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 15
    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 16
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    .line 17
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    .line 18
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    .line 19
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    sub-float/2addr v7, v5

    sub-float/2addr v8, v6

    sub-float/2addr v11, v9

    sub-float/2addr v12, v10

    .line 20
    iput v7, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mPrevFingerDiffX:F

    .line 21
    iput v8, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mPrevFingerDiffY:F

    .line 22
    iput v11, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mCurrFingerDiffX:F

    .line 23
    iput v12, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mCurrFingerDiffY:F

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v11, v11, v5

    add-float/2addr v9, v11

    .line 24
    iput v9, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mFocusX:F

    mul-float v12, v12, v5

    add-float/2addr v10, v12

    .line 25
    iput v10, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mFocusY:F

    .line 26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mTimeDelta:J

    .line 27
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v3

    .line 28
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result p1

    add-float/2addr v3, p1

    iput v3, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mCurrPressure:F

    .line 29
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result p1

    .line 30
    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v0

    add-float/2addr p1, v0

    iput p1, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mPrevPressure:F

    return-void

    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mInvalidGesture:Z

    .line 32
    iget-boolean p1, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mGestureInProgress:Z

    if-eqz p1, :cond_3

    .line 33
    iget-object p1, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mListener:Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {p1, p0}, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public getCurrentSpan()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mCurrLen:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mCurrFingerDiffX:F

    .line 3
    iget v1, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mCurrFingerDiffY:F

    mul-float v0, v0, v0

    mul-float v1, v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mCurrLen:F

    .line 5
    :cond_0
    iget v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mCurrLen:F

    return v0
.end method

.method public getCurrentSpanX()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mCurrFingerDiffX:F

    return v0
.end method

.method public getCurrentSpanY()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mCurrFingerDiffY:F

    return v0
.end method

.method public getEvent()Landroid/view/MotionEvent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public getEventTime()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFocusX()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mFocusX:F

    return v0
.end method

.method public getFocusY()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mFocusY:F

    return v0
.end method

.method public getPreviousSpan()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mPrevLen:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mPrevFingerDiffX:F

    .line 3
    iget v1, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mPrevFingerDiffY:F

    mul-float v0, v0, v0

    mul-float v1, v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mPrevLen:F

    .line 5
    :cond_0
    iget v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mPrevLen:F

    return v0
.end method

.method public getPreviousSpanX()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mPrevFingerDiffX:F

    return v0
.end method

.method public getPreviousSpanY()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mPrevFingerDiffY:F

    return v0
.end method

.method public getScaleFactor()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mScaleFactor:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->getCurrentSpan()F

    move-result v0

    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->getPreviousSpan()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mScaleFactor:F

    .line 3
    :cond_0
    iget v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mScaleFactor:F

    return v0
.end method

.method public getTimeDelta()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mTimeDelta:J

    return-wide v0
.end method

.method public isInProgress()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mGestureInProgress:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->reset()V

    .line 3
    :cond_0
    iget-boolean v1, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mInvalidGesture:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    goto/16 :goto_12

    .line 4
    :cond_1
    iget-boolean v1, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mGestureInProgress:Z

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, -0x1

    const/16 v7, 0x8

    const/4 v8, 0x2

    if-nez v1, :cond_23

    if-eqz v0, :cond_22

    if-eq v0, v3, :cond_21

    const/high16 v1, -0x40800000    # -1.0f

    if-eq v0, v8, :cond_17

    if-eq v0, v5, :cond_9

    if-eq v0, v4, :cond_2

    goto/16 :goto_11

    .line 5
    :cond_2
    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mSloppyGesture:Z

    if-eqz v0, :cond_34

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v7, :cond_3

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 9
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    if-le v0, v8, :cond_5

    .line 10
    iget v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mActiveId0:I

    if-ne v4, v0, :cond_4

    .line 11
    iget v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mActiveId1:I

    invoke-direct {p0, p1, v0, v1}, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v0

    if-ltz v0, :cond_34

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mActiveId0:I

    goto/16 :goto_11

    .line 13
    :cond_4
    iget v2, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mActiveId1:I

    if-ne v4, v2, :cond_34

    .line 14
    invoke-direct {p0, p1, v0, v1}, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v0

    if-ltz v0, :cond_34

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mActiveId1:I

    goto/16 :goto_11

    .line 16
    :cond_5
    iget v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mActiveId0:I

    if-ne v4, v0, :cond_6

    iget v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mActiveId1:I

    .line 17
    :cond_6
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_8

    .line 18
    iput-boolean v3, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mInvalidGesture:Z

    .line 19
    iget-boolean p1, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mGestureInProgress:Z

    if-eqz p1, :cond_7

    .line 20
    iget-object p1, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mListener:Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {p1, p0}, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;)V

    :cond_7
    return v2

    .line 21
    :cond_8
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mActiveId0:I

    .line 22
    iput-boolean v3, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mActive0MostRecent:Z

    .line 23
    iput v6, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mActiveId1:I

    .line 24
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mFocusX:F

    .line 25
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mFocusY:F

    goto/16 :goto_11

    .line 26
    :cond_9
    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 28
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    iget v5, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mEdgeSlop:F

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mRightSlopEdge:F

    .line 29
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    sub-float/2addr v0, v5

    iput v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mBottomSlopEdge:F

    .line 30
    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_a

    .line 31
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 32
    :cond_a
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    const-wide/16 v4, 0x0

    .line 33
    iput-wide v4, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mTimeDelta:J

    .line 34
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_d

    .line 35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 36
    iget v4, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mActiveId0:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mActiveId1:I

    if-ltz v4, :cond_b

    if-ne v4, v0, :cond_f

    :cond_b
    if-ne v4, v0, :cond_c

    goto :goto_1

    .line 38
    :cond_c
    iget v6, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mActiveId1:I

    :goto_1
    invoke-direct {p0, p1, v6, v4}, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v4

    .line 39
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mActiveId0:I

    goto :goto_2

    .line 40
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-lez v0, :cond_e

    .line 41
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 42
    iget v4, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mActiveId0:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 43
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mActiveId1:I

    goto :goto_2

    :cond_e
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 44
    :cond_f
    :goto_2
    iput-boolean v2, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mActive0MostRecent:Z

    .line 45
    invoke-direct {p0, p1}, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 46
    iget v5, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mEdgeSlop:F

    .line 47
    iget v6, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mRightSlopEdge:F

    .line 48
    iget v7, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mBottomSlopEdge:F

    .line 49
    invoke-static {p1, v4}, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v8

    .line 50
    invoke-static {p1, v4}, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v9

    .line 51
    invoke-static {p1, v0}, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v10

    .line 52
    invoke-static {p1, v0}, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v11

    cmpg-float v12, v8, v5

    if-ltz v12, :cond_11

    cmpg-float v12, v9, v5

    if-ltz v12, :cond_11

    cmpl-float v8, v8, v6

    if-gtz v8, :cond_11

    cmpl-float v8, v9, v7

    if-lez v8, :cond_10

    goto :goto_3

    :cond_10
    const/4 v8, 0x0

    goto :goto_4

    :cond_11
    :goto_3
    const/4 v8, 0x1

    :goto_4
    cmpg-float v9, v10, v5

    if-ltz v9, :cond_13

    cmpg-float v5, v11, v5

    if-ltz v5, :cond_13

    cmpl-float v5, v10, v6

    if-gtz v5, :cond_13

    cmpl-float v5, v11, v7

    if-lez v5, :cond_12

    goto :goto_5

    :cond_12
    const/4 v5, 0x0

    goto :goto_6

    :cond_13
    :goto_5
    const/4 v5, 0x1

    :goto_6
    if-eqz v8, :cond_14

    if-eqz v5, :cond_14

    .line 53
    iput v1, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mFocusX:F

    .line 54
    iput v1, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mFocusY:F

    .line 55
    iput-boolean v3, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mSloppyGesture:Z

    goto/16 :goto_11

    :cond_14
    if-eqz v8, :cond_15

    .line 56
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mFocusX:F

    .line 57
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mFocusY:F

    .line 58
    iput-boolean v3, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mSloppyGesture:Z

    goto/16 :goto_11

    :cond_15
    if-eqz v5, :cond_16

    .line 59
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mFocusX:F

    .line 60
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mFocusY:F

    .line 61
    iput-boolean v3, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mSloppyGesture:Z

    goto/16 :goto_11

    .line 62
    :cond_16
    iput-boolean v2, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mSloppyGesture:Z

    .line 63
    iget-object p1, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mListener:Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {p1, p0}, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mGestureInProgress:Z

    goto/16 :goto_11

    .line 64
    :cond_17
    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mSloppyGesture:Z

    if-eqz v0, :cond_34

    .line 65
    iget v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mEdgeSlop:F

    .line 66
    iget v4, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mRightSlopEdge:F

    .line 67
    iget v5, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mBottomSlopEdge:F

    .line 68
    iget v6, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mActiveId0:I

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    .line 69
    iget v7, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mActiveId1:I

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v7

    .line 70
    invoke-static {p1, v6}, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v8

    .line 71
    invoke-static {p1, v6}, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v9

    .line 72
    invoke-static {p1, v7}, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v10

    .line 73
    invoke-static {p1, v7}, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v11

    cmpg-float v12, v8, v0

    if-ltz v12, :cond_19

    cmpg-float v12, v9, v0

    if-ltz v12, :cond_19

    cmpl-float v8, v8, v4

    if-gtz v8, :cond_19

    cmpl-float v8, v9, v5

    if-lez v8, :cond_18

    goto :goto_7

    :cond_18
    const/4 v8, 0x0

    goto :goto_8

    :cond_19
    :goto_7
    const/4 v8, 0x1

    :goto_8
    cmpg-float v9, v10, v0

    if-ltz v9, :cond_1b

    cmpg-float v0, v11, v0

    if-ltz v0, :cond_1b

    cmpl-float v0, v10, v4

    if-gtz v0, :cond_1b

    cmpl-float v0, v11, v5

    if-lez v0, :cond_1a

    goto :goto_9

    :cond_1a
    const/4 v0, 0x0

    goto :goto_a

    :cond_1b
    :goto_9
    const/4 v0, 0x1

    :goto_a
    if-eqz v8, :cond_1c

    .line 74
    iget v4, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mActiveId1:I

    invoke-direct {p0, p1, v4, v6}, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v4

    if-ltz v4, :cond_1c

    .line 75
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mActiveId0:I

    .line 76
    invoke-static {p1, v4}, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    .line 77
    invoke-static {p1, v4}, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move v6, v4

    const/4 v8, 0x0

    :cond_1c
    if-eqz v0, :cond_1d

    .line 78
    iget v4, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mActiveId0:I

    invoke-direct {p0, p1, v4, v7}, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v4

    if-ltz v4, :cond_1d

    .line 79
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mActiveId1:I

    .line 80
    invoke-static {p1, v4}, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    .line 81
    invoke-static {p1, v4}, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move v7, v4

    const/4 v0, 0x0

    :cond_1d
    if-eqz v8, :cond_1e

    if-eqz v0, :cond_1e

    .line 82
    iput v1, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mFocusX:F

    .line 83
    iput v1, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mFocusY:F

    goto/16 :goto_11

    :cond_1e
    if-eqz v8, :cond_1f

    .line 84
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mFocusX:F

    .line 85
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mFocusY:F

    goto/16 :goto_11

    :cond_1f
    if-eqz v0, :cond_20

    .line 86
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mFocusX:F

    .line 87
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mFocusY:F

    goto/16 :goto_11

    .line 88
    :cond_20
    iput-boolean v2, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mSloppyGesture:Z

    .line 89
    iget-object p1, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mListener:Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {p1, p0}, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mGestureInProgress:Z

    goto/16 :goto_11

    .line 90
    :cond_21
    invoke-direct {p0}, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->reset()V

    goto/16 :goto_11

    .line 91
    :cond_22
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mActiveId0:I

    .line 92
    iput-boolean v3, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mActive0MostRecent:Z

    goto/16 :goto_11

    :cond_23
    if-eq v0, v3, :cond_33

    if-eq v0, v8, :cond_32

    const/4 v1, 0x3

    if-eq v0, v1, :cond_31

    if-eq v0, v5, :cond_2b

    if-eq v0, v4, :cond_24

    goto/16 :goto_11

    .line 93
    :cond_24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 94
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v7, :cond_25

    .line 95
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    goto :goto_b

    :cond_25
    const/4 v1, 0x0

    .line 96
    :goto_b
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    if-le v0, v8, :cond_29

    .line 97
    iget v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mActiveId0:I

    if-ne v4, v0, :cond_27

    .line 98
    iget v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mActiveId1:I

    invoke-direct {p0, p1, v0, v1}, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v0

    if-ltz v0, :cond_26

    .line 99
    iget-object v1, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mListener:Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v1, p0}, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;)V

    .line 100
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mActiveId0:I

    .line 101
    iput-boolean v3, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mActive0MostRecent:Z

    .line 102
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 103
    invoke-direct {p0, p1}, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 104
    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mListener:Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v0, p0}, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mGestureInProgress:Z

    goto :goto_c

    :cond_26
    const/4 v2, 0x1

    goto :goto_c

    .line 105
    :cond_27
    iget v5, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mActiveId1:I

    if-ne v4, v5, :cond_28

    .line 106
    invoke-direct {p0, p1, v0, v1}, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v0

    if-ltz v0, :cond_26

    .line 107
    iget-object v1, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mListener:Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v1, p0}, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;)V

    .line 108
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mActiveId1:I

    .line 109
    iput-boolean v2, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mActive0MostRecent:Z

    .line 110
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 111
    invoke-direct {p0, p1}, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 112
    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mListener:Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v0, p0}, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mGestureInProgress:Z

    .line 113
    :cond_28
    :goto_c
    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 114
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 115
    invoke-direct {p0, p1}, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    goto :goto_d

    :cond_29
    const/4 v2, 0x1

    :goto_d
    if-eqz v2, :cond_34

    .line 116
    invoke-direct {p0, p1}, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 117
    iget v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mActiveId0:I

    if-ne v4, v0, :cond_2a

    iget v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mActiveId1:I

    .line 118
    :cond_2a
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 119
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mFocusX:F

    .line 120
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mFocusY:F

    .line 121
    iget-object p1, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mListener:Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {p1, p0}, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;)V

    .line 122
    invoke-direct {p0}, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->reset()V

    .line 123
    iput v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mActiveId0:I

    .line 124
    iput-boolean v3, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mActive0MostRecent:Z

    goto/16 :goto_11

    .line 125
    :cond_2b
    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mListener:Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v0, p0}, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;)V

    .line 126
    iget v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mActiveId0:I

    .line 127
    iget v1, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mActiveId1:I

    .line 128
    invoke-direct {p0}, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->reset()V

    .line 129
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    iput-object v4, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 130
    iget-boolean v4, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mActive0MostRecent:Z

    if-eqz v4, :cond_2c

    goto :goto_e

    :cond_2c
    move v0, v1

    :goto_e
    iput v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mActiveId0:I

    .line 131
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_2d

    .line 132
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mActiveId1:I

    goto :goto_f

    .line 133
    :cond_2d
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mActiveId1:I

    .line 134
    :goto_f
    iput-boolean v2, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mActive0MostRecent:Z

    .line 135
    iget v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mActiveId0:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ltz v0, :cond_2e

    .line 136
    iget v1, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mActiveId0:I

    iget v2, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mActiveId1:I

    if-ne v1, v2, :cond_30

    .line 137
    :cond_2e
    iget v1, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mActiveId0:I

    iget v2, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mActiveId1:I

    if-ne v1, v2, :cond_2f

    goto :goto_10

    :cond_2f
    move v6, v2

    :goto_10
    invoke-direct {p0, p1, v6, v0}, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v0

    .line 138
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mActiveId0:I

    .line 139
    :cond_30
    invoke-direct {p0, p1}, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 140
    iget-object p1, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mListener:Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {p1, p0}, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mGestureInProgress:Z

    goto :goto_11

    .line 141
    :cond_31
    iget-object p1, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mListener:Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {p1, p0}, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;)V

    .line 142
    invoke-direct {p0}, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->reset()V

    goto :goto_11

    .line 143
    :cond_32
    invoke-direct {p0, p1}, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 144
    iget v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mCurrPressure:F

    iget v1, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mPrevPressure:F

    div-float/2addr v0, v1

    const v1, 0x3f2b851f    # 0.67f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_34

    .line 145
    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mListener:Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v0, p0}, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector$OnScaleGestureListener;->onScale(Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 146
    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 147
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    goto :goto_11

    .line 148
    :cond_33
    invoke-direct {p0}, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->reset()V

    :cond_34
    :goto_11
    const/4 v2, 0x1

    :goto_12
    return v2
.end method
