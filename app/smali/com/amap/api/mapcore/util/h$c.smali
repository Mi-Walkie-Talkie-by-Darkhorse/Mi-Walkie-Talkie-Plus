.class Lcom/amap/api/mapcore/util/h$c;
.super Ljava/lang/Object;
.source "GLMapGestureDetector.java"

# interfaces
.implements Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector$OnMoveGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/h;

.field private final b:F

.field private final c:F

.field private d:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;


# direct methods
.method private constructor <init>(Lcom/amap/api/mapcore/util/h;)V
    .locals 1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/h$c;->a:Lcom/amap/api/mapcore/util/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/amap/api/mapcore/util/h$c;->b:F

    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/amap/api/mapcore/util/h$c;->c:F

    new-instance v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-direct {v0}, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/h$c;->d:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/mapcore/util/h;Lcom/amap/api/mapcore/util/h$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/h$c;-><init>(Lcom/amap/api/mapcore/util/h;)V

    return-void
.end method


# virtual methods
.method public onMove(Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;)Z
    .locals 6

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$c;->a:Lcom/amap/api/mapcore/util/h;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/h;->i(Lcom/amap/api/mapcore/util/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$c;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->h()Lcom/amap/api/mapcore/util/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/o;->isScrollGesturesEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$c;->a:Lcom/amap/api/mapcore/util/h;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/h;->j(Lcom/amap/api/mapcore/util/h;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "GLMapGestrureDetector"

    const-string v3, "onMove"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$c;->d:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    iput v4, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureState:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$c;->d:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const/4 v3, 0x3

    iput v3, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureType:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$c;->d:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    new-array v3, v4, [F

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;->getEvent()Landroid/view/MotionEvent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    aput v4, v3, v2

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;->getEvent()Landroid/view/MotionEvent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    aput v4, v3, v1

    iput-object v3, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mLocation:[F

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$c;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    iget-object v3, p0, Lcom/amap/api/mapcore/util/h$c;->d:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-interface {v0, v3}, Lcom/amap/api/mapcore/util/l;->a(Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;)I

    move-result v3

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;->getFocusDelta()Landroid/graphics/PointF;

    move-result-object v4

    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v5, p0, Lcom/amap/api/mapcore/util/h$c;->a:Lcom/amap/api/mapcore/util/h;

    invoke-static {v5}, Lcom/amap/api/mapcore/util/h;->k(Lcom/amap/api/mapcore/util/h;)I

    move-result v5

    if-nez v5, :cond_3

    const/high16 v0, 0x40800000    # 4.0f

    :cond_3
    iget v5, v4, Landroid/graphics/PointF;->x:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v0

    if-gtz v5, :cond_4

    iget v5, v4, Landroid/graphics/PointF;->y:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v0, v5, v0

    if-lez v0, :cond_6

    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$c;->a:Lcom/amap/api/mapcore/util/h;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/h;->k(Lcom/amap/api/mapcore/util/h;)I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$c;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->a()Lcom/autonavi/ae/gmap/GLMapEngine;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lcom/autonavi/ae/gmap/GLMapEngine;->clearAnimations(IZ)V

    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$c;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    const/16 v2, 0x65

    iget v5, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-static {v2, v5, v4}, Lcom/autonavi/amap/mapcore/message/MoveGestureMapMessage;->obtain(IFF)Lcom/autonavi/amap/mapcore/message/MoveGestureMapMessage;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Lcom/amap/api/mapcore/util/l;->a(ILcom/autonavi/amap/mapcore/message/GestureMapMessage;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$c;->a:Lcom/amap/api/mapcore/util/h;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/h;->l(Lcom/amap/api/mapcore/util/h;)I

    move v0, v1

    goto/16 :goto_0

    :cond_6
    move v0, v2

    goto/16 :goto_0
.end method

.method public onMoveBegin(Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$c;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->h()Lcom/amap/api/mapcore/util/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/o;->isScrollGesturesEnabled()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v4

    :catch_0
    move-exception v0

    const-string v1, "GLMapGestrureDetector"

    const-string v2, "onMoveBegin"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$c;->d:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    iput v4, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureState:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$c;->d:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const/4 v1, 0x3

    iput v1, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureType:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$c;->d:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;->getEvent()Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    aput v3, v1, v2

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;->getEvent()Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    aput v2, v1, v4

    iput-object v1, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mLocation:[F

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$c;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/h$c;->d:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->a(Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;)I

    move-result v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/h$c;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    const/16 v2, 0x64

    invoke-static {v2, v5, v5}, Lcom/autonavi/amap/mapcore/message/MoveGestureMapMessage;->obtain(IFF)Lcom/autonavi/amap/mapcore/message/MoveGestureMapMessage;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/amap/api/mapcore/util/l;->a(ILcom/autonavi/amap/mapcore/message/GestureMapMessage;)V

    goto :goto_0
.end method

.method public onMoveEnd(Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;)V
    .locals 5

    const/4 v1, 0x3

    const/4 v4, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$c;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->h()Lcom/amap/api/mapcore/util/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/o;->isScrollGesturesEnabled()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "GLMapGestrureDetector"

    const-string v2, "onMoveEnd"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$c;->d:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    iput v1, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureState:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$c;->d:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    iput v1, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureType:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$c;->d:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;->getEvent()Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;->getEvent()Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    aput v3, v1, v2

    iput-object v1, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mLocation:[F

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$c;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/h$c;->d:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->a(Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;)I

    move-result v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/h$c;->a:Lcom/amap/api/mapcore/util/h;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/h;->k(Lcom/amap/api/mapcore/util/h;)I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/mapcore/util/h$c;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    const/4 v2, 0x5

    invoke-interface {v1, v0, v2}, Lcom/amap/api/mapcore/util/l;->a(II)V

    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/h$c;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    const/16 v2, 0x66

    invoke-static {v2, v4, v4}, Lcom/autonavi/amap/mapcore/message/MoveGestureMapMessage;->obtain(IFF)Lcom/autonavi/amap/mapcore/message/MoveGestureMapMessage;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/amap/api/mapcore/util/l;->a(ILcom/autonavi/amap/mapcore/message/GestureMapMessage;)V

    goto :goto_0
.end method
