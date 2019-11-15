.class final Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
.super Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
.source "DetectionResultRowIndicatorColumn.java"


# instance fields
.field private final isLeft:Z


# direct methods
.method constructor <init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;-><init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;)V

    iput-boolean p2, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    return-void
.end method

.method private adjustIncompleteIndicatorColumnRowNumbers(Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)V
    .locals 10

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v1

    iget-boolean v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getTopLeft()Lcom/google/zxing/ResultPoint;

    move-result-object v0

    :goto_0
    iget-boolean v3, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getBottomLeft()Lcom/google/zxing/ResultPoint;

    move-result-object v1

    :goto_1
    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->imageRowToCodewordIndex(I)I

    move-result v0

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->imageRowToCodewordIndex(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v6

    const/4 v3, -0x1

    const/4 v1, 0x0

    move v4, v0

    move v0, v1

    move v1, v2

    :goto_2
    if-ge v4, v5, :cond_6

    aget-object v7, v6, v4

    if-eqz v7, :cond_0

    aget-object v7, v6, v4

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/Codeword;->setRowNumberAsRowIndicatorColumn()V

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v8

    sub-int/2addr v8, v3

    if-nez v8, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_0
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getTopRight()Lcom/google/zxing/ResultPoint;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getBottomRight()Lcom/google/zxing/ResultPoint;

    move-result-object v1

    goto :goto_1

    :cond_3
    if-ne v8, v2, :cond_4

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v1

    move v3, v1

    move v1, v0

    move v0, v2

    goto :goto_3

    :cond_4
    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v8

    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v9

    if-lt v8, v9, :cond_5

    const/4 v7, 0x0

    aput-object v7, v6, v4

    goto :goto_3

    :cond_5
    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v0

    move v3, v0

    move v0, v2

    goto :goto_3

    :cond_6
    return-void
.end method

.method private removeIncorrectCodewords([Lcom/google/zxing/pdf417/decoder/Codeword;Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    aget-object v1, p1, v0

    aget-object v2, p1, v0

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getValue()I

    move-result v2

    rem-int/lit8 v2, v2, 0x1e

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v1

    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v3

    if-le v1, v3, :cond_1

    aput-object v4, p1, v0

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v3, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    if-nez v3, :cond_2

    add-int/lit8 v1, v1, 0x2

    :cond_2
    rem-int/lit8 v1, v1, 0x3

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    mul-int/lit8 v1, v2, 0x3

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCountUpperPart()I

    move-result v2

    if-eq v1, v2, :cond_0

    aput-object v4, p1, v0

    goto :goto_1

    :pswitch_1
    div-int/lit8 v1, v2, 0x3

    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getErrorCorrectionLevel()I

    move-result v3

    if-ne v1, v3, :cond_3

    rem-int/lit8 v1, v2, 0x3

    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCountLowerPart()I

    move-result v2

    if-eq v1, v2, :cond_0

    :cond_3
    aput-object v4, p1, v0

    goto :goto_1

    :pswitch_2
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getColumnCount()I

    move-result v2

    if-eq v1, v2, :cond_0

    aput-object v4, p1, v0

    goto :goto_1

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setRowNumbers()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/Codeword;->setRowNumberAsRowIndicatorColumn()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method adjustCompleteIndicatorColumnRowNumbers(Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)V
    .locals 13

    const/4 v12, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v9

    invoke-direct {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->setRowNumbers()V

    invoke-direct {p0, v9, p1}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->removeIncorrectCodewords([Lcom/google/zxing/pdf417/decoder/Codeword;Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)V

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v1

    iget-boolean v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getTopLeft()Lcom/google/zxing/ResultPoint;

    move-result-object v0

    :goto_0
    iget-boolean v4, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getBottomLeft()Lcom/google/zxing/ResultPoint;

    move-result-object v1

    :goto_1
    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->imageRowToCodewordIndex(I)I

    move-result v0

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->imageRowToCodewordIndex(I)I

    move-result v10

    const/4 v5, -0x1

    move v8, v0

    move v1, v3

    move v4, v2

    :goto_2
    if-ge v8, v10, :cond_b

    aget-object v0, v9, v8

    if-eqz v0, :cond_c

    aget-object v11, v9, v8

    invoke-virtual {v11}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v0

    sub-int/2addr v0, v5

    if-nez v0, :cond_2

    add-int/lit8 v0, v1, 0x1

    move v1, v4

    move v4, v5

    :goto_3
    add-int/lit8 v5, v8, 0x1

    move v8, v5

    move v5, v4

    move v4, v1

    move v1, v0

    goto :goto_2

    :cond_0
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getTopRight()Lcom/google/zxing/ResultPoint;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getBottomRight()Lcom/google/zxing/ResultPoint;

    move-result-object v1

    goto :goto_1

    :cond_2
    if-ne v0, v2, :cond_3

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v11}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v1

    move v4, v1

    move v1, v0

    move v0, v2

    goto :goto_3

    :cond_3
    if-ltz v0, :cond_4

    invoke-virtual {v11}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v6

    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v7

    if-ge v6, v7, :cond_4

    if-le v0, v8, :cond_5

    :cond_4
    aput-object v12, v9, v8

    move v0, v1

    move v1, v4

    move v4, v5

    goto :goto_3

    :cond_5
    const/4 v6, 0x2

    if-le v4, v6, :cond_6

    add-int/lit8 v6, v4, -0x2

    mul-int/2addr v0, v6

    move v7, v0

    :goto_4
    if-lt v7, v8, :cond_7

    move v0, v2

    :goto_5
    move v6, v2

    :goto_6
    if-gt v6, v7, :cond_9

    if-nez v0, :cond_9

    sub-int v0, v8, v6

    aget-object v0, v9, v0

    if-eqz v0, :cond_8

    move v0, v2

    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_6
    move v7, v0

    goto :goto_4

    :cond_7
    move v0, v3

    goto :goto_5

    :cond_8
    move v0, v3

    goto :goto_7

    :cond_9
    if-eqz v0, :cond_a

    aput-object v12, v9, v8

    move v0, v1

    move v1, v4

    move v4, v5

    goto :goto_3

    :cond_a
    invoke-virtual {v11}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v0

    move v1, v4

    move v4, v0

    move v0, v2

    goto :goto_3

    :cond_b
    return-void

    :cond_c
    move v0, v1

    move v1, v4

    move v4, v5

    goto :goto_3
.end method

.method getBarcodeMetadata()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    .locals 11

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v3

    new-instance v4, Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    invoke-direct {v4}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;-><init>()V

    new-instance v5, Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    invoke-direct {v5}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;-><init>()V

    new-instance v6, Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    invoke-direct {v6}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;-><init>()V

    new-instance v7, Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    invoke-direct {v7}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;-><init>()V

    array-length v8, v3

    move v1, v2

    :goto_0
    if-ge v1, v8, :cond_2

    aget-object v0, v3, v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/Codeword;->setRowNumberAsRowIndicatorColumn()V

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/Codeword;->getValue()I

    move-result v9

    rem-int/lit8 v9, v9, 0x1e

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v0

    iget-boolean v10, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    if-nez v10, :cond_0

    add-int/lit8 v0, v0, 0x2

    :cond_0
    rem-int/lit8 v0, v0, 0x3

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :pswitch_0
    mul-int/lit8 v0, v9, 0x3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v5, v0}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    goto :goto_1

    :pswitch_1
    div-int/lit8 v0, v9, 0x3

    invoke-virtual {v7, v0}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    rem-int/lit8 v0, v9, 0x3

    invoke-virtual {v6, v0}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    goto :goto_1

    :pswitch_2
    add-int/lit8 v0, v9, 0x1

    invoke-virtual {v4, v0}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_3

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_3

    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_3

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_3

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v0

    aget v0, v0, v2

    if-lez v0, :cond_3

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v0

    aget v0, v0, v2

    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v1

    aget v1, v1, v2

    add-int/2addr v0, v1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v0

    aget v0, v0, v2

    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v1

    aget v1, v1, v2

    add-int/2addr v0, v1

    const/16 v1, 0x5a

    if-le v0, v1, :cond_4

    :cond_3
    const/4 v0, 0x0

    :goto_2
    return-object v0

    :cond_4
    new-instance v0, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v1

    aget v1, v1, v2

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v4

    aget v4, v4, v2

    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v5

    aget v5, v5, v2

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v6

    aget v2, v6, v2

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;-><init>(IIII)V

    invoke-direct {p0, v3, v0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->removeIncorrectCodewords([Lcom/google/zxing/pdf417/decoder/Codeword;Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method getRowHeights()[I
    .locals 6

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBarcodeMetadata()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    invoke-direct {p0, v0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->adjustIncompleteIndicatorColumnRowNumbers(Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)V

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v0

    new-array v0, v0, [I

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v4

    array-length v5, v0

    if-ge v4, v5, :cond_2

    aget v5, v0, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v0, v4

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method isLeft()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IsLeft: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
