.class public Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/Wrapper;


# static fields
.field private static final IV2:[B


# instance fields
.field digest:[B

.field private engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

.field private forWrapping:Z

.field private iv:[B

.field private param:Lorg/bouncycastle/crypto/params/KeyParameter;

.field private paramPlusIV:Lorg/bouncycastle/crypto/params/ParametersWithIV;

.field sha1:Lorg/bouncycastle/crypto/Digest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->IV2:[B

    return-void

    :array_0
    .array-data 1
        0x4at
        -0x23t
        -0x5et
        0x2ct
        0x79t
        -0x18t
        0x21t
        0x5t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->sha1:Lorg/bouncycastle/crypto/Digest;

    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->digest:[B

    return-void
.end method

.method private calculateCMSKeyChecksum([B)[B
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    new-array v0, v4, [B

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->sha1:Lorg/bouncycastle/crypto/Digest;

    array-length v2, p1

    invoke-interface {v1, p1, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->sha1:Lorg/bouncycastle/crypto/Digest;

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->digest:[B

    invoke-interface {v1, v2, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->digest:[B

    invoke-static {v1, v3, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private checkCMSKeyChecksum([B[B)Z
    .locals 1

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->calculateCMSKeyChecksum([B)[B

    move-result-object v0

    invoke-static {v0, p2}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v0

    return v0
.end method

.method private static reverse([B)[B
    .locals 4

    array-length v0, p0

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    array-length v2, p0

    add-int/lit8 v3, v0, 0x1

    sub-int/2addr v2, v3

    aget-byte v2, p0, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "DESede"

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 5

    const/16 v3, 0x8

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->forWrapping:Z

    new-instance v0, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance v1, Lorg/bouncycastle/crypto/engines/DESedeEngine;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/engines/DESedeEngine;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_1

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_0
    instance-of v2, v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v2, :cond_2

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lorg/bouncycastle/crypto/params/KeyParameter;

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->forWrapping:Z

    if-eqz v0, :cond_0

    new-array v0, v3, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lorg/bouncycastle/crypto/params/KeyParameter;

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    move-object v1, v0

    move-object v0, p2

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lorg/bouncycastle/crypto/params/KeyParameter;

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->forWrapping:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    array-length v0, v0

    if-eq v0, v3, :cond_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "IV is not 8 octets"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You should not supply an IV for unwrapping"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unwrap([BII)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    const/16 v6, 0x8

    const/4 v1, 0x0

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->forWrapping:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not set for unwrapping"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "Null pointer as ciphertext"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v2

    rem-int v0, p3, v2

    if-eqz v0, :cond_2

    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ciphertext not multiple of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lorg/bouncycastle/crypto/params/KeyParameter;

    sget-object v4, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->IV2:[B

    invoke-direct {v0, v3, v4}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v3, v1, v0}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    new-array v3, p3, [B

    move v0, v1

    :goto_0
    if-eq v0, p3, :cond_3

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    add-int v5, p2, v0

    invoke-virtual {v4, p1, v5, v3, v0}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    add-int/2addr v0, v2

    goto :goto_0

    :cond_3
    invoke-static {v3}, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->reverse([B)[B

    move-result-object v0

    new-array v3, v6, [B

    iput-object v3, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    array-length v3, v0

    add-int/lit8 v3, v3, -0x8

    new-array v3, v3, [B

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    invoke-static {v0, v1, v4, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v0

    add-int/lit8 v4, v4, -0x8

    invoke-static {v0, v6, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lorg/bouncycastle/crypto/params/KeyParameter;

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    invoke-direct {v0, v4, v5}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0, v1, v4}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    array-length v0, v3

    new-array v4, v0, [B

    move v0, v1

    :goto_1
    array-length v5, v4

    if-eq v0, v5, :cond_4

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v5, v3, v0, v4, v0}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    add-int/2addr v0, v2

    goto :goto_1

    :cond_4
    array-length v0, v4

    add-int/lit8 v0, v0, -0x8

    new-array v0, v0, [B

    new-array v2, v6, [B

    array-length v3, v4

    add-int/lit8 v3, v3, -0x8

    invoke-static {v4, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v4

    add-int/lit8 v3, v3, -0x8

    invoke-static {v4, v3, v2, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, v0, v2}, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->checkCMSKeyChecksum([B[B)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "Checksum inside ciphertext is corrupted"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    return-object v0
.end method

.method public wrap([BII)[B
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->forWrapping:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized for wrapping"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-array v0, p3, [B

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->calculateCMSKeyChecksum([B)[B

    move-result-object v2

    array-length v3, v0

    array-length v4, v2

    add-int/2addr v3, v4

    new-array v3, v3, [B

    array-length v4, v0

    invoke-static {v0, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    array-length v4, v2

    invoke-static {v2, v1, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v2

    array-length v0, v3

    rem-int/2addr v0, v2

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not multiple of block length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0, v6, v4}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    array-length v0, v3

    new-array v4, v0, [B

    move v0, v1

    :goto_0
    array-length v5, v3

    if-eq v0, v5, :cond_2

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v5, v3, v0, v4, v0}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    add-int/2addr v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    array-length v0, v0

    array-length v3, v4

    add-int/2addr v0, v3

    new-array v0, v0, [B

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    array-length v5, v5

    invoke-static {v3, v1, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    array-length v3, v3

    array-length v5, v4

    invoke-static {v4, v1, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->reverse([B)[B

    move-result-object v0

    new-instance v3, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lorg/bouncycastle/crypto/params/KeyParameter;

    sget-object v5, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->IV2:[B

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v4, v6, v3}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    :goto_1
    array-length v3, v0

    if-eq v1, v3, :cond_3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v3, v0, v1, v0, v1}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    add-int/2addr v1, v2

    goto :goto_1

    :cond_3
    return-object v0
.end method
