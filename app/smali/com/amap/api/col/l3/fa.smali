.class public final Lcom/amap/api/col/l3/fa;
.super Landroid/view/View;


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

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3/fa;->e:Landroid/graphics/Paint;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3/fa;->f:Z

    iput v0, p0, Lcom/amap/api/col/l3/fa;->g:I

    iput v0, p0, Lcom/amap/api/col/l3/fa;->h:I

    iput v0, p0, Lcom/amap/api/col/l3/fa;->j:I

    const/16 v1, 0xa

    iput v1, p0, Lcom/amap/api/col/l3/fa;->k:I

    iput v0, p0, Lcom/amap/api/col/l3/fa;->l:I

    iput v0, p0, Lcom/amap/api/col/l3/fa;->m:I

    iput v1, p0, Lcom/amap/api/col/l3/fa;->n:I

    const/16 v1, 0x8

    iput v1, p0, Lcom/amap/api/col/l3/fa;->o:I

    iput v0, p0, Lcom/amap/api/col/l3/fa;->p:I

    iput-boolean v0, p0, Lcom/amap/api/col/l3/fa;->q:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/l3/fa;->r:F

    iput v0, p0, Lcom/amap/api/col/l3/fa;->s:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3/fa;->t:Z

    iput-object p2, p0, Lcom/amap/api/col/l3/fa;->i:Lcom/amap/api/col/l3/u;

    const/4 p2, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/amap/api/col/l3/eh;->a(Landroid/content/Context;)Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "ap.data"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/col/l3/fa;->c:Landroid/graphics/Bitmap;

    sget v3, Lcom/amap/api/col/l3/p;->a:F

    invoke-static {v2, v3}, Lcom/amap/api/col/l3/em;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/col/l3/fa;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    invoke-static {p1}, Lcom/amap/api/col/l3/eh;->a(Landroid/content/Context;)Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v2, "ap1.data"

    invoke-virtual {p1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2

    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3/fa;->d:Landroid/graphics/Bitmap;

    sget v2, Lcom/amap/api/col/l3/p;->a:F

    invoke-static {p1, v2}, Lcom/amap/api/col/l3/em;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3/fa;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    iget-object p1, p0, Lcom/amap/api/col/l3/fa;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3/fa;->h:I

    iget-object p1, p0, Lcom/amap/api/col/l3/fa;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3/fa;->g:I

    iget-object p1, p0, Lcom/amap/api/col/l3/fa;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/amap/api/col/l3/fa;->e:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/amap/api/col/l3/fa;->e:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    if-eqz p2, :cond_2

    :try_start_3
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    :catchall_1
    move-exception p1

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

    invoke-static {p1, v1, v2}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    if-eqz p2, :cond_1

    :try_start_5
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_2

    :catchall_4
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_2
    if-eqz v0, :cond_2

    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    return-void

    :catchall_5
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    return-void

    :catchall_6
    move-exception p1

    if-eqz p2, :cond_3

    :try_start_7
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto :goto_3

    :catchall_7
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_3
    if-eqz v0, :cond_4

    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    goto :goto_4

    :catchall_8
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_4
    throw p1
.end method

.method private d()V
    .locals 3

    iget v0, p0, Lcom/amap/api/col/l3/fa;->m:I

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_0

    goto :goto_3

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

    :goto_3
    iget v0, p0, Lcom/amap/api/col/l3/fa;->n:I

    iput v0, p0, Lcom/amap/api/col/l3/fa;->k:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/amap/api/col/l3/fa;->o:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/amap/api/col/l3/fa;->g:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/amap/api/col/l3/fa;->l:I

    iget v0, p0, Lcom/amap/api/col/l3/fa;->k:I

    const/4 v1, 0x0

    if-gez v0, :cond_5

    iput v1, p0, Lcom/amap/api/col/l3/fa;->k:I

    :cond_5
    iget v0, p0, Lcom/amap/api/col/l3/fa;->l:I

    if-gez v0, :cond_6

    iput v1, p0, Lcom/amap/api/col/l3/fa;->l:I

    :cond_6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/fa;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/fa;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/fa;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3/fa;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3/fa;->a:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/amap/api/col/l3/fa;->b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/amap/api/col/l3/fa;->c:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/col/l3/fa;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v0, p0, Lcom/amap/api/col/l3/fa;->c:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v1, p0, Lcom/amap/api/col/l3/fa;->d:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/amap/api/col/l3/fa;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v0, p0, Lcom/amap/api/col/l3/fa;->d:Landroid/graphics/Bitmap;

    :cond_3
    iput-object v0, p0, Lcom/amap/api/col/l3/fa;->e:Landroid/graphics/Paint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "WaterMarkerView"

    const-string v2, "destory"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final a(I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/l3/fa;->m:I

    iput p1, p0, Lcom/amap/api/col/l3/fa;->j:I

    invoke-virtual {p0}, Lcom/amap/api/col/l3/fa;->c()V

    return-void
.end method

.method public final a(IF)V
    .locals 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/amap/api/col/l3/fa;->m:I

    iput p1, p0, Lcom/amap/api/col/l3/fa;->p:I

    const/high16 v1, 0x3f800000    # 1.0f

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

    iput v1, p0, Lcom/amap/api/col/l3/fa;->s:F

    goto :goto_0

    :cond_1
    sub-float/2addr v1, p2

    iput v1, p0, Lcom/amap/api/col/l3/fa;->r:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/amap/api/col/l3/fa;->t:Z

    goto :goto_0

    :cond_2
    iput p2, p0, Lcom/amap/api/col/l3/fa;->r:F

    iput-boolean v2, p0, Lcom/amap/api/col/l3/fa;->t:Z

    :goto_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3/fa;->c()V

    return-void
.end method

.method public final b()Landroid/graphics/Point;
    .locals 3

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

    iput v0, p0, Lcom/amap/api/col/l3/fa;->m:I

    iput p1, p0, Lcom/amap/api/col/l3/fa;->o:I

    invoke-virtual {p0}, Lcom/amap/api/col/l3/fa;->c()V

    return-void
.end method

.method public final c()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/amap/api/col/l3/fa;->d()V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final c(I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/col/l3/fa;->m:I

    iput p1, p0, Lcom/amap/api/col/l3/fa;->n:I

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

    :cond_0
    iget p1, p0, Lcom/amap/api/col/l3/fa;->s:F

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/amap/api/col/l3/fa;->r:F

    :goto_0
    sub-float p1, v1, p1

    goto :goto_1

    :cond_2
    iget p1, p0, Lcom/amap/api/col/l3/fa;->r:F

    :goto_1
    return p1
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/fa;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/amap/api/col/l3/fa;->q:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/amap/api/col/l3/fa;->d()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3/fa;->q:Z

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

    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
