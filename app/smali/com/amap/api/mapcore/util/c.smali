.class public Lcom/amap/api/mapcore/util/c;
.super Landroid/opengl/GLSurfaceView;
.source "AMapGLSurfaceView.java"

# interfaces
.implements Lcom/amap/api/mapcore/util/m;


# instance fields
.field protected a:Z

.field private b:Lcom/amap/api/mapcore/util/l;

.field private c:Lcom/autonavi/ae/gmap/GLMapRender;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore/util/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x5

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/c;->b:Lcom/amap/api/mapcore/util/l;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/c;->c:Lcom/autonavi/ae/gmap/GLMapRender;

    iput-boolean v4, p0, Lcom/amap/api/mapcore/util/c;->a:Z

    const/4 v2, 0x6

    const/16 v5, 0x10

    const/16 v6, 0x8

    move-object v0, p0

    move v3, v1

    invoke-static/range {v0 .. v6}, Lcom/amap/api/mapcore/util/do;->a(Lcom/amap/api/mapcore/util/m;IIIIII)V

    new-instance v0, Lcom/amap/api/mapcore/util/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/amap/api/mapcore/util/a;-><init>(Lcom/amap/api/mapcore/util/m;Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/c;->b:Lcom/amap/api/mapcore/util/l;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/c;)Lcom/autonavi/ae/gmap/GLMapRender;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/c;->c:Lcom/autonavi/ae/gmap/GLMapRender;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/amap/api/mapcore/util/l;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/c;->b:Lcom/amap/api/mapcore/util/l;

    return-object v0
.end method

.method public a(Lcom/amap/api/mapcore/util/dp;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    return-void
.end method

.method public a(Lcom/amap/api/mapcore/util/dq;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onAttachedToWindow()V

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c;->c:Lcom/autonavi/ae/gmap/GLMapRender;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/c;->c:Lcom/autonavi/ae/gmap/GLMapRender;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapRender;->onAttachedToWindow()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c;->onResume()V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c;->onPause()V

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c;->c:Lcom/autonavi/ae/gmap/GLMapRender;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/c;->c:Lcom/autonavi/ae/gmap/GLMapRender;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapRender;->onDetachedFromWindow()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/c;->c:Lcom/autonavi/ae/gmap/GLMapRender;

    iget-boolean v0, v0, Lcom/autonavi/ae/gmap/GLMapRender;->mSurfacedestoryed:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/mapcore/util/c$1;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/c$1;-><init>(Lcom/amap/api/mapcore/util/c;)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/c;->queueEvent(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c;->c:Lcom/autonavi/ae/gmap/GLMapRender;

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

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c;->b:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/util/l;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->onWindowVisibilityChanged(I)V

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c;->c:Lcom/autonavi/ae/gmap/GLMapRender;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/c;->c:Lcom/autonavi/ae/gmap/GLMapRender;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapRender;->renderPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/c;->a:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/c;->c:Lcom/autonavi/ae/gmap/GLMapRender;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/c;->c:Lcom/autonavi/ae/gmap/GLMapRender;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapRender;->renderResume()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lcom/autonavi/ae/gmap/GLMapRender;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/c;->c:Lcom/autonavi/ae/gmap/GLMapRender;

    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    return-void
.end method
