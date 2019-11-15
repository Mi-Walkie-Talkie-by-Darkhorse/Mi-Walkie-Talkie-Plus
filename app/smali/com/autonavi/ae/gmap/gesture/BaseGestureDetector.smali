.class public abstract Lcom/autonavi/ae/gmap/gesture/BaseGestureDetector;
.super Ljava/lang/Object;
.source "BaseGestureDetector.java"


# static fields
.field protected static final PRESSURE_THRESHOLD:F = 0.67f


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected mCurrEvent:Landroid/view/MotionEvent;

.field protected mCurrPressure:F

.field protected mGestureInProgress:Z

.field protected mPrevEvent:Landroid/view/MotionEvent;

.field protected mPrevPressure:F

.field protected mTimeDelta:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/autonavi/ae/gmap/gesture/BaseGestureDetector;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static determineFocalPoint(Landroid/view/MotionEvent;)Lcom/autonavi/amap/mapcore/FPoint;
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    const/4 v0, 0x0

    move v2, v1

    :goto_0
    if-ge v0, v3, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    add-float/2addr v2, v4

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    add-float/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    int-to-float v0, v3

    div-float v0, v2, v0

    int-to-float v2, v3

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/autonavi/amap/mapcore/FPoint;->obtain(FF)Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v0

    return-object v0
.end method

.method public static getFocalPoint(Landroid/view/MotionEvent;)Landroid/graphics/PointF;
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    const/4 v0, 0x0

    move v2, v1

    :goto_0
    if-ge v0, v3, :cond_0

    invoke-static {p0, v0}, Lcom/autonavi/ae/gmap/gesture/BaseGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v4

    add-float/2addr v2, v4

    invoke-static {p0, v0}, Lcom/autonavi/ae/gmap/gesture/BaseGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v4

    add-float/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    int-to-float v4, v3

    div-float/2addr v2, v4

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-direct {v0, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method private static getRawX(Landroid/view/MotionEvent;I)F
    .locals 2

    if-gez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method private static getRawY(Landroid/view/MotionEvent;I)F
    .locals 2

    if-gez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getEvent()Landroid/view/MotionEvent;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/BaseGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public getEventTime()J
    .locals 2

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/BaseGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeDelta()J
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/gesture/BaseGestureDetector;->mTimeDelta:J

    return-wide v0
.end method

.method protected abstract handleInProgressEvent(ILandroid/view/MotionEvent;)V
.end method

.method protected abstract handleStartProgressEvent(ILandroid/view/MotionEvent;)V
.end method

.method public isInProgress()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/gesture/BaseGestureDetector;->mGestureInProgress:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iget-boolean v1, p0, Lcom/autonavi/ae/gmap/gesture/BaseGestureDetector;->mGestureInProgress:Z

    if-nez v1, :cond_0

    invoke-virtual {p0, v0, p1}, Lcom/autonavi/ae/gmap/gesture/BaseGestureDetector;->handleStartProgressEvent(ILandroid/view/MotionEvent;)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/autonavi/ae/gmap/gesture/BaseGestureDetector;->handleInProgressEvent(ILandroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method protected resetState()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/BaseGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/BaseGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    iput-object v1, p0, Lcom/autonavi/ae/gmap/gesture/BaseGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/BaseGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/BaseGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    iput-object v1, p0, Lcom/autonavi/ae/gmap/gesture/BaseGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/gesture/BaseGestureDetector;->mGestureInProgress:Z

    return-void
.end method

.method protected updateStateByEvent(Landroid/view/MotionEvent;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gesture/BaseGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    iget-object v1, p0, Lcom/autonavi/ae/gmap/gesture/BaseGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/ae/gmap/gesture/BaseGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/autonavi/ae/gmap/gesture/BaseGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Lcom/autonavi/ae/gmap/gesture/BaseGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/autonavi/ae/gmap/gesture/BaseGestureDetector;->mTimeDelta:J

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v1

    iput v1, p0, Lcom/autonavi/ae/gmap/gesture/BaseGestureDetector;->mCurrPressure:F

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v0

    iput v0, p0, Lcom/autonavi/ae/gmap/gesture/BaseGestureDetector;->mPrevPressure:F

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v1

    iput v1, p0, Lcom/autonavi/ae/gmap/gesture/BaseGestureDetector;->mCurrPressure:F

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v0

    iput v0, p0, Lcom/autonavi/ae/gmap/gesture/BaseGestureDetector;->mPrevPressure:F

    goto :goto_0
.end method
