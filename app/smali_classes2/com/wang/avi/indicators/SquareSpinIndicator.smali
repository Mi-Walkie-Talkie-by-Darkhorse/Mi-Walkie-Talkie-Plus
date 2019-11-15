.class public Lcom/wang/avi/indicators/SquareSpinIndicator;
.super Lcom/wang/avi/Indicator;
.source "SquareSpinIndicator.java"


# instance fields
.field private mCamera:Landroid/graphics/Camera;

.field private mMatrix:Landroid/graphics/Matrix;

.field private rotateX:F

.field private rotateY:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/wang/avi/Indicator;-><init>()V

    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/wang/avi/indicators/SquareSpinIndicator;->mCamera:Landroid/graphics/Camera;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/wang/avi/indicators/SquareSpinIndicator;->mMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method static synthetic access$002(Lcom/wang/avi/indicators/SquareSpinIndicator;F)F
    .locals 0

    iput p1, p0, Lcom/wang/avi/indicators/SquareSpinIndicator;->rotateX:F

    return p1
.end method

.method static synthetic access$102(Lcom/wang/avi/indicators/SquareSpinIndicator;F)F
    .locals 0

    iput p1, p0, Lcom/wang/avi/indicators/SquareSpinIndicator;->rotateY:F

    return p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 5

    iget-object v0, p0, Lcom/wang/avi/indicators/SquareSpinIndicator;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/wang/avi/indicators/SquareSpinIndicator;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    iget-object v0, p0, Lcom/wang/avi/indicators/SquareSpinIndicator;->mCamera:Landroid/graphics/Camera;

    iget v1, p0, Lcom/wang/avi/indicators/SquareSpinIndicator;->rotateX:F

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->rotateX(F)V

    iget-object v0, p0, Lcom/wang/avi/indicators/SquareSpinIndicator;->mCamera:Landroid/graphics/Camera;

    iget v1, p0, Lcom/wang/avi/indicators/SquareSpinIndicator;->rotateY:F

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->rotateY(F)V

    iget-object v0, p0, Lcom/wang/avi/indicators/SquareSpinIndicator;->mCamera:Landroid/graphics/Camera;

    iget-object v1, p0, Lcom/wang/avi/indicators/SquareSpinIndicator;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/wang/avi/indicators/SquareSpinIndicator;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    iget-object v0, p0, Lcom/wang/avi/indicators/SquareSpinIndicator;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/wang/avi/indicators/SquareSpinIndicator;->centerX()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/wang/avi/indicators/SquareSpinIndicator;->centerY()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v0, p0, Lcom/wang/avi/indicators/SquareSpinIndicator;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/wang/avi/indicators/SquareSpinIndicator;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/wang/avi/indicators/SquareSpinIndicator;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/wang/avi/indicators/SquareSpinIndicator;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/wang/avi/indicators/SquareSpinIndicator;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/wang/avi/indicators/SquareSpinIndicator;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x5

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/wang/avi/indicators/SquareSpinIndicator;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    div-int/lit8 v3, v3, 0x5

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/wang/avi/indicators/SquareSpinIndicator;->getHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    div-int/lit8 v4, v4, 0x5

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

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

    const-wide/16 v6, 0x9c4

    const/4 v3, 0x5

    const/4 v4, -0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-array v1, v3, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Lcom/wang/avi/indicators/SquareSpinIndicator$1;

    invoke-direct {v2, p0}, Lcom/wang/avi/indicators/SquareSpinIndicator$1;-><init>(Lcom/wang/avi/indicators/SquareSpinIndicator;)V

    invoke-virtual {p0, v1, v2}, Lcom/wang/avi/indicators/SquareSpinIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array v2, v3, [F

    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v3, Lcom/wang/avi/indicators/SquareSpinIndicator$2;

    invoke-direct {v3, p0}, Lcom/wang/avi/indicators/SquareSpinIndicator$2;-><init>(Lcom/wang/avi/indicators/SquareSpinIndicator;)V

    invoke-virtual {p0, v2, v3}, Lcom/wang/avi/indicators/SquareSpinIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x43340000    # 180.0f
        0x43340000    # 180.0f
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x43340000    # 180.0f
        0x43340000    # 180.0f
        0x0
    .end array-data
.end method
