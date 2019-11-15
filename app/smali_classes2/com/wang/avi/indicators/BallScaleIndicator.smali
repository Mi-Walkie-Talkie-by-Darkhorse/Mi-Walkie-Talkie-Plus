.class public Lcom/wang/avi/indicators/BallScaleIndicator;
.super Lcom/wang/avi/Indicator;
.source "BallScaleIndicator.java"


# instance fields
.field alpha:I

.field scale:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/wang/avi/Indicator;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/wang/avi/indicators/BallScaleIndicator;->scale:F

    const/16 v0, 0xff

    iput v0, p0, Lcom/wang/avi/indicators/BallScaleIndicator;->alpha:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 5

    const/high16 v0, 0x40800000    # 4.0f

    iget v1, p0, Lcom/wang/avi/indicators/BallScaleIndicator;->alpha:I

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v1, p0, Lcom/wang/avi/indicators/BallScaleIndicator;->scale:F

    iget v2, p0, Lcom/wang/avi/indicators/BallScaleIndicator;->scale:F

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallScaleIndicator;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallScaleIndicator;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget v1, p0, Lcom/wang/avi/indicators/BallScaleIndicator;->alpha:I

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallScaleIndicator;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallScaleIndicator;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallScaleIndicator;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float v0, v3, v0

    invoke-virtual {p1, v1, v2, v0, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

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

    const/4 v3, 0x2

    const/4 v4, -0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-array v1, v3, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    new-instance v2, Lcom/wang/avi/indicators/BallScaleIndicator$1;

    invoke-direct {v2, p0}, Lcom/wang/avi/indicators/BallScaleIndicator$1;-><init>(Lcom/wang/avi/indicators/BallScaleIndicator;)V

    invoke-virtual {p0, v1, v2}, Lcom/wang/avi/indicators/BallScaleIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    new-instance v3, Lcom/wang/avi/indicators/BallScaleIndicator$2;

    invoke-direct {v3, p0}, Lcom/wang/avi/indicators/BallScaleIndicator$2;-><init>(Lcom/wang/avi/indicators/BallScaleIndicator;)V

    invoke-virtual {p0, v2, v3}, Lcom/wang/avi/indicators/BallScaleIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0xff
        0x0
    .end array-data
.end method
