.class public Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator;
.super Lcom/wang/avi/Indicator;
.source "BallSpinFadeLoaderIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator$Point;
    }
.end annotation


# static fields
.field public static final ALPHA:I = 0xff

.field public static final SCALE:F = 1.0f


# instance fields
.field alphas:[I

.field scaleFloats:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v1, 0x8

    invoke-direct {p0}, Lcom/wang/avi/Indicator;-><init>()V

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator;->scaleFloats:[F

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator;->alphas:[I

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
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
.method circleAt(IIFD)Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator$Point;
    .locals 8

    div-int/lit8 v0, p1, 0x2

    int-to-double v0, v0

    float-to-double v2, p3

    invoke-static {p4, p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    div-int/lit8 v1, p2, 0x2

    int-to-double v2, v1

    float-to-double v4, p3

    invoke-static {p4, p5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v1, v2

    new-instance v2, Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator$Point;

    invoke-direct {v2, p0, v0, v1}, Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator$Point;-><init>(Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator;FF)V

    return-object v2
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 11

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    int-to-float v7, v0

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    const/16 v0, 0x8

    if-ge v6, v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float v3, v0, v7

    int-to-double v4, v6

    const-wide v8, 0x3fe921fb54442d18L    # 0.7853981633974483

    mul-double/2addr v4, v8

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator;->circleAt(IIFD)Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator$Point;

    move-result-object v0

    iget v1, v0, Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator$Point;->x:F

    iget v0, v0, Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator$Point;->y:F

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator;->scaleFloats:[F

    aget v0, v0, v6

    iget-object v1, p0, Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator;->scaleFloats:[F

    aget v1, v1, v6

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v0, p0, Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator;->alphas:[I

    aget v0, v0, v6

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1, v10, v10, v7, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCreateAnimators()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation

    const-wide/16 v10, 0x3e8

    const/4 v9, 0x3

    const/4 v8, -0x1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/16 v0, 0x9

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v0, v3, :cond_0

    new-array v3, v9, [F

    fill-array-data v3, :array_1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v8}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    aget v4, v2, v0

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v4, Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator$1;

    invoke-direct {v4, p0, v0}, Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator$1;-><init>(Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator;I)V

    invoke-virtual {p0, v3, v4}, Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v4, v9, [I

    fill-array-data v4, :array_2

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v8}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    aget v5, v2, v0

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v5, Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator$2;

    invoke-direct {v5, p0, v0}, Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator$2;-><init>(Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator;I)V

    invoke-virtual {p0, v4, v5}, Lcom/wang/avi/indicators/BallSpinFadeLoaderIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    nop

    :array_0
    .array-data 4
        0x0
        0x78
        0xf0
        0x168
        0x1e0
        0x258
        0x2d0
        0x30c
        0x348
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0xff
        0x4d
        0xff
    .end array-data
.end method
