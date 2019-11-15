.class public Lcom/wang/avi/indicators/BallPulseSyncIndicator;
.super Lcom/wang/avi/Indicator;
.source "BallPulseSyncIndicator.java"


# instance fields
.field translateYFloats:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/wang/avi/Indicator;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/wang/avi/indicators/BallPulseSyncIndicator;->translateYFloats:[F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 8

    const/4 v7, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallPulseSyncIndicator;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v2, v1, v6

    sub-float/2addr v0, v2

    const/high16 v2, 0x40c00000    # 6.0f

    div-float v2, v0, v2

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallPulseSyncIndicator;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    mul-float v3, v2, v6

    add-float/2addr v3, v1

    sub-float v3, v0, v3

    const/4 v0, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v0, v4, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    mul-float v4, v2, v6

    int-to-float v5, v0

    mul-float/2addr v4, v5

    add-float/2addr v4, v3

    int-to-float v5, v0

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/wang/avi/indicators/BallPulseSyncIndicator;->translateYFloats:[F

    aget v5, v5, v0

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v7, v7, v2, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCreateAnimators()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v9, 0x3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallPulseSyncIndicator;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v0, v10

    sub-float v0, v3, v0

    const/high16 v3, 0x40c00000    # 6.0f

    div-float v3, v0, v3

    new-array v4, v9, [I

    fill-array-data v4, :array_0

    move v0, v1

    :goto_0
    if-ge v0, v9, :cond_0

    new-array v5, v9, [F

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallPulseSyncIndicator;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    aput v6, v5, v1

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallPulseSyncIndicator;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    mul-float v8, v3, v10

    sub-float/2addr v7, v8

    aput v7, v5, v6

    const/4 v6, 0x2

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallPulseSyncIndicator;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    aput v7, v5, v6

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    const-wide/16 v6, 0x258

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    aget v6, v4, v0

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v6, Lcom/wang/avi/indicators/BallPulseSyncIndicator$1;

    invoke-direct {v6, p0, v0}, Lcom/wang/avi/indicators/BallPulseSyncIndicator$1;-><init>(Lcom/wang/avi/indicators/BallPulseSyncIndicator;I)V

    invoke-virtual {p0, v5, v6}, Lcom/wang/avi/indicators/BallPulseSyncIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2

    nop

    :array_0
    .array-data 4
        0x46
        0x8c
        0xd2
    .end array-data
.end method
