.class public Lcom/wang/avi/indicators/BallClipRotatePulseIndicator;
.super Lcom/wang/avi/Indicator;
.source "BallClipRotatePulseIndicator.java"


# instance fields
.field degrees:F

.field scaleFloat1:F

.field scaleFloat2:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/wang/avi/Indicator;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 12

    const/4 v11, 0x2

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/high16 v7, 0x41400000    # 12.0f

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallClipRotatePulseIndicator;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v8, v0

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallClipRotatePulseIndicator;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v9, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, p0, Lcom/wang/avi/indicators/BallClipRotatePulseIndicator;->scaleFloat1:F

    iget v1, p0, Lcom/wang/avi/indicators/BallClipRotatePulseIndicator;->scaleFloat1:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v0, 0x40200000    # 2.5f

    div-float v0, v8, v0

    invoke-virtual {p1, v2, v2, v0, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, p0, Lcom/wang/avi/indicators/BallClipRotatePulseIndicator;->scaleFloat2:F

    iget v1, p0, Lcom/wang/avi/indicators/BallClipRotatePulseIndicator;->scaleFloat2:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    iget v0, p0, Lcom/wang/avi/indicators/BallClipRotatePulseIndicator;->degrees:F

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    const/high16 v0, 0x40400000    # 3.0f

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-array v10, v11, [F

    fill-array-data v10, :array_0

    move v6, v4

    :goto_0
    if-ge v6, v11, :cond_0

    new-instance v1, Landroid/graphics/RectF;

    neg-float v0, v8

    add-float/2addr v0, v7

    neg-float v2, v9

    add-float/2addr v2, v7

    sub-float v3, v8, v7

    sub-float v5, v9, v7

    invoke-direct {v1, v0, v2, v3, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    aget v2, v10, v6

    const/high16 v3, 0x42b40000    # 90.0f

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x43610000    # 225.0f
        0x42340000    # 45.0f
    .end array-data
.end method

.method public onCreateAnimators()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation

    const-wide/16 v6, 0x3e8

    const/4 v4, 0x3

    const/4 v3, -0x1

    new-array v0, v4, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    new-instance v1, Lcom/wang/avi/indicators/BallClipRotatePulseIndicator$1;

    invoke-direct {v1, p0}, Lcom/wang/avi/indicators/BallClipRotatePulseIndicator$1;-><init>(Lcom/wang/avi/indicators/BallClipRotatePulseIndicator;)V

    invoke-virtual {p0, v0, v1}, Lcom/wang/avi/indicators/BallClipRotatePulseIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v1, v4, [F

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    new-instance v2, Lcom/wang/avi/indicators/BallClipRotatePulseIndicator$2;

    invoke-direct {v2, p0}, Lcom/wang/avi/indicators/BallClipRotatePulseIndicator$2;-><init>(Lcom/wang/avi/indicators/BallClipRotatePulseIndicator;)V

    invoke-virtual {p0, v1, v2}, Lcom/wang/avi/indicators/BallClipRotatePulseIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, v4, [F

    fill-array-data v2, :array_2

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    new-instance v3, Lcom/wang/avi/indicators/BallClipRotatePulseIndicator$3;

    invoke-direct {v3, p0}, Lcom/wang/avi/indicators/BallClipRotatePulseIndicator$3;-><init>(Lcom/wang/avi/indicators/BallClipRotatePulseIndicator;)V

    invoke-virtual {p0, v2, v3}, Lcom/wang/avi/indicators/BallClipRotatePulseIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v3

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x43340000    # 180.0f
        0x43b40000    # 360.0f
    .end array-data
.end method
