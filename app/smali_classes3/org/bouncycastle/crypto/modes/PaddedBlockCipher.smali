.class public Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;
.super Lorg/bouncycastle/crypto/BufferedBlockCipher;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/BufferedBlockCipher;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    if-ne v0, v2, :cond_6

    mul-int/lit8 v0, v2, 0x2

    add-int/2addr v0, p2

    array-length v3, p1

    if-le v0, v3, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    invoke-interface {v0, v3, v1, p1, p2}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v0

    iput v1, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    :goto_0
    iget v3, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    sub-int v3, v2, v3

    int-to-byte v3, v3

    :goto_1
    iget v4, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    if-ge v4, v2, :cond_1

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    iget v5, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    aput-byte v3, v4, v5

    iget v4, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    add-int v4, p2, v0

    invoke-interface {v2, v3, v1, p1, v4}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v1

    add-int/2addr v0, v1

    :goto_2
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->reset()V

    return v0

    :cond_2
    iget v0, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    invoke-interface {v0, v3, v1, v4, v1}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v0

    iput v1, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    add-int/lit8 v4, v2, -0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    if-ltz v3, :cond_3

    if-le v3, v2, :cond_5

    :cond_3
    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "pad block corrupted"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "last block incomplete in decryption"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    sub-int/2addr v0, v3

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    invoke-static {v2, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public getOutputSize(I)I
    .locals 2

    iget v0, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    array-length v1, v1

    rem-int v1, v0, v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->forEncryption:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    array-length v1, v1

    add-int/2addr v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    array-length v1, v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getUpdateOutputSize(I)I
    .locals 2

    iget v0, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    array-length v1, v1

    rem-int v1, v0, v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    array-length v1, v1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public processByte(B[BI)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    array-length v2, v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    invoke-interface {v0, v2, v1, p2, p3}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v0

    iput v1, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    iget v2, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    aput-byte p1, v1, v2

    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public processBytes([BII[BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v1, 0x0

    if-gez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t have a negative input length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->getBlockSize()I

    move-result v3

    invoke-virtual {p0, p3}, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->getUpdateOutputSize(I)I

    move-result v0

    if-lez v0, :cond_1

    add-int/2addr v0, p5

    array-length v2, p4

    if-le v0, v2, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    array-length v0, v0

    iget v2, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    sub-int v2, v0, v2

    if-le p3, v2, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    iget v4, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    invoke-static {p1, p2, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    invoke-interface {v0, v4, v1, p4, p5}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v0

    add-int/2addr v0, v1

    iput v1, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    sub-int v1, p3, v2

    add-int/2addr v2, p2

    :goto_0
    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    array-length v4, v4

    if-le v1, v4, :cond_3

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    add-int v5, p5, v0

    invoke-interface {v4, p1, v2, p4, v5}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v4

    add-int/2addr v0, v4

    sub-int/2addr v1, v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_2
    move v0, v1

    move v2, p2

    move v1, p3

    :cond_3
    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    iget v4, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/bouncycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    return v0
.end method
