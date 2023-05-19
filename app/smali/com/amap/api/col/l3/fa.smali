.class public final Lcom/amap/api/col/l3/fa;
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

.field private i:Lcom/amap/api/col/l3/u;

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
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/col/l3/u;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3/fa;->e:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/amap/api/col/l3/fa;->f:Z

    .line 4
    iput v0, p0, Lcom/amap/api/col/l3/fa;->g:I

    .line 5
    iput v0, p0, Lcom/amap/api/col/l3/fa;->h:I

    .line 6
    iput v0, p0, Lcom/amap/api/col/l3/fa;->j:I

    const/16 v1, 0xa

    .line 7
    iput v1, p0, Lcom/amap/api/col/l3/fa;->k:I

    .line 8
    iput v0, p0, Lcom/amap/api/col/l3/fa;->l:I

    .line 9
    iput v0, p0, Lcom/amap/api/col/l3/fa;->m:I

    .line 10
    iput v1, p0, Lcom/amap/api/col/l3/fa;->n:I

    const/16 v1, 0x8

    .line 11
    iput v1, p0, Lcom/amap/api/col/l3/fa;->o:I

    .line 12
    iput v0, p0, Lcom/amap/api/col/l3/fa;->p:I

    .line 13
    iput-boolean v0, p0, Lcom/amap/api/col/l3/fa;->q:Z

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/amap/api/col/l3/fa;->r:F

    .line 15
    iput v0, p0, Lcom/amap/api/col/l3/fa;->s:F

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/amap/api/col/l3/fa;->t:Z

    .line 17
    iput-object p2, p0, Lcom/amap/api/col/l3/fa;->i:Lcom/amap/api/col/l3/u;

    const/4 p2, 0x0

    .line 18
    :try_start_0
    invoke-static {p1}, Lcom/amap/api/col/l3/eh;->a(Landroid/content/Context;)Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "ap.data"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 19
    :try_start_1
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/col/l3/fa;->c:Landroid/graphics/Bitmap;

    .line 20
    sget v3, Lcom/amap/api/col/l3/p;->a:F

    invoke-static {v2, v3}, Lcom/amap/api/col/l3/em;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/col/l3/fa;->a:Landroid/graphics/Bitmap;

    .line 21
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 22
    invoke-static {p1}, Lcom/amap/api/col/l3/eh;->a(Landroid/content/Context;)Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v2, "ap1.data"

    invoke-virtual {p1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2

    .line 23
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3/fa;->d:Landroid/graphics/Bitmap;

    .line 24
    sget v2, Lcom/amap/api/col/l3/p;->a:F

    invoke-static {p1, v2}, Lcom/amap/api/col/l3/em;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3/fa;->b:Landroid/graphics/Bitmap;

    .line 25
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 26
    iget-object p1, p0, Lcom/amap/api/col/l3/fa;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3/fa;->h:I

    .line 27
    iget-object p1, p0, Lcom/amap/api/col/l3/fa;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3/fa;->g:I

    .line 28
    iget-object p1, p0, Lcom/amap/api/col/l3/fa;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 29
    iget-object p1, p0, Lcom/amap/api/col/l3/fa;->e:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    iget-object p1, p0, Lcom/amap/api/col/l3/fa;->e:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v1, :cond_0

    .line 31
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    if-eqz p2, :cond_2

    .line 33
    :try_start_3
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    .line 34
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :catchall_2
    move-exception p1

    move-object v0, p2

    move-object p2, v1

    goto :goto_1

    :catchall_3
    move-exception p1

    move-object v0, p2

    :goto_1
    :try_start_4
    const-string v1, "WaterMarkerView"

    const-string v2, "create"

    .line 35
    invoke-static {p1, v1, v2}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    if-eqz p2, :cond_1

    .line 37
    :try_start_5
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_2

    :catchall_4
    move-exception p1

    .line 38
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_2
    if-eqz v0, :cond_2

    .line 39
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    return-void

    :catchall_5
    move-exception p1

    .line 40
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    return-void

    :catchall_6
    move-exception p1

    if-eqz p2, :cond_3

    .line 41
    :try_start_7
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto :goto_3

    :catchall_7
    move-exception p2

    .line 42
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_3
    if-eqz v0, :cond_4

    .line 43
    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    goto :goto_4

    :catchall_8
    move-exception p2

    .line 44
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 45
    :cond_4
    :goto_4
    throw p1
.end method

.method private d()V
    .locals 3

    .line 4
    iget v0, p0, Lcom/amap/api/col/l3/fa;->m:I

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_0

    goto :goto_3

    .line 5
    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/col/l3/fa;->t:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/amap/api/col/l3/fa;->r:F

    mul-float v0, v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/amap/api/col/l3/fa;->r:F

    mul-float v0, v0, v1

    iget v1, p0, Lcom/amap/api/col/l3/fa;->h:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    :goto_0
    float-to-int v0, v0

    iput v0, p0, Lcom/amap/api/col/l3/fa;->n:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/amap/api/col/l3/fa;->s:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/amap/api/col/l3/fa;->o:I

    goto :goto_3

    .line 6
    :cond_2
    iget v0, p0, Lcom/amap/api/col/l3/fa;->j:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/amap/api/col/l3/fa;->h:I

    sub-int/2addr v0, v2

    div-int/2addr v0, v1

    :goto_1
    iput v0, p0, Lcom/amap/api/col/l3/fa;->n:I

    goto :goto_2

    :cond_3
    const/16 v2, 0xa

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/amap/api/col/l3/fa;->h:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    goto :goto_1

    :cond_4
    iput v2, p0, Lcom/amap/api/col/l3/fa;->n:I

    :goto_2
    const/16 v0, 0x8

    iput v0, p0, Lcom/amap/api/col/l3/fa;->o:I

    .line 7
    :goto_3
    iget v0, p0, Lcom/amap/api/col/l3/fa;->n:I

    iput v0, p0, Lcom/amap/api/col/l3/fa;->k:I

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/amap/api/col/l3/fa;->o:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/amap/api/col/l3/fa;->g:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/amap/api/col/l3/fa;->l:I

    .line 9
    iget v1, p0, Lcom/amap/api/col/l3/fa;->k:I

    const/4 v2, 0x0

    if-gez v1, :cond_5

    .line 10
    iput v2, p0, Lcom/amap/api/col/l3/fa;->k:I

    :cond_5
    if-gez v0, :cond_6

    .line 11
    iput v2, p0, Lcom/amap/api/col/l3/fa;->l:I

    :cond_6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/fa;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/fa;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/amap/api/col/l3/fa;->a:Landroid/graphics/Bitmap;

    .line 6
    iput-object v0, p0, Lcom/amap/api/col/l3/fa;->b:Landroid/graphics/Bitmap;

    .line 7
    iget-object v1, p0, Lcom/amap/api/col/l3/fa;->c:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 9
    iput-object v0, p0, Lcom/amap/api/col/l3/fa;->c:Landroid/graphics/Bitmap;

    .line 10
    :cond_2
    iget-object v1, p0, Lcom/amap/api/col/l3/fa;->d:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 11
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 12
    iput-object v0, p0, Lcom/amap/api/col/l3/fa;->d:Landroid/graphics/Bitmap;

    .line 13
    :cond_3
    iput-object v0, p0, Lcom/amap/api/col/l3/fa;->e:Landroid/graphics/Paint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "WaterMarkerView"

    const-string v2, "destory"

    .line 14
    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final a(I)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/amap/api/col/l3/fa;->m:I

    .line 17
    iput p1, p0, Lcom/amap/api/col/l3/fa;->j:I

    .line 18
    invoke-virtual {p0}, Lcom/amap/api/col/l3/fa;->c()V

    return-void
.end method

.method public final a(IF)V
    .locals 3

    const/4 v0, 0x2

    .line 19
    iput v0, p0, Lcom/amap/api/col/l3/fa;->m:I

    .line 20
    iput p1, p0, Lcom/amap/api/col/l3/fa;->p:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 21
    invoke-static {p2, v1}, Ljava/lang/Math;->min(FF)F

    move-result p2

    const/4 v2, 0x0

    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v2, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sub-float/2addr v1, p2

    .line 22
    iput v1, p0, Lcom/amap/api/col/l3/fa;->s:F

    goto :goto_0

    :cond_1
    sub-float/2addr v1, p2

    .line 23
    iput v1, p0, Lcom/amap/api/col/l3/fa;->r:F

    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Lcom/amap/api/col/l3/fa;->t:Z

    goto :goto_0

    .line 25
    :cond_2
    iput p2, p0, Lcom/amap/api/col/l3/fa;->r:F

    .line 26
    iput-boolean v2, p0, Lcom/amap/api/col/l3/fa;->t:Z

    .line 27
    :goto_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3/fa;->c()V

    return-void
.end method

.method public final b()Landroid/graphics/Point;
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/amap/api/col/l3/fa;->k:I

    iget v2, p0, Lcom/amap/api/col/l3/fa;->l:I

    add-int/lit8 v2, v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public final b(I)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/amap/api/col/l3/fa;->m:I

    .line 3
    iput p1, p0, Lcom/amap/api/col/l3/fa;->o:I

    .line 4
    invoke-virtual {p0}, Lcom/amap/api/col/l3/fa;->c()V

    return-void
.end method

.method public final c()V
    .locals 1

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/amap/api/col/l3/fa;->d()V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final c(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcom/amap/api/col/l3/fa;->m:I

    .line 2
    iput p1, p0, Lcom/amap/api/col/l3/fa;->n:I

    .line 3
    invoke-virtual {p0}, Lcom/amap/api/col/l3/fa;->c()V

    return-void
.end method

.method public final d(I)F
    .locals 2

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    .line 1
    :cond_0
    iget p1, p0, Lcom/amap/api/col/l3/fa;->s:F

    goto :goto_0

    .line 2
    :cond_1
    iget p1, p0, Lcom/amap/api/col/l3/fa;->r:F

    :goto_0
    sub-float p1, v1, p1

    goto :goto_1

    .line 3
    :cond_2
    iget p1, p0, Lcom/amap/api/col/l3/fa;->r:F

    :goto_1
    return p1
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/fa;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-boolean v0, p0, Lcom/amap/api/col/l3/fa;->q:Z

    if-nez v0, :cond_2

    .line 4
    invoke-direct {p0}, Lcom/amap/api/col/l3/fa;->d()V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/amap/api/col/l3/fa;->q:Z

    .line 6
    :cond_2
    iget-boolean v0, p0, Lcom/amap/api/col/l3/fa;->f:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/l3/fa;->b:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/l3/fa;->a:Landroid/graphics/Bitmap;

    :goto_0
    iget v1, p0, Lcom/amap/api/col/l3/fa;->k:I

    int-to-float v1, v1

    iget v2, p0, Lcom/amap/api/col/l3/fa;->l:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/amap/api/col/l3/fa;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_1
    return-void

    :catchall_0
    move-exception p1

    const-string v0, "WaterMarkerView"

    const-string v1, "onDraw"

    .line 7
    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
