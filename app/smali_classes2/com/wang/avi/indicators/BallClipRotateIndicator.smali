.class public Lcom/wang/avi/indicators/BallClipRotateIndicator;
.super Lcom/wang/avi/Indicator;
.source "BallClipRotateIndicator.java"


# instance fields
.field degrees:F

.field scaleFloat:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/wang/avi/Indicator;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/wang/avi/indicators/BallClipRotateIndicator;->scaleFloat:F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 7

    const/4 v6, 0x0

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v0, 0x40400000    # 3.0f

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallClipRotateIndicator;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v2, v1

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallClipRotateIndicator;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget v1, p0, Lcom/wang/avi/indicators/BallClipRotateIndicator;->scaleFloat:F

    iget v4, p0, Lcom/wang/avi/indicators/BallClipRotateIndicator;->scaleFloat:F

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->scale(FF)V

    iget v1, p0, Lcom/wang/avi/indicators/BallClipRotateIndicator;->degrees:F

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    new-instance v1, Landroid/graphics/RectF;

    neg-float v4, v2

    add-float/2addr v4, v0

    neg-float v5, v3

    add-float/2addr v5, v0

    add-float/2addr v2, v6

    sub-float/2addr v2, v0

    add-float/2addr v3, v6

    sub-float v0, v3, v0

    invoke-direct {v1, v4, v5, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v2, -0x3dcc0000    # -45.0f

    const/high16 v3, 0x43870000    # 270.0f

    const/4 v4, 0x0

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public onCreateAnimators()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation

    const-wide/16 v4, 0x2ee

    const/4 v3, -0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    new-instance v2, Lcom/wang/avi/indicators/BallClipRotateIndicator$1;

    invoke-direct {v2, p0}, Lcom/wang/avi/indicators/BallClipRotateIndicator$1;-><init>(Lcom/wang/avi/indicators/BallClipRotateIndicator;)V

    invoke-virtual {p0, v1, v2}, Lcom/wang/avi/indicators/BallClipRotateIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v2, 0x3

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    new-instance v3, Lcom/wang/avi/indicators/BallClipRotateIndicator$2;

    invoke-direct {v3, p0}, Lcom/wang/avi/indicators/BallClipRotateIndicator$2;-><init>(Lcom/wang/avi/indicators/BallClipRotateIndicator;)V

    invoke-virtual {p0, v2, v3}, Lcom/wang/avi/indicators/BallClipRotateIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x43340000    # 180.0f
        0x43b40000    # 360.0f
    .end array-data
.end method
