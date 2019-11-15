.class public Lorg/bouncycastle/crypto/modes/CFBBlockCipher;
.super Lorg/bouncycastle/crypto/StreamBlockCipher;


# instance fields
.field private IV:[B

.field private blockSize:I

.field private byteCount:I

.field private cfbOutV:[B

.field private cfbV:[B

.field private cipher:Lorg/bouncycastle/crypto/BlockCipher;

.field private encrypting:Z

.field private inBuf:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;I)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/StreamBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    div-int/lit8 v0, p2, 0x8

    iput v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbOutV:[B

    iget v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->inBuf:[B

    return-void
.end method

.method private decryptByte(B)B
    .locals 7

    const/4 v6, 0x0

    iget v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbOutV:[B

    invoke-interface {v0, v1, v6, v2, v6}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->inBuf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    aput-byte p1, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbOutV:[B

    iget v1, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    aget-byte v0, v0, v1

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    iget v1, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    iget v2, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    if-ne v1, v2, :cond_1

    iput v6, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    iget v2, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    array-length v4, v4

    iget v5, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    sub-int/2addr v4, v5

    invoke-static {v1, v2, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->inBuf:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    array-length v3, v3

    iget v4, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    sub-int/2addr v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    invoke-static {v1, v6, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return v0
.end method

.method private encryptByte(B)B
    .locals 7

    const/4 v6, 0x0

    iget v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbOutV:[B

    invoke-interface {v0, v1, v6, v2, v6}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbOutV:[B

    iget v1, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    aget-byte v0, v0, v1

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->inBuf:[B

    iget v2, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    aput-byte v0, v1, v2

    iget v1, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    iget v2, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    if-ne v1, v2, :cond_1

    iput v6, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    iget v2, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    array-length v4, v4

    iget v5, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    sub-int/2addr v4, v5

    invoke-static {v1, v2, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->inBuf:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    array-length v3, v3

    iget v4, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    sub-int/2addr v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    invoke-static {v1, v6, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return v0
.end method


# virtual methods
.method protected calculateByte(B)B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->encrypting:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->encryptByte(B)B

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->decryptByte(B)B

    move-result v0

    goto :goto_0
.end method

.method public decryptBlock([BI[BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget v3, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->processBytes([BII[BI)I

    iget v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    return v0
.end method

.method public encryptBlock([BI[BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget v3, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->processBytes([BII[BI)I

    iget v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/CFB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    return v0
.end method

.method public getCurrentIV()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v1, 0x0

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->encrypting:Z

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_3

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v2

    array-length v0, v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    array-length v3, v3

    if-ge v0, v3, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    array-length v3, v3

    array-length v4, v2

    sub-int/2addr v3, v4

    array-length v4, v2

    invoke-static {v2, v1, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v1

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    array-length v3, v3

    array-length v4, v2

    sub-int/2addr v3, v4

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    aput-byte v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    array-length v3, v3

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->reset()V

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->reset()V

    if-eqz p2, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0, v5, p2}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_1
.end method

.method public processBlock([BI[BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget v3, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->processBytes([BII[BI)I

    iget v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    return v0
.end method

.method public reset()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->inBuf:[B

    invoke-static {v0, v3}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    iput v3, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->reset()V

    return-void
.end method
