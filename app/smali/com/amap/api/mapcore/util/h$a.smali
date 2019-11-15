.class Lcom/amap/api/mapcore/util/h$a;
.super Ljava/lang/Object;
.source "GLMapGestureDetector.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:F

.field b:J

.field final synthetic c:Lcom/amap/api/mapcore/util/h;

.field private d:I

.field private e:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;


# direct methods
.method private constructor <init>(Lcom/amap/api/mapcore/util/h;)V
    .locals 2

    iput-object p1, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore/util/h$a;->d:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore/util/h$a;->a:F

    new-instance v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-direct {v0}, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->e:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/h$a;->b:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/mapcore/util/h;Lcom/amap/api/mapcore/util/h$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/h$a;-><init>(Lcom/amap/api/mapcore/util/h;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->c:Landroid/view/GestureDetector;

    invoke-virtual {v0, v3}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/h$a;->d:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->d:Lcom/amap/api/maps/model/AMapGestureListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->d:Lcom/amap/api/maps/model/AMapGestureListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/amap/api/maps/model/AMapGestureListener;->onDoubleTap(FF)V

    :cond_0
    return v3
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/high16 v8, 0x3f800000    # 1.0f

    const/16 v7, 0x9

    const/4 v6, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/amap/api/mapcore/util/h$a;->d:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    iput v2, p0, Lcom/amap/api/mapcore/util/h$a;->d:I

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v3, v2, 0xff

    iget v2, p0, Lcom/amap/api/mapcore/util/h$a;->d:I

    if-ne v2, v0, :cond_9

    :try_start_0
    iget-object v2, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    iget-object v2, v2, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v2}, Lcom/amap/api/mapcore/util/l;->h()Lcom/amap/api/mapcore/util/o;

    move-result-object v2

    invoke-interface {v2}, Lcom/amap/api/mapcore/util/o;->isZoomGesturesEnabled()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    return v1

    :catch_0
    move-exception v2

    const-string v4, "GLMapGestrureDetector"

    const-string v5, "onDoubleTapEvent"

    invoke-static {v2, v4, v5}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_1
    if-nez v3, :cond_3

    iget-object v2, p0, Lcom/amap/api/mapcore/util/h$a;->e:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    iput v0, v2, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureState:I

    iget-object v2, p0, Lcom/amap/api/mapcore/util/h$a;->e:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    iput v7, v2, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureType:I

    iget-object v2, p0, Lcom/amap/api/mapcore/util/h$a;->e:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    new-array v3, v6, [F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    aput v4, v3, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    aput v4, v3, v0

    iput-object v3, v2, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mLocation:[F

    iget-object v2, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    iget-object v2, v2, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    iget-object v3, p0, Lcom/amap/api/mapcore/util/h$a;->e:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-interface {v2, v3}, Lcom/amap/api/mapcore/util/l;->a(Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/amap/api/mapcore/util/h$a;->a:F

    iget-object v3, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    iget-object v3, v3, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    const/16 v4, 0x64

    invoke-static {v4, v8, v1, v1}, Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;->obtain(IFII)Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;

    move-result-object v1

    invoke-interface {v3, v2, v1}, Lcom/amap/api/mapcore/util/l;->a(ILcom/autonavi/amap/mapcore/message/GestureMapMessage;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/amap/api/mapcore/util/h$a;->b:J

    :cond_2
    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    if-ne v3, v6, :cond_5

    iget-object v2, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    invoke-static {v2, v0}, Lcom/amap/api/mapcore/util/h;->a(Lcom/amap/api/mapcore/util/h;Z)Z

    iget v2, p0, Lcom/amap/api/mapcore/util/h$a;->a:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x41a00000    # 20.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_2

    iget-object v3, p0, Lcom/amap/api/mapcore/util/h$a;->e:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    iput v6, v3, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureState:I

    iget-object v3, p0, Lcom/amap/api/mapcore/util/h$a;->e:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    iput v7, v3, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureType:I

    iget-object v3, p0, Lcom/amap/api/mapcore/util/h$a;->e:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    new-array v4, v6, [F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    aput v5, v4, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    aput v5, v4, v0

    iput-object v4, v3, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mLocation:[F

    iget-object v3, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    iget-object v3, v3, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    iget-object v4, p0, Lcom/amap/api/mapcore/util/h$a;->e:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-interface {v3, v4}, Lcom/amap/api/mapcore/util/l;->a(Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;)I

    move-result v3

    const/high16 v4, 0x40800000    # 4.0f

    mul-float/2addr v4, v2

    iget-object v5, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    iget-object v5, v5, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v5}, Lcom/amap/api/mapcore/util/l;->getMapHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/4 v5, 0x0

    cmpl-float v2, v2, v5

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    iget-object v2, v2, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    const/16 v5, 0x65

    invoke-static {v5, v4, v1, v1}, Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;->obtain(IFII)Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/amap/api/mapcore/util/l;->a(ILcom/autonavi/amap/mapcore/message/GestureMapMessage;)V

    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/amap/api/mapcore/util/h$a;->a:F

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    iget-object v2, v2, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    const/16 v5, 0x65

    invoke-static {v5, v4, v1, v1}, Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;->obtain(IFII)Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/amap/api/mapcore/util/l;->a(ILcom/autonavi/amap/mapcore/message/GestureMapMessage;)V

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/amap/api/mapcore/util/h$a;->e:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const/4 v4, 0x3

    iput v4, v2, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureState:I

    iget-object v2, p0, Lcom/amap/api/mapcore/util/h$a;->e:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    iput v7, v2, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureType:I

    iget-object v2, p0, Lcom/amap/api/mapcore/util/h$a;->e:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    new-array v4, v6, [F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    aput v5, v4, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    aput v5, v4, v0

    iput-object v4, v2, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mLocation:[F

    iget-object v2, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    iget-object v2, v2, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    iget-object v4, p0, Lcom/amap/api/mapcore/util/h$a;->e:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-interface {v2, v4}, Lcom/amap/api/mapcore/util/l;->a(Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;)I

    move-result v2

    iget-object v4, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    iget-object v4, v4, Lcom/amap/api/mapcore/util/h;->c:Landroid/view/GestureDetector;

    invoke-virtual {v4, v0}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    iget-object v4, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    iget-object v4, v4, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    const/16 v5, 0x66

    invoke-static {v5, v8, v1, v1}, Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;->obtain(IFII)Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lcom/amap/api/mapcore/util/l;->a(ILcom/autonavi/amap/mapcore/message/GestureMapMessage;)V

    if-ne v3, v0, :cond_8

    iget-object v3, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    iget-object v3, v3, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    const/4 v4, 0x3

    invoke-interface {v3, v2, v4}, Lcom/amap/api/mapcore/util/l;->a(II)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/amap/api/mapcore/util/h$a;->b:J

    sub-long/2addr v4, v6

    iget-object v3, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    invoke-static {v3}, Lcom/amap/api/mapcore/util/h;->f(Lcom/amap/api/mapcore/util/h;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-wide/16 v6, 0xc8

    cmp-long v3, v4, v6

    if-gez v3, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0, v2, p1}, Lcom/amap/api/mapcore/util/l;->b(ILandroid/view/MotionEvent;)Z

    move-result v1

    goto/16 :goto_0

    :cond_7
    iget-object v2, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    invoke-static {v2, v1}, Lcom/amap/api/mapcore/util/h;->a(Lcom/amap/api/mapcore/util/h;Z)Z

    goto/16 :goto_1

    :cond_8
    iget-object v2, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    invoke-static {v2, v1}, Lcom/amap/api/mapcore/util/h;->a(Lcom/amap/api/mapcore/util/h;Z)Z

    goto/16 :goto_1

    :cond_9
    move v0, v1

    goto/16 :goto_1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/h;->a(Lcom/amap/api/mapcore/util/h;Z)Z

    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    const/4 v1, 0x3

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->d:Lcom/amap/api/maps/model/AMapGestureListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->d:Lcom/amap/api/maps/model/AMapGestureListener;

    invoke-interface {v0, p3, p4}, Lcom/amap/api/maps/model/AMapGestureListener;->onFling(FF)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->h()Lcom/amap/api/mapcore/util/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/o;->isScrollGesturesEnabled()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return v5

    :catch_0
    move-exception v0

    const-string v1, "GLMapGestrureDetector"

    const-string v2, "onFling"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/h;->a(Lcom/amap/api/mapcore/util/h;)I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/h;->b(Lcom/amap/api/mapcore/util/h;)I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/h;->c(Lcom/amap/api/mapcore/util/h;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/h;->d(Lcom/amap/api/mapcore/util/h;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->e:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    iput v1, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureState:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->e:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    iput v1, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureType:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->e:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    aput v3, v1, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    aput v2, v1, v5

    iput-object v1, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mLocation:[F

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/h$a;->e:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->a(Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;)I

    move-result v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v1}, Lcom/amap/api/mapcore/util/l;->onFling()V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v1}, Lcom/amap/api/mapcore/util/l;->a()Lcom/autonavi/ae/gmap/GLMapEngine;

    move-result-object v1

    new-instance v2, Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v1, v0, v2, p3, p4}, Lcom/autonavi/ae/gmap/GLMapEngine;->startMapSlidAnim(ILandroid/graphics/Point;FF)V

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/h;->e(Lcom/amap/api/mapcore/util/h;)I

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->e:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const/4 v1, 0x3

    iput v1, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureState:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->e:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const/4 v1, 0x7

    iput v1, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureType:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->e:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    aput v3, v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    aput v2, v1, v4

    iput-object v1, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mLocation:[F

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/h$a;->e:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->a(Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;)I

    move-result v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v1, v0, p1}, Lcom/amap/api/mapcore/util/l;->a(ILandroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->d:Lcom/amap/api/maps/model/AMapGestureListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->d:Lcom/amap/api/maps/model/AMapGestureListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/amap/api/maps/model/AMapGestureListener;->onLongPress(FF)V

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->d:Lcom/amap/api/maps/model/AMapGestureListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->d:Lcom/amap/api/maps/model/AMapGestureListener;

    invoke-interface {v0, p3, p4}, Lcom/amap/api/maps/model/AMapGestureListener;->onScroll(FF)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->e:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const/4 v1, 0x3

    iput v1, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureState:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->e:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const/4 v1, 0x7

    iput v1, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureType:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->e:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    aput v3, v1, v2

    iput-object v1, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mLocation:[F

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/h$a;->e:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->a(Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;)I

    move-result v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v1}, Lcom/amap/api/mapcore/util/l;->a()Lcom/autonavi/ae/gmap/GLMapEngine;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/autonavi/ae/gmap/GLMapEngine;->clearAnimations(IZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/h;->e(Lcom/amap/api/mapcore/util/h;)I

    move-result v1

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/amap/api/mapcore/util/h$a;->e:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const/4 v2, 0x3

    iput v2, v1, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureState:I

    iget-object v1, p0, Lcom/amap/api/mapcore/util/h$a;->e:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const/16 v2, 0x8

    iput v2, v1, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureType:I

    iget-object v1, p0, Lcom/amap/api/mapcore/util/h$a;->e:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const/4 v2, 0x2

    new-array v2, v2, [F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    aput v3, v2, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    aput v0, v2, v4

    iput-object v2, v1, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mLocation:[F

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/h$a;->e:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->a(Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;)I

    move-result v1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->d:Lcom/amap/api/maps/model/AMapGestureListener;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->d:Lcom/amap/api/maps/model/AMapGestureListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/amap/api/maps/model/AMapGestureListener;->onSingleTap(FF)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$a;->c:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0, v1, p1}, Lcom/amap/api/mapcore/util/l;->c(ILandroid/view/MotionEvent;)Z

    move-result v0

    :cond_1
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
