.class Lio/agora/rtc/video/ViEAndroidGLES20$a;
.super Ljava/lang/Object;
.source "ViEAndroidGLES20.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/video/ViEAndroidGLES20;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static g:I

.field private static h:[I


# instance fields
.field protected a:I

.field protected b:I

.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:I

.field private i:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x4

    sput v3, Lio/agora/rtc/video/ViEAndroidGLES20$a;->g:I

    const/16 v0, 0x9

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3024

    aput v2, v0, v1

    const/4 v1, 0x1

    aput v3, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x3023

    aput v2, v0, v1

    const/4 v1, 0x3

    aput v3, v0, v1

    const/16 v1, 0x3022

    aput v1, v0, v3

    const/4 v1, 0x5

    aput v3, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x3040

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lio/agora/rtc/video/ViEAndroidGLES20$a;->g:I

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x3038

    aput v2, v0, v1

    sput-object v0, Lio/agora/rtc/video/ViEAndroidGLES20$a;->h:[I

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20$a;->i:[I

    iput p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20$a;->a:I

    iput p2, p0, Lio/agora/rtc/video/ViEAndroidGLES20$a;->b:I

    iput p3, p0, Lio/agora/rtc/video/ViEAndroidGLES20$a;->c:I

    iput p4, p0, Lio/agora/rtc/video/ViEAndroidGLES20$a;->d:I

    iput p5, p0, Lio/agora/rtc/video/ViEAndroidGLES20$a;->e:I

    iput p6, p0, Lio/agora/rtc/video/ViEAndroidGLES20$a;->f:I

    return-void
.end method

.method private a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 2

    iget-object v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20$a;->i:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20$a;->i:[I

    const/4 v1, 0x0

    aget p5, v0, v1

    :cond_0
    return p5
.end method


# virtual methods
.method public a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 11

    const/4 v5, 0x0

    array-length v7, p3

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_2

    aget-object v3, p3, v6

    const/16 v4, 0x3025

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lio/agora/rtc/video/ViEAndroidGLES20$a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v8

    const/16 v4, 0x3026

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lio/agora/rtc/video/ViEAndroidGLES20$a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v0

    iget v1, p0, Lio/agora/rtc/video/ViEAndroidGLES20$a;->e:I

    if-lt v8, v1, :cond_0

    iget v1, p0, Lio/agora/rtc/video/ViEAndroidGLES20$a;->f:I

    if-ge v0, v1, :cond_1

    :cond_0
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_1
    const/16 v4, 0x3024

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lio/agora/rtc/video/ViEAndroidGLES20$a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v8

    const/16 v4, 0x3023

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lio/agora/rtc/video/ViEAndroidGLES20$a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v9

    const/16 v4, 0x3022

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lio/agora/rtc/video/ViEAndroidGLES20$a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v10

    const/16 v4, 0x3021

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lio/agora/rtc/video/ViEAndroidGLES20$a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v0

    iget v1, p0, Lio/agora/rtc/video/ViEAndroidGLES20$a;->a:I

    if-ne v8, v1, :cond_0

    iget v1, p0, Lio/agora/rtc/video/ViEAndroidGLES20$a;->b:I

    if-ne v9, v1, :cond_0

    iget v1, p0, Lio/agora/rtc/video/ViEAndroidGLES20$a;->c:I

    if-ne v10, v1, :cond_0

    iget v1, p0, Lio/agora/rtc/video/ViEAndroidGLES20$a;->d:I

    if-ne v0, v1, :cond_0

    :goto_1
    return-object v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x1

    new-array v5, v0, [I

    sget-object v2, Lio/agora/rtc/video/ViEAndroidGLES20$a;->h:[I

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    aget v4, v5, v4

    if-gtz v4, :cond_0

    invoke-static {}, Lio/agora/rtc/video/ViEAndroidGLES20;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "no configurations found"

    invoke-static {v0, v1}, Lio/agora/rtc/internal/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v3

    :cond_0
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    sget-object v2, Lio/agora/rtc/video/ViEAndroidGLES20$a;->h:[I

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    invoke-virtual {p0, p1, p2, v3}, Lio/agora/rtc/video/ViEAndroidGLES20$a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v3

    goto :goto_0
.end method
