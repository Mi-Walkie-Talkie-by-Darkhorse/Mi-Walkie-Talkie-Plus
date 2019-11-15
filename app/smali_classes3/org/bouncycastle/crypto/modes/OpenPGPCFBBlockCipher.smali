.class public Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;
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


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    iget v0, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->IV:[B

    iget v0, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    iget v0, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FRE:[B

    return-void
.end method

.method private decryptBlock([BI[BI)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    iget v2, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    add-int/2addr v2, p2

    array-length v3, p1

    if-le v2, v3, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v2, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    add-int/2addr v2, p4

    array-length v3, p3

    if-le v2, v3, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v2, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->count:I

    iget v3, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    if-le v2, v3, :cond_2

    aget-byte v2, p1, p2

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    iget v4, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v4, v4, -0x2

    aput-byte v2, v3, v4

    iget v3, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v3, v3, -0x2

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->encryptByte(BI)B

    move-result v2

    aput-byte v2, p3, p4

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    iget v4, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v4, v4, -0x1

    aput-byte v2, v3, v4

    add-int/lit8 v3, p4, 0x1

    iget v4, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v2, v4}, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->encryptByte(BI)B

    move-result v2

    aput-byte v2, p3, v3

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FRE:[B

    invoke-interface {v2, v3, v1, v4, v1}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    if-ge v0, v1, :cond_4

    add-int v1, p2, v0

    aget-byte v1, p1, v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    add-int/lit8 v3, v0, -0x2

    aput-byte v1, v2, v3

    add-int v2, p4, v0

    add-int/lit8 v3, v0, -0x2

    invoke-direct {p0, v1, v3}, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->encryptByte(BI)B

    move-result v1

    aput-byte v1, p3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget v2, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->count:I

    if-nez v2, :cond_5

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FRE:[B

    invoke-interface {v0, v2, v1, v3, v1}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move v0, v1

    :goto_1
    iget v1, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    aput-byte v2, v1, v0

    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->encryptByte(BI)B

    move-result v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget v0, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->count:I

    iget v1, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->count:I

    :cond_4
    :goto_2
    iget v0, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    return v0

    :cond_5
    iget v2, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->count:I

    iget v3, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FRE:[B

    invoke-interface {v2, v3, v1, v4, v1}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    aget-byte v2, p1, p2

    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p1, v3

    invoke-direct {p0, v2, v1}, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->encryptByte(BI)B

    move-result v4

    aput-byte v4, p3, p4

    add-int/lit8 v4, p4, 0x1

    const/4 v5, 0x1

    invoke-direct {p0, v3, v5}, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->encryptByte(BI)B

    move-result v5

    aput-byte v5, p3, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    iget v6, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v6, v6, -0x2

    invoke-static {v4, v0, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    iget v5, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v5, v5, -0x2

    aput-byte v2, v4, v5

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    iget v4, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v4, v4, -0x1

    aput-byte v3, v2, v4

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FRE:[B

    invoke-interface {v2, v3, v1, v4, v1}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    :goto_3
    iget v1, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    if-ge v0, v1, :cond_6

    add-int v1, p2, v0

    aget-byte v1, p1, v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    add-int/lit8 v3, v0, -0x2

    aput-byte v1, v2, v3

    add-int v2, p4, v0

    add-int/lit8 v3, v0, -0x2

    invoke-direct {p0, v1, v3}, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->encryptByte(BI)B

    move-result v1

    aput-byte v1, p3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    iget v0, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->count:I

    iget v1, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->count:I

    goto :goto_2
.end method

.method private encryptBlock([BI[BI)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    iget v2, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    add-int/2addr v2, p2

    array-length v3, p1

    if-le v2, v3, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v2, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    add-int/2addr v2, p4

    array-length v3, p3

    if-le v2, v3, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v2, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->count:I

    iget v3, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    if-le v2, v3, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    iget v3, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v3, v3, -0x2

    aget-byte v4, p1, p2

    iget v5, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v5, v5, -0x2

    invoke-direct {p0, v4, v5}, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->encryptByte(BI)B

    move-result v4

    aput-byte v4, p3, p4

    aput-byte v4, v2, v3

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    iget v3, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v4, p4, 0x1

    add-int/lit8 v5, p2, 0x1

    aget-byte v5, p1, v5

    iget v6, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v6, v6, -0x1

    invoke-direct {p0, v5, v6}, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->encryptByte(BI)B

    move-result v5

    aput-byte v5, p3, v4

    aput-byte v5, v2, v3

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FRE:[B

    invoke-interface {v2, v3, v1, v4, v1}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    add-int/lit8 v2, v0, -0x2

    add-int v3, p4, v0

    add-int v4, p2, v0

    aget-byte v4, p1, v4

    add-int/lit8 v5, v0, -0x2

    invoke-direct {p0, v4, v5}, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->encryptByte(BI)B

    move-result v4

    aput-byte v4, p3, v3

    aput-byte v4, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget v2, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->count:I

    if-nez v2, :cond_5

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FRE:[B

    invoke-interface {v0, v2, v1, v3, v1}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move v0, v1

    :goto_1
    iget v1, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    add-int v2, p4, v0

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    invoke-direct {p0, v3, v0}, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->encryptByte(BI)B

    move-result v3

    aput-byte v3, p3, v2

    aput-byte v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget v0, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->count:I

    iget v1, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->count:I

    :cond_4
    :goto_2
    iget v0, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    return v0

    :cond_5
    iget v2, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->count:I

    iget v3, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FRE:[B

    invoke-interface {v2, v3, v1, v4, v1}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    aget-byte v2, p1, p2

    invoke-direct {p0, v2, v1}, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->encryptByte(BI)B

    move-result v2

    aput-byte v2, p3, p4

    add-int/lit8 v2, p4, 0x1

    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p1, v3

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->encryptByte(BI)B

    move-result v3

    aput-byte v3, p3, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    iget v4, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v4, v4, -0x2

    invoke-static {v2, v0, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    iget v3, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v3, v3, -0x2

    invoke-static {p3, p4, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FRE:[B

    invoke-interface {v2, v3, v1, v4, v1}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    :goto_3
    iget v1, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    add-int/lit8 v2, v0, -0x2

    add-int v3, p4, v0

    add-int v4, p2, v0

    aget-byte v4, p1, v4

    add-int/lit8 v5, v0, -0x2

    invoke-direct {p0, v4, v5}, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->encryptByte(BI)B

    move-result v4

    aput-byte v4, p3, v3

    aput-byte v4, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    iget v0, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->count:I

    iget v1, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->count:I

    goto :goto_2
.end method

.method private encryptByte(BI)B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FRE:[B

    aget-byte v0, v0, p2

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    return v0
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/OpenPGPCFB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->forEncryption:Z

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p2}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public processBlock([BI[BI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->encryptBlock([BI[BI)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->decryptBlock([BI[BI)I

    move-result v0

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    const/4 v3, 0x0

    iput v3, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->count:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->IV:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->reset()V

    return-void
.end method
