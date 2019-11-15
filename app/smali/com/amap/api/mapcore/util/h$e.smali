.class Lcom/amap/api/mapcore/util/h$e;
.super Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector$SimpleOnZoomOutGestureListener;
.source "GLMapGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field a:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

.field final synthetic b:Lcom/amap/api/mapcore/util/h;


# direct methods
.method private constructor <init>(Lcom/amap/api/mapcore/util/h;)V
    .locals 1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/h$e;->b:Lcom/amap/api/mapcore/util/h;

    invoke-direct {p0}, Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector$SimpleOnZoomOutGestureListener;-><init>()V

    new-instance v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-direct {v0}, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/h$e;->a:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/mapcore/util/h;Lcom/amap/api/mapcore/util/h$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/h$e;-><init>(Lcom/amap/api/mapcore/util/h;)V

    return-void
.end method


# virtual methods
.method public onZoomOut(Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;)V
    .locals 6

    const/4 v5, 0x1

    const/high16 v1, 0x41200000    # 10.0f

    const/4 v4, 0x2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$e;->b:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->h()Lcom/amap/api/mapcore/util/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/o;->isZoomGesturesEnabled()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "GLMapGestrureDetector"

    const-string v2, "onZoomOut"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;->getFocusX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;->getFocusY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;->getTimeDelta()J

    move-result-wide v0

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$e;->b:Lcom/amap/api/mapcore/util/h;

    invoke-static {v0, v5}, Lcom/amap/api/mapcore/util/h;->c(Lcom/amap/api/mapcore/util/h;Z)Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$e;->a:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    iput v4, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureState:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$e;->a:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    iput v4, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureType:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$e;->a:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    new-array v1, v4, [F

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;->getEvent()Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    aput v3, v1, v2

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;->getEvent()Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    aput v2, v1, v5

    iput-object v1, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mLocation:[F

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$e;->b:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/h$e;->a:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->a(Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;)I

    move-result v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/h$e;->b:Lcom/amap/api/mapcore/util/h;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    const/4 v2, 0x4

    invoke-interface {v1, v0, v2}, Lcom/amap/api/mapcore/util/l;->a(II)V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/h$e;->b:Lcom/amap/api/mapcore/util/h;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v1, v0}, Lcom/amap/api/mapcore/util/l;->c(I)V

    goto :goto_0
.end method
