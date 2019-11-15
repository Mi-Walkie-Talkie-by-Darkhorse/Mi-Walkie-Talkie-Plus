.class public Lcom/wang/avi/indicators/BallRotateIndicator;
.super Lcom/wang/avi/Indicator;
.source "BallRotateIndicator.java"


# instance fields
.field degress:F

.field private mMatrix:Landroid/graphics/Matrix;

.field scaleFloat:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/wang/avi/Indicator;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/wang/avi/indicators/BallRotateIndicator;->scaleFloat:F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/wang/avi/indicators/BallRotateIndicator;->mMatrix:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 8

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallRotateIndicator;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallRotateIndicator;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallRotateIndicator;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/wang/avi/indicators/BallRotateIndicator;->degress:F

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallRotateIndicator;->centerX()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallRotateIndicator;->centerY()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    mul-float v3, v0, v7

    sub-float v3, v1, v3

    sub-float/2addr v3, v0

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget v3, p0, Lcom/wang/avi/indicators/BallRotateIndicator;->scaleFloat:F

    iget v4, p0, Lcom/wang/avi/indicators/BallRotateIndicator;->scaleFloat:F

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {p1, v6, v6, v0, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget v3, p0, Lcom/wang/avi/indicators/BallRotateIndicator;->scaleFloat:F

    iget v4, p0, Lcom/wang/avi/indicators/BallRotateIndicator;->scaleFloat:F

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {p1, v6, v6, v0, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    mul-float v3, v0, v7

    add-float/2addr v1, v3

    add-float/2addr v1, v0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget v1, p0, Lcom/wang/avi/indicators/BallRotateIndicator;->scaleFloat:F

    iget v2, p0, Lcom/wang/avi/indicators/BallRotateIndicator;->scaleFloat:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {p1, v6, v6, v0, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
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

    const/4 v3, 0x3

    const/4 v4, -0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-array v1, v3, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    new-instance v2, Lcom/wang/avi/indicators/BallRotateIndicator$1;

    invoke-direct {v2, p0}, Lcom/wang/avi/indicators/BallRotateIndicator$1;-><init>(Lcom/wang/avi/indicators/BallRotateIndicator;)V

    invoke-virtual {p0, v1, v2}, Lcom/wang/avi/indicators/BallRotateIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, v3, [F

    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v3, Lcom/wang/avi/indicators/BallRotateIndicator$2;

    invoke-direct {v3, p0}, Lcom/wang/avi/indicators/BallRotateIndicator$2;-><init>(Lcom/wang/avi/indicators/BallRotateIndicator;)V

    invoke-virtual {p0, v2, v3}, Lcom/wang/avi/indicators/BallRotateIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x43340000    # 180.0f
        0x43b40000    # 360.0f
    .end array-data
.end method
