.class public Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# instance fields
.field private FR:[B

.field private FRE:[B

.field private IV:[B

.field private blockSize:I

.field private cipher:Lorg/bouncycastle/crypto/BlockCipher;

.field private count:I

.field private forEncryption:Z

.field private inlineIv:Z

.field private tmp:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iput-boolean p2, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->inlineIv:Z

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    iget v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->IV:[B

    iget v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FRE:[B

    iget v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->tmp:[B

    return-void
.end method

.method private decryptBlock([BI[BI)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/2addr v0, p2

    array-length v2, p1

    if-le v0, v2, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/2addr v0, p4

    array-length v2, p3

    if-le v0, v2, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FRE:[B

    invoke-interface {v0, v2, v1, v3, v1}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move v0, v1

    :goto_0
    iget v2, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    if-ge v0, v2, :cond_2

    add-int v2, p4, v0

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    invoke-direct {p0, v3, v0}, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->encryptByte(BI)B

    move-result v3

    aput-byte v3, p3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    add-int v2, p2, v1

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    return v0
.end method

.method private decryptBlockWithIV([BI[BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/2addr v0, p2

    array-length v2, p1

    if-le v0, v2, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/2addr v0, p4

    array-length v2, p3

    if-le v0, v2, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->count:I

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    iget v2, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FRE:[B

    invoke-interface {v0, v2, v1, v3, v1}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iget v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->count:I

    iget v2, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->count:I

    :goto_1
    return v1

    :cond_3
    iget v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->count:I

    iget v2, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->tmp:[B

    iget v2, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget v3, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v3, v3, -0x2

    invoke-static {v0, v5, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget v2, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v2, v2, -0x2

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->tmp:[B

    aget-byte v3, v3, v1

    aput-byte v3, v0, v2

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget v2, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->tmp:[B

    aget-byte v3, v3, v4

    aput-byte v3, v0, v2

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FRE:[B

    invoke-interface {v0, v2, v1, v3, v1}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move v0, v1

    :goto_2
    iget v2, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v2, v2, -0x2

    if-ge v0, v2, :cond_4

    add-int v2, p4, v0

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->tmp:[B

    add-int/lit8 v4, v0, 0x2

    aget-byte v3, v3, v4

    invoke-direct {p0, v3, v0}, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->encryptByte(BI)B

    move-result v3

    aput-byte v3, p3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->tmp:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget v3, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v3, v3, -0x2

    invoke-static {v0, v5, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->count:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->count:I

    iget v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v1, v0, -0x2

    goto :goto_1

    :cond_5
    iget v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->count:I

    iget v2, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v2, v2, 0x2

    if-lt v0, v2, :cond_7

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->tmp:[B

    iget v2, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, p4, 0x0

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->tmp:[B

    aget-byte v2, v2, v1

    iget v3, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v3, v3, -0x2

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->encryptByte(BI)B

    move-result v2

    aput-byte v2, p3, v0

    add-int/lit8 v0, p4, 0x1

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->tmp:[B

    aget-byte v2, v2, v4

    iget v3, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->encryptByte(BI)B

    move-result v2

    aput-byte v2, p3, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->tmp:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget v3, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v3, v3, -0x2

    invoke-static {v0, v1, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FRE:[B

    invoke-interface {v0, v2, v1, v3, v1}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move v0, v1

    :goto_3
    iget v2, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v2, v2, -0x2

    if-ge v0, v2, :cond_6

    add-int v2, p4, v0

    add-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->tmp:[B

    add-int/lit8 v4, v0, 0x2

    aget-byte v3, v3, v4

    invoke-direct {p0, v3, v0}, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->encryptByte(BI)B

    move-result v3

    aput-byte v3, p3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->tmp:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget v3, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v3, v3, -0x2

    invoke-static {v0, v5, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    iget v1, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    goto/16 :goto_1
.end method

.method private encryptBlock([BI[BI)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/2addr v0, p2

    array-length v2, p1

    if-le v0, v2, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/2addr v0, p4

    array-length v2, p3

    if-le v0, v2, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FRE:[B

    invoke-interface {v0, v2, v1, v3, v1}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move v0, v1

    :goto_0
    iget v2, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    if-ge v0, v2, :cond_2

    add-int v2, p4, v0

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    invoke-direct {p0, v3, v0}, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->encryptByte(BI)B

    move-result v3

    aput-byte v3, p3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    add-int v2, p4, v1

    aget-byte v2, p3, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    return v0
.end method

.method private encryptBlockWithIV([BI[BI)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/2addr v0, p2

    array-length v2, p1

    if-le v0, v2, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->count:I

    if-nez v0, :cond_4

    iget v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p4

    add-int/lit8 v0, v0, 0x2

    array-length v2, p3

    if-le v0, v2, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FRE:[B

    invoke-interface {v0, v2, v1, v3, v1}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move v0, v1

    :goto_0
    iget v2, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    if-ge v0, v2, :cond_2

    add-int v2, p4, v0

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->IV:[B

    aget-byte v3, v3, v0

    invoke-direct {p0, v3, v0}, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->encryptByte(BI)B

    move-result v3

    aput-byte v3, p3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget v2, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    invoke-static {p3, p4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FRE:[B

    invoke-interface {v0, v2, v1, v3, v1}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iget v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/2addr v0, p4

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->IV:[B

    iget v3, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v3, v3, -0x2

    aget-byte v2, v2, v3

    invoke-direct {p0, v2, v1}, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->encryptByte(BI)B

    move-result v2

    aput-byte v2, p3, v0

    iget v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/2addr v0, p4

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->IV:[B

    iget v3, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v3, v3, -0x1

    aget-byte v2, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->encryptByte(BI)B

    move-result v2

    aput-byte v2, p3, v0

    add-int/lit8 v0, p4, 0x2

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget v3, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    invoke-static {p3, v0, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FRE:[B

    invoke-interface {v0, v2, v1, v3, v1}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move v0, v1

    :goto_1
    iget v2, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    if-ge v0, v2, :cond_3

    iget v2, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/2addr v2, p4

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    invoke-direct {p0, v3, v0}, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->encryptByte(BI)B

    move-result v3

    aput-byte v3, p3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/2addr v0, p4

    add-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget v3, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    invoke-static {p3, v0, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->count:I

    iget v1, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->count:I

    iget v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    :goto_2
    return v0

    :cond_4
    iget v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->count:I

    iget v2, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v2, v2, 0x2

    if-lt v0, v2, :cond_7

    iget v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/2addr v0, p4

    array-length v2, p3

    if-le v0, v2, :cond_5

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FRE:[B

    invoke-interface {v0, v2, v1, v3, v1}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move v0, v1

    :goto_3
    iget v2, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    if-ge v0, v2, :cond_6

    add-int v2, p4, v0

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    invoke-direct {p0, v3, v0}, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->encryptByte(BI)B

    move-result v3

    aput-byte v3, p3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget v2, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    invoke-static {p3, p4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    iget v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    goto :goto_2
.end method

.method private encryptByte(BI)B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FRE:[B

    aget-byte v0, v0, p2

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    return v0
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->inlineIv:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/PGPCFBwithIV"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/PGPCFB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getBlockSize()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

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

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->forEncryption:Z

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_2

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v2

    array-length v0, v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->IV:[B

    array-length v3, v3

    if-ge v0, v3, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->IV:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->IV:[B

    array-length v3, v3

    array-length v4, v2

    sub-int/2addr v3, v4

    array-length v4, v2

    invoke-static {v2, v1, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v1

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->IV:[B

    array-length v3, v3

    array-length v4, v2

    sub-int/2addr v3, v4

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->IV:[B

    aput-byte v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->IV:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->IV:[B

    array-length v3, v3

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0, v5, p2}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_1
.end method

.method public processBlock([BI[BI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->inlineIv:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->encryptBlockWithIV([BI[BI)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->decryptBlockWithIV([BI[BI)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->encryptBlock([BI[BI)I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->decryptBlock([BI[BI)I

    move-result v0

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    const/4 v1, 0x0

    iput v1, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->count:I

    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    array-length v2, v2

    if-eq v0, v2, :cond_1

    iget-boolean v2, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->inlineIv:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    aput-byte v1, v2, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->IV:[B

    aget-byte v3, v3, v0

    aput-byte v3, v2, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->reset()V

    return-void
.end method
