.class public Lcom/wang/avi/indicators/BallGridBeatIndicator;
.super Lcom/wang/avi/Indicator;
.source "BallGridBeatIndicator.java"


# static fields
.field public static final ALPHA:I = 0xff


# instance fields
.field alphas:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/wang/avi/Indicator;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/wang/avi/indicators/BallGridBeatIndicator;->alphas:[I

    return-void

    nop

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
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 13

    const/4 v12, 0x3

    const/4 v1, 0x0

    const/high16 v11, 0x40800000    # 4.0f

    const/4 v10, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallGridBeatIndicator;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v2, v11, v11

    sub-float/2addr v0, v2

    const/high16 v2, 0x40c00000    # 6.0f

    div-float v3, v0, v2

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallGridBeatIndicator;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    mul-float v2, v3, v9

    add-float/2addr v2, v11

    sub-float v4, v0, v2

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallGridBeatIndicator;->getWidth()I

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

    iget-object v6, p0, Lcom/wang/avi/indicators/BallGridBeatIndicator;->alphas:[I

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
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation

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

    new-array v4, v4, [I

    fill-array-data v4, :array_2

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    aget v5, v2, v0

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    aget v5, v3, v0

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v5, Lcom/wang/avi/indicators/BallGridBeatIndicator$1;

    invoke-direct {v5, p0, v0}, Lcom/wang/avi/indicators/BallGridBeatIndicator$1;-><init>(Lcom/wang/avi/indicators/BallGridBeatIndicator;I)V

    invoke-virtual {p0, v4, v5}, Lcom/wang/avi/indicators/BallGridBeatIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    nop

    :array_0
    .array-data 4
        0x3c0
        0x3a2
        0x4a6
        0x46a
        0x53c
        0x3ac
        0x4b0
        0x334
        0x4a6
    .end array-data

    :array_1
    .array-data 4
        0x168
        0x190
        0x2a8
        0x19a
        0x2c6
        -0x96
        -0x78
        0xa
        0x140
    .end array-data

    :array_2
    .array-data 4
        0xff
        0xa8
        0xff
    .end array-data
.end method
