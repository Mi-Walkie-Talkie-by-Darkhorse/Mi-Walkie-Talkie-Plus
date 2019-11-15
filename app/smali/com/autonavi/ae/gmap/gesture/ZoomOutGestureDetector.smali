.class public Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;
.super Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;
.source "ZoomOutGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector$SimpleOnZoomOutGestureListener;,
        Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector$OnZoomOutGestureListener;
    }
.end annotation


# static fields
.field private static final FOCUS_DELTA_ZERO:Landroid/graphics/PointF;


# instance fields
.field private mCurrFocusInternal:Lcom/autonavi/amap/mapcore/FPoint;

.field private mFocusDeltaExternal:Landroid/graphics/PointF;

.field private mFocusExternal:Landroid/graphics/PointF;

.field private final mListener:Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector$OnZoomOutGestureListener;

.field private mPrevFocusInternal:Lcom/autonavi/amap/mapcore/FPoint;

.field private mSloppyGesture:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    sput-object v0, Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;->FOCUS_DELTA_ZERO:Landroid/graphics/PointF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector$OnZoomOutGestureListener;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;->mFocusExternal:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;->mFocusDeltaExternal:Landroid/graphics/PointF;

    iput-object p2, p0, Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;->mListener:Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector$OnZoomOutGestureListener;

    return-void
.end method


# virtual methods
.method public getFocusX()F
    .locals 1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;->mFocusExternal:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    return v0
.end method

.method public getFocusY()F
    .locals 1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;->mFocusExternal:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    return v0
.end method

.method protected handleInProgressEvent(ILandroid/view/MotionEvent;)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;->updateStateByEvent(Landroid/view/MotionEvent;)V

    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;->mSloppyGesture:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;->mListener:Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector$OnZoomOutGestureListener;

    invoke-interface {v0, p0}, Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector$OnZoomOutGestureListener;->onZoomOut(Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;)V

    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;->resetState()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;->resetState()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
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
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;->resetState()V

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;->mTimeDelta:J

    invoke-virtual {p0, p2}, Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;->updateStateByEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p0, p2}, Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;->isSloppyGesture(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;->mSloppyGesture:Z

    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;->mSloppyGesture:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;->mListener:Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector$OnZoomOutGestureListener;

    invoke-interface {v0, p0}, Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector$OnZoomOutGestureListener;->onZoomOutBegin(Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;->mGestureInProgress:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method protected resetState()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->resetState()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;->mSloppyGesture:Z

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;->mFocusExternal:Landroid/graphics/PointF;

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;->mFocusDeltaExternal:Landroid/graphics/PointF;

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;->mFocusExternal:Landroid/graphics/PointF;

    iput v1, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;->mFocusDeltaExternal:Landroid/graphics/PointF;

    iput v1, v0, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method protected updateStateByEvent(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->updateStateByEvent(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    invoke-static {p1}, Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;->determineFocalPoint(Landroid/view/MotionEvent;)Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v1

    iput-object v1, p0, Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;->mCurrFocusInternal:Lcom/autonavi/amap/mapcore/FPoint;

    invoke-static {v0}, Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;->determineFocalPoint(Landroid/view/MotionEvent;)Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;->mPrevFocusInternal:Lcom/autonavi/amap/mapcore/FPoint;

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    sget-object v0, Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;->FOCUS_DELTA_ZERO:Landroid/graphics/PointF;

    :goto_1
    iput-object v0, p0, Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;->mFocusDeltaExternal:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;->mCurrFocusInternal:Lcom/autonavi/amap/mapcore/FPoint;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/FPoint;->recycle()V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;->mPrevFocusInternal:Lcom/autonavi/amap/mapcore/FPoint;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/FPoint;->recycle()V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;->mFocusExternal:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;->mFocusDeltaExternal:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;->mFocusExternal:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;->mFocusDeltaExternal:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;->mCurrFocusInternal:Lcom/autonavi/amap/mapcore/FPoint;

    iget v1, v1, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget-object v2, p0, Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;->mPrevFocusInternal:Lcom/autonavi/amap/mapcore/FPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;->mCurrFocusInternal:Lcom/autonavi/amap/mapcore/FPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    iget-object v3, p0, Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;->mPrevFocusInternal:Lcom/autonavi/amap/mapcore/FPoint;

    iget v3, v3, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    sub-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_1
.end method
