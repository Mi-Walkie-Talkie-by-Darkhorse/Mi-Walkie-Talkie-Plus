.class public Lcom/wang/avi/indicators/PacmanIndicator;
.super Lcom/wang/avi/Indicator;
.source "PacmanIndicator.java"


# instance fields
.field private alpha:I

.field private degrees1:F

.field private degrees2:F

.field private translateX:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/wang/avi/Indicator;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/wang/avi/indicators/PacmanIndicator;F)F
    .locals 0

    iput p1, p0, Lcom/wang/avi/indicators/PacmanIndicator;->translateX:F

    return p1
.end method

.method static synthetic access$102(Lcom/wang/avi/indicators/PacmanIndicator;I)I
    .locals 0

    iput p1, p0, Lcom/wang/avi/indicators/PacmanIndicator;->alpha:I

    return p1
.end method

.method static synthetic access$202(Lcom/wang/avi/indicators/PacmanIndicator;F)F
    .locals 0

    iput p1, p0, Lcom/wang/avi/indicators/PacmanIndicator;->degrees1:F

    return p1
.end method

.method static synthetic access$302(Lcom/wang/avi/indicators/PacmanIndicator;F)F
    .locals 0

    iput p1, p0, Lcom/wang/avi/indicators/PacmanIndicator;->degrees2:F

    return p1
.end method

.method private drawCircle(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 3

    invoke-virtual {p0}, Lcom/wang/avi/indicators/PacmanIndicator;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0xb

    int-to-float v0, v0

    iget v1, p0, Lcom/wang/avi/indicators/PacmanIndicator;->alpha:I

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v1, p0, Lcom/wang/avi/indicators/PacmanIndicator;->translateX:F

    invoke-virtual {p0}, Lcom/wang/avi/indicators/PacmanIndicator;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2, v0, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawPacman(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 11

    const/16 v10, 0xff

    const/4 v4, 0x1

    const/high16 v3, 0x43870000    # 270.0f

    const v9, 0x3fd9999a    # 1.7f

    invoke-virtual {p0}, Lcom/wang/avi/indicators/PacmanIndicator;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v6, v0

    invoke-virtual {p0}, Lcom/wang/avi/indicators/PacmanIndicator;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v7, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, p0, Lcom/wang/avi/indicators/PacmanIndicator;->degrees1:F

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p2, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v1, Landroid/graphics/RectF;

    neg-float v0, v6

    div-float/2addr v0, v9

    neg-float v2, v7

    div-float/2addr v2, v9

    div-float v5, v6, v9

    div-float v8, v7, v9

    invoke-direct {v1, v0, v2, v5, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v2, 0x0

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, p0, Lcom/wang/avi/indicators/PacmanIndicator;->degrees2:F

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p2, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v1, Landroid/graphics/RectF;

    neg-float v0, v6

    div-float/2addr v0, v9

    neg-float v2, v7

    div-float/2addr v2, v9

    div-float v5, v6, v9

    div-float v6, v7, v9

    invoke-direct {v1, v0, v2, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v2, 0x42b40000    # 90.0f

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wang/avi/indicators/PacmanIndicator;->drawPacman(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    invoke-direct {p0, p1, p2}, Lcom/wang/avi/indicators/PacmanIndicator;->drawCircle(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    return-void
.end method

.method public onCreateAnimators()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x3

    const/4 v8, 0x2

    const-wide/16 v6, 0x28a

    const/4 v5, -0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/wang/avi/indicators/PacmanIndicator;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0xb

    int-to-float v1, v1

    new-array v2, v8, [F

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/wang/avi/indicators/PacmanIndicator;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float v1, v4, v1

    aput v1, v2, v3

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/wang/avi/indicators/PacmanIndicator;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    aput v3, v2, v1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    new-instance v2, Lcom/wang/avi/indicators/PacmanIndicator$1;

    invoke-direct {v2, p0}, Lcom/wang/avi/indicators/PacmanIndicator$1;-><init>(Lcom/wang/avi/indicators/PacmanIndicator;)V

    invoke-virtual {p0, v1, v2}, Lcom/wang/avi/indicators/PacmanIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, v8, [I

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    new-instance v3, Lcom/wang/avi/indicators/PacmanIndicator$2;

    invoke-direct {v3, p0}, Lcom/wang/avi/indicators/PacmanIndicator$2;-><init>(Lcom/wang/avi/indicators/PacmanIndicator;)V

    invoke-virtual {p0, v2, v3}, Lcom/wang/avi/indicators/PacmanIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v3, v9, [F

    fill-array-data v3, :array_1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    new-instance v4, Lcom/wang/avi/indicators/PacmanIndicator$3;

    invoke-direct {v4, p0}, Lcom/wang/avi/indicators/PacmanIndicator$3;-><init>(Lcom/wang/avi/indicators/PacmanIndicator;)V

    invoke-virtual {p0, v3, v4}, Lcom/wang/avi/indicators/PacmanIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v4, v9, [F

    fill-array-data v4, :array_2

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    new-instance v5, Lcom/wang/avi/indicators/PacmanIndicator$4;

    invoke-direct {v5, p0}, Lcom/wang/avi/indicators/PacmanIndicator$4;-><init>(Lcom/wang/avi/indicators/PacmanIndicator;)V

    invoke-virtual {p0, v4, v5}, Lcom/wang/avi/indicators/PacmanIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    nop

    :array_0
    .array-data 4
        0xff
        0x7a
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x42340000    # 45.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        -0x3dcc0000    # -45.0f
        0x0
    .end array-data
.end method
