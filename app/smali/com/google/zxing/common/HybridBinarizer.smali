.class public final Lcom/google/zxing/common/HybridBinarizer;
.super Lcom/google/zxing/common/GlobalHistogramBinarizer;
.source "HybridBinarizer.java"


# static fields
.field private static final BLOCK_SIZE:I = 0x8

.field private static final BLOCK_SIZE_MASK:I = 0x7

.field private static final BLOCK_SIZE_POWER:I = 0x3

.field private static final MINIMUM_DIMENSION:I = 0x28

.field private static final MIN_DYNAMIC_RANGE:I = 0x18


# instance fields
.field private matrix:Lcom/google/zxing/common/BitMatrix;


# direct methods
.method public constructor <init>(Lcom/google/zxing/LuminanceSource;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/zxing/common/GlobalHistogramBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    return-void
.end method

.method private static calculateBlackPoints([BIIII)[[I
    .locals 17

    add-int/lit8 v4, p4, -0x8

    add-int/lit8 v6, p3, -0x8

    move/from16 v0, p2

    move/from16 v1, p1

    filled-new-array {v0, v1}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    const/4 v3, 0x0

    move v15, v3

    :goto_0
    move/from16 v0, p2

    if-ge v15, v0, :cond_9

    shl-int/lit8 v3, v15, 0x3

    if-le v3, v4, :cond_0

    move v3, v4

    :cond_0
    const/4 v5, 0x0

    move v14, v5

    :goto_1
    move/from16 v0, p1

    if-ge v14, v0, :cond_8

    shl-int/lit8 v5, v14, 0x3

    if-le v5, v6, :cond_1

    move v5, v6

    :cond_1
    const/4 v10, 0x0

    const/16 v11, 0xff

    const/4 v7, 0x0

    const/4 v9, 0x0

    mul-int v8, v3, p3

    add-int/2addr v8, v5

    :goto_2
    const/16 v5, 0x8

    if-ge v9, v5, :cond_6

    const/4 v5, 0x0

    move v12, v5

    :goto_3
    const/16 v5, 0x8

    if-ge v12, v5, :cond_2

    add-int v5, v8, v12

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    add-int v13, v10, v5

    if-ge v5, v11, :cond_c

    move v10, v5

    :goto_4
    if-le v5, v7, :cond_b

    :goto_5
    add-int/lit8 v7, v12, 0x1

    move v12, v7

    move v11, v10

    move v7, v5

    move v10, v13

    goto :goto_3

    :cond_2
    sub-int v5, v7, v11

    const/16 v12, 0x18

    if-le v5, v12, :cond_4

    add-int/lit8 v9, v9, 0x1

    add-int v5, v8, p3

    move v8, v9

    move v9, v10

    :goto_6
    const/16 v10, 0x8

    if-ge v8, v10, :cond_5

    const/4 v10, 0x0

    move/from16 v16, v10

    move v10, v9

    move/from16 v9, v16

    :goto_7
    const/16 v12, 0x8

    if-ge v9, v12, :cond_3

    add-int v12, v5, v9

    aget-byte v12, p0, v12

    and-int/lit16 v12, v12, 0xff

    add-int/2addr v10, v12

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_3
    add-int/lit8 v8, v8, 0x1

    add-int v5, v5, p3

    move v9, v10

    goto :goto_6

    :cond_4
    move v5, v8

    move v8, v9

    move v9, v10

    :cond_5
    add-int/lit8 v10, v8, 0x1

    add-int v8, v5, p3

    move/from16 v16, v10

    move v10, v9

    move/from16 v9, v16

    goto :goto_2

    :cond_6
    shr-int/lit8 v5, v10, 0x6

    sub-int/2addr v7, v11

    const/16 v8, 0x18

    if-gt v7, v8, :cond_7

    div-int/lit8 v7, v11, 0x2

    if-lez v15, :cond_a

    if-lez v14, :cond_a

    add-int/lit8 v5, v15, -0x1

    aget-object v5, v2, v5

    aget v5, v5, v14

    aget-object v8, v2, v15

    add-int/lit8 v9, v14, -0x1

    aget v8, v8, v9

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v5, v8

    add-int/lit8 v8, v15, -0x1

    aget-object v8, v2, v8

    add-int/lit8 v9, v14, -0x1

    aget v8, v8, v9

    add-int/2addr v5, v8

    div-int/lit8 v5, v5, 0x4

    if-ge v11, v5, :cond_a

    :cond_7
    :goto_8
    aget-object v7, v2, v15

    aput v5, v7, v14

    add-int/lit8 v5, v14, 0x1

    move v14, v5

    goto/16 :goto_1

    :cond_8
    add-int/lit8 v3, v15, 0x1

    move v15, v3

    goto/16 :goto_0

    :cond_9
    return-object v2

    :cond_a
    move v5, v7

    goto :goto_8

    :cond_b
    move v5, v7

    goto :goto_5

    :cond_c
    move v10, v11

    goto :goto_4
.end method

.method private static calculateThresholdForBlock([BIIII[[ILcom/google/zxing/common/BitMatrix;)V
    .locals 13

    add-int/lit8 v6, p4, -0x8

    add-int/lit8 v7, p3, -0x8

    const/4 v0, 0x0

    move v9, v0

    :goto_0
    if-ge v9, p2, :cond_4

    shl-int/lit8 v2, v9, 0x3

    if-le v2, v6, :cond_0

    move v2, v6

    :cond_0
    const/4 v0, 0x2

    add-int/lit8 v1, p2, -0x3

    invoke-static {v9, v0, v1}, Lcom/google/zxing/common/HybridBinarizer;->cap(III)I

    move-result v10

    const/4 v0, 0x0

    move v8, v0

    :goto_1
    if-ge v8, p1, :cond_3

    shl-int/lit8 v1, v8, 0x3

    if-le v1, v7, :cond_1

    move v1, v7

    :cond_1
    const/4 v0, 0x2

    add-int/lit8 v3, p1, -0x3

    invoke-static {v8, v0, v3}, Lcom/google/zxing/common/HybridBinarizer;->cap(III)I

    move-result v4

    const/4 v3, 0x0

    const/4 v0, -0x2

    :goto_2
    const/4 v5, 0x2

    if-gt v0, v5, :cond_2

    add-int v5, v10, v0

    aget-object v5, p5, v5

    add-int/lit8 v11, v4, -0x2

    aget v11, v5, v11

    add-int/lit8 v12, v4, -0x1

    aget v12, v5, v12

    add-int/2addr v11, v12

    aget v12, v5, v4

    add-int/2addr v11, v12

    add-int/lit8 v12, v4, 0x1

    aget v12, v5, v12

    add-int/2addr v11, v12

    add-int/lit8 v12, v4, 0x2

    aget v5, v5, v12

    add-int/2addr v5, v11

    add-int/2addr v3, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    div-int/lit8 v3, v3, 0x19

    move-object v0, p0

    move/from16 v4, p3

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/zxing/common/HybridBinarizer;->thresholdBlock([BIIIILcom/google/zxing/common/BitMatrix;)V

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static cap(III)I
    .locals 0

    if-ge p0, p1, :cond_0

    :goto_0
    return p1

    :cond_0
    if-le p0, p2, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method private static thresholdBlock([BIIIILcom/google/zxing/common/BitMatrix;)V
    .locals 7

    const/16 v6, 0x8

    const/4 v1, 0x0

    mul-int v0, p2, p4

    add-int/2addr v0, p1

    move v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v6, :cond_2

    move v0, v1

    :goto_1
    if-ge v0, v6, :cond_1

    add-int v4, v2, v0

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    if-gt v4, p3, :cond_0

    add-int v4, p1, v0

    add-int v5, p2, v3

    invoke-virtual {p5, v4, v5}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    add-int v0, v2, p4

    move v2, v0

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public createBinarizer(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/Binarizer;
    .locals 1

    new-instance v0, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v0, p1}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    return-object v0
.end method

.method public getBlackMatrix()Lcom/google/zxing/common/BitMatrix;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/16 v1, 0x28

    iget-object v0, p0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/common/HybridBinarizer;->getLuminanceSource()Lcom/google/zxing/LuminanceSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/google/zxing/LuminanceSource;->getHeight()I

    move-result v4

    if-lt v3, v1, :cond_3

    if-lt v4, v1, :cond_3

    invoke-virtual {v0}, Lcom/google/zxing/LuminanceSource;->getMatrix()[B

    move-result-object v0

    shr-int/lit8 v1, v3, 0x3

    and-int/lit8 v2, v3, 0x7

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    shr-int/lit8 v2, v4, 0x3

    and-int/lit8 v5, v4, 0x7

    if-eqz v5, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/zxing/common/HybridBinarizer;->calculateBlackPoints([BIIII)[[I

    move-result-object v5

    new-instance v6, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v6, v3, v4}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    invoke-static/range {v0 .. v6}, Lcom/google/zxing/common/HybridBinarizer;->calculateThresholdForBlock([BIIII[[ILcom/google/zxing/common/BitMatrix;)V

    iput-object v6, p0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    :goto_1
    iget-object v0, p0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    goto :goto_0

    :cond_3
    invoke-super {p0}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    goto :goto_1
.end method
