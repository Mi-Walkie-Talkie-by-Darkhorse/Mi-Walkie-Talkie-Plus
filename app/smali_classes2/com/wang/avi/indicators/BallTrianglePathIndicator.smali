.class public Lcom/wang/avi/indicators/BallTrianglePathIndicator;
.super Lcom/wang/avi/Indicator;
.source "BallTrianglePathIndicator.java"


# instance fields
.field translateX:[F

.field translateY:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/wang/avi/Indicator;-><init>()V

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/wang/avi/indicators/BallTrianglePathIndicator;->translateX:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/wang/avi/indicators/BallTrianglePathIndicator;->translateY:[F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 4

    const/4 v3, 0x0

    const/high16 v0, 0x40400000    # 3.0f

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, p0, Lcom/wang/avi/indicators/BallTrianglePathIndicator;->translateX:[F

    aget v1, v1, v0

    iget-object v2, p0, Lcom/wang/avi/indicators/BallTrianglePathIndicator;->translateY:[F

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallTrianglePathIndicator;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    invoke-virtual {p1, v3, v3, v1, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

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

    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v3, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallTrianglePathIndicator;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x5

    int-to-float v5, v0

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallTrianglePathIndicator;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x5

    int-to-float v6, v0

    move v2, v3

    :goto_0
    if-ge v2, v12, :cond_4

    new-array v0, v13, [F

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallTrianglePathIndicator;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    aput v1, v0, v3

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallTrianglePathIndicator;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v5

    aput v1, v0, v10

    aput v5, v0, v11

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallTrianglePathIndicator;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    aput v1, v0, v12

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-ne v2, v10, :cond_2

    new-array v0, v13, [F

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallTrianglePathIndicator;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v5

    aput v1, v0, v3

    aput v5, v0, v10

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallTrianglePathIndicator;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    aput v1, v0, v11

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallTrianglePathIndicator;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v5

    aput v1, v0, v12

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    :cond_0
    :goto_1
    new-array v1, v13, [F

    aput v6, v1, v3

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallTrianglePathIndicator;->getHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v6

    aput v7, v1, v10

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallTrianglePathIndicator;->getHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v6

    aput v7, v1, v11

    aput v6, v1, v12

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    if-ne v2, v10, :cond_3

    new-array v1, v13, [F

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallTrianglePathIndicator;->getHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v6

    aput v7, v1, v3

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallTrianglePathIndicator;->getHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v6

    aput v7, v1, v10

    aput v6, v1, v11

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallTrianglePathIndicator;->getHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v6

    aput v7, v1, v12

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    :cond_1
    :goto_2
    const-wide/16 v8, 0x7d0

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v7, -0x1

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    new-instance v7, Lcom/wang/avi/indicators/BallTrianglePathIndicator$1;

    invoke-direct {v7, p0, v2}, Lcom/wang/avi/indicators/BallTrianglePathIndicator$1;-><init>(Lcom/wang/avi/indicators/BallTrianglePathIndicator;I)V

    invoke-virtual {p0, v0, v7}, Lcom/wang/avi/indicators/BallTrianglePathIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v8, 0x7d0

    invoke-virtual {v1, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v7, -0x1

    invoke-virtual {v1, v7}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    new-instance v7, Lcom/wang/avi/indicators/BallTrianglePathIndicator$2;

    invoke-direct {v7, p0, v2}, Lcom/wang/avi/indicators/BallTrianglePathIndicator$2;-><init>(Lcom/wang/avi/indicators/BallTrianglePathIndicator;I)V

    invoke-virtual {p0, v1, v7}, Lcom/wang/avi/indicators/BallTrianglePathIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    :cond_2
    if-ne v2, v11, :cond_0

    new-array v0, v13, [F

    aput v5, v0, v3

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallTrianglePathIndicator;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    aput v1, v0, v10

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallTrianglePathIndicator;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v5

    aput v1, v0, v11

    aput v5, v0, v12

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto/16 :goto_1

    :cond_3
    if-ne v2, v11, :cond_1

    new-array v1, v13, [F

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallTrianglePathIndicator;->getHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v6

    aput v7, v1, v3

    aput v6, v1, v10

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallTrianglePathIndicator;->getHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v6

    aput v7, v1, v11

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallTrianglePathIndicator;->getHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v6

    aput v7, v1, v12

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    goto :goto_2

    :cond_4
    return-object v4
.end method
