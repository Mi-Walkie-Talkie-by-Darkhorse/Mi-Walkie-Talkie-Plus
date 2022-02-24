.class public final Lcom/amap/api/col/l3/q;
.super Ljava/lang/Object;
.source "GLMapGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3/q$e;,
        Lcom/amap/api/col/l3/q$b;,
        Lcom/amap/api/col/l3/q$c;,
        Lcom/amap/api/col/l3/q$d;,
        Lcom/amap/api/col/l3/q$a;
    }
.end annotation


# instance fields
.field a:Lcom/amap/api/col/l3/u;

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
.method public constructor <init>(Lcom/amap/api/col/l3/u;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/amap/api/col/l3/q;->i:Z

    .line 3
    iput v0, p0, Lcom/amap/api/col/l3/q;->j:I

    .line 4
    iput v0, p0, Lcom/amap/api/col/l3/q;->k:I

    .line 5
    iput v0, p0, Lcom/amap/api/col/l3/q;->l:I

    .line 6
    iput v0, p0, Lcom/amap/api/col/l3/q;->m:I

    .line 7
    iput v0, p0, Lcom/amap/api/col/l3/q;->n:I

    .line 8
    iput-boolean v0, p0, Lcom/amap/api/col/l3/q;->o:Z

    .line 9
    iput-boolean v0, p0, Lcom/amap/api/col/l3/q;->p:Z

    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Lcom/amap/api/col/l3/q;->q:Z

    .line 11
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/amap/api/col/l3/q;->r:Landroid/os/Handler;

    .line 12
    invoke-interface {p1}, Lcom/amap/api/col/l3/u;->u()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/col/l3/q;->b:Landroid/content/Context;

    .line 13
    iput-object p1, p0, Lcom/amap/api/col/l3/q;->a:Lcom/amap/api/col/l3/u;

    .line 14
    new-instance p1, Lcom/amap/api/col/l3/q$a;

    invoke-direct {p1, p0, v0}, Lcom/amap/api/col/l3/q$a;-><init>(Lcom/amap/api/col/l3/q;B)V

    .line 15
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/amap/api/col/l3/q;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/amap/api/col/l3/q;->r:Landroid/os/Handler;

    invoke-direct {v1, v2, p1, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/amap/api/col/l3/q;->c:Landroid/view/GestureDetector;

    .line 16
    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 17
    new-instance p1, Lcom/autonavi/ae/gmap/gesture/ScaleRotateGestureDetector;

    iget-object v1, p0, Lcom/amap/api/col/l3/q;->b:Landroid/content/Context;

    new-instance v2, Lcom/amap/api/col/l3/q$d;

    invoke-direct {v2, p0, v0}, Lcom/amap/api/col/l3/q$d;-><init>(Lcom/amap/api/col/l3/q;B)V

    invoke-direct {p1, v1, v2}, Lcom/autonavi/ae/gmap/gesture/ScaleRotateGestureDetector;-><init>(Landroid/content/Context;Lcom/autonavi/ae/gmap/gesture/ScaleRotateGestureDetector$SimpleOnScaleRotateGestureListener;)V

    iput-object p1, p0, Lcom/amap/api/col/l3/q;->e:Lcom/autonavi/ae/gmap/gesture/ScaleRotateGestureDetector;

    .line 18
    new-instance p1, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;

    iget-object v1, p0, Lcom/amap/api/col/l3/q;->b:Landroid/content/Context;

    new-instance v2, Lcom/amap/api/col/l3/q$c;

    invoke-direct {v2, p0, v0}, Lcom/amap/api/col/l3/q$c;-><init>(Lcom/amap/api/col/l3/q;B)V

    invoke-direct {p1, v1, v2}, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;-><init>(Landroid/content/Context;Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector$OnMoveGestureListener;)V

    iput-object p1, p0, Lcom/amap/api/col/l3/q;->f:Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;

    .line 19
    new-instance p1, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;

    iget-object v1, p0, Lcom/amap/api/col/l3/q;->b:Landroid/content/Context;

    new-instance v2, Lcom/amap/api/col/l3/q$b;

    invoke-direct {v2, p0, v0}, Lcom/amap/api/col/l3/q$b;-><init>(Lcom/amap/api/col/l3/q;B)V

    invoke-direct {p1, v1, v2}, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;-><init>(Landroid/content/Context;Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector$OnHoverGestureListener;)V

    iput-object p1, p0, Lcom/amap/api/col/l3/q;->g:Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;

    .line 20
    new-instance p1, Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;

    iget-object v1, p0, Lcom/amap/api/col/l3/q;->b:Landroid/content/Context;

    new-instance v2, Lcom/amap/api/col/l3/q$e;

    invoke-direct {v2, p0, v0}, Lcom/amap/api/col/l3/q$e;-><init>(Lcom/amap/api/col/l3/q;B)V

    invoke-direct {p1, v1, v2}, Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;-><init>(Landroid/content/Context;Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector$OnZoomOutGestureListener;)V

    iput-object p1, p0, Lcom/amap/api/col/l3/q;->h:Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3/q;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/amap/api/col/l3/q;->m:I

    return p0
.end method

.method static synthetic a(Lcom/amap/api/col/l3/q;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/amap/api/col/l3/q;->o:Z

    return p1
.end method

.method static synthetic b(Lcom/amap/api/col/l3/q;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/amap/api/col/l3/q;->k:I

    return p0
.end method

.method static synthetic b(Lcom/amap/api/col/l3/q;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/amap/api/col/l3/q;->i:Z

    return p1
.end method

.method static synthetic c(Lcom/amap/api/col/l3/q;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/amap/api/col/l3/q;->l:I

    return p0
.end method

.method static synthetic d(Lcom/amap/api/col/l3/q;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/amap/api/col/l3/q;->q:Z

    return p0
.end method

.method static synthetic e(Lcom/amap/api/col/l3/q;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/amap/api/col/l3/q;->n:I

    return p0
.end method

.method static synthetic f(Lcom/amap/api/col/l3/q;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/amap/api/col/l3/q;->o:Z

    return p0
.end method

.method static synthetic g(Lcom/amap/api/col/l3/q;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/amap/api/col/l3/q;->k:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amap/api/col/l3/q;->k:I

    return v0
.end method

.method static synthetic h(Lcom/amap/api/col/l3/q;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/amap/api/col/l3/q;->l:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amap/api/col/l3/q;->l:I

    return v0
.end method

.method static synthetic i(Lcom/amap/api/col/l3/q;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/amap/api/col/l3/q;->i:Z

    return p0
.end method

.method static synthetic j(Lcom/amap/api/col/l3/q;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/amap/api/col/l3/q;->p:Z

    return p0
.end method

.method static synthetic k(Lcom/amap/api/col/l3/q;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/amap/api/col/l3/q;->j:I

    return p0
.end method

.method static synthetic l(Lcom/amap/api/col/l3/q;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/amap/api/col/l3/q;->j:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amap/api/col/l3/q;->j:I

    return v0
.end method

.method static synthetic m(Lcom/amap/api/col/l3/q;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/amap/api/col/l3/q;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amap/api/col/l3/q;->m:I

    return v0
.end method

.method static synthetic n(Lcom/amap/api/col/l3/q;)Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/amap/api/col/l3/q;->q:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/amap/api/col/l3/q;->j:I

    .line 4
    iput v0, p0, Lcom/amap/api/col/l3/q;->l:I

    .line 5
    iput v0, p0, Lcom/amap/api/col/l3/q;->k:I

    .line 6
    iput v0, p0, Lcom/amap/api/col/l3/q;->m:I

    .line 7
    iput v0, p0, Lcom/amap/api/col/l3/q;->n:I

    return-void
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 8
    iget v0, p0, Lcom/amap/api/col/l3/q;->n:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/l3/q;->n:I

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 11
    iput-boolean v1, p0, Lcom/amap/api/col/l3/q;->p:Z

    .line 12
    iput-boolean v1, p0, Lcom/amap/api/col/l3/q;->q:Z

    .line 13
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x6

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2

    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 15
    iput-boolean v3, p0, Lcom/amap/api/col/l3/q;->p:Z

    .line 16
    :cond_2
    iget-boolean v0, p0, Lcom/amap/api/col/l3/q;->o:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/amap/api/col/l3/q;->n:I

    const/4 v2, 0x2

    if-lt v0, v2, :cond_3

    .line 17
    iput-boolean v1, p0, Lcom/amap/api/col/l3/q;->o:Z

    .line 18
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/q;->d:Lcom/amap/api/maps/model/AMapGestureListener;

    if-eqz v0, :cond_5

    .line 19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    .line 20
    iget-object v0, p0, Lcom/amap/api/col/l3/q;->d:Lcom/amap/api/maps/model/AMapGestureListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/amap/api/maps/model/AMapGestureListener;->onDown(FF)V

    goto :goto_0

    .line 21
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_5

    .line 22
    iget-object v0, p0, Lcom/amap/api/col/l3/q;->d:Lcom/amap/api/maps/model/AMapGestureListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/amap/api/maps/model/AMapGestureListener;->onUp(FF)V

    .line 23
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/amap/api/col/l3/q;->c:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 24
    iget-object v0, p0, Lcom/amap/api/col/l3/q;->g:Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;

    invoke-virtual {v0, p1}, Lcom/autonavi/ae/gmap/gesture/BaseGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 25
    iget-boolean v2, p0, Lcom/amap/api/col/l3/q;->i:Z

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/amap/api/col/l3/q;->m:I

    if-gtz v2, :cond_7

    .line 26
    :cond_6
    iget-object v2, p0, Lcom/amap/api/col/l3/q;->h:Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;

    invoke-virtual {v2, p1}, Lcom/autonavi/ae/gmap/gesture/BaseGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 27
    iget-boolean v2, p0, Lcom/amap/api/col/l3/q;->o:Z

    if-nez v2, :cond_7

    .line 28
    iget-object v0, p0, Lcom/amap/api/col/l3/q;->e:Lcom/autonavi/ae/gmap/gesture/ScaleRotateGestureDetector;

    invoke-virtual {v0, p1}, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 29
    iget-object v0, p0, Lcom/amap/api/col/l3/q;->f:Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;

    invoke-virtual {v0, p1}, Lcom/autonavi/ae/gmap/gesture/BaseGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    return v0

    :catchall_0
    move-exception p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method public final b()V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/amap/api/col/l3/q;->r:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    iput-object v1, p0, Lcom/amap/api/col/l3/q;->r:Landroid/os/Handler;

    :cond_0
    return-void
.end method
