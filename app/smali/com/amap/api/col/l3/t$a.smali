.class abstract Lcom/amap/api/col/l3/t$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amap/api/col/l3/t$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "a"
.end annotation


# instance fields
.field protected a:[I

.field final synthetic b:Lcom/amap/api/col/l3/t;


# direct methods
.method public constructor <init>(Lcom/amap/api/col/l3/t;[I)V
    .locals 4

    iput-object p1, p0, Lcom/amap/api/col/l3/t$a;->b:Lcom/amap/api/col/l3/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p0, Lcom/amap/api/col/l3/t$a;->b:Lcom/amap/api/col/l3/t;

    invoke-static {p1}, Lcom/amap/api/col/l3/t;->a(Lcom/amap/api/col/l3/t;)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/amap/api/col/l3/t$a;->b:Lcom/amap/api/col/l3/t;

    invoke-static {p1}, Lcom/amap/api/col/l3/t;->a(Lcom/amap/api/col/l3/t;)I

    move-result p1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    array-length p1, p2

    add-int/lit8 v1, p1, 0x2

    new-array v1, v1, [I

    add-int/lit8 v2, p1, -0x1

    const/4 v3, 0x0

    invoke-static {p2, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p2, 0x3040

    aput p2, v1, v2

    iget-object p2, p0, Lcom/amap/api/col/l3/t$a;->b:Lcom/amap/api/col/l3/t;

    invoke-static {p2}, Lcom/amap/api/col/l3/t;->a(Lcom/amap/api/col/l3/t;)I

    move-result p2

    if-ne p2, v0, :cond_1

    const/4 p2, 0x4

    aput p2, v1, p1

    goto :goto_0

    :cond_1
    const/16 p2, 0x40

    aput p2, v1, p1

    :goto_0
    add-int/lit8 p1, p1, 0x1

    const/16 p2, 0x3038

    aput p2, v1, p1

    move-object p2, v1

    :goto_1
    iput-object p2, p0, Lcom/amap/api/col/l3/t$a;->a:[I

    return-void
.end method


# virtual methods
.method abstract a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
.end method

.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 8

    const/4 v0, 0x1

    new-array v0, v0, [I

    iget-object v3, p0, Lcom/amap/api/col/l3/t$a;->a:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    aget v5, v0, v1

    if-lez v5, :cond_2

    new-array v7, v5, [Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v3, p0, Lcom/amap/api/col/l3/t$a;->a:[I

    move-object v1, p1

    move-object v2, p2

    move-object v4, v7

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2, v7}, Lcom/amap/api/col/l3/t$a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No config chosen"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "eglChooseConfig#2 failed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No configs match configSpec"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "eglChooseConfig failed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
