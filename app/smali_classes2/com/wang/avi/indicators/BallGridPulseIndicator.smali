.class public Lcom/wang/avi/indicators/BallGridPulseIndicator;
.super Lcom/wang/avi/Indicator;
.source "BallGridPulseIndicator.java"


# static fields
.field public static final ALPHA:I = 0xff

.field public static final SCALE:F = 1.0f


# instance fields
.field alphas:[I

.field scaleFloats:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v1, 0x9

    invoke-direct {p0}, Lcom/wang/avi/Indicator;-><init>()V

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/wang/avi/indicators/BallGridPulseIndicator;->alphas:[I

    new-array v0, v1, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/wang/avi/indicators/BallGridPulseIndicator;->scaleFloats:[F

    return-void

    :array_0
    .array-data 4
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 13

    const/4 v12, 0x3

    const/4 v1, 0x0

    const/high16 v11, 0x40800000    # 4.0f

    const/4 v10, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallGridPulseIndicator;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v2, v11, v11

    sub-float/2addr v0, v2

    const/high16 v2, 0x40c00000    # 6.0f

    div-float v3, v0, v2

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallGridPulseIndicator;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    mul-float v2, v3, v9

    add-float/2addr v2, v11

    sub-float v4, v0, v2

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallGridPulseIndicator;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    mul-float v2, v3, v9

    add-float/2addr v2, v11

    sub-float v5, v0, v2

    move v2, v1

    :goto_0
    if-ge v2, v12, :cond_1

    move v0, v1

    :goto_1
    if-ge v0, v12, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    mul-float v6, v3, v9

    int-to-float v7, v0

    mul-float/2addr v6, v7

    add-float/2addr v6, v4

    int-to-float v7, v0

    mul-float/2addr v7, v11

    add-float/2addr v6, v7

    mul-float v7, v3, v9

    int-to-float v8, v2

    mul-float/2addr v7, v8

    add-float/2addr v7, v5

    int-to-float v8, v2

    mul-float/2addr v8, v11

    add-float/2addr v7, v8

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v6, p0, Lcom/wang/avi/indicators/BallGridPulseIndicator;->scaleFloats:[F

    mul-int/lit8 v7, v2, 0x3

    add-int/2addr v7, v0

    aget v6, v6, v7

    iget-object v7, p0, Lcom/wang/avi/indicators/BallGridPulseIndicator;->scaleFloats:[F

    mul-int/lit8 v8, v2, 0x3

    add-int/2addr v8, v0

    aget v7, v7, v8

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v6, p0, Lcom/wang/avi/indicators/BallGridPulseIndicator;->alphas:[I

    mul-int/lit8 v7, v2, 0x3

    add-int/2addr v7, v0

    aget v6, v6, v7

    invoke-virtual {p2, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1, v10, v10, v3, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
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

    const/4 v9, -0x1

    const/16 v8, 0x9

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-array v2, v8, [I

    fill-array-data v2, :array_0

    new-array v3, v8, [I

    fill-array-data v3, :array_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v8, :cond_0

    const/4 v4, 0x3

    new-array v4, v4, [F

    fill-array-data v4, :array_2

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    aget v5, v2, v0

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v9}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    aget v5, v3, v0

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v5, Lcom/wang/avi/indicators/BallGridPulseIndicator$1;

    invoke-direct {v5, p0, v0}, Lcom/wang/avi/indicators/BallGridPulseIndicator$1;-><init>(Lcom/wang/avi/indicators/BallGridPulseIndicator;I)V

    invoke-virtual {p0, v4, v5}, Lcom/wang/avi/indicators/BallGridPulseIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_3

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    aget v6, v2, v0

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v5, v9}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    aget v6, v3, v0

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v6, Lcom/wang/avi/indicators/BallGridPulseIndicator$2;

    invoke-direct {v6, p0, v0}, Lcom/wang/avi/indicators/BallGridPulseIndicator$2;-><init>(Lcom/wang/avi/indicators/BallGridPulseIndicator;I)V

    invoke-virtual {p0, v5, v6}, Lcom/wang/avi/indicators/BallGridPulseIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    nop

    :array_0
    .array-data 4
        0x2d0
        0x3fc
        0x500
        0x58c
        0x5aa
        0x49c
        0x366
        0x5aa
        0x424
    .end array-data

    :array_1
    .array-data 4
        -0x3c
        0xfa
        -0xaa
        0x1e0
        0x136
        0x1e
        0x1cc
        0x30c
        0x1c2
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0xff
        0xd2
        0x7a
        0xff
    .end array-data
.end method
