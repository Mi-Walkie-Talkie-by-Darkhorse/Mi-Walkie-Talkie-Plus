.class public Lorg/bouncycastle/crypto/modes/CBCBlockCipher;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# instance fields
.field private IV:[B

.field private blockSize:I

.field private cbcNextV:[B

.field private cbcV:[B

.field private cipher:Lorg/bouncycastle/crypto/BlockCipher;

.field private encrypting:Z


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    iget v0, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->IV:[B

    iget v0, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    iget v0, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cbcNextV:[B

    return-void
.end method

.method private decryptBlock([BI[BI)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    iget v1, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    add-int/2addr v1, p2

    array-length v2, p1

    if-le v1, v2, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cbcNextV:[B

    iget v2, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    invoke-static {p1, p2, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v1

    :goto_0
    iget v2, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    if-ge v0, v2, :cond_1

    add-int v2, p4, v0

    aget-byte v3, p3, v2

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    aget-byte v4, v4, v0

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cbcNextV:[B

    iput-object v2, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cbcNextV:[B

    return v1
.end method

.method private encryptBlock([BI[BI)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    add-int/2addr v0, p2

    array-length v2, p1

    if-le v0, v2, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v1

    :goto_0
    iget v2, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    aget-byte v3, v2, v0

    add-int v4, p2, v0

    aget-byte v4, p1, v4

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    invoke-interface {v0, v2, v1, p3, p4}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    array-length v3, v3

    invoke-static {p3, p4, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v0
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/CBC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->encrypting:Z

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->encrypting:Z

    instance-of v1, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v1, :cond_3

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    array-length v2, v1

    iget v3, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    if-eq v2, v3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "initialisation vector must be the same length as block size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->IV:[B

    array-length v3, v1

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->reset()V

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eq v0, p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot change encrypting state without providing key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->reset()V

    if-eqz p2, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_0

    :cond_4
    if-eq v0, p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot change encrypting state without providing key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processBlock([BI[BI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->encrypting:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->encryptBlock([BI[BI)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->decryptBlock([BI[BI)I

    move-result v0

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->IV:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->IV:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cbcNextV:[B

    invoke-static {v0, v3}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->reset()V

    return-void
.end method
