.class public Lcom/wang/avi/indicators/BallScaleMultipleIndicator;
.super Lcom/wang/avi/Indicator;
.source "BallScaleMultipleIndicator.java"


# instance fields
.field alphaInts:[I

.field scaleFloats:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/wang/avi/Indicator;-><init>()V

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/wang/avi/indicators/BallScaleMultipleIndicator;->scaleFloats:[F

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/wang/avi/indicators/BallScaleMultipleIndicator;->alphaInts:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0xff
        0xff
        0xff
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6

    const/high16 v1, 0x40800000    # 4.0f

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/wang/avi/indicators/BallScaleMultipleIndicator;->alphaInts:[I

    aget v2, v2, v0

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, p0, Lcom/wang/avi/indicators/BallScaleMultipleIndicator;->scaleFloats:[F

    aget v2, v2, v0

    iget-object v3, p0, Lcom/wang/avi/indicators/BallScaleMultipleIndicator;->scaleFloats:[F

    aget v3, v3, v0

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallScaleMultipleIndicator;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallScaleMultipleIndicator;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallScaleMultipleIndicator;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallScaleMultipleIndicator;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallScaleMultipleIndicator;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v4, v1

    invoke-virtual {p1, v2, v3, v4, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCreateAnimators()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation

    const-wide/16 v12, 0x3e8

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, -0x1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-array v2, v10, [J

    fill-array-data v2, :array_0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v10, :cond_0

    new-array v3, v9, [F

    fill-array-data v3, :array_1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v3, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v8}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    new-instance v4, Lcom/wang/avi/indicators/BallScaleMultipleIndicator$1;

    invoke-direct {v4, p0, v0}, Lcom/wang/avi/indicators/BallScaleMultipleIndicator$1;-><init>(Lcom/wang/avi/indicators/BallScaleMultipleIndicator;I)V

    invoke-virtual {p0, v3, v4}, Lcom/wang/avi/indicators/BallScaleMultipleIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    aget-wide v4, v2, v0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-array v4, v9, [I

    fill-array-data v4, :array_2

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v4, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v8}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    new-instance v5, Lcom/wang/avi/indicators/BallScaleMultipleIndicator$2;

    invoke-direct {v5, p0, v0}, Lcom/wang/avi/indicators/BallScaleMultipleIndicator$2;-><init>(Lcom/wang/avi/indicators/BallScaleMultipleIndicator;I)V

    invoke-virtual {p0, v4, v5}, Lcom/wang/avi/indicators/BallScaleMultipleIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    aget-wide v6, v2, v0

    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :array_0
    .array-data 8
        0x0
        0xc8
        0x190
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0xff
        0x0
    .end array-data
.end method
