.class public Lcom/wang/avi/indicators/SemiCircleSpinIndicator;
.super Lcom/wang/avi/Indicator;
.source "SemiCircleSpinIndicator.java"


# instance fields
.field private degress:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/wang/avi/Indicator;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/wang/avi/indicators/SemiCircleSpinIndicator;F)F
    .locals 0

    iput p1, p0, Lcom/wang/avi/indicators/SemiCircleSpinIndicator;->degress:F

    return p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6

    const/4 v3, 0x0

    iget v0, p0, Lcom/wang/avi/indicators/SemiCircleSpinIndicator;->degress:F

    invoke-virtual {p0}, Lcom/wang/avi/indicators/SemiCircleSpinIndicator;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/wang/avi/indicators/SemiCircleSpinIndicator;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/wang/avi/indicators/SemiCircleSpinIndicator;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/wang/avi/indicators/SemiCircleSpinIndicator;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v1, v3, v3, v0, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v2, -0x3d900000    # -60.0f

    const/high16 v3, 0x42f00000    # 120.0f

    const/4 v4, 0x0

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public onCreateAnimators()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x3

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Lcom/wang/avi/indicators/SemiCircleSpinIndicator$1;

    invoke-direct {v2, p0}, Lcom/wang/avi/indicators/SemiCircleSpinIndicator$1;-><init>(Lcom/wang/avi/indicators/SemiCircleSpinIndicator;)V

    invoke-virtual {p0, v1, v2}, Lcom/wang/avi/indicators/SemiCircleSpinIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v2, 0x258

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x43340000    # 180.0f
        0x43b40000    # 360.0f
    .end array-data
.end method
