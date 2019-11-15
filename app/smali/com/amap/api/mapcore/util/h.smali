.class public Lcom/amap/api/mapcore/util/h;
.super Ljava/lang/Object;
.source "GLMapGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/h$e;,
        Lcom/amap/api/mapcore/util/h$b;,
        Lcom/amap/api/mapcore/util/h$c;,
        Lcom/amap/api/mapcore/util/h$d;,
        Lcom/amap/api/mapcore/util/h$a;
    }
.end annotation


# instance fields
.field a:Lcom/amap/api/mapcore/util/l;

.field b:Landroid/content/Context;

.field c:Landroid/view/GestureDetector;

.field public d:Lcom/amap/api/maps/model/AMapGestureListener;

.field private e:Lcom/autonavi/ae/gmap/gesture/ScaleRotateGestureDetector;

.field private f:Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;

.field private g:Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;

.field private h:Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;

.field private i:Z

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/util/l;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/h;->i:Z

    iput v0, p0, Lcom/amap/api/mapcore/util/h;->j:I

    iput v0, p0, Lcom/amap/api/mapcore/util/h;->k:I

    iput v0, p0, Lcom/amap/api/mapcore/util/h;->l:I

    iput v0, p0, Lcom/amap/api/mapcore/util/h;->m:I

    iput v0, p0, Lcom/amap/api/mapcore/util/h;->n:I

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/h;->o:Z

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/h;->p:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/h;->q:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/h;->r:Landroid/os/Handler;

    invoke-interface {p1}, Lcom/amap/api/mapcore/util/l;->t()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/h;->b:Landroid/content/Context;

    iput-object p1, p0, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    new-instance v0, Lcom/amap/api/mapcore/util/h$a;

    invoke-direct {v0, p0, v4}, Lcom/amap/api/mapcore/util/h$a;-><init>(Lcom/amap/api/mapcore/util/h;Lcom/amap/api/mapcore/util/h$1;)V

    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/h;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/amap/api/mapcore/util/h;->r:Landroid/os/Handler;

    invoke-direct {v1, v2, v0, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/h;->c:Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/h;->c:Landroid/view/GestureDetector;

    invoke-virtual {v1, v0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    new-instance v0, Lcom/autonavi/ae/gmap/gesture/ScaleRotateGestureDetector;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/h;->b:Landroid/content/Context;

    new-instance v2, Lcom/amap/api/mapcore/util/h$d;

    invoke-direct {v2, p0, v4}, Lcom/amap/api/mapcore/util/h$d;-><init>(Lcom/amap/api/mapcore/util/h;Lcom/amap/api/mapcore/util/h$1;)V

    invoke-direct {v0, v1, v2}, Lcom/autonavi/ae/gmap/gesture/ScaleRotateGestureDetector;-><init>(Landroid/content/Context;Lcom/autonavi/ae/gmap/gesture/ScaleRotateGestureDetector$SimpleOnScaleRotateGestureListener;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/h;->e:Lcom/autonavi/ae/gmap/gesture/ScaleRotateGestureDetector;

    new-instance v0, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/h;->b:Landroid/content/Context;

    new-instance v2, Lcom/amap/api/mapcore/util/h$c;

    invoke-direct {v2, p0, v4}, Lcom/amap/api/mapcore/util/h$c;-><init>(Lcom/amap/api/mapcore/util/h;Lcom/amap/api/mapcore/util/h$1;)V

    invoke-direct {v0, v1, v2}, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;-><init>(Landroid/content/Context;Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector$OnMoveGestureListener;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/h;->f:Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;

    new-instance v0, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/h;->b:Landroid/content/Context;

    new-instance v2, Lcom/amap/api/mapcore/util/h$b;

    invoke-direct {v2, p0, v4}, Lcom/amap/api/mapcore/util/h$b;-><init>(Lcom/amap/api/mapcore/util/h;Lcom/amap/api/mapcore/util/h$1;)V

    invoke-direct {v0, v1, v2}, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;-><init>(Landroid/content/Context;Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector$OnHoverGestureListener;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/h;->g:Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;

    new-instance v0, Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/h;->b:Landroid/content/Context;

    new-instance v2, Lcom/amap/api/mapcore/util/h$e;

    invoke-direct {v2, p0, v4}, Lcom/amap/api/mapcore/util/h$e;-><init>(Lcom/amap/api/mapcore/util/h;Lcom/amap/api/mapcore/util/h$1;)V

    invoke-direct {v0, v1, v2}, Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;-><init>(Landroid/content/Context;Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector$OnZoomOutGestureListener;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/h;->h:Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/h;)I
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/util/h;->m:I

    return v0
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/h;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/h;->o:Z

    return p1
.end method

.method static synthetic b(Lcom/amap/api/mapcore/util/h;)I
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/util/h;->k:I

    return v0
.end method

.method static synthetic b(Lcom/amap/api/mapcore/util/h;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/h;->i:Z

    return p1
.end method

.method static synthetic c(Lcom/amap/api/mapcore/util/h;)I
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/util/h;->l:I

    return v0
.end method

.method static synthetic c(Lcom/amap/api/mapcore/util/h;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/h;->q:Z

    return p1
.end method

.method static synthetic d(Lcom/amap/api/mapcore/util/h;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/h;->q:Z

    return v0
.end method

.method static synthetic e(Lcom/amap/api/mapcore/util/h;)I
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/util/h;->n:I

    return v0
.end method

.method static synthetic f(Lcom/amap/api/mapcore/util/h;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/h;->o:Z

    return v0
.end method

.method static synthetic g(Lcom/amap/api/mapcore/util/h;)I
    .locals 2

    iget v0, p0, Lcom/amap/api/mapcore/util/h;->k:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amap/api/mapcore/util/h;->k:I

    return v0
.end method

.method static synthetic h(Lcom/amap/api/mapcore/util/h;)I
    .locals 2

    iget v0, p0, Lcom/amap/api/mapcore/util/h;->l:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amap/api/mapcore/util/h;->l:I

    return v0
.end method

.method static synthetic i(Lcom/amap/api/mapcore/util/h;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/h;->i:Z

    return v0
.end method

.method static synthetic j(Lcom/amap/api/mapcore/util/h;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/h;->p:Z

    return v0
.end method

.method static synthetic k(Lcom/amap/api/mapcore/util/h;)I
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/util/h;->j:I

    return v0
.end method

.method static synthetic l(Lcom/amap/api/mapcore/util/h;)I
    .locals 2

    iget v0, p0, Lcom/amap/api/mapcore/util/h;->j:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amap/api/mapcore/util/h;->j:I

    return v0
.end method

.method static synthetic m(Lcom/amap/api/mapcore/util/h;)I
    .locals 2

    iget v0, p0, Lcom/amap/api/mapcore/util/h;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amap/api/mapcore/util/h;->m:I

    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore/util/h;->j:I

    iput v0, p0, Lcom/amap/api/mapcore/util/h;->l:I

    iput v0, p0, Lcom/amap/api/mapcore/util/h;->k:I

    iput v0, p0, Lcom/amap/api/mapcore/util/h;->m:I

    iput v0, p0, Lcom/amap/api/mapcore/util/h;->n:I

    return-void
.end method

.method public a(Lcom/amap/api/maps/model/AMapGestureListener;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/h;->d:Lcom/amap/api/maps/model/AMapGestureListener;

    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/amap/api/mapcore/util/h;->n:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/h;->n:I

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/h;->p:Z

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/h;->q:Z

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-lez v0, :cond_2

    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/h;->p:Z

    :cond_2
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/h;->o:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/amap/api/mapcore/util/h;->n:I

    const/4 v2, 0x2

    if-lt v0, v2, :cond_3

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/h;->o:Z

    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h;->d:Lcom/amap/api/maps/model/AMapGestureListener;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h;->d:Lcom/amap/api/maps/model/AMapGestureListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/amap/api/maps/model/AMapGestureListener;->onDown(FF)V

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h;->c:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h;->g:Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;

    invoke-virtual {v0, p1}, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-boolean v2, p0, Lcom/amap/api/mapcore/util/h;->i:Z

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/amap/api/mapcore/util/h;->m:I

    if-gtz v2, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/amap/api/mapcore/util/h;->h:Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;

    invoke-virtual {v2, p1}, Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-boolean v2, p0, Lcom/amap/api/mapcore/util/h;->o:Z

    if-nez v2, :cond_6

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h;->e:Lcom/autonavi/ae/gmap/gesture/ScaleRotateGestureDetector;

    invoke-virtual {v0, p1}, Lcom/autonavi/ae/gmap/gesture/ScaleRotateGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h;->f:Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;

    invoke-virtual {v0, p1}, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_6
    :goto_1
    return v0

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h;->d:Lcom/amap/api/maps/model/AMapGestureListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/amap/api/maps/model/AMapGestureListener;->onUp(FF)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_1
.end method

.method public b()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h;->r:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h;->r:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/h;->r:Landroid/os/Handler;

    :cond_0
    return-void
.end method
