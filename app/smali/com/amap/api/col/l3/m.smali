.class public final Lcom/amap/api/col/l3/m;
.super Lcom/amap/api/col/l3/t;
.source "AMapGLTextureView.java"

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

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/amap/api/col/l3/m;-><init>(Landroid/content/Context;B)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;B)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/t;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    .line 3
    iput-object p2, p0, Lcom/amap/api/col/l3/m;->b:Lcom/amap/api/col/l3/u;

    .line 4
    iput-object p2, p0, Lcom/amap/api/col/l3/m;->c:Lcom/autonavi/ae/gmap/GLMapRender;

    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Lcom/amap/api/col/l3/m;->a:Z

    .line 6
    invoke-static {p0}, Lcom/amap/api/col/l3/dw;->a(Lcom/amap/api/col/l3/v;)V

    .line 7
    new-instance p2, Lcom/amap/api/col/l3/j;

    invoke-direct {p2, p0, p1}, Lcom/amap/api/col/l3/j;-><init>(Lcom/amap/api/col/l3/v;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/amap/api/col/l3/m;->b:Lcom/amap/api/col/l3/u;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3/m;)Lcom/autonavi/ae/gmap/GLMapRender;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/col/l3/m;->c:Lcom/autonavi/ae/gmap/GLMapRender;

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/amap/api/col/l3/u;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/m;->b:Lcom/amap/api/col/l3/u;

    return-object v0
.end method

.method public final a(Lcom/amap/api/col/l3/dx;)V
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/amap/api/col/l3/t;->a(Lcom/amap/api/col/l3/t$e;)V

    return-void
.end method

.method public final a(Lcom/amap/api/col/l3/dy;)V
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/amap/api/col/l3/t;->a(Lcom/amap/api/col/l3/t$f;)V

    return-void
.end method

.method public final b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/m;->c:Lcom/autonavi/ae/gmap/GLMapRender;

    iget-boolean v0, v0, Lcom/autonavi/ae/gmap/GLMapRender;->mSurfacedestoryed:Z

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/amap/api/col/l3/m$1;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3/m$1;-><init>(Lcom/amap/api/col/l3/m;)V

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3/t;->queueEvent(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/amap/api/col/l3/m;->c:Lcom/autonavi/ae/gmap/GLMapRender;

    iget-boolean v1, v1, Lcom/autonavi/ae/gmap/GLMapRender;->mSurfacedestoryed:Z

    if-nez v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x14

    if-ge v0, v2, :cond_0

    const-wide/16 v2, 0x32

    .line 4
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move v0, v1

    goto :goto_0

    .line 5
    :cond_0
    invoke-super {p0}, Lcom/amap/api/col/l3/t;->b()V

    return-void
.end method

.method public final c()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/amap/api/col/l3/t;->c()V

    return-void
.end method

.method protected final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/amap/api/col/l3/t;->onAttachedToWindow()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/m;->c:Lcom/autonavi/ae/gmap/GLMapRender;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/amap/api/col/l3/m;->c:Lcom/autonavi/ae/gmap/GLMapRender;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapRender;->onAttachedToWindow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 5
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/amap/api/col/l3/t;->c()V

    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/amap/api/col/l3/m;->b()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/m;->c:Lcom/autonavi/ae/gmap/GLMapRender;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/amap/api/col/l3/m;->c:Lcom/autonavi/ae/gmap/GLMapRender;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapRender;->onDetachedFromWindow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 5
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/amap/api/col/l3/t;->onDetachedFromWindow()V

    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/amap/api/col/l3/t;->requestRender()V

    const-wide/16 v0, 0x64

    .line 2
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4
    :goto_0
    invoke-super {p0, p1}, Lcom/amap/api/col/l3/t;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z

    move-result p1

    return p1
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/TextureView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/m;->b:Lcom/amap/api/col/l3/u;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method protected final onWindowVisibilityChanged(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/TextureView;->onWindowVisibilityChanged(I)V

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/amap/api/col/l3/m;->c:Lcom/autonavi/ae/gmap/GLMapRender;

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/amap/api/col/l3/m;->c:Lcom/autonavi/ae/gmap/GLMapRender;

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/GLMapRender;->renderResume()V

    :cond_1
    return-void

    .line 4
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/amap/api/col/l3/m;->c:Lcom/autonavi/ae/gmap/GLMapRender;

    if-eqz p1, :cond_3

    .line 5
    iget-object p1, p0, Lcom/amap/api/col/l3/m;->c:Lcom/autonavi/ae/gmap/GLMapRender;

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/GLMapRender;->renderPause()V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/amap/api/col/l3/m;->a:Z

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/amap/api/col/l3/t;->requestRender()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 1

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/autonavi/ae/gmap/GLMapRender;

    iput-object v0, p0, Lcom/amap/api/col/l3/m;->c:Lcom/autonavi/ae/gmap/GLMapRender;

    .line 2
    invoke-super {p0, p1}, Lcom/amap/api/col/l3/t;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    return-void
.end method
