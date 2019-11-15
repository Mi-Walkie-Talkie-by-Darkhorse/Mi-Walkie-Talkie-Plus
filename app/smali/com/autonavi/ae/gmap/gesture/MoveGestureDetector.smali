.class public Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;
.super Lcom/autonavi/ae/gmap/gesture/BaseGestureDetector;
.source "MoveGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector$SimpleOnMoveGestureListener;,
        Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector$OnMoveGestureListener;
    }
.end annotation


# static fields
.field private static final FOCUS_DELTA_ZERO:Landroid/graphics/PointF;


# instance fields
.field private mCurrFocusInternal:Lcom/autonavi/amap/mapcore/FPoint;

.field private mFocusDeltaExternal:Landroid/graphics/PointF;

.field private mFocusExternal:Landroid/graphics/PointF;

.field private final mListener:Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector$OnMoveGestureListener;

.field private mPrevFocusInternal:Lcom/autonavi/amap/mapcore/FPoint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    sput-object v0, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;->FOCUS_DELTA_ZERO:Landroid/graphics/PointF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector$OnMoveGestureListener;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/autonavi/ae/gmap/gesture/BaseGestureDetector;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;->mFocusExternal:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;->mFocusDeltaExternal:Landroid/graphics/PointF;

    iput-object p2, p0, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;->mListener:Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector$OnMoveGestureListener;

    return-void
.end method


# virtual methods
.method public getFocusDelta()Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;->mFocusDeltaExternal:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getFocusX()F
    .locals 1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;->mFocusExternal:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    return v0
.end method

.method public getFocusY()F
    .locals 1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;->mFocusExternal:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    return v0
.end method

.method protected handleInProgressEvent(ILandroid/view/MotionEvent;)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;->mListener:Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector$OnMoveGestureListener;

    invoke-interface {v0, p0}, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector$OnMoveGestureListener;->onMoveEnd(Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;)V

    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;->resetState()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;->updateStateByEvent(Landroid/view/MotionEvent;)V

    iget v0, p0, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;->mCurrPressure:F

    iget v1, p0, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;->mPrevPressure:F

    div-float/2addr v0, v1

    const v1, 0x3f2b851f    # 0.67f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;->mListener:Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector$OnMoveGestureListener;

    invoke-interface {v0, p0}, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector$OnMoveGestureListener;->onMove(Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected handleStartProgressEvent(ILandroid/view/MotionEvent;)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;->resetState()V

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;->mTimeDelta:J

    invoke-virtual {p0, p2}, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;->updateStateByEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_0
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {p0, p2}, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;->updateStateByEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;->mListener:Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector$OnMoveGestureListener;

    invoke-interface {v0, p0}, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector$OnMoveGestureListener;->onMoveBegin(Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;->mGestureInProgress:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected updateStateByEvent(Landroid/view/MotionEvent;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/autonavi/ae/gmap/gesture/BaseGestureDetector;->updateStateByEvent(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    invoke-static {p1}, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;->determineFocalPoint(Landroid/view/MotionEvent;)Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v1

    iput-object v1, p0, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;->mCurrFocusInternal:Lcom/autonavi/amap/mapcore/FPoint;

    invoke-static {v0}, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;->determineFocalPoint(Landroid/view/MotionEvent;)Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;->mPrevFocusInternal:Lcom/autonavi/amap/mapcore/FPoint;

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    if-eqz v1, :cond_2

    sget-object v0, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;->FOCUS_DELTA_ZERO:Landroid/graphics/PointF;

    :goto_1
    iput-object v0, p0, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;->mFocusDeltaExternal:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;->mCurrFocusInternal:Lcom/autonavi/amap/mapcore/FPoint;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/FPoint;->recycle()V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;->mPrevFocusInternal:Lcom/autonavi/amap/mapcore/FPoint;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/FPoint;->recycle()V

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;->mFocusExternal:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;->mFocusDeltaExternal:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;->mFocusExternal:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;->mFocusDeltaExternal:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    return-void

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;->mCurrFocusInternal:Lcom/autonavi/amap/mapcore/FPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget-object v3, p0, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;->mPrevFocusInternal:Lcom/autonavi/amap/mapcore/FPoint;

    iget v3, v3, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;->mCurrFocusInternal:Lcom/autonavi/amap/mapcore/FPoint;

    iget v3, v3, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    iget-object v4, p0, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;->mPrevFocusInternal:Lcom/autonavi/amap/mapcore/FPoint;

    iget v4, v4, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    sub-float/2addr v3, v4

    invoke-direct {v0, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_1
.end method
