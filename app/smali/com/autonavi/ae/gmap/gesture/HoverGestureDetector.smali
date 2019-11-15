.class public Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;
.super Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;
.source "HoverGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector$OnHoverGestureListener;
    }
.end annotation


# static fields
.field private static final FOCUS_DELTA_ZERO:Lcom/autonavi/amap/mapcore/FPoint;


# instance fields
.field private mCurrFocusInternal:Lcom/autonavi/amap/mapcore/FPoint;

.field private mFocusDeltaExternal:Lcom/autonavi/amap/mapcore/FPoint;

.field private mFocusExternal:Lcom/autonavi/amap/mapcore/FPoint;

.field private final mListener:Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector$OnHoverGestureListener;

.field private mPrevFocusInternal:Lcom/autonavi/amap/mapcore/FPoint;

.field private mSloppyGesture:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/autonavi/amap/mapcore/FPoint;->obtain()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v0

    sput-object v0, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->FOCUS_DELTA_ZERO:Lcom/autonavi/amap/mapcore/FPoint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector$OnHoverGestureListener;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/autonavi/amap/mapcore/FPoint;->obtain()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->mFocusExternal:Lcom/autonavi/amap/mapcore/FPoint;

    invoke-static {}, Lcom/autonavi/amap/mapcore/FPoint;->obtain()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->mFocusDeltaExternal:Lcom/autonavi/amap/mapcore/FPoint;

    iput-object p2, p0, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->mListener:Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector$OnHoverGestureListener;

    return-void
.end method


# virtual methods
.method public getFocusDelta()Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->mFocusDeltaExternal:Lcom/autonavi/amap/mapcore/FPoint;

    return-object v0
.end method

.method public getFocusX()F
    .locals 1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->mFocusExternal:Lcom/autonavi/amap/mapcore/FPoint;

    iget v0, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    return v0
.end method

.method public getFocusY()F
    .locals 1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->mFocusExternal:Lcom/autonavi/amap/mapcore/FPoint;

    iget v0, v0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

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
    invoke-virtual {p0, p2}, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->updateStateByEvent(Landroid/view/MotionEvent;)V

    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->mSloppyGesture:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->mListener:Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector$OnHoverGestureListener;

    invoke-interface {v0, p0}, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector$OnHoverGestureListener;->onHoveEnd(Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;)V

    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->resetState()V

    goto :goto_0

    :pswitch_2
    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->mSloppyGesture:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->mListener:Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector$OnHoverGestureListener;

    invoke-interface {v0, p0}, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector$OnHoverGestureListener;->onHoveEnd(Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;)V

    :cond_2
    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->resetState()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, p2}, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->updateStateByEvent(Landroid/view/MotionEvent;)V

    iget v0, p0, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->mCurrPressure:F

    iget v1, p0, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->mPrevPressure:F

    div-float/2addr v0, v1

    const v1, 0x3f2b851f    # 0.67f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->mListener:Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector$OnHoverGestureListener;

    invoke-interface {v0, p0}, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector$OnHoverGestureListener;->onHove(Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

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
    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->resetState()V

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->mTimeDelta:J

    invoke-virtual {p0, p2}, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->updateStateByEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p0, p2}, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->isSloppyGesture(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->mSloppyGesture:Z

    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->mSloppyGesture:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->mListener:Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector$OnHoverGestureListener;

    invoke-interface {v0, p0}, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector$OnHoverGestureListener;->onHoveBegin(Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->mGestureInProgress:Z

    goto :goto_0

    :pswitch_2
    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->mSloppyGesture:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->isSloppyGesture(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->mSloppyGesture:Z

    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->mSloppyGesture:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->mListener:Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector$OnHoverGestureListener;

    invoke-interface {v0, p0}, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector$OnHoverGestureListener;->onHoveBegin(Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->mGestureInProgress:Z

    goto :goto_0

    :pswitch_3
    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->mSloppyGesture:Z

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

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->mSloppyGesture:Z

    return-void
.end method

.method protected updateStateByEvent(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->updateStateByEvent(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    invoke-static {p1}, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->determineFocalPoint(Landroid/view/MotionEvent;)Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v1

    iput-object v1, p0, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->mCurrFocusInternal:Lcom/autonavi/amap/mapcore/FPoint;

    invoke-static {v0}, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->determineFocalPoint(Landroid/view/MotionEvent;)Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->mPrevFocusInternal:Lcom/autonavi/amap/mapcore/FPoint;

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    sget-object v0, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->FOCUS_DELTA_ZERO:Lcom/autonavi/amap/mapcore/FPoint;

    :goto_1
    iput-object v0, p0, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->mFocusDeltaExternal:Lcom/autonavi/amap/mapcore/FPoint;

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->mCurrFocusInternal:Lcom/autonavi/amap/mapcore/FPoint;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/FPoint;->recycle()V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->mPrevFocusInternal:Lcom/autonavi/amap/mapcore/FPoint;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/FPoint;->recycle()V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->mFocusExternal:Lcom/autonavi/amap/mapcore/FPoint;

    iget v1, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget-object v2, p0, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->mFocusDeltaExternal:Lcom/autonavi/amap/mapcore/FPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->mFocusExternal:Lcom/autonavi/amap/mapcore/FPoint;

    iget v1, v0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    iget-object v2, p0, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->mFocusDeltaExternal:Lcom/autonavi/amap/mapcore/FPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->mCurrFocusInternal:Lcom/autonavi/amap/mapcore/FPoint;

    iget v0, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget-object v1, p0, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->mPrevFocusInternal:Lcom/autonavi/amap/mapcore/FPoint;

    iget v1, v1, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->mCurrFocusInternal:Lcom/autonavi/amap/mapcore/FPoint;

    iget v1, v1, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    iget-object v2, p0, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->mPrevFocusInternal:Lcom/autonavi/amap/mapcore/FPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/autonavi/amap/mapcore/FPoint;->obtain(FF)Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v0

    goto :goto_1
.end method
