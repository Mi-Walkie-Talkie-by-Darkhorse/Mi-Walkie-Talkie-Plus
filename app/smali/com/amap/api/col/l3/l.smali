.class public final Lcom/amap/api/col/l3/l;
.super Landroid/opengl/GLSurfaceView;

# interfaces
.implements Lcom/amap/api/col/l3/v;


# instance fields
.field protected a:Z

.field private b:Lcom/amap/api/col/l3/u;

.field private c:Lcom/autonavi/ae/gmap/GLMapRender;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/amap/api/col/l3/l;-><init>(Landroid/content/Context;B)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;B)V
    .locals 0

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p2, p0, Lcom/amap/api/col/l3/l;->b:Lcom/amap/api/col/l3/u;

    iput-object p2, p0, Lcom/amap/api/col/l3/l;->c:Lcom/autonavi/ae/gmap/GLMapRender;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/amap/api/col/l3/l;->a:Z

    invoke-static {p0}, Lcom/amap/api/col/l3/dw;->a(Lcom/amap/api/col/l3/v;)V

    new-instance p2, Lcom/amap/api/col/l3/j;

    invoke-direct {p2, p0, p1}, Lcom/amap/api/col/l3/j;-><init>(Lcom/amap/api/col/l3/v;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/amap/api/col/l3/l;->b:Lcom/amap/api/col/l3/u;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3/l;)Lcom/autonavi/ae/gmap/GLMapRender;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3/l;->c:Lcom/autonavi/ae/gmap/GLMapRender;

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/amap/api/col/l3/u;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3/l;->b:Lcom/amap/api/col/l3/u;

    return-object v0
.end method

.method public final a(Lcom/amap/api/col/l3/dx;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    return-void
.end method

.method public final a(Lcom/amap/api/col/l3/dy;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    return-void
.end method

.method protected final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onAttachedToWindow()V

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/l;->c:Lcom/autonavi/ae/gmap/GLMapRender;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/l;->c:Lcom/autonavi/ae/gmap/GLMapRender;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapRender;->onAttachedToWindow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 1

    invoke-virtual {p0}, Lcom/amap/api/col/l3/l;->onPause()V

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/l;->c:Lcom/autonavi/ae/gmap/GLMapRender;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/l;->c:Lcom/autonavi/ae/gmap/GLMapRender;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapRender;->onDetachedFromWindow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    return-void
.end method

.method public final onPause()V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/col/l3/l;->c:Lcom/autonavi/ae/gmap/GLMapRender;

    iget-boolean v0, v0, Lcom/autonavi/ae/gmap/GLMapRender;->mSurfacedestoryed:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/l3/l$1;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3/l$1;-><init>(Lcom/amap/api/col/l3/l;)V

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/amap/api/col/l3/l;->c:Lcom/autonavi/ae/gmap/GLMapRender;

    iget-boolean v1, v1, Lcom/autonavi/ae/gmap/GLMapRender;->mSurfacedestoryed:Z

    if-nez v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x14

    if-ge v0, v2, :cond_0

    const-wide/16 v2, 0x32

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move v0, v1

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/l;->b:Lcom/amap/api/col/l3/u;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method protected final onWindowVisibilityChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->onWindowVisibilityChanged(I)V

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_2

    :try_start_0
    iget-object p1, p0, Lcom/amap/api/col/l3/l;->c:Lcom/autonavi/ae/gmap/GLMapRender;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/amap/api/col/l3/l;->c:Lcom/autonavi/ae/gmap/GLMapRender;

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/GLMapRender;->renderResume()V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/amap/api/col/l3/l;->c:Lcom/autonavi/ae/gmap/GLMapRender;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/amap/api/col/l3/l;->c:Lcom/autonavi/ae/gmap/GLMapRender;

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/GLMapRender;->renderPause()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/amap/api/col/l3/l;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lcom/autonavi/ae/gmap/GLMapRender;

    iput-object v0, p0, Lcom/amap/api/col/l3/l;->c:Lcom/autonavi/ae/gmap/GLMapRender;

    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    return-void
.end method
