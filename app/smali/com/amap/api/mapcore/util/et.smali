.class public Lcom/amap/api/mapcore/util/et;
.super Landroid/view/View;
.source "WaterMarkerView.java"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/graphics/Bitmap;

.field private d:Landroid/graphics/Bitmap;

.field private e:Landroid/graphics/Paint;

.field private f:Z

.field private g:I

.field private h:I

.field private i:Lcom/amap/api/mapcore/util/l;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Z

.field private r:F

.field private s:F

.field private t:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/l;)V
    .locals 6

    const/4 v1, 0x0

    const/16 v5, 0xa

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/et;->e:Landroid/graphics/Paint;

    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/et;->f:Z

    iput v2, p0, Lcom/amap/api/mapcore/util/et;->g:I

    iput v2, p0, Lcom/amap/api/mapcore/util/et;->h:I

    iput v2, p0, Lcom/amap/api/mapcore/util/et;->j:I

    iput v5, p0, Lcom/amap/api/mapcore/util/et;->k:I

    iput v2, p0, Lcom/amap/api/mapcore/util/et;->l:I

    iput v2, p0, Lcom/amap/api/mapcore/util/et;->m:I

    iput v5, p0, Lcom/amap/api/mapcore/util/et;->n:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/amap/api/mapcore/util/et;->o:I

    iput v2, p0, Lcom/amap/api/mapcore/util/et;->p:I

    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/et;->q:Z

    iput v3, p0, Lcom/amap/api/mapcore/util/et;->r:F

    iput v3, p0, Lcom/amap/api/mapcore/util/et;->s:F

    iput-boolean v4, p0, Lcom/amap/api/mapcore/util/et;->t:Z

    iput-object p2, p0, Lcom/amap/api/mapcore/util/et;->i:Lcom/amap/api/mapcore/util/l;

    :try_start_0
    invoke-static {p1}, Lcom/amap/api/mapcore/util/dz;->a(Landroid/content/Context;)Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "ap.data"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/et;->c:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/et;->c:Landroid/graphics/Bitmap;

    sget v3, Lcom/amap/api/mapcore/util/g;->a:F

    invoke-static {v0, v3}, Lcom/amap/api/mapcore/util/ee;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/et;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    invoke-static {p1}, Lcom/amap/api/mapcore/util/dz;->a(Landroid/content/Context;)Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v3, "ap1.data"

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/et;->d:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/et;->d:Landroid/graphics/Bitmap;

    sget v3, Lcom/amap/api/mapcore/util/g;->a:F

    invoke-static {v0, v3}, Lcom/amap/api/mapcore/util/ee;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/et;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/et;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/et;->h:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/et;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/et;->g:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/et;->e:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/et;->e:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/et;->e:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v2, v1

    :goto_2
    :try_start_4
    const-string v3, "WaterMarkerView"

    const-string v4, "create"

    invoke-static {v0, v3, v4}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    :cond_2
    :goto_3
    if-eqz v1, :cond_1

    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    :catch_3
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_4
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_4
    if-eqz v2, :cond_3

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5

    :cond_3
    :goto_5
    if-eqz v1, :cond_4

    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_6

    :cond_4
    :goto_6
    throw v0

    :catch_5
    move-exception v2

    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_6
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_7
    move-exception v0

    goto :goto_2
.end method

.method private e()V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/amap/api/mapcore/util/et;->m:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget v0, p0, Lcom/amap/api/mapcore/util/et;->n:I

    iput v0, p0, Lcom/amap/api/mapcore/util/et;->k:I

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/et;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/amap/api/mapcore/util/et;->o:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/amap/api/mapcore/util/et;->g:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/et;->l:I

    iget v0, p0, Lcom/amap/api/mapcore/util/et;->k:I

    if-gez v0, :cond_0

    iput v2, p0, Lcom/amap/api/mapcore/util/et;->k:I

    :cond_0
    iget v0, p0, Lcom/amap/api/mapcore/util/et;->l:I

    if-gez v0, :cond_1

    iput v2, p0, Lcom/amap/api/mapcore/util/et;->l:I

    :cond_1
    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/et;->g()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/et;->f()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private f()V
    .locals 2

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/et;->t:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/et;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/amap/api/mapcore/util/et;->r:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/amap/api/mapcore/util/et;->n:I

    :goto_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/et;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/amap/api/mapcore/util/et;->s:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/amap/api/mapcore/util/et;->o:I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/et;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/amap/api/mapcore/util/et;->r:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/amap/api/mapcore/util/et;->h:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/amap/api/mapcore/util/et;->n:I

    goto :goto_0
