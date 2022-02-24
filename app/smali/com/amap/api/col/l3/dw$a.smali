.class public final Lcom/amap/api/col/l3/dw$a;
.super Lcom/amap/api/col/l3/dx;
.source "GLESUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3/dw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static g:I = 0x4


# instance fields
.field protected a:I

.field protected b:I

.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:I

.field private h:[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/amap/api/col/l3/dx;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 2
    iput-object v0, p0, Lcom/amap/api/col/l3/dw$a;->h:[I

    const/4 v0, 0x5

    .line 3
    iput v0, p0, Lcom/amap/api/col/l3/dw$a;->a:I

    const/4 v1, 0x6

    .line 4
    iput v1, p0, Lcom/amap/api/col/l3/dw$a;->b:I

    .line 5
    iput v0, p0, Lcom/amap/api/col/l3/dw$a;->c:I

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/amap/api/col/l3/dw$a;->d:I

    const/16 v0, 0x10

    .line 7
    iput v0, p0, Lcom/amap/api/col/l3/dw$a;->e:I

    const/16 v0, 0x8

    .line 8
    iput v0, p0, Lcom/amap/api/col/l3/dw$a;->f:I

    return-void
.end method

.method private a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/amap/api/col/l3/dw$a;->h:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 19
    iget-object p1, p0, Lcom/amap/api/col/l3/dw$a;->h:[I

    aget p1, p1, p2

    return p1

    :cond_0
    return p2
.end method

.method private a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Lcom/amap/api/col/l3/dw$c;
    .locals 9

    .line 2
    new-instance v0, Lcom/amap/api/col/l3/dw$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amap/api/col/l3/dw$c;-><init>(B)V

    const/4 v2, 0x1

    .line 3
    invoke-direct {p0, v2}, Lcom/amap/api/col/l3/dw$a;->a(Z)[I

    move-result-object v5

    iput-object v5, v0, Lcom/amap/api/col/l3/dw$c;->a:[I

    .line 4
    iget-object v8, v0, Lcom/amap/api/col/l3/dw$c;->b:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-interface/range {v3 .. v8}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 5
    iget-object v2, v0, Lcom/amap/api/col/l3/dw$c;->b:[I

    aget v2, v2, v1

    if-gtz v2, :cond_0

    .line 6
    invoke-direct {p0, v1}, Lcom/amap/api/col/l3/dw$a;->a(Z)[I

    move-result-object v5

    iput-object v5, v0, Lcom/amap/api/col/l3/dw$c;->a:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 7
    iget-object v8, v0, Lcom/amap/api/col/l3/dw$c;->b:[I

    move-object v3, p1

    move-object v4, p2

    invoke-interface/range {v3 .. v8}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 8
    iget-object p1, v0, Lcom/amap/api/col/l3/dw$c;->b:[I

    aget p1, p1, v1

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object v0
.end method

.method private a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 8

    .line 9
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p3, v1

    const/16 v3, 0x3025

    .line 10
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/amap/api/col/l3/dw$a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v3

    const/16 v4, 0x3026

    .line 11
    invoke-direct {p0, p1, p2, v2, v4}, Lcom/amap/api/col/l3/dw$a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v4

    .line 12
    iget v5, p0, Lcom/amap/api/col/l3/dw$a;->e:I

    if-lt v3, v5, :cond_0

    iget v3, p0, Lcom/amap/api/col/l3/dw$a;->f:I

    if-lt v4, v3, :cond_0

    const/16 v3, 0x3024

    .line 13
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/amap/api/col/l3/dw$a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v3

    const/16 v4, 0x3023

    .line 14
    invoke-direct {p0, p1, p2, v2, v4}, Lcom/amap/api/col/l3/dw$a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v4

    const/16 v5, 0x3022

    .line 15
    invoke-direct {p0, p1, p2, v2, v5}, Lcom/amap/api/col/l3/dw$a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v5

    const/16 v6, 0x3021

    .line 16
    invoke-direct {p0, p1, p2, v2, v6}, Lcom/amap/api/col/l3/dw$a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v6

    .line 17
    iget v7, p0, Lcom/amap/api/col/l3/dw$a;->a:I

    if-ne v3, v7, :cond_0

    iget v3, p0, Lcom/amap/api/col/l3/dw$a;->b:I

    if-ne v4, v3, :cond_0

    iget v3, p0, Lcom/amap/api/col/l3/dw$a;->c:I

    if-ne v5, v3, :cond_0

    iget v3, p0, Lcom/amap/api/col/l3/dw$a;->d:I

    if-ne v6, v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Z)[I
    .locals 3

    const/16 v0, 0x11

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3024

    aput v2, v0, v1

    .line 1
    iget v1, p0, Lcom/amap/api/col/l3/dw$a;->a:I

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v1, 0x2

    const/16 v2, 0x3023

    aput v2, v0, v1

    iget v1, p0, Lcom/amap/api/col/l3/dw$a;->b:I

    const/4 v2, 0x3

    aput v1, v0, v2

    const/4 v1, 0x4

    const/16 v2, 0x3022

    aput v2, v0, v1

    iget v1, p0, Lcom/amap/api/col/l3/dw$a;->c:I

    const/4 v2, 0x5

    aput v1, v0, v2

    const/4 v1, 0x6

    const/16 v2, 0x3021

    aput v2, v0, v1

    iget v1, p0, Lcom/amap/api/col/l3/dw$a;->d:I

    const/4 v2, 0x7

    aput v1, v0, v2

    const/16 v1, 0x8

    const/16 v2, 0x3025

    aput v2, v0, v1

    iget v1, p0, Lcom/amap/api/col/l3/dw$a;->e:I

    const/16 v2, 0x9

    aput v1, v0, v2

    const/16 v1, 0xa

    const/16 v2, 0x3026

    aput v2, v0, v1

    iget v1, p0, Lcom/amap/api/col/l3/dw$a;->f:I

    const/16 v2, 0xb

    aput v1, v0, v2

    const/16 v1, 0xc

    const/16 v2, 0x3032

    aput v2, v0, v1

    const/16 v1, 0xd

    aput p1, v0, v1

    const/16 p1, 0xe

    const/16 v1, 0x3040

    aput v1, v0, p1

    const/16 p1, 0xf

    sget v1, Lcom/amap/api/col/l3/dw$a;->g:I

    aput v1, v0, p1

    const/16 p1, 0x10

    const/16 v1, 0x3038

    aput v1, v0, p1

    return-object v0
.end method


# virtual methods
.method public final chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 9

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/l3/dw$a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Lcom/amap/api/col/l3/dw$c;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v3, v0, Lcom/amap/api/col/l3/dw$c;->a:[I

    if-nez v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v6, v0, Lcom/amap/api/col/l3/dw$c;->b:[I

    const/4 v0, 0x0

    aget v1, v6, v0

    new-array v7, v1, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 4
    aget v5, v6, v0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v7

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 5
    invoke-direct {p0, p1, p2, v7}, Lcom/amap/api/col/l3/dw$a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v1

    if-nez v1, :cond_1

    const/16 v2, 0x8

    .line 6
    iput v2, p0, Lcom/amap/api/col/l3/dw$a;->a:I

    .line 7
    iput v2, p0, Lcom/amap/api/col/l3/dw$a;->b:I

    .line 8
    iput v2, p0, Lcom/amap/api/col/l3/dw$a;->c:I

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/l3/dw$a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Lcom/amap/api/col/l3/dw$c;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 10
    iget-object v5, v2, Lcom/amap/api/col/l3/dw$c;->a:[I

    if-eqz v5, :cond_1

    .line 11
    iget-object v8, v2, Lcom/amap/api/col/l3/dw$c;->b:[I

    aget v1, v8, v0

    new-array v1, v1, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 12
    aget v7, v8, v0

    move-object v3, p1

    move-object v4, p2

    move-object v6, v1

    invoke-interface/range {v3 .. v8}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 13
    invoke-direct {p0, p1, p2, v1}, Lcom/amap/api/col/l3/dw$a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v1

    :cond_1
    return-object v1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
