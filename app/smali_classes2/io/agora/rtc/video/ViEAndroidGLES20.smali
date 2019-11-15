.class public Lio/agora/rtc/video/ViEAndroidGLES20;
.super Landroid/opengl/GLSurfaceView;
.source "ViEAndroidGLES20.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/video/ViEAndroidGLES20$a;,
        Lio/agora/rtc/video/ViEAndroidGLES20$b;
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

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ViEAndroidGLES20"

    sput-object v0, Lio/agora/rtc/video/ViEAndroidGLES20;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-boolean v2, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->b:Z

    iput-boolean v2, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->c:Z

    iput-boolean v2, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->d:Z

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->e:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->f:J

    iput v2, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->g:I

    iput v2, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->h:I

    const/4 v0, -0x1

    iput v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->i:I

    invoke-direct {p0, v2, v2, v2}, Lio/agora/rtc/video/ViEAndroidGLES20;->a(ZII)V

    return-void
.end method

.method private native CreateOpenGLNative(JII)I
.end method

.method private native DrawNative(J)V
.end method

.method private native OnCfgChangedNative(JI)V
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/agora/rtc/video/ViEAndroidGLES20;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .locals 0

    invoke-static {p0, p1}, Lio/agora/rtc/video/ViEAndroidGLES20;->b(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    return-void
.end method

.method private a(ZII)V
    .locals 8

    const/4 v4, 0x5

    const/4 v7, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lio/agora/rtc/video/ViEAndroidGLES20;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v2, -0x3

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    :cond_0
    new-instance v0, Lio/agora/rtc/video/ViEAndroidGLES20$b;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lio/agora/rtc/video/ViEAndroidGLES20$b;-><init>(Lio/agora/rtc/video/ViEAndroidGLES20$1;)V

    invoke-virtual {p0, v0}, Lio/agora/rtc/video/ViEAndroidGLES20;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    if-eqz p1, :cond_1

    new-instance v0, Lio/agora/rtc/video/ViEAndroidGLES20$a;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lio/agora/rtc/video/ViEAndroidGLES20$a;-><init>(IIIIII)V

    :goto_0
    invoke-virtual {p0, v0}, Lio/agora/rtc/video/ViEAndroidGLES20;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    invoke-virtual {p0, p0}, Lio/agora/rtc/video/ViEAndroidGLES20;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    invoke-virtual {p0, v7}, Lio/agora/rtc/video/ViEAndroidGLES20;->setRenderMode(I)V

    return-void

    :cond_1
    new-instance v0, Lio/agora/rtc/video/ViEAndroidGLES20$a;

    const/4 v2, 0x6

    move v1, v4

    move v3, v4

    move v4, v7

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lio/agora/rtc/video/ViEAndroidGLES20$a;-><init>(IIIIII)V

    goto :goto_0
.end method

.method private b()I
    .locals 2

    invoke-virtual {p0}, Lio/agora/rtc/video/ViEAndroidGLES20;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/agora/rtc/video/ViEAndroidGLES20;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/agora/rtc/video/ViEAndroidGLES20;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->i:I

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .locals 5

    :goto_0
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    sget-object v1, Lio/agora/rtc/video/ViEAndroidGLES20;->a:Ljava/lang/String;

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

    invoke-static {v1, v0}, Lio/agora/rtc/internal/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c()V
    .locals 4

    invoke-direct {p0}, Lio/agora/rtc/video/ViEAndroidGLES20;->b()I

    move-result v0

    iget v1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->i:I

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-boolean v1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->d:Z

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->f:J

    invoke-direct {p0, v2, v3, v0}, Lio/agora/rtc/video/ViEAndroidGLES20;->OnCfgChangedNative(JI)V

    :cond_0
    iput v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->i:I

    iget-object v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_1
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lio/agora/rtc/video/ViEAndroidGLES20;->c()V

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4

    invoke-direct {p0}, Lio/agora/rtc/video/ViEAndroidGLES20;->c()V

    iget-object v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-boolean v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->d:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->b:Z

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->c:Z

    if-nez v0, :cond_3

    iget-wide v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->f:J

    iget v2, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->g:I

    iget v3, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->h:I

    invoke-direct {p0, v0, v1, v2, v3}, Lio/agora/rtc/video/ViEAndroidGLES20;->CreateOpenGLNative(JII)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->c:Z

    :cond_3
    iget-wide v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->f:J

    invoke-direct {p0, v0, v1}, Lio/agora/rtc/video/ViEAndroidGLES20;->DrawNative(J)V

    iget-object v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 4

    const/4 v3, 0x1

    iput-boolean v3, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->b:Z

    iput p2, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->g:I

    iput p3, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->h:I

    const-string v0, "SurfaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Surface changed to width "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/rtc/internal/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-boolean v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->d:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->f:J

    invoke-direct {p0, v0, v1, p2, p3}, Lio/agora/rtc/video/ViEAndroidGLES20;->CreateOpenGLNative(JII)I

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->c:Z

    :cond_0
    iget-object v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    return-void
.end method
