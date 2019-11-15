.class public Lorg/bouncycastle/crypto/engines/IDEAEngine;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# static fields
.field private static final BASE:I = 0x10001

.field protected static final BLOCK_SIZE:I = 0x8

.field private static final MASK:I = 0xffff


# instance fields
.field private workingKey:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/IDEAEngine;->workingKey:[I

    return-void
.end method

.method private bytesToWord([BI)I
    .locals 2

    aget-byte v0, p1, p2

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method private expandKey([B)[I
    .locals 8

    const/16 v4, 0x10

    const/16 v1, 0x8

    const/4 v7, 0x6

    const/4 v2, 0x0

    const v6, 0xffff

    const/16 v0, 0x34

    new-array v3, v0, [I

    array-length v0, p1

    if-ge v0, v4, :cond_0

    new-array v0, v4, [B

    array-length v4, v0

    array-length v5, p1

    sub-int/2addr v4, v5

    array-length v5, p1

    invoke-static {p1, v2, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    :cond_0
    move v0, v2

    :goto_0
    if-ge v0, v1, :cond_1

    mul-int/lit8 v2, v0, 0x2

    invoke-direct {p0, p1, v2}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->bytesToWord([BI)I

    move-result v2

    aput v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_1
    const/16 v1, 0x34

    if-ge v0, v1, :cond_4

    and-int/lit8 v1, v0, 0x7

    if-ge v1, v7, :cond_2

    add-int/lit8 v1, v0, -0x7

    aget v1, v3, v1

    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x9

    add-int/lit8 v2, v0, -0x6

    aget v2, v3, v2

    shr-int/lit8 v2, v2, 0x7

    or-int/2addr v1, v2

    and-int/2addr v1, v6

    aput v1, v3, v0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    and-int/lit8 v1, v0, 0x7

    if-ne v1, v7, :cond_3

    add-int/lit8 v1, v0, -0x7

    aget v1, v3, v1

    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x9

    add-int/lit8 v2, v0, -0xe

    aget v2, v3, v2

    shr-int/lit8 v2, v2, 0x7

    or-int/2addr v1, v2

    and-int/2addr v1, v6

    aput v1, v3, v0

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v0, -0xf

    aget v1, v3, v1

    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x9

    add-int/lit8 v2, v0, -0xe

    aget v2, v3, v2

    shr-int/lit8 v2, v2, 0x7

    or-int/2addr v1, v2

    and-int/2addr v1, v6

    aput v1, v3, v0

    goto :goto_2

    :cond_4
    return-object v3
.end method

.method private generateWorkingKey(Z[B)[I
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->expandKey([B)[I

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p2}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->expandKey([B)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->invertKey([I)[I

    move-result-object v0

    goto :goto_0
.end method

.method private ideaFunc([I[BI[BI)V
    .locals 10

    const/4 v0, 0x0

    const v9, 0xffff

    invoke-direct {p0, p2, p3}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->bytesToWord([BI)I

    move-result v4

    add-int/lit8 v1, p3, 0x2

    invoke-direct {p0, p2, v1}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->bytesToWord([BI)I

    move-result v3

    add-int/lit8 v1, p3, 0x4

    invoke-direct {p0, p2, v1}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->bytesToWord([BI)I

    move-result v2

    add-int/lit8 v1, p3, 0x6

    invoke-direct {p0, p2, v1}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->bytesToWord([BI)I

    move-result v1

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    move v1, v0

    :goto_0
    const/16 v6, 0x8

    if-ge v0, v6, :cond_0

    add-int/lit8 v6, v1, 0x1

    aget v1, p1, v1

    invoke-direct {p0, v5, v1}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->mul(II)I

    move-result v5

    add-int/lit8 v1, v6, 0x1

    aget v6, p1, v6

    add-int/2addr v4, v6

    and-int v6, v4, v9

    add-int/lit8 v4, v1, 0x1

    aget v1, p1, v1

    add-int/2addr v1, v3

    and-int v3, v1, v9

    add-int/lit8 v1, v4, 0x1

    aget v4, p1, v4

    invoke-direct {p0, v2, v4}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->mul(II)I

    move-result v2

    xor-int v4, v3, v5

    xor-int v7, v6, v2

    add-int/lit8 v8, v1, 0x1

    aget v1, p1, v1

    invoke-direct {p0, v4, v1}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->mul(II)I

    move-result v4

    add-int v1, v7, v4

    and-int v7, v1, v9

    add-int/lit8 v1, v8, 0x1

    aget v8, p1, v8

    invoke-direct {p0, v7, v8}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->mul(II)I

    move-result v7

    add-int/2addr v4, v7

    and-int v8, v4, v9

    xor-int/2addr v5, v7

    xor-int/2addr v2, v8

    xor-int v4, v7, v3

    xor-int v3, v8, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    aget v1, p1, v1

    invoke-direct {p0, v5, v1}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->mul(II)I

    move-result v1

    invoke-direct {p0, v1, p4, p5}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->wordToBytes(I[BI)V

    add-int/lit8 v1, v0, 0x1

    aget v0, p1, v0

    add-int/2addr v0, v3

    add-int/lit8 v3, p5, 0x2

    invoke-direct {p0, v0, p4, v3}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->wordToBytes(I[BI)V

    add-int/lit8 v0, v1, 0x1

    aget v1, p1, v1

    add-int/2addr v1, v4

    add-int/lit8 v3, p5, 0x4

    invoke-direct {p0, v1, p4, v3}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->wordToBytes(I[BI)V

    aget v0, p1, v0

    invoke-direct {p0, v2, v0}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->mul(II)I

    move-result v0

    add-int/lit8 v1, p5, 0x6

    invoke-direct {p0, v0, p4, v1}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->wordToBytes(I[BI)V

    return-void
.end method

.method private invertKey([I)[I
    .locals 8

    const/4 v0, 0x1

    const/16 v1, 0x34

    new-array v3, v1, [I

    const/4 v1, 0x0

    aget v1, p1, v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->mulInv(I)I

    move-result v4

    const/4 v1, 0x2

    aget v2, p1, v0

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->addInv(I)I

    move-result v2

    const/4 v5, 0x3

    aget v1, p1, v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->addInv(I)I

    move-result v6

    const/4 v1, 0x4

    aget v5, p1, v5

    invoke-direct {p0, v5}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->mulInv(I)I

    move-result v5

    const/16 v7, 0x33

    aput v5, v3, v7

    const/16 v5, 0x32

    aput v6, v3, v5

    const/16 v5, 0x31

    aput v2, v3, v5

    const/16 v2, 0x30

    aput v4, v3, v2

    :goto_0
    const/16 v4, 0x8

    if-ge v0, v4, :cond_0

    add-int/lit8 v4, v1, 0x1

    aget v1, p1, v1

    add-int/lit8 v5, v4, 0x1

    aget v4, p1, v4

    add-int/lit8 v2, v2, -0x1

    aput v4, v3, v2

    add-int/lit8 v2, v2, -0x1

    aput v1, v3, v2

    add-int/lit8 v1, v5, 0x1

    aget v4, p1, v5

    invoke-direct {p0, v4}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->mulInv(I)I

    move-result v4

    add-int/lit8 v5, v1, 0x1

    aget v1, p1, v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->addInv(I)I

    move-result v6

    add-int/lit8 v7, v5, 0x1

    aget v1, p1, v5

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->addInv(I)I

    move-result v5

    add-int/lit8 v1, v7, 0x1

    aget v7, p1, v7

    invoke-direct {p0, v7}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->mulInv(I)I

    move-result v7

    add-int/lit8 v2, v2, -0x1

    aput v7, v3, v2

    add-int/lit8 v2, v2, -0x1

    aput v6, v3, v2

    add-int/lit8 v2, v2, -0x1

    aput v5, v3, v2

    add-int/lit8 v2, v2, -0x1

    aput v4, v3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    aget v1, p1, v1

    add-int/lit8 v4, v0, 0x1

    aget v0, p1, v0

    add-int/lit8 v2, v2, -0x1

    aput v0, v3, v2

    add-int/lit8 v0, v2, -0x1

    aput v1, v3, v0

    add-int/lit8 v1, v4, 0x1

    aget v2, p1, v4

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->mulInv(I)I

    move-result v2

    add-int/lit8 v4, v1, 0x1

    aget v1, p1, v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->addInv(I)I

    move-result v1

    add-int/lit8 v5, v4, 0x1

    aget v4, p1, v4

    invoke-virtual {p0, v4}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->addInv(I)I

    move-result v4

    aget v5, p1, v5

    invoke-direct {p0, v5}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->mulInv(I)I

    move-result v5

    add-int/lit8 v0, v0, -0x1

    aput v5, v3, v0

    add-int/lit8 v0, v0, -0x1

    aput v4, v3, v0

    add-int/lit8 v0, v0, -0x1

    aput v1, v3, v0

    add-int/lit8 v0, v0, -0x1

    aput v2, v3, v0

    return-object v3
.end method

.method private mul(II)I
    .locals 4

    const v0, 0x10001

    const v3, 0xffff

    if-nez p1, :cond_0

    sub-int/2addr v0, p2

    :goto_0
    and-int/2addr v0, v3

    return v0

    :cond_0
    if-nez p2, :cond_1

    sub-int/2addr v0, p1

    goto :goto_0

    :cond_1
    mul-int v0, p1, p2

    and-int v1, v0, v3

    ushr-int/lit8 v0, v0, 0x10

    sub-int v2, v1, v0

    if-ge v1, v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    add-int/2addr v0, v2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private mulInv(I)I
    .locals 6

    const v3, 0x10001

    const v5, 0xffff

    const/4 v2, 0x1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_1

    :cond_0
    :goto_0
    return p1

    :cond_1
    div-int v1, v3, p1

    rem-int v0, v3, p1

    move v3, p1

    move p1, v2

    :goto_1
    if-eq v0, v2, :cond_2

    div-int v4, v3, v0

    rem-int/2addr v3, v0

    mul-int/2addr v4, v1

    add-int/2addr v4, p1

    and-int p1, v4, v5

    if-eq v3, v2, :cond_0

    div-int v4, v0, v3

    rem-int/2addr v0, v3

    mul-int/2addr v4, p1

    add-int/2addr v1, v4

    and-int/2addr v1, v5

    goto :goto_1

    :cond_2
    rsub-int/lit8 v0, v1, 0x1

    and-int p1, v0, v5

    goto :goto_0
.end method

.method private wordToBytes(I[BI)V
    .locals 2

    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    int-to-byte v1, p1

    aput-byte v1, p2, v0

    return-void
.end method


# virtual methods
.method addInv(I)I
    .locals 2

    rsub-int/lit8 v0, p1, 0x0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "IDEA"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 3

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_0

    check-cast p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->generateWorkingKey(Z[B)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/IDEAEngine;->workingKey:[I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter passed to IDEA init - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processBlock([BI[BI)I
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/IDEAEngine;->workingKey:[I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IDEA engine not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/lit8 v0, p2, 0x8

    array-length v1, p1

    if-le v0, v1, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int/lit8 v0, p4, 0x8

    array-length v1, p3

    if-le v0, v1, :cond_2

    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/IDEAEngine;->workingKey:[I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/IDEAEngine;->ideaFunc([I[BI[BI)V

    const/16 v0, 0x8

    return v0
.end method

.method public reset()V
    .locals 0

    return-void
.end method