.end method

.method private g()V
    .locals 2

    iget v0, p0, Lcom/amap/api/mapcore/util/et;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/et;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/amap/api/mapcore/util/et;->h:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/amap/api/mapcore/util/et;->n:I

    :goto_0
    const/16 v0, 0x8

    iput v0, p0, Lcom/amap/api/mapcore/util/et;->o:I

    return-void

    :cond_0
    iget v0, p0, Lcom/amap/api/mapcore/util/et;->j:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/et;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/amap/api/mapcore/util/et;->h:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0xa

    iput v0, p0, Lcom/amap/api/mapcore/util/et;->n:I

    goto :goto_0

    :cond_1
    const/16 v0, 0xa

    iput v0, p0, Lcom/amap/api/mapcore/util/et;->n:I

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/et;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/et;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/et;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/et;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/et;->a:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/et;->b:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/et;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/et;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/et;->c:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/et;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/et;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/et;->d:Landroid/graphics/Bitmap;

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/et;->e:Landroid/graphics/Paint;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "WaterMarkerView"

    const-string v2, "destory"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore/util/et;->m:I

    iput p1, p0, Lcom/amap/api/mapcore/util/et;->j:I

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/et;->d()V

    return-void
.end method

.method public a(IF)V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v0, 0x2

    iput v0, p0, Lcom/amap/api/mapcore/util/et;->m:I

    iput p1, p0, Lcom/amap/api/mapcore/util/et;->p:I

    const/4 v0, 0x0

    invoke-static {p2, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/et;->d()V

    return-void

    :pswitch_0
    iput v0, p0, Lcom/amap/api/mapcore/util/et;->r:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/et;->t:Z

    goto :goto_0

    :pswitch_1
    sub-float v0, v2, v0

    iput v0, p0, Lcom/amap/api/mapcore/util/et;->r:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/et;->t:Z

    goto :goto_0

    :pswitch_2
    sub-float v0, v2, v0

    iput v0, p0, Lcom/amap/api/mapcore/util/et;->s:F

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/et;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/et;->b:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/et;->a:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public b(I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/mapcore/util/et;->m:I

    iput p1, p0, Lcom/amap/api/mapcore/util/et;->o:I

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/et;->d()V

    return-void
.end method

.method public c()Landroid/graphics/Point;
    .locals 3

    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/amap/api/mapcore/util/et;->k:I

    iget v2, p0, Lcom/amap/api/mapcore/util/et;->l:I

    add-int/lit8 v2, v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public c(I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/mapcore/util/et;->m:I

    iput p1, p0, Lcom/amap/api/mapcore/util/et;->n:I

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/et;->d()V

    return-void
.end method

.method public d(I)F
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    iget v0, p0, Lcom/amap/api/mapcore/util/et;->r:F

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/amap/api/mapcore/util/et;->r:F

    sub-float v0, v1, v0

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/amap/api/mapcore/util/et;->s:F

    sub-float v0, v1, v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public d()V
    .locals 1

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/et;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/et;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/et;->e()V

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/et;->postInvalidate()V

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/et;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/et;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/et;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/et;->q:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/et;->e()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/et;->q:Z

    :cond_2
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/et;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/mapcore/util/et;->k:I

    int-to-float v1, v1

    iget v2, p0, Lcom/amap/api/mapcore/util/et;->l:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/amap/api/mapcore/util/et;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "WaterMarkerView"

    const-string v2, "onDraw"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
