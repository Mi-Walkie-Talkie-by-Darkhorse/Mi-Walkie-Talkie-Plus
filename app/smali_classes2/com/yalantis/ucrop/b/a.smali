.class public Lcom/yalantis/ucrop/b/a;
.super Landroid/os/AsyncTask;
.source "BitmapCropTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
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
            "Ljava/lang/ref/WeakReference",
            "<",
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

.field private final m:Lcom/yalantis/ucrop/model/b;

.field private final n:Lcom/yalantis/ucrop/a/a;

.field private o:I

.field private p:I

.field private q:I

.field private r:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/yalantis/ucrop/model/c;Lcom/yalantis/ucrop/model/a;Lcom/yalantis/ucrop/a/a;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/yalantis/ucrop/model/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/yalantis/ucrop/model/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/yalantis/ucrop/a/a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yalantis/ucrop/b/a;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/yalantis/ucrop/b/a;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Lcom/yalantis/ucrop/model/c;->a()Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lcom/yalantis/ucrop/b/a;->c:Landroid/graphics/RectF;

    invoke-virtual {p3}, Lcom/yalantis/ucrop/model/c;->b()Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lcom/yalantis/ucrop/b/a;->d:Landroid/graphics/RectF;

    invoke-virtual {p3}, Lcom/yalantis/ucrop/model/c;->c()F

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/b/a;->e:F

    invoke-virtual {p3}, Lcom/yalantis/ucrop/model/c;->d()F

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/b/a;->f:F

    invoke-virtual {p4}, Lcom/yalantis/ucrop/model/a;->a()I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/b/a;->g:I

    invoke-virtual {p4}, Lcom/yalantis/ucrop/model/a;->b()I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/b/a;->h:I

    invoke-virtual {p4}, Lcom/yalantis/ucrop/model/a;->c()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/yalantis/ucrop/b/a;->i:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p4}, Lcom/yalantis/ucrop/model/a;->d()I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/b/a;->j:I

    invoke-virtual {p4}, Lcom/yalantis/ucrop/model/a;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yalantis/ucrop/b/a;->k:Ljava/lang/String;

    invoke-virtual {p4}, Lcom/yalantis/ucrop/model/a;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yalantis/ucrop/b/a;->l:Ljava/lang/String;

    invoke-virtual {p4}, Lcom/yalantis/ucrop/model/a;->g()Lcom/yalantis/ucrop/model/b;

    move-result-object v0

    iput-object v0, p0, Lcom/yalantis/ucrop/b/a;->m:Lcom/yalantis/ucrop/model/b;

    iput-object p5, p0, Lcom/yalantis/ucrop/b/a;->n:Lcom/yalantis/ucrop/a/a;

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/yalantis/ucrop/b/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/yalantis/ucrop/b/a;->l:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    iget-object v0, p0, Lcom/yalantis/ucrop/b/a;->i:Landroid/graphics/Bitmap$CompressFormat;

    iget v2, p0, Lcom/yalantis/ucrop/b/a;->j:I

    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lcom/yalantis/ucrop/c/a;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/yalantis/ucrop/c/a;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method private a()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/yalantis/ucrop/b/a;->g:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/yalantis/ucrop/b/a;->h:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/yalantis/ucrop/b/a;->c:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v2, p0, Lcom/yalantis/ucrop/b/a;->e:F

    div-float/2addr v0, v2

    iget-object v2, p0, Lcom/yalantis/ucrop/b/a;->c:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v3, p0, Lcom/yalantis/ucrop/b/a;->e:F

    div-float/2addr v2, v3

    iget v3, p0, Lcom/yalantis/ucrop/b/a;->g:I

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-gtz v3, :cond_0

    iget v3, p0, Lcom/yalantis/ucrop/b/a;->h:I

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_2

    :cond_0
    iget v3, p0, Lcom/yalantis/ucrop/b/a;->g:I

    int-to-float v3, v3

    div-float v0, v3, v0

    iget v3, p0, Lcom/yalantis/ucrop/b/a;->h:I

    int-to-float v3, v3

    div-float v2, v3, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v2, p0, Lcom/yalantis/ucrop/b/a;->b:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/yalantis/ucrop/b/a;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lcom/yalantis/ucrop/b/a;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v2, v3, v4, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/yalantis/ucrop/b/a;->b:Landroid/graphics/Bitmap;

    if-eq v3, v2, :cond_1

    iget-object v3, p0, Lcom/yalantis/ucrop/b/a;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iput-object v2, p0, Lcom/yalantis/ucrop/b/a;->b:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/yalantis/ucrop/b/a;->e:F

    div-float v0, v2, v0

    iput v0, p0, Lcom/yalantis/ucrop/b/a;->e:F

    :cond_2
    iget v0, p0, Lcom/yalantis/ucrop/b/a;->f:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_4

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iget v0, p0, Lcom/yalantis/ucrop/b/a;->f:F

    iget-object v2, p0, Lcom/yalantis/ucrop/b/a;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/yalantis/ucrop/b/a;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v5, v0, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    iget-object v0, p0, Lcom/yalantis/ucrop/b/a;->b:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/yalantis/ucrop/b/a;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lcom/yalantis/ucrop/b/a;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/yalantis/ucrop/b/a;->b:Landroid/graphics/Bitmap;

    if-eq v2, v0, :cond_3

    iget-object v2, p0, Lcom/yalantis/ucrop/b/a;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    iput-object v0, p0, Lcom/yalantis/ucrop/b/a;->b:Landroid/graphics/Bitmap;

    :cond_4
    iget-object v0, p0, Lcom/yalantis/ucrop/b/a;->c:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/yalantis/ucrop/b/a;->d:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/yalantis/ucrop/b/a;->e:F

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/b/a;->q:I

    iget-object v0, p0, Lcom/yalantis/ucrop/b/a;->c:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/yalantis/ucrop/b/a;->d:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/yalantis/ucrop/b/a;->e:F

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/b/a;->r:I

    iget-object v0, p0, Lcom/yalantis/ucrop/b/a;->c:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v2, p0, Lcom/yalantis/ucrop/b/a;->e:F

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/b/a;->o:I

    iget-object v0, p0, Lcom/yalantis/ucrop/b/a;->c:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v2, p0, Lcom/yalantis/ucrop/b/a;->e:F

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/b/a;->p:I

    iget v0, p0, Lcom/yalantis/ucrop/b/a;->o:I

    iget v2, p0, Lcom/yalantis/ucrop/b/a;->p:I

    invoke-direct {p0, v0, v2}, Lcom/yalantis/ucrop/b/a;->a(II)Z

    move-result v0

    const-string v2, "BitmapCropTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Should crop: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_6

    new-instance v0, Landroid/media/ExifInterface;

    iget-object v1, p0, Lcom/yalantis/ucrop/b/a;->k:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yalantis/ucrop/b/a;->b:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/yalantis/ucrop/b/a;->q:I

    iget v3, p0, Lcom/yalantis/ucrop/b/a;->r:I

    iget v4, p0, Lcom/yalantis/ucrop/b/a;->o:I

    iget v5, p0, Lcom/yalantis/ucrop/b/a;->p:I

    invoke-static {v1, v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yalantis/ucrop/b/a;->a(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/yalantis/ucrop/b/a;->i:Landroid/graphics/Bitmap$CompressFormat;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap$CompressFormat;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/yalantis/ucrop/b/a;->o:I

    iget v2, p0, Lcom/yalantis/ucrop/b/a;->p:I

    iget-object v3, p0, Lcom/yalantis/ucrop/b/a;->l:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/yalantis/ucrop/c/f;->a(Landroid/media/ExifInterface;IILjava/lang/String;)V

    :cond_5
    :goto_0
    return v6

    :cond_6
    iget-object v0, p0, Lcom/yalantis/ucrop/b/a;->k:Ljava/lang/String;

    iget-object v2, p0, Lcom/yalantis/ucrop/b/a;->l:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/yalantis/ucrop/c/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v1

    goto :goto_0
.end method

.method private a(II)Z
    .locals 4

    const/4 v0, 0x1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v1, v0

    iget v2, p0, Lcom/yalantis/ucrop/b/a;->g:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/yalantis/ucrop/b/a;->h:I

    if-gtz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/yalantis/ucrop/b/a;->c:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/yalantis/ucrop/b/a;->d:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    int-to-float v3, v1

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_1

    iget-object v2, p0, Lcom/yalantis/ucrop/b/a;->c:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/yalantis/ucrop/b/a;->d:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    int-to-float v3, v1

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_1

    iget-object v2, p0, Lcom/yalantis/ucrop/b/a;->c:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/yalantis/ucrop/b/a;->d:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    int-to-float v3, v1

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_1

    iget-object v2, p0, Lcom/yalantis/ucrop/b/a;->c:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/yalantis/ucrop/b/a;->d:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    int-to-float v1, v1

    cmpl-float v1, v2, v1

    if-lez v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Throwable;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/yalantis/ucrop/b/a;->b:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ViewBitmap is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/yalantis/ucrop/b/a;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ViewBitmap is recycled"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/yalantis/ucrop/b/a;->d:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "CurrentImageRect is empty"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/yalantis/ucrop/b/a;->a()Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/yalantis/ucrop/b/a;->b:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/Throwable;)V
    .locals 6
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/yalantis/ucrop/b/a;->n:Lcom/yalantis/ucrop/a/a;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/yalantis/ucrop/b/a;->l:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/yalantis/ucrop/b/a;->n:Lcom/yalantis/ucrop/a/a;

    iget v2, p0, Lcom/yalantis/ucrop/b/a;->q:I

    iget v3, p0, Lcom/yalantis/ucrop/b/a;->r:I

    iget v4, p0, Lcom/yalantis/ucrop/b/a;->o:I

    iget v5, p0, Lcom/yalantis/ucrop/b/a;->p:I

    invoke-interface/range {v0 .. v5}, Lcom/yalantis/ucrop/a/a;->a(Landroid/net/Uri;IIII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/yalantis/ucrop/b/a;->n:Lcom/yalantis/ucrop/a/a;

    invoke-interface {v0, p1}, Lcom/yalantis/ucrop/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/yalantis/ucrop/b/a;->a([Ljava/lang/Void;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/yalantis/ucrop/b/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method
