.class final Lcom/amap/api/col/l3/ew$2;
.super Landroid/graphics/drawable/Drawable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3/ew;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3/ew;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3/ew;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3/ew$2;->a:Lcom/amap/api/col/l3/ew;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/ew$2;->a:Lcom/amap/api/col/l3/ew;

    invoke-static {v0}, Lcom/amap/api/col/l3/ew;->g(Lcom/amap/api/col/l3/ew;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x0

    iput v3, v1, Landroid/graphics/Rect;->left:I

    iput v3, v1, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/amap/api/col/l3/ew$2;->a:Lcom/amap/api/col/l3/ew;

    invoke-static {v4}, Lcom/amap/api/col/l3/ew;->h(Lcom/amap/api/col/l3/ew;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/2addr v4, v3

    iput v4, v1, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/amap/api/col/l3/ew$2;->a:Lcom/amap/api/col/l3/ew;

    invoke-static {v4}, Lcom/amap/api/col/l3/ew;->h(Lcom/amap/api/col/l3/ew;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    add-int/2addr v4, v3

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    iput v3, v2, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/amap/api/col/l3/ew$2;->a:Lcom/amap/api/col/l3/ew;

    invoke-static {v4}, Lcom/amap/api/col/l3/ew;->i(Lcom/amap/api/col/l3/ew;)[I

    move-result-object v4

    aget v4, v4, v3

    iput v4, v2, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/amap/api/col/l3/ew$2;->a:Lcom/amap/api/col/l3/ew;

    invoke-static {v4}, Lcom/amap/api/col/l3/ew;->j(Lcom/amap/api/col/l3/ew;)I

    move-result v4

    add-int/2addr v4, v3

    iput v4, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/amap/api/col/l3/ew$2;->a:Lcom/amap/api/col/l3/ew;

    invoke-static {v3}, Lcom/amap/api/col/l3/ew;->i(Lcom/amap/api/col/l3/ew;)[I

    move-result-object v3

    const/4 v4, 0x1

    aget v3, v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/amap/api/col/l3/ew$2;->a:Lcom/amap/api/col/l3/ew;

    invoke-static {v3}, Lcom/amap/api/col/l3/ew;->h(Lcom/amap/api/col/l3/ew;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p1, v3, v1, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/l3/ew$2;->a:Lcom/amap/api/col/l3/ew;

    invoke-static {v2}, Lcom/amap/api/col/l3/ew;->k(Lcom/amap/api/col/l3/ew;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/amap/api/col/l3/ew$2;->a:Lcom/amap/api/col/l3/ew;

    invoke-static {v2}, Lcom/amap/api/col/l3/ew;->l(Lcom/amap/api/col/l3/ew;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final setAlpha(I)V
    .locals 0

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
