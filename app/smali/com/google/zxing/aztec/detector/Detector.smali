.class public final Lcom/google/zxing/aztec/detector/Detector;
.super Ljava/lang/Object;
.source "Detector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/aztec/detector/Detector$Point;
    }
.end annotation


# static fields
.field private static final EXPECTED_CORNER_BITS:[I


# instance fields
.field private compact:Z

.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private nbCenterLayers:I

.field private nbDataBlocks:I

.field private nbLayers:I

.field private shift:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/aztec/detector/Detector;->EXPECTED_CORNER_BITS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0xee0
        0x1dc
        0x83b
        0x707
    .end array-data
.end method

.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    return-void
.end method

.method private static distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F
    .locals 4

    invoke-virtual {p0}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v0

    return v0
.end method

.method private static distance(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)F
    .locals 4

    invoke-virtual {p0}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/zxing/common/detector/MathUtils;->distance(IIII)F

    move-result v0

    return v0
.end method

.method private static expandSquare([Lcom/google/zxing/ResultPoint;FF)[Lcom/google/zxing/ResultPoint;
    .locals 10

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, p1

    div-float v0, p2, v0

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    const/4 v2, 0x2

    aget-object v2, p0, v2

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    const/4 v3, 0x2

    aget-object v3, p0, v3

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    aget-object v3, p0, v3

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    const/4 v4, 0x2

    aget-object v4, p0, v4

    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/4 v4, 0x0

    aget-object v4, p0, v4

    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    const/4 v5, 0x2

    aget-object v5, p0, v5

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v5

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    new-instance v5, Lcom/google/zxing/ResultPoint;

    mul-float v6, v0, v1

    add-float/2addr v6, v3

    mul-float v7, v0, v2

    add-float/2addr v7, v4

    invoke-direct {v5, v6, v7}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    new-instance v6, Lcom/google/zxing/ResultPoint;

    mul-float/2addr v1, v0

    sub-float v1, v3, v1

    mul-float/2addr v2, v0

    sub-float v2, v4, v2

    invoke-direct {v6, v1, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/4 v1, 0x1

    aget-object v1, p0, v1

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    const/4 v2, 0x3

    aget-object v2, p0, v2

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    const/4 v3, 0x3

    aget-object v3, p0, v3

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    const/4 v3, 0x1

    aget-object v3, p0, v3

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    const/4 v4, 0x3

    aget-object v4, p0, v4

    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/4 v4, 0x1

    aget-object v4, p0, v4

    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    const/4 v7, 0x3

    aget-object v7, p0, v7

    invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v7

    add-float/2addr v4, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v4, v7

    new-instance v7, Lcom/google/zxing/ResultPoint;

    mul-float v8, v0, v1

    add-float/2addr v8, v3

    mul-float v9, v0, v2

    add-float/2addr v9, v4

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    new-instance v8, Lcom/google/zxing/ResultPoint;

    mul-float/2addr v1, v0

    sub-float v1, v3, v1

    mul-float/2addr v0, v2

    sub-float v0, v4, v0

    invoke-direct {v8, v1, v0}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    const/4 v1, 0x0

    aput-object v5, v0, v1

    const/4 v1, 0x1

    aput-object v7, v0, v1

    const/4 v1, 0x2

    aput-object v6, v0, v1

    const/4 v1, 0x3

    aput-object v8, v0, v1

    return-object v0
.end method

.method private extractParameters([Lcom/google/zxing/ResultPoint;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Lcom/google/zxing/aztec/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v1

    if-eqz v1, :cond_0

    aget-object v1, p1, v5

    invoke-direct {p0, v1}, Lcom/google/zxing/aztec/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v1

    if-eqz v1, :cond_0

    aget-object v1, p1, v6

    invoke-direct {p0, v1}, Lcom/google/zxing/aztec/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v1

    if-eqz v1, :cond_0

    aget-object v1, p1, v7

    invoke-direct {p0, v1}, Lcom/google/zxing/aztec/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_1
    iget v1, p0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    mul-int/lit8 v1, v1, 0x2

    new-array v4, v8, [I

    aget-object v2, p1, v0

    aget-object v3, p1, v5

    invoke-direct {p0, v2, v3, v1}, Lcom/google/zxing/aztec/detector/Detector;->sampleLine(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)I

    move-result v2

    aput v2, v4, v0

    aget-object v2, p1, v5

    aget-object v3, p1, v6

    invoke-direct {p0, v2, v3, v1}, Lcom/google/zxing/aztec/detector/Detector;->sampleLine(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)I

    move-result v2

    aput v2, v4, v5

    aget-object v2, p1, v6

    aget-object v3, p1, v7

    invoke-direct {p0, v2, v3, v1}, Lcom/google/zxing/aztec/detector/Detector;->sampleLine(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)I

    move-result v2

    aput v2, v4, v6

    aget-object v2, p1, v7

    aget-object v3, p1, v0

    invoke-direct {p0, v2, v3, v1}, Lcom/google/zxing/aztec/detector/Detector;->sampleLine(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)I

    move-result v2

    aput v2, v4, v7

    invoke-static {v4, v1}, Lcom/google/zxing/aztec/detector/Detector;->getRotation([II)I

    move-result v1

    iput v1, p0, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    const-wide/16 v2, 0x0

    move v9, v0

    move-wide v0, v2

    move v2, v9

    :goto_0
    if-ge v2, v8, :cond_3

    iget v3, p0, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    add-int/2addr v3, v2

    rem-int/lit8 v3, v3, 0x4

    aget v3, v4, v3

    iget-boolean v5, p0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    if-eqz v5, :cond_2

    const/4 v5, 0x7

    shl-long/2addr v0, v5

    shr-int/lit8 v3, v3, 0x1

    and-int/lit8 v3, v3, 0x7f

    int-to-long v6, v3

    add-long/2addr v0, v6

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/16 v5, 0xa

    shl-long/2addr v0, v5

    shr-int/lit8 v5, v3, 0x2

    and-int/lit16 v5, v5, 0x3e0

    shr-int/lit8 v3, v3, 0x1

    and-int/lit8 v3, v3, 0x1f

    add-int/2addr v3, v5

    int-to-long v6, v3

    add-long/2addr v0, v6

    goto :goto_1

    :cond_3
    iget-boolean v2, p0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    invoke-static {v0, v1, v2}, Lcom/google/zxing/aztec/detector/Detector;->getCorrectedParameterData(JZ)I

    move-result v0

    iget-boolean v1, p0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    if-eqz v1, :cond_4

    shr-int/lit8 v1, v0, 0x6

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    and-int/lit8 v0, v0, 0x3f

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/zxing/aztec/detector/Detector;->nbDataBlocks:I

    :goto_2
    return-void

    :cond_4
    shr-int/lit8 v1, v0, 0xb

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    and-int/lit16 v0, v0, 0x7ff

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/zxing/aztec/detector/Detector;->nbDataBlocks:I

    goto :goto_2
.end method

.method private getBullsEyeCorners(Lcom/google/zxing/aztec/detector/Detector$Point;)[Lcom/google/zxing/ResultPoint;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x1

    iput v1, p0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move-object v2, p1

    move-object v4, p1

    move-object v6, p1

    :goto_0
    iget v1, p0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    const/16 v3, 0x9

    if-ge v1, v3, :cond_2

    const/4 v1, 0x1

    const/4 v3, -0x1

    invoke-direct {p0, v6, v0, v1, v3}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v7

    const/4 v1, 0x1

    const/4 v3, 0x1

    invoke-direct {p0, v4, v0, v1, v3}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v5

    const/4 v1, -0x1

    const/4 v3, 0x1

    invoke-direct {p0, v2, v0, v1, v3}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v3

    const/4 v1, -0x1

    const/4 v8, -0x1

    invoke-direct {p0, p1, v0, v1, v8}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v1

    iget v8, p0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    const/4 v9, 0x2

    if-le v8, v9, :cond_0

    invoke-static {v1, v7}, Lcom/google/zxing/aztec/detector/Detector;->distance(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)F

    move-result v8

    iget v9, p0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    int-to-float v9, v9

    mul-float/2addr v8, v9

    invoke-static {p1, v6}, Lcom/google/zxing/aztec/detector/Detector;->distance(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)F

    move-result v9

    iget v10, p0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    add-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    mul-float/2addr v9, v10

    div-float/2addr v8, v9

    float-to-double v10, v8

    const-wide/high16 v12, 0x3fe8000000000000L    # 0.75

    cmpg-double v9, v10, v12

    if-ltz v9, :cond_2

    float-to-double v8, v8

    const-wide/high16 v10, 0x3ff4000000000000L    # 1.25

    cmpl-double v8, v8, v10

    if-gtz v8, :cond_2

    invoke-direct {p0, v7, v5, v3, v1}, Lcom/google/zxing/aztec/detector/Detector;->isWhiteOrBlackRectangle(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iget v2, p0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move-object p1, v1

    move-object v2, v3

    move-object v4, v5

    move-object v6, v7

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_3
    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    new-instance v0, Lcom/google/zxing/ResultPoint;

    invoke-virtual {v6}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v1, v3

    invoke-virtual {v6}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v3

    int-to-float v3, v3

    const/high16 v5, 0x3f000000    # 0.5f

    sub-float/2addr v3, v5

    invoke-direct {v0, v1, v3}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    new-instance v1, Lcom/google/zxing/ResultPoint;

    invoke-virtual {v4}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v3

    int-to-float v3, v3

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v3, v5

    invoke-virtual {v4}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    invoke-direct {v1, v3, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    new-instance v3, Lcom/google/zxing/ResultPoint;

    invoke-virtual {v2}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f000000    # 0.5f

    sub-float/2addr v4, v5

    invoke-virtual {v2}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v2

    int-to-float v2, v2

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v2, v5

    invoke-direct {v3, v4, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    new-instance v2, Lcom/google/zxing/ResultPoint;

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f000000    # 0.5f

    sub-float/2addr v4, v5

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f000000    # 0.5f

    sub-float/2addr v5, v6

    invoke-direct {v2, v4, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/4 v4, 0x4

    new-array v4, v4, [Lcom/google/zxing/ResultPoint;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v2, v4, v0

    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x3

    int-to-float v0, v0

    iget v1, p0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v4, v0, v1}, Lcom/google/zxing/aztec/detector/Detector;->expandSquare([Lcom/google/zxing/ResultPoint;FF)[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I
    .locals 13

    invoke-static {p1, p2}, Lcom/google/zxing/aztec/detector/Detector;->distance(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)F

    move-result v4

    invoke-virtual {p2}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float v5, v0, v4

    invoke-virtual {p2}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float v6, v0, v4

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v0

    int-to-float v1, v0

    iget-object v0, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v7

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v7

    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    const/4 v0, 0x0

    move v12, v0

    move v0, v3

    move v3, v2

    move v2, v1

    move v1, v12

    :goto_0
    if-ge v1, v8, :cond_1

    add-float/2addr v3, v5

    add-float/2addr v2, v6

    iget-object v9, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-static {v3}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v10

    invoke-static {v2}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v9

    if-eq v9, v7, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    int-to-float v0, v0

    div-float/2addr v0, v4

    const v1, 0x3dcccccd    # 0.1f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    const v1, 0x3f666666    # 0.9f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_2
    const v1, 0x3dcccccd    # 0.1f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    if-ne v0, v7, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static getCorrectedParameterData(JZ)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v1, 0x4

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    const/4 v2, 0x7

    const/4 v0, 0x2

    :goto_0
    sub-int v4, v2, v0

    new-array v5, v2, [I

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_1

    long-to-int v6, p0

    and-int/lit8 v6, v6, 0xf

    aput v6, v5, v2

    shr-long/2addr p0, v1

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_0
    const/16 v0, 0xa

    move v2, v0

    move v0, v1

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v1, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    sget-object v2, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_PARAM:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v1, v2}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    invoke-virtual {v1, v5, v4}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decode([II)V
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    :goto_2
    if-ge v1, v0, :cond_2

    shl-int/lit8 v2, v3, 0x4

    aget v3, v5, v1

    add-int/2addr v3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_2
    return v3
.end method

.method private getDimension()I
    .locals 2

    iget-boolean v0, p0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0xb

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0xf

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    mul-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    add-int/lit8 v1, v1, -0x4

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xf

    goto :goto_0
.end method

.method private getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;
    .locals 3

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v0

    add-int v1, v0, p3

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v0

    add-int/2addr v0, p4

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2, v1, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    if-ne v2, p2, :cond_0

    add-int/2addr v1, p3

    add-int/2addr v0, p4

    goto :goto_0

    :cond_0
    sub-int/2addr v1, p3

    sub-int v2, v0, p4

    move v0, v1

    :goto_1
    invoke-direct {p0, v0, v2}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v1, v0, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v1

    if-ne v1, p2, :cond_1

    add-int/2addr v0, p3

    goto :goto_1

    :cond_1
    sub-int v1, v0, p3

    move v0, v2

    :goto_2
    invoke-direct {p0, v1, v0}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2, v1, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    if-ne v2, p2, :cond_2

    add-int/2addr v0, p4

    goto :goto_2

    :cond_2
    sub-int/2addr v0, p4

    new-instance v2, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-direct {v2, v1, v0}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    return-object v2
.end method

.method private getMatrixCenter()Lcom/google/zxing/aztec/detector/Detector$Point;
    .locals 11

    const/high16 v10, 0x40800000    # 4.0f

    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    :try_start_0
    new-instance v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;

    iget-object v1, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v0, v1}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    invoke-virtual {v0}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->detect()[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v3, v0, v1

    const/4 v1, 0x1

    aget-object v2, v0, v1

    const/4 v1, 0x2

    aget-object v1, v0, v1

    const/4 v4, 0x3

    aget-object v0, v0, v4
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v4

    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v5

    add-float/2addr v4, v5

    div-float/2addr v4, v10

    invoke-static {v4}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v4

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    add-float/2addr v0, v3

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    add-float/2addr v0, v2

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    add-float/2addr v0, v1

    div-float/2addr v0, v10

    invoke-static {v0}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v0

    :try_start_1
    new-instance v1, Lcom/google/zxing/common/detector/WhiteRectangleDetector;

    iget-object v2, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    const/16 v3, 0xf

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;-><init>(Lcom/google/zxing/common/BitMatrix;III)V

    invoke-virtual {v1}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->detect()[Lcom/google/zxing/ResultPoint;

    move-result-object v5

    const/4 v1, 0x0

    aget-object v3, v5, v1

    const/4 v1, 0x1

    aget-object v2, v5, v1

    const/4 v1, 0x2

    aget-object v1, v5, v1

    const/4 v6, 0x3

    aget-object v0, v5, v6
    :try_end_1
    .catch Lcom/google/zxing/NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v4

    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v5

    add-float/2addr v4, v5

    div-float/2addr v4, v10

    invoke-static {v4}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v4

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    add-float/2addr v0, v3

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    add-float/2addr v0, v2

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    add-float/2addr v0, v1

    div-float/2addr v0, v10

    invoke-static {v0}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v0

    new-instance v1, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-direct {v1, v4, v0}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    return-object v1

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    div-int/lit8 v4, v1, 0x2

    new-instance v1, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v2, v0, 0x7

    add-int/lit8 v3, v4, -0x7

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v1, v7, v8, v9}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v3

    new-instance v1, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v2, v0, 0x7

    add-int/lit8 v5, v4, 0x7

    invoke-direct {v1, v2, v5}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v1, v7, v8, v8}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v2

    new-instance v1, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v5, v0, -0x7

    add-int/lit8 v6, v4, 0x7

    invoke-direct {v1, v5, v6}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v1, v7, v9, v8}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v1

    new-instance v5, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v0, v0, -0x7

    add-int/lit8 v4, v4, -0x7

    invoke-direct {v5, v0, v4}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v5, v7, v9, v9}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v0

    goto/16 :goto_0

    :catch_1
    move-exception v1

    new-instance v1, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v2, v4, 0x7

    add-int/lit8 v3, v0, -0x7

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v1, v7, v8, v9}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v3

    new-instance v1, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v2, v4, 0x7

    add-int/lit8 v5, v0, 0x7

    invoke-direct {v1, v2, v5}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v1, v7, v8, v8}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v2

    new-instance v1, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v5, v4, -0x7

    add-int/lit8 v6, v0, 0x7

    invoke-direct {v1, v5, v6}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v1, v7, v9, v8}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v1

    new-instance v5, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v4, v4, -0x7

    add-int/lit8 v0, v0, -0x7

    invoke-direct {v5, v4, v0}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v5, v7, v9, v9}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v0

    goto/16 :goto_1
.end method

.method private getMatrixCornerPoints([Lcom/google/zxing/ResultPoint;)[Lcom/google/zxing/ResultPoint;
    .locals 2

    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/google/zxing/aztec/detector/Detector;->getDimension()I

    move-result v1

    int-to-float v1, v1

    invoke-static {p1, v0, v1}, Lcom/google/zxing/aztec/detector/Detector;->expandSquare([Lcom/google/zxing/ResultPoint;FF)[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    return-object v0
.end method

.method private static getRotation([II)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v3, p0

    move v1, v0

    move v2, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget v4, p0, v1

    add-int/lit8 v5, p1, -0x2

    shr-int v5, v4, v5

    shl-int/lit8 v5, v5, 0x1

    and-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v5

    shl-int/lit8 v2, v2, 0x3

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    and-int/lit8 v1, v2, 0x1

    shl-int/lit8 v1, v1, 0xb

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    :goto_1
    const/4 v2, 0x4

    if-ge v0, v2, :cond_2

    sget-object v2, Lcom/google/zxing/aztec/detector/Detector;->EXPECTED_CORNER_BITS:[I

    aget v2, v2, v0

    xor-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    const/4 v3, 0x2

    if-gt v2, v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method private isValid(II)Z
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValid(Lcom/google/zxing/ResultPoint;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    invoke-static {v0}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    invoke-static {v1}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result v0

    return v0
.end method

.method private isWhiteOrBlackRectangle(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)Z
    .locals 7

    const/4 v0, 0x0

    new-instance v1, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {p1}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    new-instance v2, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-virtual {p2}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {p2}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    new-instance v3, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-virtual {p3}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    invoke-virtual {p3}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v5

    add-int/lit8 v5, v5, -0x3

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    new-instance v4, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-virtual {p4}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I

    move-result v5

    add-int/lit8 v5, v5, 0x3

    invoke-virtual {p4}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I

    move-result v6

    add-int/lit8 v6, v6, 0x3

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-direct {p0, v4, v1}, Lcom/google/zxing/aztec/detector/Detector;->getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/aztec/detector/Detector;->getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I

    move-result v1

    if-ne v1, v5, :cond_0

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/aztec/detector/Detector;->getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I

    move-result v1

    if-ne v1, v5, :cond_0

    invoke-direct {p0, v3, v4}, Lcom/google/zxing/aztec/detector/Detector;->getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I

    move-result v1

    if-ne v1, v5, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/common/BitMatrix;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    invoke-static {}, Lcom/google/zxing/common/GridSampler;->getInstance()Lcom/google/zxing/common/GridSampler;

    move-result-object v1

    invoke-direct/range {p0 .. p0}, Lcom/google/zxing/aztec/detector/Detector;->getDimension()I

    move-result v3

    int-to-float v2, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    int-to-float v4, v4

    sub-float v5, v2, v4

    int-to-float v2, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    int-to-float v4, v4

    add-float v7, v2, v4

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v14

    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v15

    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v16

    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v17

    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v18

    invoke-virtual/range {p5 .. p5}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v19

    invoke-virtual/range {p5 .. p5}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v20

    move-object/from16 v2, p1

    move v4, v3

    move v6, v5

    move v8, v5

    move v9, v7

    move v10, v7

    move v11, v5

    move v12, v7

    invoke-virtual/range {v1 .. v20}, Lcom/google/zxing/common/GridSampler;->sampleGrid(Lcom/google/zxing/common/BitMatrix;IIFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    return-object v1
.end method

.method private sampleLine(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)I
    .locals 9

    const/4 v0, 0x0

    invoke-static {p1, p2}, Lcom/google/zxing/aztec/detector/Detector;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v1

    int-to-float v2, p3

    div-float v2, v1, v2

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v5

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    mul-float/2addr v5, v2

    div-float/2addr v5, v1

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v6

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v7

    sub-float/2addr v6, v7

    mul-float/2addr v2, v6

    div-float/2addr v2, v1

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_1

    iget-object v6, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    int-to-float v7, v1

    mul-float/2addr v7, v5

    add-float/2addr v7, v3

    invoke-static {v7}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v7

    int-to-float v8, v1

    mul-float/2addr v8, v2

    add-float/2addr v8, v4

    invoke-static {v8}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    sub-int v7, p3, v1

    add-int/lit8 v7, v7, -0x1

    shl-int/2addr v6, v7

    or-int/2addr v0, v6

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public detect()Lcom/google/zxing/aztec/AztecDetectorResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/zxing/aztec/detector/Detector;->detect(Z)Lcom/google/zxing/aztec/AztecDetectorResult;

    move-result-object v0

    return-object v0
.end method

.method public detect(Z)Lcom/google/zxing/aztec/AztecDetectorResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v3, 0x2

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/zxing/aztec/detector/Detector;->getMatrixCenter()Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/zxing/aztec/detector/Detector;->getBullsEyeCorners(Lcom/google/zxing/aztec/detector/Detector$Point;)[Lcom/google/zxing/ResultPoint;

    move-result-object v6

    if-eqz p1, :cond_0

    aget-object v0, v6, v2

    aget-object v1, v6, v3

    aput-object v1, v6, v2

    aput-object v0, v6, v3

    :cond_0
    invoke-direct {p0, v6}, Lcom/google/zxing/aztec/detector/Detector;->extractParameters([Lcom/google/zxing/ResultPoint;)V

    iget-object v1, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    rem-int/lit8 v0, v0, 0x4

    aget-object v2, v6, v0

    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x4

    aget-object v3, v6, v0

    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    add-int/lit8 v0, v0, 0x2

    rem-int/lit8 v0, v0, 0x4

    aget-object v4, v6, v0

    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit8 v0, v0, 0x4

    aget-object v5, v6, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/aztec/detector/Detector;->sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    invoke-direct {p0, v6}, Lcom/google/zxing/aztec/detector/Detector;->getMatrixCornerPoints([Lcom/google/zxing/ResultPoint;)[Lcom/google/zxing/ResultPoint;

    move-result-object v2

    new-instance v0, Lcom/google/zxing/aztec/AztecDetectorResult;

    iget-boolean v3, p0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    iget v4, p0, Lcom/google/zxing/aztec/detector/Detector;->nbDataBlocks:I

    iget v5, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/aztec/AztecDetectorResult;-><init>(Lcom/google/zxing/common/BitMatrix;[Lcom/google/zxing/ResultPoint;ZII)V

    return-object v0
.end method
