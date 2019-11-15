.class public Lorg/webrtc/videoengine/ViEAndroidGLES20;
.super Landroid/opengl/GLSurfaceView;
.source "ViEAndroidGLES20.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/videoengine/ViEAndroidGLES20$1;,
        Lorg/webrtc/videoengine/ViEAndroidGLES20$a;,
        Lorg/webrtc/videoengine/ViEAndroidGLES20$b;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Ljava/util/concurrent/locks/ReentrantLock;

.field private f:J

.field private g:I

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WEBRTC-JR-ViEAndroidGLES20"

    sput-object v0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-boolean v2, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->b:Z

    iput-boolean v2, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->c:Z

    iput-boolean v2, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->d:Z

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->e:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->f:J

    iput v2, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->g:I

    iput v2, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->h:I

    invoke-direct {p0, v2, v2, v2}, Lorg/webrtc/videoengine/ViEAndroidGLES20;->a(ZII)V

    return-void
.end method

.method private native CreateOpenGLNative(JII)I
.end method

.method private native DrawNative(J)V
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/webrtc/videoengine/ViEAndroidGLES20;->b(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    return-void
.end method

.method private a(ZII)V
    .locals 8

    const/4 v4, 0x5

    const/4 v7, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/webrtc/videoengine/ViEAndroidGLES20;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v2, -0x3

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    :cond_0
    new-instance v0, Lorg/webrtc/videoengine/ViEAndroidGLES20$b;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lorg/webrtc/videoengine/ViEAndroidGLES20$b;-><init>(Lorg/webrtc/videoengine/ViEAndroidGLES20$1;)V

    invoke-virtual {p0, v0}, Lorg/webrtc/videoengine/ViEAndroidGLES20;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    if-eqz p1, :cond_1

    new-instance v0, Lorg/webrtc/videoengine/ViEAndroidGLES20$a;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/webrtc/videoengine/ViEAndroidGLES20$a;-><init>(IIIIII)V

    :goto_0
    invoke-virtual {p0, v0}, Lorg/webrtc/videoengine/ViEAndroidGLES20;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    invoke-virtual {p0, p0}, Lorg/webrtc/videoengine/ViEAndroidGLES20;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    invoke-virtual {p0, v7}, Lorg/webrtc/videoengine/ViEAndroidGLES20;->setRenderMode(I)V

    return-void

    :cond_1
    new-instance v0, Lorg/webrtc/videoengine/ViEAndroidGLES20$a;

    const/4 v2, 0x6

    move v1, v4

    move v3, v4

    move v4, v7

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/webrtc/videoengine/ViEAndroidGLES20$a;-><init>(IIIIII)V

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .locals 5

    :goto_0
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    sget-object v1, Lorg/webrtc/videoengine/ViEAndroidGLES20;->a:Ljava/lang/String;

    const-string v2, "%s: EGL error: 0x%x"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4

    iget-object v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-boolean v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->d:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->b:Z

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->c:Z

    if-nez v0, :cond_3

    iget-wide v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->f:J

    iget v2, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->g:I

    iget v3, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->h:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/webrtc/videoengine/ViEAndroidGLES20;->CreateOpenGLNative(JII)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->c:Z

    :cond_3
    iget-wide v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->f:J

    invoke-direct {p0, v0, v1}, Lorg/webrtc/videoengine/ViEAndroidGLES20;->DrawNative(J)V

    iget-object v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 3

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->b:Z

    iput p2, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->g:I

    iput p3, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->h:I

    iget-object v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-boolean v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->d:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->f:J

    invoke-direct {p0, v0, v1, p2, p3}, Lorg/webrtc/videoengine/ViEAndroidGLES20;->CreateOpenGLNative(JII)I

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->c:Z

    :cond_0
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2

    const/4 v1, 0x0

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-interface {p1, v1, v1, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    return-void
.end method
