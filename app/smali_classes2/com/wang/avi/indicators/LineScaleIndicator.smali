.class public Lcom/wang/avi/indicators/LineScaleIndicator;
.super Lcom/wang/avi/Indicator;
.source "LineScaleIndicator.java"


# static fields
.field public static final SCALE:F = 1.0f


# instance fields
.field scaleYFloats:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/wang/avi/Indicator;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/wang/avi/indicators/LineScaleIndicator;->scaleYFloats:[F

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 11

    const/high16 v10, 0x40a00000    # 5.0f

    const/high16 v9, 0x40200000    # 2.5f

    const/high16 v8, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/wang/avi/indicators/LineScaleIndicator;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0xb

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/wang/avi/indicators/LineScaleIndicator;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x5

    if-ge v0, v3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    mul-float/2addr v3, v1

    div-float v4, v1, v8

    sub-float/2addr v3, v4

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v4, p0, Lcom/wang/avi/indicators/LineScaleIndicator;->scaleYFloats:[F

    aget v4, v4, v0

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    new-instance v3, Landroid/graphics/RectF;

    neg-float v4, v1

    div-float/2addr v4, v8

    invoke-virtual {p0}, Lcom/wang/avi/indicators/LineScaleIndicator;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    div-float/2addr v5, v9

    div-float v6, v1, v8

    invoke-virtual {p0}, Lcom/wang/avi/indicators/LineScaleIndicator;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v9

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v3, v10, v10, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCreateAnimators()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-array v2, v6, [J

    fill-array-data v2, :array_0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v6, :cond_0

    const/4 v3, 0x3

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    aget-wide v4, v2, v0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v4, Lcom/wang/avi/indicators/LineScaleIndicator$1;

    invoke-direct {v4, p0, v0}, Lcom/wang/avi/indicators/LineScaleIndicator$1;-><init>(Lcom/wang/avi/indicators/LineScaleIndicator;I)V

    invoke-virtual {p0, v3, v4}, Lcom/wang/avi/indicators/LineScaleIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    nop

    :array_0
    .array-data 8
        0x64
        0xc8
        0x12c
        0x190
        0x1f4
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
    .end array-data
.end method
