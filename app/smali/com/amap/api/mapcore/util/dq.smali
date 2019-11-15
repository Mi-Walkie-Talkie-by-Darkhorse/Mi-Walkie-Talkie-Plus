.class public Lcom/amap/api/mapcore/util/dq;
.super Ljava/lang/Object;
.source "GLMapSurfaceEGLContextFactory.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLContextFactory;
.implements Lcom/amap/api/mapcore/util/k$f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 0

    return-void
.end method
