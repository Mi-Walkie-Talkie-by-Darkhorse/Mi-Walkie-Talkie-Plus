.class public Lcom/wang/avi/indicators/BallTrianglePathIndicator;
.super Lcom/wang/avi/Indicator;
.source "BallTrianglePathIndicator.java"


# instance fields
.field translateX:[F

.field translateY:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/wang/avi/Indicator;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 2
    iput-object v1, p0, Lcom/wang/avi/indicators/BallTrianglePathIndicator;->translateX:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/wang/avi/indicators/BallTrianglePathIndicator;->translateY:[F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 3

    const/high16 v0, 0x40400000    # 3.0f

    .line 1
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4
    iget-object v1, p0, Lcom/wang/avi/indicators/BallTrianglePathIndicator;->translateX:[F

    aget v1, v1, v0

    iget-object v2, p0, Lcom/wang/avi/indicators/BallTrianglePathIndicator;->translateY:[F

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5
    invoke-virtual {p0}, Lcom/wang/avi/Indicator;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v1, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCreateAnimators()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/wang/avi/Indicator;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    .line 3
    invoke-virtual {p0}, Lcom/wang/avi/Indicator;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x5

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x3

    if-ge v4, v5, :cond_4

    const/4 v6, 0x4

    new-array v7, v6, [F

    .line 4
    invoke-virtual {p0}, Lcom/wang/avi/Indicator;->getWidth()I

    move-result v8

    const/4 v9, 0x2

    div-int/2addr v8, v9

    int-to-float v8, v8

    aput v8, v7, v3

    invoke-virtual {p0}, Lcom/wang/avi/Indicator;->getWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v1

    const/4 v10, 0x1

    aput v8, v7, v10

    aput v1, v7, v9

    invoke-virtual {p0}, Lcom/wang/avi/Indicator;->getWidth()I

    move-result v8

    div-int/2addr v8, v9

    int-to-float v8, v8

    aput v8, v7, v5

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    if-ne v4, v10, :cond_0

    new-array v7, v6, [F

    .line 5
    invoke-virtual {p0}, Lcom/wang/avi/Indicator;->getWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v1

    aput v8, v7, v3

    aput v1, v7, v10

    invoke-virtual {p0}, Lcom/wang/avi/Indicator;->getWidth()I

    move-result v8

    div-int/2addr v8, v9

    int-to-float v8, v8

    aput v8, v7, v9

    invoke-virtual {p0}, Lcom/wang/avi/Indicator;->getWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v1

    aput v8, v7, v5

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    goto :goto_1

    :cond_0
    if-ne v4, v9, :cond_1

    new-array v7, v6, [F

    aput v1, v7, v3

    .line 6
    invoke-virtual {p0}, Lcom/wang/avi/Indicator;->getWidth()I

    move-result v8

    div-int/2addr v8, v9

    int-to-float v8, v8

    aput v8, v7, v10

    invoke-virtual {p0}, Lcom/wang/avi/Indicator;->getWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v1

    aput v8, v7, v9

    aput v1, v7, v5

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    :cond_1
    :goto_1
    new-array v8, v6, [F

    aput v2, v8, v3

    .line 7
    invoke-virtual {p0}, Lcom/wang/avi/Indicator;->getHeight()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v11, v2

    aput v11, v8, v10

    invoke-virtual {p0}, Lcom/wang/avi/Indicator;->getHeight()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v11, v2

    aput v11, v8, v9

    aput v2, v8, v5

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    if-ne v4, v10, :cond_2

    new-array v6, v6, [F

    .line 8
    invoke-virtual {p0}, Lcom/wang/avi/Indicator;->getHeight()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v2

    aput v8, v6, v3

    invoke-virtual {p0}, Lcom/wang/avi/Indicator;->getHeight()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v2

    aput v8, v6, v10

    aput v2, v6, v9

    invoke-virtual {p0}, Lcom/wang/avi/Indicator;->getHeight()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v2

    aput v8, v6, v5

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    goto :goto_2

    :cond_2
    if-ne v4, v9, :cond_3

    new-array v6, v6, [F

    .line 9
    invoke-virtual {p0}, Lcom/wang/avi/Indicator;->getHeight()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v2

    aput v8, v6, v3

    aput v2, v6, v10

    invoke-virtual {p0}, Lcom/wang/avi/Indicator;->getHeight()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v2

    aput v8, v6, v9

    invoke-virtual {p0}, Lcom/wang/avi/Indicator;->getHeight()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v2

    aput v8, v6, v5

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    :cond_3
    :goto_2
    const-wide/16 v5, 0x7d0

    .line 10
    invoke-virtual {v7, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 11
    new-instance v9, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v9}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v7, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v9, -0x1

    .line 12
    invoke-virtual {v7, v9}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 13
    new-instance v10, Lcom/wang/avi/indicators/BallTrianglePathIndicator$1;

    invoke-direct {v10, p0, v4}, Lcom/wang/avi/indicators/BallTrianglePathIndicator$1;-><init>(Lcom/wang/avi/indicators/BallTrianglePathIndicator;I)V

    invoke-virtual {p0, v7, v10}, Lcom/wang/avi/Indicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 14
    invoke-virtual {v8, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 15
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v8, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 16
    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 17
    new-instance v5, Lcom/wang/avi/indicators/BallTrianglePathIndicator$2;

    invoke-direct {v5, p0, v4}, Lcom/wang/avi/indicators/BallTrianglePathIndicator$2;-><init>(Lcom/wang/avi/indicators/BallTrianglePathIndicator;I)V

    invoke-virtual {p0, v8, v5}, Lcom/wang/avi/Indicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 18
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_4
    return-object v0
.end method
