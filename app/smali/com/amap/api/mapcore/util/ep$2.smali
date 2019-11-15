.class Lcom/amap/api/mapcore/util/ep$2;
.super Landroid/graphics/drawable/Drawable;
.source "IndoorFloorSwitchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/ep;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/ep;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/ep;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/ep$2;->a:Lcom/amap/api/mapcore/util/ep;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ep$2;->a:Lcom/amap/api/mapcore/util/ep;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ep;->g(Lcom/amap/api/mapcore/util/ep;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput v4, v1, Landroid/graphics/Rect;->left:I

    iput v4, v1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/amap/api/mapcore/util/ep$2;->a:Lcom/amap/api/mapcore/util/ep;

    invoke-static {v3}, Lcom/amap/api/mapcore/util/ep;->h(Lcom/amap/api/mapcore/util/ep;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, 0x0

    iput v3, v1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/amap/api/mapcore/util/ep$2;->a:Lcom/amap/api/mapcore/util/ep;

    invoke-static {v3}, Lcom/amap/api/mapcore/util/ep;->h(Lcom/amap/api/mapcore/util/ep;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, 0x0

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    iput v4, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/amap/api/mapcore/util/ep$2;->a:Lcom/amap/api/mapcore/util/ep;

    invoke-static {v3}, Lcom/amap/api/mapcore/util/ep;->i(Lcom/amap/api/mapcore/util/ep;)[I

    move-result-object v3

    aget v3, v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/amap/api/mapcore/util/ep$2;->a:Lcom/amap/api/mapcore/util/ep;

    invoke-static {v3}, Lcom/amap/api/mapcore/util/ep;->j(Lcom/amap/api/mapcore/util/ep;)I

    move-result v3

    add-int/lit8 v3, v3, 0x0

    iput v3, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/amap/api/mapcore/util/ep$2;->a:Lcom/amap/api/mapcore/util/ep;

    invoke-static {v3}, Lcom/amap/api/mapcore/util/ep;->i(Lcom/amap/api/mapcore/util/ep;)[I

    move-result-object v3

    const/4 v4, 0x1

    aget v3, v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/amap/api/mapcore/util/ep$2;->a:Lcom/amap/api/mapcore/util/ep;

    invoke-static {v3}, Lcom/amap/api/mapcore/util/ep;->h(Lcom/amap/api/mapcore/util/ep;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p1, v3, v1, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 3

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ep$2;->a:Lcom/amap/api/mapcore/util/ep;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/ep;->k(Lcom/amap/api/mapcore/util/ep;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ep$2;->a:Lcom/amap/api/mapcore/util/ep;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/ep;->l(Lcom/amap/api/mapcore/util/ep;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/ep$2;->a(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/ep$2;->b(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/ep$2;->c(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
