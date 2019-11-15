.class Lcom/amap/api/mapcore/util/h$b;
.super Ljava/lang/Object;
.source "GLMapGestureDetector.java"

# interfaces
.implements Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector$OnHoverGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/h;

.field private b:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;


# direct methods
.method private constructor <init>(Lcom/amap/api/mapcore/util/h;)V
    .locals 1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/h$b;->a:Lcom/amap/api/mapcore/util/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-direct {v0}, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/h$b;->b:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/mapcore/util/h;Lcom/amap/api/mapcore/util/h$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/h$b;-><init>(Lcom/amap/api/mapcore/util/h;)V

    return-void
.end method


# virtual methods
.method public onHove(Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;)Z
    .locals 10

    const/4 v4, 0x2

    const/high16 v9, -0x3ee00000    # -10.0f

    const/high16 v8, 0x41200000    # 10.0f

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/h$b;->b:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    iput v4, v2, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureState:I

    iget-object v2, p0, Lcom/amap/api/mapcore/util/h$b;->b:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const/4 v3, 0x6

    iput v3, v2, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureType:I

    iget-object v2, p0, Lcom/amap/api/mapcore/util/h$b;->b:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    new-array v3, v4, [F

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->getEvent()Landroid/view/MotionEvent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    aput v4, v3, v1

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->getEvent()Landroid/view/MotionEvent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    aput v4, v3, v0

    iput-object v3, v2, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mLocation:[F

    :try_start_0
    iget-object v2, p0, Lcom/amap/api/mapcore/util/h$b;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v2, v2, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v2}, Lcom/amap/api/mapcore/util/l;->h()Lcom/amap/api/mapcore/util/o;

    move-result-object v2

    invoke-interface {v2}, Lcom/amap/api/mapcore/util/o;->isTiltGesturesEnabled()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "GLMapGestrureDetector"

    const-string v3, "onHove"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/amap/api/mapcore/util/h$b;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v2, v2, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    iget-object v3, p0, Lcom/amap/api/mapcore/util/h$b;->b:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-interface {v2, v3}, Lcom/amap/api/mapcore/util/l;->a(Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;)I

    move-result v2

    iget-object v3, p0, Lcom/amap/api/mapcore/util/h$b;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v3, v3, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v3, v2}, Lcom/amap/api/mapcore/util/l;->d(I)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/amap/api/mapcore/util/h$b;->a:Lcom/amap/api/mapcore/util/h;

    invoke-static {v3}, Lcom/amap/api/mapcore/util/h;->c(Lcom/amap/api/mapcore/util/h;)I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->getFocusDelta()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->getFocusDelta()Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/amap/api/mapcore/util/h$b;->a:Lcom/amap/api/mapcore/util/h;

    invoke-static {v5}, Lcom/amap/api/mapcore/util/h;->i(Lcom/amap/api/mapcore/util/h;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {p1, v1}, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->getPointerDelta(I)Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual {p1, v0}, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->getPointerDelta(I)Landroid/graphics/PointF;

    move-result-object v6

    iget v7, v5, Landroid/graphics/PointF;->y:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_4

    iget v7, v6, Landroid/graphics/PointF;->y:F

    cmpl-float v7, v7, v8

    if-gtz v7, :cond_5

    :cond_4
    iget v5, v5, Landroid/graphics/PointF;->y:F

    cmpg-float v5, v5, v9

    if-gez v5, :cond_6

    iget v5, v6, Landroid/graphics/PointF;->y:F

    cmpg-float v5, v5, v9

    if-gez v5, :cond_6

    :cond_5
    move v1, v0

    :cond_6
    if-eqz v1, :cond_7

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v8

    if-lez v1, :cond_7

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v8

    if-gez v1, :cond_7

    iget-object v1, p0, Lcom/amap/api/mapcore/util/h$b;->a:Lcom/amap/api/mapcore/util/h;

    invoke-static {v1, v0}, Lcom/amap/api/mapcore/util/h;->b(Lcom/amap/api/mapcore/util/h;Z)Z

    :cond_7
    iget-object v1, p0, Lcom/amap/api/mapcore/util/h$b;->a:Lcom/amap/api/mapcore/util/h;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/h;->i(Lcom/amap/api/mapcore/util/h;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/h$b;->a:Lcom/amap/api/mapcore/util/h;

    invoke-static {v1, v0}, Lcom/amap/api/mapcore/util/h;->b(Lcom/amap/api/mapcore/util/h;Z)Z

    const/high16 v1, 0x40c00000    # 6.0f

    div-float v1, v4, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/amap/api/mapcore/util/h$b;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v3, v3, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    const/16 v4, 0x65

    invoke-static {v4, v1}, Lcom/autonavi/amap/mapcore/message/HoverGestureMapMessage;->obtain(IF)Lcom/autonavi/amap/mapcore/message/HoverGestureMapMessage;

    move-result-object v1

    invoke-interface {v3, v2, v1}, Lcom/amap/api/mapcore/util/l;->a(ILcom/autonavi/amap/mapcore/message/GestureMapMessage;)V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/h$b;->a:Lcom/amap/api/mapcore/util/h;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/h;->m(Lcom/amap/api/mapcore/util/h;)I

    goto/16 :goto_0
.end method

.method public onHoveBegin(Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/h$b;->b:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    iput v0, v2, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureState:I

    iget-object v2, p0, Lcom/amap/api/mapcore/util/h$b;->b:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const/4 v3, 0x6

    iput v3, v2, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureType:I

    iget-object v2, p0, Lcom/amap/api/mapcore/util/h$b;->b:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const/4 v3, 0x2

    new-array v3, v3, [F

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->getEvent()Landroid/view/MotionEvent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    aput v4, v3, v1

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->getEvent()Landroid/view/MotionEvent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    aput v4, v3, v0

    iput-object v3, v2, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mLocation:[F

    :try_start_0
    iget-object v2, p0, Lcom/amap/api/mapcore/util/h$b;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v2, v2, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v2}, Lcom/amap/api/mapcore/util/l;->h()Lcom/amap/api/mapcore/util/o;

    move-result-object v2

    invoke-interface {v2}, Lcom/amap/api/mapcore/util/o;->isTiltGesturesEnabled()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "GLMapGestrureDetector"

    const-string v3, "onHoveBegin"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/amap/api/mapcore/util/h$b;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v2, v2, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    iget-object v3, p0, Lcom/amap/api/mapcore/util/h$b;->b:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-interface {v2, v3}, Lcom/amap/api/mapcore/util/l;->a(Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;)I

    move-result v2

    iget-object v3, p0, Lcom/amap/api/mapcore/util/h$b;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v3, v3, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v3, v2}, Lcom/amap/api/mapcore/util/l;->d(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/h$b;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    const/16 v3, 0x64

    iget-object v4, p0, Lcom/amap/api/mapcore/util/h$b;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v4, v4, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v4, v2}, Lcom/amap/api/mapcore/util/l;->p(I)F

    move-result v4

    invoke-static {v3, v4}, Lcom/autonavi/amap/mapcore/message/HoverGestureMapMessage;->obtain(IF)Lcom/autonavi/amap/mapcore/message/HoverGestureMapMessage;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/amap/api/mapcore/util/l;->a(ILcom/autonavi/amap/mapcore/message/GestureMapMessage;)V

    goto :goto_0
.end method

.method public onHoveEnd(Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$b;->b:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const/4 v1, 0x3

    iput v1, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureState:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$b;->b:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const/4 v1, 0x6

    iput v1, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureType:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$b;->b:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const/4 v1, 0x2

    new-array v1, v1, [F

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->getEvent()Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    aput v2, v1, v4

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->getEvent()Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    aput v3, v1, v2

    iput-object v1, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mLocation:[F

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$b;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->h()Lcom/amap/api/mapcore/util/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/o;->isTiltGesturesEnabled()Z
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

    const-string v2, "onHoveEnd"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$b;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/h$b;->b:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->a(Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;)I

    move-result v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/h$b;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v1, v0}, Lcom/amap/api/mapcore/util/l;->d(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/h$b;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v1, v0}, Lcom/amap/api/mapcore/util/l;->p(I)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/mapcore/util/h$b;->a:Lcom/amap/api/mapcore/util/h;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/h;->a(Lcom/amap/api/mapcore/util/h;)I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/mapcore/util/h$b;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    const/4 v2, 0x7

    invoke-interface {v1, v0, v2}, Lcom/amap/api/mapcore/util/l;->a(II)V

    :cond_2
    iget-object v1, p0, Lcom/amap/api/mapcore/util/h$b;->a:Lcom/amap/api/mapcore/util/h;

    invoke-static {v1, v4}, Lcom/amap/api/mapcore/util/h;->b(Lcom/amap/api/mapcore/util/h;Z)Z

    iget-object v1, p0, Lcom/amap/api/mapcore/util/h$b;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    const/16 v2, 0x66

    iget-object v3, p0, Lcom/amap/api/mapcore/util/h$b;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v3, v3, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v3, v0}, Lcom/amap/api/mapcore/util/l;->p(I)F

    move-result v3

    invoke-static {v2, v3}, Lcom/autonavi/amap/mapcore/message/HoverGestureMapMessage;->obtain(IF)Lcom/autonavi/amap/mapcore/message/HoverGestureMapMessage;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/amap/api/mapcore/util/l;->a(ILcom/autonavi/amap/mapcore/message/GestureMapMessage;)V

    goto :goto_0
.end method
