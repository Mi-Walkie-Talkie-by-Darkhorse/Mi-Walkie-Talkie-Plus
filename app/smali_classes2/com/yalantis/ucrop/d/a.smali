.class public Lcom/yalantis/ucrop/d/a;
.super Landroid/os/AsyncTask;
.source "BitmapCropTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/graphics/Bitmap;

.field private final c:Landroid/graphics/RectF;

.field private final d:Landroid/graphics/RectF;

.field private e:F

.field private f:F

.field private final g:I

.field private final h:I

.field private final i:Landroid/graphics/Bitmap$CompressFormat;

.field private final j:I

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Landroid/net/Uri;

.field private final n:Landroid/net/Uri;

.field private final o:Lcom/yalantis/ucrop/c/a;

.field private p:I

.field private q:I

.field private r:I

.field private s:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/yalantis/ucrop/model/c;Lcom/yalantis/ucrop/model/a;Lcom/yalantis/ucrop/c/a;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/yalantis/ucrop/model/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/yalantis/ucrop/model/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/yalantis/ucrop/c/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yalantis/ucrop/d/a;->a:Ljava/lang/ref/WeakReference;

    .line 3
    iput-object p2, p0, Lcom/yalantis/ucrop/d/a;->b:Landroid/graphics/Bitmap;

    .line 4
    invoke-virtual {p3}, Lcom/yalantis/ucrop/model/c;->a()Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Lcom/yalantis/ucrop/d/a;->c:Landroid/graphics/RectF;

    .line 5
    invoke-virtual {p3}, Lcom/yalantis/ucrop/model/c;->c()Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Lcom/yalantis/ucrop/d/a;->d:Landroid/graphics/RectF;

    .line 6
    invoke-virtual {p3}, Lcom/yalantis/ucrop/model/c;->d()F

    move-result p1

    iput p1, p0, Lcom/yalantis/ucrop/d/a;->e:F

    .line 7
    invoke-virtual {p3}, Lcom/yalantis/ucrop/model/c;->b()F

    move-result p1

    iput p1, p0, Lcom/yalantis/ucrop/d/a;->f:F

    .line 8
    invoke-virtual {p4}, Lcom/yalantis/ucrop/model/a;->h()I

    move-result p1

    iput p1, p0, Lcom/yalantis/ucrop/d/a;->g:I

    .line 9
    invoke-virtual {p4}, Lcom/yalantis/ucrop/model/a;->i()I

    move-result p1

    iput p1, p0, Lcom/yalantis/ucrop/d/a;->h:I

    .line 10
    invoke-virtual {p4}, Lcom/yalantis/ucrop/model/a;->a()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/yalantis/ucrop/d/a;->i:Landroid/graphics/Bitmap$CompressFormat;

    .line 11
    invoke-virtual {p4}, Lcom/yalantis/ucrop/model/a;->b()I

    move-result p1

    iput p1, p0, Lcom/yalantis/ucrop/d/a;->j:I

    .line 12
    invoke-virtual {p4}, Lcom/yalantis/ucrop/model/a;->f()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yalantis/ucrop/d/a;->k:Ljava/lang/String;

    .line 13
    invoke-virtual {p4}, Lcom/yalantis/ucrop/model/a;->g()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yalantis/ucrop/d/a;->l:Ljava/lang/String;

    .line 14
    invoke-virtual {p4}, Lcom/yalantis/ucrop/model/a;->c()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/yalantis/ucrop/d/a;->m:Landroid/net/Uri;

    .line 15
    invoke-virtual {p4}, Lcom/yalantis/ucrop/model/a;->d()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/yalantis/ucrop/d/a;->n:Landroid/net/Uri;

    .line 16
    invoke-virtual {p4}, Lcom/yalantis/ucrop/model/a;->e()Lcom/yalantis/ucrop/model/b;

    .line 17
    iput-object p5, p0, Lcom/yalantis/ucrop/d/a;->o:Lcom/yalantis/ucrop/c/a;

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/yalantis/ucrop/d/a;->m:Landroid/net/Uri;

    invoke-static {v0}, Lcom/yalantis/ucrop/e/a;->a(Landroid/net/Uri;)Z

    move-result v0

    .line 45
    iget-object v1, p0, Lcom/yalantis/ucrop/d/a;->n:Landroid/net/Uri;

    invoke-static {v1}, Lcom/yalantis/ucrop/e/a;->a(Landroid/net/Uri;)Z

    move-result v1

    const-string v2, "It is not possible to write exif info into file represented by \"content\" Uri if Android < LOLLIPOP"

    const-string v3, "BitmapCropTask"

    const/16 v4, 0x15

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_0

    .line 47
    iget v0, p0, Lcom/yalantis/ucrop/d/a;->p:I

    iget v1, p0, Lcom/yalantis/ucrop/d/a;->q:I

    iget-object v2, p0, Lcom/yalantis/ucrop/d/a;->m:Landroid/net/Uri;

    iget-object v3, p0, Lcom/yalantis/ucrop/d/a;->n:Landroid/net/Uri;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/yalantis/ucrop/e/f;->a(Landroid/content/Context;IILandroid/net/Uri;Landroid/net/Uri;)V

    goto :goto_0

    .line 48
    :cond_0
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 49
    iget v0, p0, Lcom/yalantis/ucrop/d/a;->p:I

    iget v1, p0, Lcom/yalantis/ucrop/d/a;->q:I

    iget-object v2, p0, Lcom/yalantis/ucrop/d/a;->m:Landroid/net/Uri;

    iget-object v3, p0, Lcom/yalantis/ucrop/d/a;->l:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/yalantis/ucrop/e/f;->a(Landroid/content/Context;IILandroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_4

    .line 50
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_3

    .line 51
    new-instance v0, Landroidx/exifinterface/media/ExifInterface;

    iget-object v1, p0, Lcom/yalantis/ucrop/d/a;->k:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 52
    iget v1, p0, Lcom/yalantis/ucrop/d/a;->p:I

    iget v2, p0, Lcom/yalantis/ucrop/d/a;->q:I

    iget-object v3, p0, Lcom/yalantis/ucrop/d/a;->n:Landroid/net/Uri;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/yalantis/ucrop/e/f;->a(Landroid/content/Context;Landroidx/exifinterface/media/ExifInterface;IILandroid/net/Uri;)V

    goto :goto_0

    .line 53
    :cond_3
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 54
    :cond_4
    new-instance p1, Landroidx/exifinterface/media/ExifInterface;

    iget-object v0, p0, Lcom/yalantis/ucrop/d/a;->k:Ljava/lang/String;

    invoke-direct {p1, v0}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 55
    iget v0, p0, Lcom/yalantis/ucrop/d/a;->p:I

    iget v1, p0, Lcom/yalantis/ucrop/d/a;->q:I

    iget-object v2, p0, Lcom/yalantis/ucrop/d/a;->l:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/yalantis/ucrop/e/f;->a(Landroidx/exifinterface/media/ExifInterface;IILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 56
    iget-object v0, p0, Lcom/yalantis/ucrop/d/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 57
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/yalantis/ucrop/d/a;->n:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 58
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 59
    :try_start_2
    iget-object v1, p0, Lcom/yalantis/ucrop/d/a;->i:Landroid/graphics/Bitmap$CompressFormat;

    iget v3, p0, Lcom/yalantis/ucrop/d/a;->j:I

    invoke-virtual {p1, v1, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 60
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 61
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    invoke-static {v0}, Lcom/yalantis/ucrop/e/a;->a(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v2, v1

    :goto_0
    move-object v1, v0

    goto :goto_4

    :catch_1
    move-exception p1

    move-object v2, v1

    :goto_1
    move-object v1, v0

    goto :goto_2

    :catchall_2
    move-exception p1

    move-object v2, v1

    goto :goto_4

    :catch_2
    move-exception p1

    move-object v2, v1

    :goto_2
    :try_start_3
    const-string v0, "BitmapCropTask"

    .line 63
    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 64
    invoke-static {v1}, Lcom/yalantis/ucrop/e/a;->a(Ljava/io/Closeable;)V

    .line 65
    :goto_3
    invoke-static {v2}, Lcom/yalantis/ucrop/e/a;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_3
    move-exception p1

    .line 66
    :goto_4
    invoke-static {v1}, Lcom/yalantis/ucrop/e/a;->a(Ljava/io/Closeable;)V

    .line 67
    invoke-static {v2}, Lcom/yalantis/ucrop/e/a;->a(Ljava/io/Closeable;)V

    .line 68
    throw p1
.end method

.method private a()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/yalantis/ucrop/d/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 12
    :cond_0
    iget v2, p0, Lcom/yalantis/ucrop/d/a;->g:I

    if-lez v2, :cond_3

    iget v2, p0, Lcom/yalantis/ucrop/d/a;->h:I

    if-lez v2, :cond_3

    .line 13
    iget-object v2, p0, Lcom/yalantis/ucrop/d/a;->c:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v3, p0, Lcom/yalantis/ucrop/d/a;->e:F

    div-float/2addr v2, v3

    .line 14
    iget-object v3, p0, Lcom/yalantis/ucrop/d/a;->c:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lcom/yalantis/ucrop/d/a;->e:F

    div-float/2addr v3, v4

    .line 15
    iget v4, p0, Lcom/yalantis/ucrop/d/a;->g:I

    int-to-float v4, v4

    cmpl-float v4, v2, v4

    if-gtz v4, :cond_1

    iget v4, p0, Lcom/yalantis/ucrop/d/a;->h:I

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-lez v4, :cond_3

    .line 16
    :cond_1
    iget v4, p0, Lcom/yalantis/ucrop/d/a;->g:I

    int-to-float v4, v4

    div-float/2addr v4, v2

    .line 17
    iget v2, p0, Lcom/yalantis/ucrop/d/a;->h:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    .line 18
    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 19
    iget-object v3, p0, Lcom/yalantis/ucrop/d/a;->b:Landroid/graphics/Bitmap;

    .line 20
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget-object v5, p0, Lcom/yalantis/ucrop/d/a;->b:Landroid/graphics/Bitmap;

    .line 21
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 22
    invoke-static {v3, v4, v5, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 23
    iget-object v4, p0, Lcom/yalantis/ucrop/d/a;->b:Landroid/graphics/Bitmap;

    if-eq v4, v3, :cond_2

    .line 24
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 25
    :cond_2
    iput-object v3, p0, Lcom/yalantis/ucrop/d/a;->b:Landroid/graphics/Bitmap;

    .line 26
    iget v3, p0, Lcom/yalantis/ucrop/d/a;->e:F

    div-float/2addr v3, v2

    iput v3, p0, Lcom/yalantis/ucrop/d/a;->e:F

    .line 27
    :cond_3
    iget v2, p0, Lcom/yalantis/ucrop/d/a;->f:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_5

    .line 28
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 29
    iget v2, p0, Lcom/yalantis/ucrop/d/a;->f:F

    iget-object v3, p0, Lcom/yalantis/ucrop/d/a;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/yalantis/ucrop/d/a;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v8, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 30
    iget-object v3, p0, Lcom/yalantis/ucrop/d/a;->b:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v2, p0, Lcom/yalantis/ucrop/d/a;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 31
    iget-object v3, p0, Lcom/yalantis/ucrop/d/a;->b:Landroid/graphics/Bitmap;

    if-eq v3, v2, :cond_4

    .line 32
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 33
    :cond_4
    iput-object v2, p0, Lcom/yalantis/ucrop/d/a;->b:Landroid/graphics/Bitmap;

    .line 34
    :cond_5
    iget-object v2, p0, Lcom/yalantis/ucrop/d/a;->c:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/yalantis/ucrop/d/a;->d:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/yalantis/ucrop/d/a;->e:F

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/yalantis/ucrop/d/a;->r:I

    .line 35
    iget-object v2, p0, Lcom/yalantis/ucrop/d/a;->c:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/yalantis/ucrop/d/a;->d:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/yalantis/ucrop/d/a;->e:F

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/yalantis/ucrop/d/a;->s:I

    .line 36
    iget-object v2, p0, Lcom/yalantis/ucrop/d/a;->c:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v3, p0, Lcom/yalantis/ucrop/d/a;->e:F

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/yalantis/ucrop/d/a;->p:I

    .line 37
    iget-object v2, p0, Lcom/yalantis/ucrop/d/a;->c:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v3, p0, Lcom/yalantis/ucrop/d/a;->e:F

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/yalantis/ucrop/d/a;->q:I

    .line 38
    iget v3, p0, Lcom/yalantis/ucrop/d/a;->p:I

    invoke-direct {p0, v3, v2}, Lcom/yalantis/ucrop/d/a;->a(II)Z

    move-result v2

    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Should crop: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BitmapCropTask"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_7

    .line 40
    iget-object v1, p0, Lcom/yalantis/ucrop/d/a;->b:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/yalantis/ucrop/d/a;->r:I

    iget v3, p0, Lcom/yalantis/ucrop/d/a;->s:I

    iget v4, p0, Lcom/yalantis/ucrop/d/a;->p:I

    iget v5, p0, Lcom/yalantis/ucrop/d/a;->q:I

    invoke-static {v1, v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yalantis/ucrop/d/a;->a(Landroid/graphics/Bitmap;)V

    .line 41
    iget-object v1, p0, Lcom/yalantis/ucrop/d/a;->i:Landroid/graphics/Bitmap$CompressFormat;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap$CompressFormat;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 42
    invoke-direct {p0, v0}, Lcom/yalantis/ucrop/d/a;->a(Landroid/content/Context;)V

    :cond_6
    const/4 v0, 0x1

    return v0

    .line 43
    :cond_7
    iget-object v2, p0, Lcom/yalantis/ucrop/d/a;->m:Landroid/net/Uri;

    iget-object v3, p0, Lcom/yalantis/ucrop/d/a;->n:Landroid/net/Uri;

    invoke-static {v0, v2, v3}, Lcom/yalantis/ucrop/e/e;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)V

    return v1
.end method

.method private a(II)Z
    .locals 2

    .line 69
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 p2, 0x1

    add-int/2addr p1, p2

    .line 70
    iget v0, p0, Lcom/yalantis/ucrop/d/a;->g:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/yalantis/ucrop/d/a;->h:I

    if-gtz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/yalantis/ucrop/d/a;->c:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/yalantis/ucrop/d/a;->d:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    .line 71
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float p1, p1

    cmpl-float v0, v0, p1

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/yalantis/ucrop/d/a;->c:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/yalantis/ucrop/d/a;->d:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    .line 72
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, p1

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/yalantis/ucrop/d/a;->c:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/yalantis/ucrop/d/a;->d:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    .line 73
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, p1

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/yalantis/ucrop/d/a;->c:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/yalantis/ucrop/d/a;->d:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    .line 74
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float p1, v0, p1

    if-gtz p1, :cond_2

    iget p1, p0, Lcom/yalantis/ucrop/d/a;->f:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :cond_2
    :goto_0
    return p2
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Throwable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/yalantis/ucrop/d/a;->b:Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "ViewBitmap is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "ViewBitmap is recycled"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/yalantis/ucrop/d/a;->d:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "CurrentImageRect is empty"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/yalantis/ucrop/d/a;->n:Landroid/net/Uri;

    if-nez p1, :cond_3

    .line 8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "ImageOutputUri is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 9
    :cond_3
    :try_start_0
    invoke-direct {p0}, Lcom/yalantis/ucrop/d/a;->a()Z

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/yalantis/ucrop/d/a;->b:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    return-object p1
.end method

.method protected a(Ljava/lang/Throwable;)V
    .locals 6
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 75
    iget-object v0, p0, Lcom/yalantis/ucrop/d/a;->o:Lcom/yalantis/ucrop/c/a;

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    .line 76
    iget-object p1, p0, Lcom/yalantis/ucrop/d/a;->n:Landroid/net/Uri;

    invoke-static {p1}, Lcom/yalantis/ucrop/e/a;->a(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 77
    iget-object p1, p0, Lcom/yalantis/ucrop/d/a;->n:Landroid/net/Uri;

    goto :goto_0

    .line 78
    :cond_0
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/yalantis/ucrop/d/a;->l:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    move-object v1, p1

    .line 79
    iget-object v0, p0, Lcom/yalantis/ucrop/d/a;->o:Lcom/yalantis/ucrop/c/a;

    iget v2, p0, Lcom/yalantis/ucrop/d/a;->r:I

    iget v3, p0, Lcom/yalantis/ucrop/d/a;->s:I

    iget v4, p0, Lcom/yalantis/ucrop/d/a;->p:I

    iget v5, p0, Lcom/yalantis/ucrop/d/a;->q:I

    invoke-interface/range {v0 .. v5}, Lcom/yalantis/ucrop/c/a;->a(Landroid/net/Uri;IIII)V

    goto :goto_1

    .line 80
    :cond_1
    invoke-interface {v0, p1}, Lcom/yalantis/ucrop/c/a;->a(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/yalantis/ucrop/d/a;->a([Ljava/lang/Void;)Ljava/lang/Throwable;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/yalantis/ucrop/d/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method
