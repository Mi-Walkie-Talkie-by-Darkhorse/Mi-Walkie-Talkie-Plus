.class public Lcom/autonavi/ae/gmap/GLMapRender;
.super Ljava/lang/Object;
.source "GLMapRender.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field public static final ANIMATION_TICK_COUNT:I = 0xa

.field public static final LONG_LONG_TICK_COUNT:I = 0x1e

.field public static final LONG_TICK_COUNT:I = 0x6

.field private static final MAP_RENDER_MSG_RUNNABLE_ONGLTHREAD:I = 0x64

.field private static final MAP_RENDER_MSG_SURFACE_RENDER:I = 0xa

.field public static final NORMAL_TICK_COUNT:I = 0x2

.field public static final RENDER_FPS_ANIMATION:I = 0x1e

.field public static final RENDER_FPS_GESTURE_ACTION:I = 0x28

.field static final RENDER_FPS_MAX:I = 0x3c

.field public static final RENDER_FPS_NAVI:I = 0xa

.field public static final RENDER_FPS_NORMAL:I = 0xf

.field static final RENDER_TIMMER_DIFF_MIN:J = 0x10L

.field static final TAG:Ljava/lang/String; = "render"


# instance fields
.field private volatile mDrawFrameTickCount:Ljava/util/concurrent/atomic/AtomicLong;

.field public mGLMapView:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

.field private mGLRenderHandler:Landroid/os/Handler;

.field private mGLRenderThread:Landroid/os/HandlerThread;

.field private volatile mIsRendPause:Z

.field private mIsTrafficMode:Z

.field private mLastFrameTime:J

.field public volatile mSurfacedestoryed:Z

.field private mTargetFrameDurationMillis:I

.field private mTargetRenderFPS:F


# direct methods
.method public constructor <init>(Lcom/autonavi/amap/mapcore/interfaces/IAMap;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x42

    iput v0, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mTargetFrameDurationMillis:I

    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mTargetRenderFPS:F

    iput-boolean v2, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mIsRendPause:Z

    iput-boolean v2, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mSurfacedestoryed:Z

    iput-object v1, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mGLRenderThread:Landroid/os/HandlerThread;

    iput-object v1, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mGLRenderHandler:Landroid/os/Handler;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mLastFrameTime:J

    iput-boolean v2, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mIsTrafficMode:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x6

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mDrawFrameTickCount:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p1, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mGLMapView:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/ae/gmap/GLMapRender;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mIsRendPause:Z

    return v0
.end method

.method private drawSingleFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mGLMapView:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->drawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public isRenderPause()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mIsRendPause:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, " AMapGlRenderThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mGLRenderThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mGLRenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/autonavi/ae/gmap/GLMapRender$1;

    iget-object v1, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mGLRenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/autonavi/ae/gmap/GLMapRender$1;-><init>(Lcom/autonavi/ae/gmap/GLMapRender;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mGLRenderHandler:Landroid/os/Handler;

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mGLRenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iput-object v1, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mGLRenderThread:Landroid/os/HandlerThread;

    iput-object v1, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mGLRenderHandler:Landroid/os/Handler;

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 14

    const-wide/16 v12, 0x0

    const-wide/16 v10, -0x9

    const/16 v8, 0xa

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mLastFrameTime:J

    invoke-direct {p0, p1}, Lcom/autonavi/ae/gmap/GLMapRender;->drawSingleFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mLastFrameTime:J

    sub-long v2, v0, v2

    iput-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mLastFrameTime:J

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mDrawFrameTickCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    iget-object v4, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mGLMapView:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {v4}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getRenderMode()I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mGLRenderHandler:Landroid/os/Handler;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mGLRenderThread:Landroid/os/HandlerThread;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mGLRenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mDrawFrameTickCount:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v6, 0x1

    sub-long/2addr v0, v6

    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    cmp-long v4, v0, v12

    if-gtz v4, :cond_5

    const-wide/16 v2, -0x5

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    const-wide/16 v0, 0x3c

    :goto_0
    cmp-long v2, v0, v12

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mGLRenderHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mGLRenderHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void

    :cond_1
    const-wide/16 v2, -0x7

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    const-wide/16 v0, 0x64

    goto :goto_0

    :cond_2
    cmp-long v0, v0, v10

    if-lez v0, :cond_3

    const-wide/16 v0, 0xfa

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mIsTrafficMode:Z

    if-eqz v0, :cond_4

    const-wide/16 v0, 0x2710

    :goto_1
    iget-object v2, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mDrawFrameTickCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v10, v11}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto :goto_0

    :cond_4
    const-wide/16 v0, 0x1f4

    goto :goto_1

    :cond_5
    const-wide/16 v0, 0x10

    iget v4, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mTargetFrameDurationMillis:I

    int-to-long v4, v4

    sub-long v2, v4, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mSurfacedestoryed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/autonavi/ae/gmap/GLMapRender;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mGLMapView:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {v0, p1, p2, p3}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->changeSurface(Ljavax/microedition/khronos/opengles/GL10;II)V

    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lcom/autonavi/ae/gmap/GLMapRender;->resetTickCount(I)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mIsRendPause:Z

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mSurfacedestoryed:Z

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mGLMapView:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->createSurface(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    return-void
.end method

.method public onSurfaceDestory()V
    .locals 3

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mIsRendPause:Z

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mGLRenderHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mGLRenderThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mGLRenderHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mGLMapView:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {v0, v2}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->destorySurface(I)V

    iput-boolean v2, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mSurfacedestoryed:Z

    return-void
.end method

.method public renderPause()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mGLRenderHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mGLRenderThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mGLRenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mGLRenderHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mIsRendPause:Z

    return-void
.end method

.method public renderResume()V
    .locals 4

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mGLRenderHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mGLRenderThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mGLRenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mGLRenderHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mIsRendPause:Z

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mDrawFrameTickCount:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lcom/autonavi/ae/gmap/GLMapRender;->resetTickCount(I)V

    return-void
.end method

.method public resetTickCount(I)V
    .locals 5

    const/16 v4, 0xa

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mDrawFrameTickCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mIsRendPause:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mGLRenderThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mGLRenderHandler:Landroid/os/Handler;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mGLRenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mDrawFrameTickCount:Ljava/util/concurrent/atomic/AtomicLong;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mGLRenderHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mGLRenderHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    int-to-long v2, p1

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mDrawFrameTickCount:Ljava/util/concurrent/atomic/AtomicLong;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto :goto_0

    :cond_2
    int-to-long v2, p1

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mDrawFrameTickCount:Ljava/util/concurrent/atomic/AtomicLong;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto :goto_0
.end method

.method public sendToRenderEvent(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mGLRenderHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mGLRenderThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mGLRenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mGLRenderHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setRenderFps(F)V
    .locals 2

    iget v0, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mTargetRenderFPS:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mTargetFrameDurationMillis:I

    iput p1, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mTargetRenderFPS:F

    :cond_0
    return-void
.end method

.method public setTrafficMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/ae/gmap/GLMapRender;->mIsTrafficMode:Z

    return-void
.end method
