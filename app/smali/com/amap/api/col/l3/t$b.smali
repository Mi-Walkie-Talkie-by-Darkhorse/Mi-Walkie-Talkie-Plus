.class Lcom/amap/api/col/l3/t$b;
.super Lcom/amap/api/col/l3/t$a;
.source "GLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:I

.field protected g:I

.field protected h:I

.field final synthetic i:Lcom/amap/api/col/l3/t;

.field private j:[I


# direct methods
.method public constructor <init>(Lcom/amap/api/col/l3/t;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/amap/api/col/l3/t$b;->i:Lcom/amap/api/col/l3/t;

    const/16 v0, 0xd

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    invoke-direct {p0, p1, v0}, Lcom/amap/api/col/l3/t$a;-><init>(Lcom/amap/api/col/l3/t;[I)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    .line 3
    iput-object p1, p0, Lcom/amap/api/col/l3/t$b;->j:[I

    const/16 p1, 0x8

    .line 4
    iput p1, p0, Lcom/amap/api/col/l3/t$b;->c:I

    .line 5
    iput p1, p0, Lcom/amap/api/col/l3/t$b;->d:I

    .line 6
    iput p1, p0, Lcom/amap/api/col/l3/t$b;->e:I

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/amap/api/col/l3/t$b;->f:I

    const/16 v0, 0x10

    .line 8
    iput v0, p0, Lcom/amap/api/col/l3/t$b;->g:I

    .line 9
    iput p1, p0, Lcom/amap/api/col/l3/t$b;->h:I

    return-void

    nop

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x0
        0x3025
        0x10
        0x3026
        0x0
        0x3038
    .end array-data
.end method

.method private a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/amap/api/col/l3/t$b;->j:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 11
    iget-object p1, p0, Lcom/amap/api/col/l3/t$b;->j:[I

    aget p1, p1, p2

    return p1

    :cond_0
    return p2
.end method


# virtual methods
.method public final a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 8

    .line 1
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p3, v1

    const/16 v3, 0x3025

    .line 2
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/amap/api/col/l3/t$b;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v3

    const/16 v4, 0x3026

    .line 3
    invoke-direct {p0, p1, p2, v2, v4}, Lcom/amap/api/col/l3/t$b;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v4

    .line 4
    iget v5, p0, Lcom/amap/api/col/l3/t$b;->g:I

    if-lt v3, v5, :cond_0

    iget v3, p0, Lcom/amap/api/col/l3/t$b;->h:I

    if-lt v4, v3, :cond_0

    const/16 v3, 0x3024

    .line 5
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/amap/api/col/l3/t$b;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v3

    const/16 v4, 0x3023

    .line 6
    invoke-direct {p0, p1, p2, v2, v4}, Lcom/amap/api/col/l3/t$b;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v4

    const/16 v5, 0x3022

    .line 7
    invoke-direct {p0, p1, p2, v2, v5}, Lcom/amap/api/col/l3/t$b;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v5

    const/16 v6, 0x3021

    .line 8
    invoke-direct {p0, p1, p2, v2, v6}, Lcom/amap/api/col/l3/t$b;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v6

    .line 9
    iget v7, p0, Lcom/amap/api/col/l3/t$b;->c:I

    if-ne v3, v7, :cond_0

    iget v3, p0, Lcom/amap/api/col/l3/t$b;->d:I

    if-ne v4, v3, :cond_0

    iget v3, p0, Lcom/amap/api/col/l3/t$b;->e:I

    if-ne v5, v3, :cond_0

    iget v3, p0, Lcom/amap/api/col/l3/t$b;->f:I

    if-ne v6, v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
