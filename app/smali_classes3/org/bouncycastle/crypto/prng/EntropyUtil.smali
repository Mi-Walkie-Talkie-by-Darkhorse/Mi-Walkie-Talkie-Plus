.class public Lorg/bouncycastle/crypto/prng/EntropyUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateSeed(Lorg/bouncycastle/crypto/prng/EntropySource;I)[B
    .locals 7

    const/4 v1, 0x0

    new-array v2, p1, [B

    mul-int/lit8 v0, p1, 0x8

    invoke-interface {p0}, Lorg/bouncycastle/crypto/prng/EntropySource;->entropySize()I

    move-result v3

    if-gt v0, v3, :cond_1

    invoke-interface {p0}, Lorg/bouncycastle/crypto/prng/EntropySource;->getEntropy()[B

    move-result-object v0

    array-length v3, v2

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v2

    :cond_1
    invoke-interface {p0}, Lorg/bouncycastle/crypto/prng/EntropySource;->entropySize()I

    move-result v0

    div-int/lit8 v3, v0, 0x8

    move v0, v1

    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    invoke-interface {p0}, Lorg/bouncycastle/crypto/prng/EntropySource;->getEntropy()[B

    move-result-object v4

    array-length v5, v4

    array-length v6, v2

    sub-int/2addr v6, v0

    if-gt v5, v6, :cond_2

    array-length v5, v4

    invoke-static {v4, v1, v2, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    add-int/2addr v0, v3

    goto :goto_0

    :cond_2
    array-length v5, v2

    sub-int/2addr v5, v0

    invoke-static {v4, v1, v2, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1
.end method
