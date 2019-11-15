.class public Lcom/wang/avi/indicators/CubeTransitionIndicator;
.super Lcom/wang/avi/Indicator;
.source "CubeTransitionIndicator.java"


# instance fields
.field degrees:F

.field scaleFloat:F

.field translateX:[F

.field translateY:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/wang/avi/Indicator;-><init>()V

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/wang/avi/indicators/CubeTransitionIndicator;->translateX:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/wang/avi/indicators/CubeTransitionIndicator;->translateY:[F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/wang/avi/indicators/CubeTransitionIndicator;->scaleFloat:F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 9

    const/high16 v8, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/wang/avi/indicators/CubeTransitionIndicator;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x5

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/wang/avi/indicators/CubeTransitionIndicator;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x5

    int-to-float v2, v0

    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x2

    if-ge v0, v3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v3, p0, Lcom/wang/avi/indicators/CubeTransitionIndicator;->translateX:[F

    aget v3, v3, v0

    iget-object v4, p0, Lcom/wang/avi/indicators/CubeTransitionIndicator;->translateY:[F

    aget v4, v4, v0

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget v3, p0, Lcom/wang/avi/indicators/CubeTransitionIndicator;->degrees:F

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    iget v3, p0, Lcom/wang/avi/indicators/CubeTransitionIndicator;->scaleFloat:F

    iget v4, p0, Lcom/wang/avi/indicators/CubeTransitionIndicator;->scaleFloat:F

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    new-instance v3, Landroid/graphics/RectF;

    neg-float v4, v1

    div-float/2addr v4, v8

    neg-float v5, v2

    div-float/2addr v5, v8

    div-float v6, v1, v8

    div-float v7, v2, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v3, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

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

    const/4 v13, -0x1

    const/4 v12, 0x2

    const/4 v3, 0x0

    const/4 v11, 0x5

    const/4 v10, 0x1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/wang/avi/indicators/CubeTransitionIndicator;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x5

    int-to-float v5, v0

    invoke-virtual {p0}, Lcom/wang/avi/indicators/CubeTransitionIndicator;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x5

    int-to-float v6, v0

    move v2, v3

    :goto_0
    if-ge v2, v12, :cond_2

    iget-object v0, p0, Lcom/wang/avi/indicators/CubeTransitionIndicator;->translateX:[F

    aput v5, v0, v2

    new-array v0, v11, [F

    aput v5, v0, v3

    invoke-virtual {p0}, Lcom/wang/avi/indicators/CubeTransitionIndicator;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v5

    aput v1, v0, v10

    invoke-virtual {p0}, Lcom/wang/avi/indicators/CubeTransitionIndicator;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v5

    aput v1, v0, v12

    const/4 v1, 0x3

    aput v5, v0, v1

    const/4 v1, 0x4

    aput v5, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-ne v2, v10, :cond_0

    new-array v0, v11, [F

    invoke-virtual {p0}, Lcom/wang/avi/indicators/CubeTransitionIndicator;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v5

    aput v1, v0, v3

    aput v5, v0, v10

    aput v5, v0, v12

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/wang/avi/indicators/CubeTransitionIndicator;->getWidth()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v5

    aput v7, v0, v1

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/wang/avi/indicators/CubeTransitionIndicator;->getWidth()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v5

    aput v7, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    :cond_0
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v8, 0x640

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v13}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    new-instance v1, Lcom/wang/avi/indicators/CubeTransitionIndicator$1;

    invoke-direct {v1, p0, v2}, Lcom/wang/avi/indicators/CubeTransitionIndicator$1;-><init>(Lcom/wang/avi/indicators/CubeTransitionIndicator;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/wang/avi/indicators/CubeTransitionIndicator;->translateY:[F

    aput v6, v1, v2

    new-array v1, v11, [F

    aput v6, v1, v3

    aput v6, v1, v10

    invoke-virtual {p0}, Lcom/wang/avi/indicators/CubeTransitionIndicator;->getHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v6

    aput v7, v1, v12

    const/4 v7, 0x3

    invoke-virtual {p0}, Lcom/wang/avi/indicators/CubeTransitionIndicator;->getHeight()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v6

    aput v8, v1, v7

    const/4 v7, 0x4

    aput v6, v1, v7

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    if-ne v2, v10, :cond_1

    new-array v1, v11, [F

    invoke-virtual {p0}, Lcom/wang/avi/indicators/CubeTransitionIndicator;->getHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v6

    aput v7, v1, v3

    invoke-virtual {p0}, Lcom/wang/avi/indicators/CubeTransitionIndicator;->getHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v6

    aput v7, v1, v10

    aput v6, v1, v12

    const/4 v7, 0x3

    aput v6, v1, v7

    const/4 v7, 0x4

    invoke-virtual {p0}, Lcom/wang/avi/indicators/CubeTransitionIndicator;->getHeight()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v6

    aput v8, v1, v7

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    :cond_1
    const-wide/16 v8, 0x640

    invoke-virtual {v1, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, v13}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    new-instance v7, Lcom/wang/avi/indicators/CubeTransitionIndicator$2;

    invoke-direct {v7, p0, v2}, Lcom/wang/avi/indicators/CubeTransitionIndicator$2;-><init>(Lcom/wang/avi/indicators/CubeTransitionIndicator;I)V

    invoke-virtual {p0, v1, v7}, Lcom/wang/avi/indicators/CubeTransitionIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    :cond_2
    new-array v0, v11, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0x640

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, v13}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    new-instance v1, Lcom/wang/avi/indicators/CubeTransitionIndicator$3;

    invoke-direct {v1, p0}, Lcom/wang/avi/indicators/CubeTransitionIndicator$3;-><init>(Lcom/wang/avi/indicators/CubeTransitionIndicator;)V

    invoke-virtual {p0, v0, v1}, Lcom/wang/avi/indicators/CubeTransitionIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v1, v11, [F

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x640

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, v13}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    new-instance v2, Lcom/wang/avi/indicators/CubeTransitionIndicator$4;

    invoke-direct {v2, p0}, Lcom/wang/avi/indicators/CubeTransitionIndicator$4;-><init>(Lcom/wang/avi/indicators/CubeTransitionIndicator;)V

    invoke-virtual {p0, v1, v2}, Lcom/wang/avi/indicators/CubeTransitionIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v4

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x43340000    # 180.0f
        0x43b40000    # 360.0f
        0x44070000    # 540.0f
        0x44340000    # 720.0f
    .end array-data
.end method
