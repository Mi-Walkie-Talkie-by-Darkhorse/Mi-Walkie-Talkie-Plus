.class public Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector;
.super Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;
.source "RotateGestureDetector.java"


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

    iget v0, p0, Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector;->mPrevFingerDiffY:F

    float-to-double v0, v0

    iget v2, p0, Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector;->mPrevFingerDiffX:F

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    iget v2, p0, Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector;->mCurrFingerDiffY:F

    float-to-double v2, v2

    iget v4, p0, Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector;->mCurrFingerDiffX:F

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    sub-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method protected handleInProgressEvent(ILandroid/view/MotionEvent;)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector;->updateStateByEvent(Landroid/view/MotionEvent;)V

    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector;->mSloppyGesture:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector;->mListener:Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector$OnRotateGestureListener;

    invoke-interface {v0, p0}, Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector$OnRotateGestureListener;->onRotateEnd(Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector;)V

    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector;->resetState()V

    goto :goto_0

    :pswitch_2
    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector;->mSloppyGesture:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector;->mListener:Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector$OnRotateGestureListener;

    invoke-interface {v0, p0}, Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector$OnRotateGestureListener;->onRotateEnd(Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector;)V

    :cond_2
    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector;->resetState()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, p2}, Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector;->updateStateByEvent(Landroid/view/MotionEvent;)V

    iget v0, p0, Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector;->mCurrPressure:F

    iget v1, p0, Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector;->mPrevPressure:F

    div-float/2addr v0, v1

    const v1, 0x3f2b851f    # 0.67f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector;->mListener:Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector$OnRotateGestureListener;

    invoke-interface {v0, p0}, Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector$OnRotateGestureListener;->onRotate(Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected handleStartProgressEvent(ILandroid/view/MotionEvent;)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector;->resetState()V

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector;->mTimeDelta:J

    invoke-virtual {p0, p2}, Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector;->updateStateByEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p0, p2}, Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector;->isSloppyGesture(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector;->mSloppyGesture:Z

    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector;->mSloppyGesture:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector;->mListener:Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector$OnRotateGestureListener;

    invoke-interface {v0, p0}, Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector$OnRotateGestureListener;->onRotateBegin(Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector;->mGestureInProgress:Z

    goto :goto_0

    :pswitch_2
    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector;->mSloppyGesture:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector;->isSloppyGesture(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector;->mSloppyGesture:Z

    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector;->mSloppyGesture:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector;->mListener:Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector$OnRotateGestureListener;

    invoke-interface {v0, p0}, Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector$OnRotateGestureListener;->onRotateBegin(Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector;->mGestureInProgress:Z

    goto :goto_0

    :pswitch_3
    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector;->mSloppyGesture:Z

    if-nez v0, :cond_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected resetState()V
    .locals 1

    invoke-super {p0}, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->resetState()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/gesture/RotateGestureDetector;->mSloppyGesture:Z

    return-void
.end method
