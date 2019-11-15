.class Lorg/bouncycastle/crypto/prng/drbg/Utils;
.super Ljava/lang/Object;


# static fields
.field static final maxSecurityStrengths:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v4, 0xc0

    const/16 v3, 0x100

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/prng/drbg/Utils;->maxSecurityStrengths:Ljava/util/Hashtable;

    sget-object v0, Lorg/bouncycastle/crypto/prng/drbg/Utils;->maxSecurityStrengths:Ljava/util/Hashtable;

    const-string v1, "SHA-1"

    const/16 v2, 0x80

    invoke-static {v2}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/crypto/prng/drbg/Utils;->maxSecurityStrengths:Ljava/util/Hashtable;

    const-string v1, "SHA-224"

    invoke-static {v4}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/crypto/prng/drbg/Utils;->maxSecurityStrengths:Ljava/util/Hashtable;

    const-string v1, "SHA-256"

    invoke-static {v3}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/crypto/prng/drbg/Utils;->maxSecurityStrengths:Ljava/util/Hashtable;

    const-string v1, "SHA-384"

    invoke-static {v3}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/crypto/prng/drbg/Utils;->maxSecurityStrengths:Ljava/util/Hashtable;

    const-string v1, "SHA-512"

    invoke-static {v3}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/crypto/prng/drbg/Utils;->maxSecurityStrengths:Ljava/util/Hashtable;

    const-string v1, "SHA-512/224"

    invoke-static {v4}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/crypto/prng/drbg/Utils;->maxSecurityStrengths:Ljava/util/Hashtable;

    const-string v1, "SHA-512/256"

    invoke-static {v3}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getMaxSecurityStrength(Lorg/bouncycastle/crypto/Digest;)I
    .locals 2

    sget-object v0, Lorg/bouncycastle/crypto/prng/drbg/Utils;->maxSecurityStrengths:Ljava/util/Hashtable;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static getMaxSecurityStrength(Lorg/bouncycastle/crypto/Mac;)I
    .locals 4

    invoke-interface {p0}, Lorg/bouncycastle/crypto/Mac;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/crypto/prng/drbg/Utils;->maxSecurityStrengths:Ljava/util/Hashtable;

    const/4 v2, 0x0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static hash_df(Lorg/bouncycastle/crypto/Digest;[BI)[B
    .locals 8

    const/4 v1, 0x0

    add-int/lit8 v0, p2, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v4, v0, [B

    array-length v0, v4

    invoke-interface {p0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    div-int v5, v0, v2

    const/4 v0, 0x1

    invoke-interface {p0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    new-array v6, v2, [B

    move v2, v1

    move v3, v0

    :goto_0
    if-gt v2, v5, :cond_1

    int-to-byte v0, v3

    invoke-interface {p0, v0}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    shr-int/lit8 v0, p2, 0x18

    int-to-byte v0, v0

    invoke-interface {p0, v0}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    shr-int/lit8 v0, p2, 0x10

    int-to-byte v0, v0

    invoke-interface {p0, v0}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    shr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    invoke-interface {p0, v0}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    int-to-byte v0, p2

    invoke-interface {p0, v0}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    array-length v0, p1

    invoke-interface {p0, p1, v1, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {p0, v6, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    array-length v0, v4

    array-length v7, v6

    mul-int/2addr v7, v2

    sub-int/2addr v0, v7

    array-length v7, v6

    if-le v0, v7, :cond_0

    array-length v0, v6

    :goto_1
    array-length v7, v6

    mul-int/2addr v7, v2

    invoke-static {v6, v1, v4, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    array-length v0, v4

    array-length v7, v6

    mul-int/2addr v7, v2

    sub-int/2addr v0, v7

    goto :goto_1

    :cond_1
    rem-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_2

    rem-int/lit8 v0, p2, 0x8

    rsub-int/lit8 v3, v0, 0x8

    move v0, v1

    :goto_2
    array-length v2, v4

    if-eq v0, v2, :cond_2

    aget-byte v2, v4, v0

    and-int/lit16 v2, v2, 0xff

    ushr-int v5, v2, v3

    rsub-int/lit8 v6, v3, 0x8

    shl-int/2addr v1, v6

    or-int/2addr v1, v5

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_2

    :cond_2
    return-object v4
.end method

.method static isTooLarge([BI)Z
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-le v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
