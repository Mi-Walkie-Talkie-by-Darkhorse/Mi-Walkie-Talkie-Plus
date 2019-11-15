.class public Lcom/wang/avi/indicators/LineSpinFadeLoaderIndicator;
.super Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator;
.source "LineSpinFadeLoaderIndicator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 12

    const/high16 v11, 0x40a00000    # 5.0f

    const/high16 v10, 0x3fc00000    # 1.5f

    invoke-virtual {p0}, Lcom/wang/avi/indicators/LineSpinFadeLoaderIndicator;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    int-to-float v7, v0

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    const/16 v0, 0x8

    if-ge v6, v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/wang/avi/indicators/LineSpinFadeLoaderIndicator;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/wang/avi/indicators/LineSpinFadeLoaderIndicator;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/wang/avi/indicators/LineSpinFadeLoaderIndicator;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x40200000    # 2.5f

    div-float/2addr v0, v3

    sub-float v3, v0, v7

    int-to-double v4, v6

    const-wide v8, 0x3fe921fb54442d18L    # 0.7853981633974483

    mul-double/2addr v4, v8

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/wang/avi/indicators/LineSpinFadeLoaderIndicator;->circleAt(IIFD)Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator$Point;

    move-result-object v0

    iget v1, v0, Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator$Point;->x:F

    iget v0, v0, Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator$Point;->y:F

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/wang/avi/indicators/LineSpinFadeLoaderIndicator;->scaleFloats:[F

    aget v0, v0, v6

    iget-object v1, p0, Lcom/wang/avi/indicators/LineSpinFadeLoaderIndicator;->scaleFloats:[F

    aget v1, v1, v6

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    mul-int/lit8 v0, v6, 0x2d

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v0, p0, Lcom/wang/avi/indicators/LineSpinFadeLoaderIndicator;->alphas:[I

    aget v0, v0, v6

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v0, Landroid/graphics/RectF;

    neg-float v1, v7

    neg-float v2, v7

    div-float/2addr v2, v10

    mul-float v3, v10, v7

    div-float v4, v7, v10

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, v11, v11, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    return-void
.end method
