.class public Lorg/bouncycastle/crypto/encodings/OAEPEncoding;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricBlockCipher;


# instance fields
.field private defHash:[B

.field private engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

.field private forEncryption:Z

.field private mgf1Hash:Lorg/bouncycastle/crypto/Digest;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;[B)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;[B)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;[B)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    iput-object p3, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    invoke-interface {p2}, Lorg/bouncycastle/crypto/Digest;->reset()V

    if-eqz p4, :cond_0

    array-length v0, p4

    invoke-interface {p2, p4, v1, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    invoke-interface {p2, v0, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p2, p3}, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;[B)V

    return-void
.end method

.method private ItoOSP(I[B)V
    .locals 2

    const/4 v0, 0x0

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    const/4 v0, 0x1

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    const/4 v0, 0x2

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    const/4 v0, 0x3

    ushr-int/lit8 v1, p1, 0x0

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    return-void
.end method

.method private maskGeneratorFunction1([BIII)[B
    .locals 7

    const/4 v1, 0x0

    new-array v2, p4, [B

    iget-object v0, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v3, v0, [B

    const/4 v0, 0x4

    new-array v4, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    move v0, v1

    :goto_0
    array-length v5, v3

    div-int v5, p4, v5

    if-ge v0, v5, :cond_0

    invoke-direct {p0, v0, v4}, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->ItoOSP(I[B)V

    iget-object v5, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v5, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v5, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/bouncycastle/crypto/Digest;

    array-length v6, v4

    invoke-interface {v5, v4, v1, v6}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v5, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v5, v3, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    array-length v5, v3

    mul-int/2addr v5, v0

    array-length v6, v3

    invoke-static {v3, v1, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    array-length v5, v3

    mul-int/2addr v5, v0

    if-ge v5, p4, :cond_1

    invoke-direct {p0, v0, v4}, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->ItoOSP(I[B)V

    iget-object v5, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v5, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v5, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/bouncycastle/crypto/Digest;

    array-length v6, v4

    invoke-interface {v5, v4, v1, v6}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v4, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4, v3, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    array-length v4, v3

    mul-int/2addr v4, v0

    array-length v5, v2

    array-length v6, v3

    mul-int/2addr v0, v6

    sub-int v0, v5, v0

    invoke-static {v3, v1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-object v2
.end method


# virtual methods
.method public decodeBlock([BII)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v1

    array-length v0, v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v0

    new-array v0, v0, [B

    array-length v3, v0

    array-length v5, v1

    sub-int/2addr v3, v5

    array-length v5, v1

    invoke-static {v1, v2, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    array-length v1, v0

    iget-object v3, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    if-ge v1, v3, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "data too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v1, v1

    array-length v3, v0

    iget-object v5, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v5, v5

    sub-int/2addr v3, v5

    iget-object v5, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v5, v5

    invoke-direct {p0, v0, v1, v3, v5}, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BIII)[B

    move-result-object v3

    move v1, v2

    :goto_1
    iget-object v5, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v5, v5

    if-eq v1, v5, :cond_2

    aget-byte v5, v0, v1

    aget-byte v6, v3, v1

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v1, v1

    array-length v3, v0

    iget-object v5, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v5, v5

    sub-int/2addr v3, v5

    invoke-direct {p0, v0, v2, v1, v3}, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BIII)[B

    move-result-object v3

    iget-object v1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v1, v1

    :goto_2
    array-length v5, v0

    if-eq v1, v5, :cond_3

    aget-byte v5, v0, v1

    iget-object v6, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v6

    sub-int v6, v1, v6

    aget-byte v6, v3, v6

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move v1, v2

    move v3, v2

    :goto_3
    iget-object v5, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v5, v5

    if-eq v1, v5, :cond_5

    iget-object v5, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    aget-byte v5, v5, v1

    iget-object v6, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v6

    add-int/2addr v6, v1

    aget-byte v6, v0, v6

    if-eq v5, v6, :cond_4

    move v3, v4

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    if-eqz v3, :cond_6

    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "data hash wrong"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-object v1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    :goto_4
    array-length v3, v0

    if-eq v1, v3, :cond_7

    aget-byte v3, v0, v1

    if-eqz v3, :cond_9

    :cond_7
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_8

    aget-byte v3, v0, v1

    if-eq v3, v4, :cond_a

    :cond_8
    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data start wrong "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    add-int/lit8 v1, v1, 0x1

    array-length v3, v0

    sub-int/2addr v3, v1

    new-array v3, v3, [B

    array-length v4, v3

    invoke-static {v0, v1, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3
.end method

.method public encodeBlock([BII)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->getInputBlockSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    new-array v2, v0, [B

    array-length v0, v2

    sub-int/2addr v0, p3

    invoke-static {p1, p2, v2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v2

    sub-int/2addr v0, p3

    add-int/lit8 v0, v0, -0x1

    const/4 v3, 0x1

    aput-byte v3, v2, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v3, v3

    iget-object v4, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v4, v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v0, v0

    new-array v3, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    array-length v0, v3

    array-length v4, v2

    iget-object v5, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v5, v5

    sub-int/2addr v4, v5

    invoke-direct {p0, v3, v1, v0, v4}, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BIII)[B

    move-result-object v4

    iget-object v0, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v0, v0

    :goto_0
    array-length v5, v2

    if-eq v0, v5, :cond_0

    aget-byte v5, v2, v0

    iget-object v6, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v6

    sub-int v6, v0, v6

    aget-byte v6, v4, v6

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v0, v0

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v0, v0

    array-length v3, v2

    iget-object v4, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v4, v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v4, v4

    invoke-direct {p0, v2, v0, v3, v4}, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BIII)[B

    move-result-object v3

    move v0, v1

    :goto_1
    iget-object v4, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v4, v4

    if-eq v0, v4, :cond_1

    aget-byte v4, v2, v0

    aget-byte v5, v3, v0

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    array-length v3, v2

    invoke-interface {v0, v2, v1, v3}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public getInputBlockSize()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v0

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public getOutputBlockSize()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v0

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public getUnderlyingCipher()Lorg/bouncycastle/crypto/AsymmetricBlockCipher;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->random:Ljava/security/SecureRandom;

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    return-void

    :cond_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->random:Ljava/security/SecureRandom;

    goto :goto_0
.end method

.method public processBlock([BII)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->encodeBlock([BII)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/encodings/OAEPEncoding;->decodeBlock([BII)[B

    move-result-object v0

    goto :goto_0
.end method
