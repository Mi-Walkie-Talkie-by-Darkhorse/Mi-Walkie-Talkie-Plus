.class public Lorg/bouncycastle/crypto/engines/XSalsa20Engine;
.super Lorg/bouncycastle/crypto/engines/Salsa20Engine;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "XSalsa20"

    return-object v0
.end method

.method protected getNonceSize()I
    .locals 1

    const/16 v0, 0x18

    return v0
.end method

.method protected setKey([B[B)V
    .locals 10

    const/4 v5, 0x0

    const/16 v9, 0x9

    const/4 v8, 0x7

    const/4 v7, 0x6

    const/16 v6, 0x8

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/XSalsa20Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t support re-init with null key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/XSalsa20Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires a 256 bit key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-super {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->setKey([B[B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    invoke-static {p2, v6}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    aput v1, v0, v6

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    const/16 v1, 0xc

    invoke-static {p2, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    aput v1, v0, v9

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    array-length v0, v0

    new-array v0, v0, [I

    const/16 v1, 0x14

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/crypto/engines/XSalsa20Engine;->salsaCore(I[I[I)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    const/4 v2, 0x1

    aget v3, v0, v5

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    aget v4, v4, v5

    sub-int/2addr v3, v4

    aput v3, v1, v2

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    const/4 v2, 0x2

    const/4 v3, 0x5

    aget v3, v0, v3

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    const/4 v5, 0x5

    aget v4, v4, v5

    sub-int/2addr v3, v4

    aput v3, v1, v2

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    const/4 v2, 0x3

    const/16 v3, 0xa

    aget v3, v0, v3

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    const/16 v5, 0xa

    aget v4, v4, v5

    sub-int/2addr v3, v4

    aput v3, v1, v2

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    const/4 v2, 0x4

    const/16 v3, 0xf

    aget v3, v0, v3

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    const/16 v5, 0xf

    aget v4, v4, v5

    sub-int/2addr v3, v4

    aput v3, v1, v2

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    const/16 v2, 0xb

    aget v3, v0, v7

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    aget v4, v4, v7

    sub-int/2addr v3, v4

    aput v3, v1, v2

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    const/16 v2, 0xc

    aget v3, v0, v8

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    aget v4, v4, v8

    sub-int/2addr v3, v4

    aput v3, v1, v2

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    const/16 v2, 0xd

    aget v3, v0, v6

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    aget v4, v4, v6

    sub-int/2addr v3, v4

    aput v3, v1, v2

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    const/16 v2, 0xe

    aget v0, v0, v9

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    aget v3, v3, v9

    sub-int/2addr v0, v3

    aput v0, v1, v2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    const/16 v1, 0x10

    invoke-static {p2, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    aput v1, v0, v7

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    const/16 v1, 0x14

    invoke-static {p2, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    aput v1, v0, v8

    return-void
.end method
