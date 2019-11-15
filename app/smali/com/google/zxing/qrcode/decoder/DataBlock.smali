.class final Lcom/google/zxing/qrcode/decoder/DataBlock;
.super Ljava/lang/Object;
.source "DataBlock.java"


# instance fields
.field private final codewords:[B

.field private final numDataCodewords:I


# direct methods
.method private constructor <init>(I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/zxing/qrcode/decoder/DataBlock;->numDataCodewords:I

    iput-object p2, p0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    return-void
.end method

.method static getDataBlocks([BLcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)[Lcom/google/zxing/qrcode/decoder/DataBlock;
    .locals 13

    const/4 v1, 0x0

    array-length v0, p0

    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v2

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/zxing/qrcode/decoder/Version;->getECBlocksForLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getECBlocks()[Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v6

    array-length v3, v6

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v6, v0

    invoke-virtual {v4}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getCount()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-array v8, v2, [Lcom/google/zxing/qrcode/decoder/DataBlock;

    array-length v7, v6

    move v4, v1

    move v0, v1

    :goto_1
    if-ge v4, v7, :cond_3

    aget-object v9, v6, v4

    move v2, v0

    move v0, v1

    :goto_2
    invoke-virtual {v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-virtual {v9}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getDataCodewords()I

    move-result v10

    invoke-virtual {v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getECCodewordsPerBlock()I

    move-result v3

    add-int v11, v3, v10

    add-int/lit8 v3, v2, 0x1

    new-instance v12, Lcom/google/zxing/qrcode/decoder/DataBlock;

    new-array v11, v11, [B

    invoke-direct {v12, v10, v11}, Lcom/google/zxing/qrcode/decoder/DataBlock;-><init>(I[B)V

    aput-object v12, v8, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v0, v2

    goto :goto_1

    :cond_3
    aget-object v2, v8, v1

    iget-object v2, v2, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    array-length v3, v2

    array-length v2, v8

    add-int/lit8 v2, v2, -0x1

    :goto_3
    if-ltz v2, :cond_4

    aget-object v4, v8, v2

    iget-object v4, v4, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    array-length v4, v4

    if-eq v4, v3, :cond_4

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getECCodewordsPerBlock()I

    move-result v2

    sub-int/2addr v3, v2

    move v6, v1

    move v2, v1

    :goto_4
    if-ge v6, v3, :cond_6

    move v4, v2

    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_5

    aget-object v5, v8, v2

    iget-object v9, v5, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p0, v4

    aput-byte v4, v9, v6

    add-int/lit8 v2, v2, 0x1

    move v4, v5

    goto :goto_5

    :cond_5
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v2, v4

    goto :goto_4

    :cond_6
    move v4, v7

    :goto_6
    if-ge v4, v0, :cond_7

    aget-object v5, v8, v4

    iget-object v6, v5, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    add-int/lit8 v5, v2, 0x1

    aget-byte v2, p0, v2

    aput-byte v2, v6, v3

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v5

    goto :goto_6

    :cond_7
    aget-object v4, v8, v1

    iget-object v4, v4, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    array-length v9, v4

    :goto_7
    if-ge v3, v9, :cond_a

    move v4, v1

    move v5, v2

    :goto_8
    if-ge v4, v0, :cond_9

    if-ge v4, v7, :cond_8

    move v2, v3

    :goto_9
    aget-object v6, v8, v4

    iget-object v10, v6, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, p0, v5

    aput-byte v5, v10, v2

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v5, v6

    goto :goto_8

    :cond_8
    add-int/lit8 v2, v3, 0x1

    goto :goto_9

    :cond_9
    add-int/lit8 v3, v3, 0x1

    move v2, v5

    goto :goto_7

    :cond_a
    return-object v8
.end method


# virtual methods
.method getCodewords()[B
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    return-object v0
.end method

.method getNumDataCodewords()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/qrcode/decoder/DataBlock;->numDataCodewords:I

    return v0
.end method
