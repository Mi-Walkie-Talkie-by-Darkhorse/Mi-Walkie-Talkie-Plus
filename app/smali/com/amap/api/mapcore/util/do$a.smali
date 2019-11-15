.class public Lcom/amap/api/mapcore/util/do$a;
.super Lcom/amap/api/mapcore/util/dp;
.source "GLESUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static g:I


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
    .locals 1

    const/4 v0, 0x4

    sput v0, Lcom/amap/api/mapcore/util/do$a;->g:I

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 1

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/dp;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/amap/api/mapcore/util/do$a;->h:[I

    iput p1, p0, Lcom/amap/api/mapcore/util/do$a;->a:I

    iput p2, p0, Lcom/amap/api/mapcore/util/do$a;->b:I

    iput p3, p0, Lcom/amap/api/mapcore/util/do$a;->c:I

    iput p4, p0, Lcom/amap/api/mapcore/util/do$a;->d:I

    iput p5, p0, Lcom/amap/api/mapcore/util/do$a;->e:I

    iput p6, p0, Lcom/amap/api/mapcore/util/do$a;->f:I

    return-void
.end method

.method private a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/do$a;->h:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/do$a;->h:[I

    const/4 v1, 0x0

    aget p5, v0, v1

    :cond_0
    return p5
.end method

.method private a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Lcom/amap/api/mapcore/util/do$c;
    .locals 8

    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v6, Lcom/amap/api/mapcore/util/do$c;

    invoke-direct {v6, v3}, Lcom/amap/api/mapcore/util/do$c;-><init>(Lcom/amap/api/mapcore/util/do$1;)V

    const/4 v0, 0x1

    invoke-direct {p0, v7, v0}, Lcom/amap/api/mapcore/util/do$a;->a(IZ)[I

    move-result-object v0

    iput-object v0, v6, Lcom/amap/api/mapcore/util/do$c;->a:[I

    iget-object v2, v6, Lcom/amap/api/mapcore/util/do$c;->a:[I

    iget-object v5, v6, Lcom/amap/api/mapcore/util/do$c;->b:[I

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    iget-object v0, v6, Lcom/amap/api/mapcore/util/do$c;->b:[I

    aget v0, v0, v4

    if-gtz v0, :cond_0

    invoke-direct {p0, v7, v4}, Lcom/amap/api/mapcore/util/do$a;->a(IZ)[I

    move-result-object v0

    iput-object v0, v6, Lcom/amap/api/mapcore/util/do$c;->a:[I

    iget-object v2, v6, Lcom/amap/api/mapcore/util/do$c;->a:[I

    iget-object v5, v6, Lcom/amap/api/mapcore/util/do$c;->b:[I

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    iget-object v0, v6, Lcom/amap/api/mapcore/util/do$c;->b:[I

    aget v0, v0, v4

    if-gtz v0, :cond_0

    :goto_0
    return-object v3

    :cond_0
    move-object v3, v6

    goto :goto_0
.end method

.method private a(IZ)[I
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-ne p1, v4, :cond_1

    const/16 v2, 0x11

    new-array v2, v2, [I

    const/16 v3, 0x3024

    aput v3, v2, v1

    iget v3, p0, Lcom/amap/api/mapcore/util/do$a;->a:I

    aput v3, v2, v0

    const/16 v3, 0x3023

    aput v3, v2, v4

    iget v3, p0, Lcom/amap/api/mapcore/util/do$a;->b:I

    aput v3, v2, v5

    const/16 v3, 0x3022

    aput v3, v2, v6

    const/4 v3, 0x5

    iget v4, p0, Lcom/amap/api/mapcore/util/do$a;->c:I

    aput v4, v2, v3

    const/4 v3, 0x6

    const/16 v4, 0x3021

    aput v4, v2, v3

    const/4 v3, 0x7

    iget v4, p0, Lcom/amap/api/mapcore/util/do$a;->d:I

    aput v4, v2, v3

    const/16 v3, 0x8

    const/16 v4, 0x3025

    aput v4, v2, v3

    const/16 v3, 0x9

    iget v4, p0, Lcom/amap/api/mapcore/util/do$a;->e:I

    aput v4, v2, v3

    const/16 v3, 0xa

    const/16 v4, 0x3026

    aput v4, v2, v3

    const/16 v3, 0xb

    iget v4, p0, Lcom/amap/api/mapcore/util/do$a;->f:I

    aput v4, v2, v3

    const/16 v3, 0xc

    const/16 v4, 0x3032

    aput v4, v2, v3

    const/16 v3, 0xd

    if-eqz p2, :cond_0

    :goto_0
    aput v0, v2, v3

    const/16 v0, 0xe

    const/16 v1, 0x3040

    aput v1, v2, v0

    const/16 v0, 0xf

    sget v1, Lcom/amap/api/mapcore/util/do$a;->g:I

    aput v1, v2, v0

    const/16 v0, 0x10

    const/16 v1, 0x3038

    aput v1, v2, v0

    move-object v0, v2

    :goto_1
    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const/16 v2, 0x9

    new-array v2, v2, [I

    const/16 v3, 0x3024

    aput v3, v2, v1

    iget v1, p0, Lcom/amap/api/mapcore/util/do$a;->a:I

    aput v1, v2, v0

    const/16 v1, 0x3023

    aput v1, v2, v4

    iget v1, p0, Lcom/amap/api/mapcore/util/do$a;->b:I

    aput v1, v2, v5

    const/16 v1, 0x3022

    aput v1, v2, v6

    const/4 v1, 0x5

    iget v3, p0, Lcom/amap/api/mapcore/util/do$a;->c:I

    aput v3, v2, v1

    const/4 v1, 0x6

    const/16 v3, 0x3032

    aput v3, v2, v1

    const/4 v1, 0x7

    aput v0, v2, v1

    const/16 v0, 0x8

    const/16 v1, 0x3038

    aput v1, v2, v0

    move-object v0, v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x7

    new-array v2, v2, [I

    const/16 v3, 0x3024

    aput v3, v2, v1

    iget v1, p0, Lcom/amap/api/mapcore/util/do$a;->a:I

    aput v1, v2, v0

    const/16 v0, 0x3023

    aput v0, v2, v4

    iget v0, p0, Lcom/amap/api/mapcore/util/do$a;->b:I

    aput v0, v2, v5

    const/16 v0, 0x3022

    aput v0, v2, v6

    const/4 v0, 0x5

    iget v1, p0, Lcom/amap/api/mapcore/util/do$a;->c:I

    aput v1, v2, v0

    const/4 v0, 0x6

    const/16 v1, 0x3038

    aput v1, v2, v0

    move-object v0, v2

    goto :goto_1
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

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore/util/do$a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v8

    const/16 v4, 0x3026

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore/util/do$a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v0

    iget v1, p0, Lcom/amap/api/mapcore/util/do$a;->e:I

    if-lt v8, v1, :cond_0

    iget v1, p0, Lcom/amap/api/mapcore/util/do$a;->f:I

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

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore/util/do$a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v8

    const/16 v4, 0x3023

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore/util/do$a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v9

    const/16 v4, 0x3022

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore/util/do$a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v10

    const/16 v4, 0x3021

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore/util/do$a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v0

    iget v1, p0, Lcom/amap/api/mapcore/util/do$a;->a:I

    if-ne v8, v1, :cond_0

    iget v1, p0, Lcom/amap/api/mapcore/util/do$a;->b:I

    if-ne v9, v1, :cond_0

    iget v1, p0, Lcom/amap/api/mapcore/util/do$a;->c:I

    if-ne v10, v1, :cond_0

    iget v1, p0, Lcom/amap/api/mapcore/util/do$a;->d:I

    if-ne v0, v1, :cond_0

    :goto_1
    return-object v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore/util/do$a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Lcom/amap/api/mapcore/util/do$c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/amap/api/mapcore/util/do$c;->a:[I

    if-nez v1, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v1, v0, Lcom/amap/api/mapcore/util/do$c;->b:[I

    aget v1, v1, v6

    new-array v3, v1, [Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v2, v0, Lcom/amap/api/mapcore/util/do$c;->a:[I

    iget-object v1, v0, Lcom/amap/api/mapcore/util/do$c;->b:[I

    aget v4, v1, v6

    iget-object v5, v0, Lcom/amap/api/mapcore/util/do$c;->b:[I

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    invoke-virtual {p0, p1, p2, v3}, Lcom/amap/api/mapcore/util/do$a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    if-nez v0, :cond_1

    iput v7, p0, Lcom/amap/api/mapcore/util/do$a;->a:I

    iput v7, p0, Lcom/amap/api/mapcore/util/do$a;->b:I

    iput v7, p0, Lcom/amap/api/mapcore/util/do$a;->c:I

    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore/util/do$a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Lcom/amap/api/mapcore/util/do$c;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/amap/api/mapcore/util/do$c;->a:[I

    if-eqz v2, :cond_1

    iget-object v0, v1, Lcom/amap/api/mapcore/util/do$c;->b:[I

    aget v0, v0, v6

    new-array v3, v0, [Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v2, v1, Lcom/amap/api/mapcore/util/do$c;->a:[I

    iget-object v0, v1, Lcom/amap/api/mapcore/util/do$c;->b:[I

    aget v4, v0, v6

    iget-object v5, v1, Lcom/amap/api/mapcore/util/do$c;->b:[I

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    invoke-virtual {p0, p1, p2, v3}, Lcom/amap/api/mapcore/util/do$a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    goto :goto_0
.end method
