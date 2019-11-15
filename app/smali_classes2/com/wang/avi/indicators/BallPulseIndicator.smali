.class public Lcom/wang/avi/indicators/BallPulseIndicator;
.super Lcom/wang/avi/Indicator;
.source "BallPulseIndicator.java"


# static fields
.field public static final SCALE:F = 1.0f


# instance fields
.field private scaleFloats:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/wang/avi/Indicator;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/wang/avi/indicators/BallPulseIndicator;->scaleFloats:[F

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/wang/avi/indicators/BallPulseIndicator;)[F
    .locals 1

    iget-object v0, p0, Lcom/wang/avi/indicators/BallPulseIndicator;->scaleFloats:[F

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 9

    const/4 v8, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallPulseIndicator;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallPulseIndicator;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    mul-float v2, v1, v7

    sub-float/2addr v0, v2

    const/high16 v2, 0x40c00000    # 6.0f

    div-float v2, v0, v2

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallPulseIndicator;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    mul-float v3, v2, v7

    add-float/2addr v3, v1

    sub-float v3, v0, v3

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallPulseIndicator;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    const/4 v0, 0x0

    :goto_0
    const/4 v5, 0x3

    if-ge v0, v5, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    mul-float v5, v2, v7

    int-to-float v6, v0

    mul-float/2addr v5, v6

    add-float/2addr v5, v3

    int-to-float v6, v0

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    invoke-virtual {p1, v5, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v5, p0, Lcom/wang/avi/indicators/BallPulseIndicator;->scaleFloats:[F

    aget v5, v5, v0

    iget-object v6, p0, Lcom/wang/avi/indicators/BallPulseIndicator;->scaleFloats:[F

    aget v6, v6, v0

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {p1, v8, v8, v2, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

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

    const/4 v6, 0x3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-array v2, v6, [I

    fill-array-data v2, :array_0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v6, :cond_0

    new-array v3, v6, [F

    fill-array-data v3, :array_1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    const-wide/16 v4, 0x2ee

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    aget v4, v2, v0

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v4, Lcom/wang/avi/indicators/BallPulseIndicator$1;

    invoke-direct {v4, p0, v0}, Lcom/wang/avi/indicators/BallPulseIndicator$1;-><init>(Lcom/wang/avi/indicators/BallPulseIndicator;I)V

    invoke-virtual {p0, v3, v4}, Lcom/wang/avi/indicators/BallPulseIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    nop

    :array_0
    .array-data 4
        0x78
        0xf0
        0x168
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data
.end method
