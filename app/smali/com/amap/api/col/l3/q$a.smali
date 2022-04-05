.class final Lcom/amap/api/col/l3/q$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:F

.field b:J

.field final synthetic c:Lcom/amap/api/col/l3/q;

.field private d:I

.field private e:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;


# direct methods
.method private constructor <init>(Lcom/amap/api/col/l3/q;)V
    .locals 2

    iput-object p1, p0, Lcom/amap/api/col/l3/q$a;->c:Lcom/amap/api/col/l3/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/amap/api/col/l3/q$a;->d:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/amap/api/col/l3/q$a;->a:F

    new-instance p1, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-direct {p1}, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3/q$a;->e:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/l3/q$a;->b:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/col/l3/q;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/q$a;-><init>(Lcom/amap/api/col/l3/q;)V

    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3/q$a;->c:Lcom/amap/api/col/l3/q;

    iget-object v0, v0, Lcom/amap/api/col/l3/q;->c:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/l3/q$a;->d:I

    iget-object v0, p0, Lcom/amap/api/col/l3/q$a;->c:Lcom/amap/api/col/l3/q;

    iget-object v0, v0, Lcom/amap/api/col/l3/q;->d:Lcom/amap/api/maps/model/AMapGestureListener;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-interface {v0, v2, p1}, Lcom/amap/api/maps/model/AMapGestureListener;->onDoubleTap(FF)V

    :cond_0
    return v1
.end method

