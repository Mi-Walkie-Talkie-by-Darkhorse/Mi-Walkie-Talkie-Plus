.class public Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/Wrapper;


# instance fields
.field private engine:Lorg/bouncycastle/crypto/BlockCipher;

.field private extractedAIV:[B

.field private forWrapping:Z

.field private highOrderIV:[B

.field private param:Lorg/bouncycastle/crypto/params/KeyParameter;

.field private preIV:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->highOrderIV:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->highOrderIV:[B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->preIV:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->extractedAIV:[B

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    return-void

    nop

    :array_0
    .array-data 1
        -0x5at
        0x59t
        0x59t
        -0x5at
    .end array-data
.end method

.method private padPlaintext([B)[B
    .locals 5

    const/4 v4, 0x0

    array-length v0, p1

    rem-int/lit8 v1, v0, 0x8

    rsub-int/lit8 v1, v1, 0x8

    rem-int/lit8 v1, v1, 0x8

    add-int v2, v0, v1

    new-array v2, v2, [B

    invoke-static {p1, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz v1, :cond_0

    new-array v3, v1, [B

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v2
.end method

.method private rfc3394UnwrapNoIvCheck([BII)[B
    .locals 12

    const/16 v0, 0x8

    new-array v5, v0, [B

    array-length v0, v5

    sub-int v0, p3, v0

    new-array v6, v0, [B

    array-length v0, v5

    new-array v7, v0, [B

    array-length v0, v5

    add-int/lit8 v0, v0, 0x8

    new-array v8, v0, [B

    const/4 v0, 0x0

    array-length v1, v5

    invoke-static {p1, p2, v7, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v5

    add-int/2addr v0, p2

    const/4 v1, 0x0

    array-length v2, v5

    sub-int v2, p3, v2

    invoke-static {p1, v0, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->param:Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {v0, v1, v2}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    div-int/lit8 v0, p3, 0x8

    add-int/lit8 v3, v0, -0x1

    const/4 v0, 0x5

    move v4, v0

    :goto_0
    if-ltz v4, :cond_2

    move v2, v3

    :goto_1
    const/4 v0, 0x1

    if-lt v2, v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    array-length v9, v5

    invoke-static {v7, v0, v8, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v2, -0x1

    mul-int/lit8 v0, v0, 0x8

    array-length v1, v5

    const/16 v9, 0x8

    invoke-static {v6, v0, v8, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    mul-int v0, v3, v4

    add-int v1, v0, v2

    const/4 v0, 0x1

    :goto_2
    if-eqz v1, :cond_0

    int-to-byte v9, v1

    array-length v10, v5

    sub-int/2addr v10, v0

    aget-byte v11, v8, v10

    xor-int/2addr v9, v11

    int-to-byte v9, v9

    aput-byte v9, v8, v10

    ushr-int/lit8 v1, v1, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    const/4 v1, 0x0

    const/4 v9, 0x0

    invoke-interface {v0, v8, v1, v8, v9}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v9, 0x8

    invoke-static {v8, v0, v7, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x8

    add-int/lit8 v1, v2, -0x1

    mul-int/lit8 v1, v1, 0x8

    const/16 v9, 0x8

    invoke-static {v8, v0, v6, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_0

    :cond_2
    iput-object v7, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->extractedAIV:[B

    return-object v6
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->forWrapping:Z

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_2

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->param:Lorg/bouncycastle/crypto/params/KeyParameter;

    :cond_0
    return-void

    :cond_1
    instance-of v1, v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->preIV:[B

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->param:Lorg/bouncycastle/crypto/params/KeyParameter;

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->preIV:[B

    array-length v0, v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "IV length not equal to 4"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object v0, p2

    goto :goto_0
.end method

.method public unwrap([BII)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    const/4 v6, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->forWrapping:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not set for unwrapping"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    div-int/lit8 v0, p3, 0x8

    mul-int/lit8 v3, v0, 0x8

    if-eq v3, p3, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "unwrap data must be a multiple of 8 bytes"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-ne v0, v2, :cond_2

    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "unwrap data must be at least 16 bytes"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-array v3, p3, [B

    invoke-static {p1, p2, v3, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v4, p3, [B

    const/4 v5, 0x2

    if-ne v0, v5, :cond_8

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->param:Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {v0, v1, v5}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    move v0, v1

    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_3

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v5, v3, v0, v4, v0}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v5}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v5

    add-int/2addr v0, v5

    goto :goto_0

    :cond_3
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->extractedAIV:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->extractedAIV:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->extractedAIV:[B

    array-length v3, v3

    invoke-static {v4, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v4

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->extractedAIV:[B

    array-length v3, v3

    sub-int/2addr v0, v3

    new-array v0, v0, [B

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->extractedAIV:[B

    array-length v3, v3

    array-length v5, v0

    invoke-static {v4, v3, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    new-array v3, v6, [B

    new-array v4, v6, [B

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->extractedAIV:[B

    array-length v6, v3

    invoke-static {v5, v1, v3, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->extractedAIV:[B

    array-length v6, v3

    array-length v7, v4

    invoke-static {v5, v6, v4, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v4, v1}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v4

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->preIV:[B

    invoke-static {v3, v5}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v3

    if-nez v3, :cond_4

    move v2, v1

    :cond_4
    array-length v3, v0

    add-int/lit8 v5, v3, -0x8

    if-gt v4, v5, :cond_5

    move v2, v1

    :cond_5
    if-le v4, v3, :cond_6

    move v2, v1

    :cond_6
    sub-int/2addr v3, v4

    array-length v5, v0

    if-lt v3, v5, :cond_a

    array-length v2, v0

    move v3, v1

    :goto_2
    new-array v5, v2, [B

    new-array v6, v2, [B

    array-length v7, v0

    sub-int/2addr v7, v2

    invoke-static {v0, v7, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v6, v5}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v2

    if-nez v2, :cond_7

    move v3, v1

    :cond_7
    if-nez v3, :cond_9

    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "checksum failed"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->rfc3394UnwrapNoIvCheck([BII)[B

    move-result-object v0

    goto :goto_1

    :cond_9
    new-array v2, v4, [B

    array-length v3, v2

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    :cond_a
    move v8, v3

    move v3, v2

    move v2, v8

    goto :goto_2
.end method

.method public wrap([BII)[B
    .locals 7

    const/16 v5, 0x8

    const/4 v6, 0x1

    const/4 v0, 0x0

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->forWrapping:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not set for wrapping"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-array v2, v5, [B

    invoke-static {p3}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I)[B

    move-result-object v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->preIV:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->preIV:[B

    array-length v4, v4

    invoke-static {v3, v0, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->preIV:[B

    array-length v3, v3

    array-length v4, v1

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v1, p3, [B

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->padPlaintext([B)[B

    move-result-object v3

    array-length v1, v3

    if-ne v1, v5, :cond_2

    array-length v1, v3

    array-length v4, v2

    add-int/2addr v1, v4

    new-array v1, v1, [B

    array-length v4, v2

    invoke-static {v2, v0, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    array-length v4, v3

    invoke-static {v3, v0, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->param:Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {v2, v6, v3}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v2, v1, v0, v1, v0}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_1
    return-object v0

    :cond_2
    new-instance v1, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-direct {v1, v4}, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    new-instance v4, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;->param:Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v4, v5, v2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-interface {v1, v6, v4}, Lorg/bouncycastle/crypto/Wrapper;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    array-length v2, v3

    invoke-interface {v1, v3, v0, v2}, Lorg/bouncycastle/crypto/Wrapper;->wrap([BII)[B

    move-result-object v0

    goto :goto_1
.end method
