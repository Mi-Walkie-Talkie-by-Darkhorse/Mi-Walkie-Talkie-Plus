.class public Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;
.super Lorg/bouncycastle/crypto/BufferedBlockCipher;


# static fields
.field public static final CS1:I = 0x1

.field public static final CS2:I = 0x2

.field public static final CS3:I = 0x3


# instance fields
.field private final blockSize:I

.field private final type:I


# direct methods
.method public constructor <init>(ILorg/bouncycastle/crypto/BlockCipher;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/BufferedBlockCipher;-><init>()V

    iput p1, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->type:I

    new-instance v0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-direct {v0, p2}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {p2}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->blockSize:I

    iget v0, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->blockSize:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v2, 0x0

    iget v0, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    add-int/2addr v0, p2

    array-length v1, p1

    if-le v0, v1, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "output buffer to small in doFinal"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    iget v0, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    sub-int v3, v0, v1

    new-array v4, v1, [B

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    if-ge v0, v1, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "need at least one block of input for NISTCTS"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    if-le v0, v1, :cond_5

    new-array v0, v1, [B

    iget v5, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->type:I

    if-eq v5, v7, :cond_2

    iget v5, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->type:I

    if-ne v5, v6, :cond_4

    :cond_2
    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v6, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    invoke-interface {v5, v6, v2, v4, v2}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    invoke-static {v5, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v5, v0, v2, v0, v2}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iget v5, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->type:I

    if-ne v5, v7, :cond_3

    if-ne v3, v1, :cond_3

    invoke-static {v4, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, p2

    invoke-static {v0, v2, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget v0, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->reset()V

    return v0

    :cond_3
    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v0, p2, v1

    invoke-static {v4, v2, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    invoke-static {v5, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v5, v4, v2, v4, v2}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    invoke-static {v4, v2, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    iget v5, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    sub-int/2addr v5, v3

    invoke-static {v4, v5, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v4, v0, v2, v0, v2}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    add-int/2addr v3, p2

    invoke-static {v0, v2, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    invoke-interface {v0, v3, v2, v4, v2}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    invoke-static {v4, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_6
    iget v0, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    if-ge v0, v1, :cond_7

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "need at least one block of input for CTS"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-array v5, v1, [B

    iget v0, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    if-le v0, v1, :cond_e

    iget v0, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->type:I

    if-eq v0, v6, :cond_8

    iget v0, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->type:I

    if-ne v0, v7, :cond_b

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    array-length v0, v0

    iget v6, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    sub-int/2addr v0, v6

    rem-int/2addr v0, v1

    if-eqz v0, :cond_b

    :cond_8
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    instance-of v0, v0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    check-cast v0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v0

    iget-object v6, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    invoke-interface {v0, v6, v2, v4, v2}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    :goto_1
    move v0, v1

    :goto_2
    iget v6, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    if-eq v0, v6, :cond_a

    sub-int v6, v0, v1

    sub-int v7, v0, v1

    aget-byte v7, v4, v7

    iget-object v8, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    aget-byte v8, v8, v0

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v6, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    invoke-interface {v0, v6, v2, v4, v2}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    goto :goto_1

    :cond_a
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    invoke-static {v0, v1, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0, v4, v2, p1, p2}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    add-int v0, p2, v1

    invoke-static {v5, v2, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    check-cast v0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v0

    iget-object v6, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    iget v7, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    sub-int/2addr v7, v1

    invoke-interface {v0, v6, v7, v5, v2}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eq v3, v1, :cond_c

    sub-int v0, v1, v3

    invoke-static {v5, v3, v4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_c
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0, v4, v2, v4, v2}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    invoke-static {v4, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v2

    :goto_3
    if-eq v0, v3, :cond_d

    aget-byte v4, v5, v0

    iget-object v6, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    aget-byte v6, v6, v0

    xor-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_d
    add-int v0, p2, v1

    invoke-static {v5, v2, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    invoke-interface {v0, v3, v2, v4, v2}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    invoke-static {v4, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0
.end method

.method public getOutputSize(I)I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    add-int/2addr v0, p1

    return v0
.end method

.method public getUpdateOutputSize(I)I
    .locals 2

    iget v0, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    array-length v1, v1

    rem-int v1, v0, v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    array-length v1, v1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public processByte(B[BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    array-length v2, v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    invoke-interface {v0, v2, v1, p2, p3}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    iget v3, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->blockSize:I

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    iget v5, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->blockSize:I

    invoke-static {v2, v3, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->blockSize:I

    iput v1, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    iget v2, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

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
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->getBlockSize()I

    move-result v2

    invoke-virtual {p0, p3}, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->getUpdateOutputSize(I)I

    move-result v0

    if-lez v0, :cond_1

    add-int/2addr v0, p5

    array-length v3, p4

    if-le v0, v3, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    array-length v0, v0

    iget v3, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    sub-int v3, v0, v3

    if-le p3, v3, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    iget v4, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    invoke-static {p1, p2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    invoke-interface {v0, v4, v1, p4, p5}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v0

    add-int/2addr v0, v1

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    invoke-static {v4, v2, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v2, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    sub-int/2addr p3, v3

    add-int/2addr p2, v3

    :goto_0
    if-le p3, v2, :cond_3

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    iget v4, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    invoke-static {p1, p2, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    add-int v5, p5, v0

    invoke-interface {v3, v4, v1, p4, v5}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    invoke-static {v3, v2, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr p3, v2

    add-int/2addr p2, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :cond_3
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    iget v2, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/bouncycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    return v0
.end method