.method public final onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    iget v0, p0, Lcom/amap/api/col/l3/q$a;->d:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/l3/q$a;->d:I

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/amap/api/col/l3/q$a;->d:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_7

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3/q$a;->c:Lcom/amap/api/col/l3/q;

    iget-object v1, v1, Lcom/amap/api/col/l3/q;->a:Lcom/amap/api/col/l3/u;

    invoke-interface {v1}, Lcom/amap/api/col/l3/u;->i()Lcom/amap/api/col/l3/x;

    move-result-object v1

    invoke-interface {v1}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->isZoomGesturesEnabled()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    return v3

    :catchall_0
    move-exception v1

    const-string v4, "GLMapGestrureDetector"

    const-string v5, "onDoubleTapEvent"

    invoke-static {v1, v4, v5}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v4, 0x9

    const/4 v5, 0x2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3/q$a;->e:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    iput v2, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureState:I

    iput v4, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureType:I

    new-array v4, v5, [F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    aput v5, v4, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    aput v5, v4, v2

    iput-object v4, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mLocation:[F

    iget-object v0, p0, Lcom/amap/api/col/l3/q$a;->c:Lcom/amap/api/col/l3/q;

    iget-object v0, v0, Lcom/amap/api/col/l3/q;->a:Lcom/amap/api/col/l3/u;

    iget-object v4, p0, Lcom/amap/api/col/l3/q$a;->e:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-interface {v0, v4}, Lcom/amap/api/col/l3/u;->a(Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3/q$a;->a:F

    iget-object p1, p0, Lcom/amap/api/col/l3/q$a;->c:Lcom/amap/api/col/l3/q;

    iget-object p1, p1, Lcom/amap/api/col/l3/q;->a:Lcom/amap/api/col/l3/u;

    const/16 v4, 0x64

    invoke-static {v4, v1, v3, v3}, Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;->obtain(IFII)Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/amap/api/col/l3/u;->a(ILcom/autonavi/amap/mapcore/message/GestureMapMessage;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/col/l3/q$a;->b:J

    goto/16 :goto_1

    :cond_2
    if-ne v0, v5, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/l3/q$a;->c:Lcom/amap/api/col/l3/q;

    invoke-static {v0, v2}, Lcom/amap/api/col/l3/q;->a(Lcom/amap/api/col/l3/q;Z)Z

    iget v0, p0, Lcom/amap/api/col/l3/q$a;->a:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v6, 0x41a00000    # 20.0f

    cmpl-float v1, v1, v6

    if-ltz v1, :cond_8

    iget-object v1, p0, Lcom/amap/api/col/l3/q$a;->e:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    iput v5, v1, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureState:I

    iput v4, v1, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureType:I

    new-array v4, v5, [F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    aput v5, v4, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    aput v5, v4, v2

    iput-object v4, v1, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mLocation:[F

    iget-object v1, p0, Lcom/amap/api/col/l3/q$a;->c:Lcom/amap/api/col/l3/q;

    iget-object v1, v1, Lcom/amap/api/col/l3/q;->a:Lcom/amap/api/col/l3/u;

    iget-object v4, p0, Lcom/amap/api/col/l3/q$a;->e:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-interface {v1, v4}, Lcom/amap/api/col/l3/u;->a(Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;)I

    move-result v1

    const/high16 v4, 0x40800000    # 4.0f

    mul-float v0, v0, v4

    iget-object v4, p0, Lcom/amap/api/col/l3/q$a;->c:Lcom/amap/api/col/l3/q;

    iget-object v4, v4, Lcom/amap/api/col/l3/q;->a:Lcom/amap/api/col/l3/u;

    invoke-interface {v4}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    iget-object v4, p0, Lcom/amap/api/col/l3/q$a;->c:Lcom/amap/api/col/l3/q;

    iget-object v4, v4, Lcom/amap/api/col/l3/q;->a:Lcom/amap/api/col/l3/u;

    const/16 v5, 0x65

    invoke-static {v5, v0, v3, v3}, Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;->obtain(IFII)Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Lcom/amap/api/col/l3/u;->a(ILcom/autonavi/amap/mapcore/message/GestureMapMessage;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3/q$a;->a:F

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/amap/api/col/l3/q$a;->e:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const/4 v7, 0x3

    iput v7, v6, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureState:I

    iput v4, v6, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureType:I

    new-array v4, v5, [F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    aput v5, v4, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    aput v5, v4, v2

    iput-object v4, v6, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mLocation:[F

    iget-object v4, p0, Lcom/amap/api/col/l3/q$a;->c:Lcom/amap/api/col/l3/q;

    iget-object v4, v4, Lcom/amap/api/col/l3/q;->a:Lcom/amap/api/col/l3/u;

    iget-object v5, p0, Lcom/amap/api/col/l3/q$a;->e:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-interface {v4, v5}, Lcom/amap/api/col/l3/u;->a(Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;)I

    move-result v4

    iget-object v5, p0, Lcom/amap/api/col/l3/q$a;->c:Lcom/amap/api/col/l3/q;

    iget-object v5, v5, Lcom/amap/api/col/l3/q;->c:Landroid/view/GestureDetector;

    invoke-virtual {v5, v2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    iget-object v5, p0, Lcom/amap/api/col/l3/q$a;->c:Lcom/amap/api/col/l3/q;

    iget-object v5, v5, Lcom/amap/api/col/l3/q;->a:Lcom/amap/api/col/l3/u;

    const/16 v6, 0x66

    invoke-static {v6, v1, v3, v3}, Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;->obtain(IFII)Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;

    move-result-object v1

    invoke-interface {v5, v4, v1}, Lcom/amap/api/col/l3/u;->a(ILcom/autonavi/amap/mapcore/message/GestureMapMessage;)V

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/amap/api/col/l3/q$a;->c:Lcom/amap/api/col/l3/q;

    iget-object v0, v0, Lcom/amap/api/col/l3/q;->a:Lcom/amap/api/col/l3/u;

    invoke-interface {v0, v7}, Lcom/amap/api/col/l3/u;->a(I)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v5, p0, Lcom/amap/api/col/l3/q$a;->b:J

    sub-long/2addr v0, v5

    iget-object v5, p0, Lcom/amap/api/col/l3/q$a;->c:Lcom/amap/api/col/l3/q;

    invoke-static {v5}, Lcom/amap/api/col/l3/q;->f(Lcom/amap/api/col/l3/q;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-wide/16 v5, 0xc8

    cmp-long v7, v0, v5

    if-gez v7, :cond_4

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/amap/api/col/l3/q$a;->c:Lcom/amap/api/col/l3/q;

    invoke-static {p1, v3}, Lcom/amap/api/col/l3/q;->a(Lcom/amap/api/col/l3/q;Z)Z

    goto :goto_1

    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/amap/api/col/l3/q$a;->c:Lcom/amap/api/col/l3/q;

    iget-object v0, v0, Lcom/amap/api/col/l3/q;->a:Lcom/amap/api/col/l3/u;

    invoke-interface {v0, v4, p1}, Lcom/amap/api/col/l3/u;->b(ILandroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_6
    iget-object p1, p0, Lcom/amap/api/col/l3/q$a;->c:Lcom/amap/api/col/l3/q;

    invoke-static {p1, v3}, Lcom/amap/api/col/l3/q;->a(Lcom/amap/api/col/l3/q;Z)Z

    goto :goto_1

    :cond_7
    const/4 v2, 0x0

    :cond_8
    :goto_1
    return v2
.end method

.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object p1, p0, Lcom/amap/api/col/l3/q$a;->c:Lcom/amap/api/col/l3/q;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/amap/api/col/l3/q;->a(Lcom/amap/api/col/l3/q;Z)Z

    const/4 p1, 0x1

    return p1
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    iget-object p1, p0, Lcom/amap/api/col/l3/q$a;->c:Lcom/amap/api/col/l3/q;

    iget-object p1, p1, Lcom/amap/api/col/l3/q;->d:Lcom/amap/api/maps/model/AMapGestureListener;

    if-eqz p1, :cond_0

    invoke-interface {p1, p3, p4}, Lcom/amap/api/maps/model/AMapGestureListener;->onFling(FF)V

    :cond_0
    const/4 p1, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/q$a;->c:Lcom/amap/api/col/l3/q;

    iget-object v0, v0, Lcom/amap/api/col/l3/q;->a:Lcom/amap/api/col/l3/u;

    invoke-interface {v0}, Lcom/amap/api/col/l3/u;->i()Lcom/amap/api/col/l3/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->isScrollGesturesEnabled()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    return p1

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/q$a;->c:Lcom/amap/api/col/l3/q;

    invoke-static {v0}, Lcom/amap/api/col/l3/q;->a(Lcom/amap/api/col/l3/q;)I

    move-result v0

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3/q$a;->c:Lcom/amap/api/col/l3/q;

    invoke-static {v0}, Lcom/amap/api/col/l3/q;->b(Lcom/amap/api/col/l3/q;)I

    move-result v0

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3/q$a;->c:Lcom/amap/api/col/l3/q;

    invoke-static {v0}, Lcom/amap/api/col/l3/q;->c(Lcom/amap/api/col/l3/q;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3/q$a;->c:Lcom/amap/api/col/l3/q;

    invoke-static {v0}, Lcom/amap/api/col/l3/q;->d(Lcom/amap/api/col/l3/q;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3/q$a;->e:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const/4 v1, 0x3

    iput v1, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureState:I

    iput v1, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureType:I

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    aput v3, v1, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    aput v2, v1, p1

    iput-object v1, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mLocation:[F

    iget-object v0, p0, Lcom/amap/api/col/l3/q$a;->c:Lcom/amap/api/col/l3/q;

    iget-object v0, v0, Lcom/amap/api/col/l3/q;->a:Lcom/amap/api/col/l3/u;

    iget-object v1, p0, Lcom/amap/api/col/l3/q$a;->e:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-interface {v0, v1}, Lcom/amap/api/col/l3/u;->a(Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;)I

    move-result v0

    iget-object v1, p0, Lcom/amap/api/col/l3/q$a;->c:Lcom/amap/api/col/l3/q;

    iget-object v1, v1, Lcom/amap/api/col/l3/q;->a:Lcom/amap/api/col/l3/u;

    invoke-interface {v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->onFling()V

    iget-object v1, p0, Lcom/amap/api/col/l3/q$a;->c:Lcom/amap/api/col/l3/q;

    iget-object v1, v1, Lcom/amap/api/col/l3/q;->a:Lcom/amap/api/col/l3/u;

    invoke-interface {v1}, Lcom/amap/api/col/l3/u;->a()Lcom/autonavi/ae/gmap/GLMapEngine;

    move-result-object v1

    new-instance v2, Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-direct {v2, v3, p2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v1, v0, v2, p3, p4}, Lcom/autonavi/ae/gmap/GLMapEngine;->startMapSlidAnim(ILandroid/graphics/Point;FF)V

    :cond_2
    return p1

    :catchall_0
    move-exception p2

    const-string p3, "GLMapGestrureDetector"

    const-string p4, "onFling"

    invoke-static {p2, p3, p4}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    return p1
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 5

    iget-object v0, p0, Lcom/amap/api/col/l3/q$a;->c:Lcom/amap/api/col/l3/q;

    invoke-static {v0}, Lcom/amap/api/col/l3/q;->e(Lcom/amap/api/col/l3/q;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/q$a;->e:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const/4 v2, 0x3

    iput v2, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureState:I

    const/4 v2, 0x7

    iput v2, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureType:I

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    aput v4, v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    aput v3, v2, v1

    iput-object v2, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mLocation:[F

    iget-object v0, p0, Lcom/amap/api/col/l3/q$a;->c:Lcom/amap/api/col/l3/q;

    iget-object v0, v0, Lcom/amap/api/col/l3/q;->a:Lcom/amap/api/col/l3/u;

    iget-object v1, p0, Lcom/amap/api/col/l3/q$a;->e:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-interface {v0, v1}, Lcom/amap/api/col/l3/u;->a(Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;)I

    move-result v0

    iget-object v1, p0, Lcom/amap/api/col/l3/q$a;->c:Lcom/amap/api/col/l3/q;

    iget-object v1, v1, Lcom/amap/api/col/l3/q;->a:Lcom/amap/api/col/l3/u;

    invoke-interface {v1, v0, p1}, Lcom/amap/api/col/l3/u;->a(ILandroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/amap/api/col/l3/q$a;->c:Lcom/amap/api/col/l3/q;

    iget-object v0, v0, Lcom/amap/api/col/l3/q;->d:Lcom/amap/api/maps/model/AMapGestureListener;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/amap/api/maps/model/AMapGestureListener;->onLongPress(FF)V

    :cond_0
    return-void
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    iget-object p1, p0, Lcom/amap/api/col/l3/q$a;->c:Lcom/amap/api/col/l3/q;

    iget-object p1, p1, Lcom/amap/api/col/l3/q;->d:Lcom/amap/api/maps/model/AMapGestureListener;

    if-eqz p1, :cond_0

    invoke-interface {p1, p3, p4}, Lcom/amap/api/maps/model/AMapGestureListener;->onScroll(FF)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onShowPress(Landroid/view/MotionEvent;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/q$a;->e:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const/4 v1, 0x3

    iput v1, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureState:I

    iget-object v0, p0, Lcom/amap/api/col/l3/q$a;->e:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const/4 v1, 0x7

    iput v1, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureType:I

    iget-object v0, p0, Lcom/amap/api/col/l3/q$a;->e:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const/4 v1, 0x2

    new-array v1, v1, [F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    aput p1, v1, v2

    iput-object v1, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mLocation:[F

    iget-object p1, p0, Lcom/amap/api/col/l3/q$a;->c:Lcom/amap/api/col/l3/q;

    iget-object p1, p1, Lcom/amap/api/col/l3/q;->a:Lcom/amap/api/col/l3/u;

    iget-object v0, p0, Lcom/amap/api/col/l3/q$a;->e:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-interface {p1, v0}, Lcom/amap/api/col/l3/u;->a(Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;)I

    move-result p1

    iget-object v0, p0, Lcom/amap/api/col/l3/q$a;->c:Lcom/amap/api/col/l3/q;

    iget-object v0, v0, Lcom/amap/api/col/l3/q;->a:Lcom/amap/api/col/l3/u;

    invoke-interface {v0}, Lcom/amap/api/col/l3/u;->a()Lcom/autonavi/ae/gmap/GLMapEngine;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Lcom/autonavi/ae/gmap/GLMapEngine;->clearAnimations(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object v0, p0, Lcom/amap/api/col/l3/q$a;->c:Lcom/amap/api/col/l3/q;

    invoke-static {v0}, Lcom/amap/api/col/l3/q;->e(Lcom/amap/api/col/l3/q;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3/q$a;->e:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const/4 v3, 0x3

    iput v3, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureState:I

    const/16 v3, 0x8

    iput v3, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureType:I

    const/4 v3, 0x2

    new-array v3, v3, [F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    aput v4, v3, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    aput v1, v3, v2

    iput-object v3, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mLocation:[F

    iget-object v0, p0, Lcom/amap/api/col/l3/q$a;->c:Lcom/amap/api/col/l3/q;

    iget-object v0, v0, Lcom/amap/api/col/l3/q;->a:Lcom/amap/api/col/l3/u;

    iget-object v1, p0, Lcom/amap/api/col/l3/q$a;->e:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-interface {v0, v1}, Lcom/amap/api/col/l3/u;->a(Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;)I

    iget-object v0, p0, Lcom/amap/api/col/l3/q$a;->c:Lcom/amap/api/col/l3/q;

    iget-object v0, v0, Lcom/amap/api/col/l3/q;->d:Lcom/amap/api/maps/model/AMapGestureListener;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/amap/api/maps/model/AMapGestureListener;->onSingleTap(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amap/api/col/l3/q$a;->c:Lcom/amap/api/col/l3/q;

    iget-object v0, v0, Lcom/amap/api/col/l3/q;->a:Lcom/amap/api/col/l3/u;

    invoke-interface {v0, p1}, Lcom/amap/api/col/l3/u;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
