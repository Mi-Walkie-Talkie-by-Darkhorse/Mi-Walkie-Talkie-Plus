.class public Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CircleBitmapDisplayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CircleDrawable"
.end annotation


# instance fields
.field protected final bitmapShader:Landroid/graphics/BitmapShader;

.field protected final mBitmapRect:Landroid/graphics/RectF;

.field protected final mRect:Landroid/graphics/RectF;

.field protected final paint:Landroid/graphics/Paint;

.field protected radius:F

.field protected final strokePaint:Landroid/graphics/Paint;

.field protected strokeRadius:F

.field protected final strokeWidth:F


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/Integer;F)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;->radius:F

    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;->bitmapShader:Landroid/graphics/BitmapShader;

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;->mBitmapRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;->paint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;->bitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    if-nez p2, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;->strokePaint:Landroid/graphics/Paint;

    :goto_0
    iput p3, p0, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;->strokeWidth:F

    iget v0, p0, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;->radius:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, p3, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;->strokeRadius:F

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;->strokePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;->strokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    iget v0, p0, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;->radius:F

    iget v1, p0, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;->radius:F

    iget v2, p0, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;->radius:F

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;->strokePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;->radius:F

    iget v1, p0, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;->radius:F

    iget v2, p0, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;->strokeRadius:F

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;->radius:F

    iget v0, p0, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;->radius:F

    iget v1, p0, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;->strokeWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;->strokeRadius:F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;->mRect:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;->bitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v1, v0}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
