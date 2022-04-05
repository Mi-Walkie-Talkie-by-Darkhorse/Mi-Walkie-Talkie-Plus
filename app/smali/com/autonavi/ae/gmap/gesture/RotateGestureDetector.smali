.class public Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector;
.super Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector$SimpleOnRotateGestureListener;,
        Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector$OnRotateGestureListener;
    }
.end annotation


# instance fields
.field private final mListener:Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector$OnRotateGestureListener;

.field private mSloppyGesture:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector$OnRotateGestureListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector;->mListener:Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector$OnRotateGestureListener;

    return-void
.end method


# virtual methods
.method public getRotationDegreesDelta()F
    .locals 6

    iget v0, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->mPrevFingerDiffY:F

    float-to-double v0, v0

    iget v2, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->mPrevFingerDiffX:F

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    iget v2, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->mCurrFingerDiffY:F

    float-to-double v2, v2

    iget v4, p0, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->mCurrFingerDiffX:F

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    sub-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double v0, v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method protected handleInProgressEvent(ILandroid/view/MotionEvent;)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->updateStateByEvent(Landroid/view/MotionEvent;)V

    iget-boolean p1, p0, Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector;->mSloppyGesture:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector;->mListener:Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector$OnRotateGestureListener;

    invoke-interface {p1, p0}, Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector$OnRotateGestureListener;->onRotateEnd(Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector;)V

    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector;->resetState()V

    return-void

    :cond_2
    iget-boolean p1, p0, Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector;->mSloppyGesture:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector;->mListener:Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector$OnRotateGestureListener;

    invoke-interface {p1, p0}, Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector$OnRotateGestureListener;->onRotateEnd(Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector;)V

    :cond_3
    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector;->resetState()V

    return-void

    :cond_4
    invoke-virtual {p0, p2}, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->updateStateByEvent(Landroid/view/MotionEvent;)V

    iget p1, p0, Lcom/autonavi/ae/gmap/gesture/BaseGestureDetector;->mCurrPressure:F

    iget v0, p0, Lcom/autonavi/ae/gmap/gesture/BaseGestureDetector;->mPrevPressure:F

    div-float/2addr p1, v0

    const v0, 0x3f2b851f    # 0.67f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_5

    iget-object p1, p0, Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector;->mListener:Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector$OnRotateGestureListener;

    invoke-interface {p1, p0}, Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector$OnRotateGestureListener;->onRotate(Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/autonavi/ae/gmap/gesture/BaseGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/autonavi/ae/gmap/gesture/BaseGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    :cond_5
    :goto_0
    return-void
.end method

.method protected handleStartProgressEvent(ILandroid/view/MotionEvent;)V
    .locals 2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector;->resetState()V

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/autonavi/ae/gmap/gesture/BaseGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/autonavi/ae/gmap/gesture/BaseGestureDetector;->mTimeDelta:J

    invoke-virtual {p0, p2}, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->updateStateByEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p0, p2}, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->isSloppyGesture(Landroid/view/MotionEvent;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector;->mSloppyGesture:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector;->mListener:Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector$OnRotateGestureListener;

    invoke-interface {p1, p0}, Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector$OnRotateGestureListener;->onRotateBegin(Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/autonavi/ae/gmap/gesture/BaseGestureDetector;->mGestureInProgress:Z

    return-void

    :cond_1
    iget-boolean p1, p0, Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector;->mSloppyGesture:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0, p2}, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->isSloppyGesture(Landroid/view/MotionEvent;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector;->mSloppyGesture:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector;->mListener:Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector$OnRotateGestureListener;

    invoke-interface {p1, p0}, Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector$OnRotateGestureListener;->onRotateBegin(Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/autonavi/ae/gmap/gesture/BaseGestureDetector;->mGestureInProgress:Z

    :cond_2
    :goto_0
    return-void
.end method

.method protected resetState()V
    .locals 1

    invoke-super {p0}, Lcom/autonavi/ae/gmap/gesture/BaseGestureDetector;->resetState()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector;->mSloppyGesture:Z

    return-void
.end method
