.class public Lorg/bouncycastle/crypto/signers/PSSSigner;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/Signer;


# static fields
.field public static final TRAILER_IMPLICIT:B = -0x44t


# instance fields
.field private block:[B

.field private cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

.field private contentDigest:Lorg/bouncycastle/crypto/Digest;

.field private emBits:I

.field private hLen:I

.field private mDash:[B

.field private mgfDigest:Lorg/bouncycastle/crypto/Digest;

.field private mgfhLen:I

.field private random:Ljava/security/SecureRandom;

.field private sLen:I

.field private sSet:Z

.field private salt:[B

.field private trailer:B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;I)V
    .locals 1

    const/16 v0, -0x44

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/crypto/signers/PSSSigner;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;IB)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;IB)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/signers/PSSSigner;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;IB)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;I)V
    .locals 6

    const/16 v5, -0x44

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/signers/PSSSigner;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;IB)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;IB)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    iput-object p2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->contentDigest:Lorg/bouncycastle/crypto/Digest;

    iput-object p3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mgfDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    invoke-interface {p3}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mgfhLen:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sSet:Z

    iput p4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    new-array v0, p4, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->salt:[B

    add-int/lit8 v0, p4, 0x8

    iget v1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    add-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    iput-byte p5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->trailer:B

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;[B)V
    .locals 6

    const/16 v5, -0x44

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/signers/PSSSigner;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;[BB)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;[BB)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    iput-object p2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->contentDigest:Lorg/bouncycastle/crypto/Digest;

    iput-object p3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mgfDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    invoke-interface {p3}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mgfhLen:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sSet:Z

    array-length v0, p4

    iput v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    iput-object p4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->salt:[B

    iget v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    add-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    add-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    iput-byte p5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->trailer:B

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;[B)V
    .locals 6

    const/16 v5, -0x44

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/signers/PSSSigner;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;[BB)V

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

.method private clearBlock([B)V
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    array-length v2, p1

    if-eq v0, v2, :cond_0

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private maskGeneratorFunction1([BIII)[B
    .locals 7

    const/4 v1, 0x0

    new-array v2, p4, [B

    iget v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mgfhLen:I

    new-array v3, v0, [B

    const/4 v0, 0x4

    new-array v4, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mgfDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    move v0, v1

    :goto_0
    iget v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mgfhLen:I

    div-int v5, p4, v5

    if-ge v0, v5, :cond_0

    invoke-direct {p0, v0, v4}, Lorg/bouncycastle/crypto/signers/PSSSigner;->ItoOSP(I[B)V

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mgfDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v5, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mgfDigest:Lorg/bouncycastle/crypto/Digest;

    array-length v6, v4

    invoke-interface {v5, v4, v1, v6}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mgfDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v5, v3, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mgfhLen:I

    mul-int/2addr v5, v0

    iget v6, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mgfhLen:I

    invoke-static {v3, v1, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mgfhLen:I

    mul-int/2addr v5, v0

    if-ge v5, p4, :cond_1

    invoke-direct {p0, v0, v4}, Lorg/bouncycastle/crypto/signers/PSSSigner;->ItoOSP(I[B)V

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mgfDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v5, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mgfDigest:Lorg/bouncycastle/crypto/Digest;

    array-length v6, v4

    invoke-interface {v5, v4, v1, v6}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mgfDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4, v3, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mgfhLen:I

    mul-int/2addr v4, v0

    array-length v5, v2

    iget v6, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mgfhLen:I

    mul-int/2addr v0, v6

    sub-int v0, v5, v0

    invoke-static {v3, v1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-object v2
.end method


# virtual methods
.method public generateSignature()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/CryptoException;,
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->contentDigest:Lorg/bouncycastle/crypto/Digest;

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v3, v3

    iget v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    sub-int/2addr v3, v4

    invoke-interface {v0, v2, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sSet:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->random:Ljava/security/SecureRandom;

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->salt:[B

    invoke-virtual {v0, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->salt:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v3, v3

    iget v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    sub-int/2addr v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    new-array v2, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->contentDigest:Lorg/bouncycastle/crypto/Digest;

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v4, v4

    invoke-interface {v0, v3, v1, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->contentDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, v2, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v3, v3

    iget v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x1

    aput-byte v4, v0, v3

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->salt:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v4, v4

    iget v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    sub-int/2addr v4, v5

    iget v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    invoke-static {v0, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v3, v3

    iget v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v2, v1, v0, v3}, Lorg/bouncycastle/crypto/signers/PSSSigner;->maskGeneratorFunction1([BIII)[B

    move-result-object v3

    move v0, v1

    :goto_0
    array-length v4, v3

    if-eq v0, v4, :cond_2

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    aget-byte v5, v4, v0

    aget-byte v6, v3, v0

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    aget-byte v3, v0, v1

    const/16 v4, 0xff

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x8

    iget v6, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->emBits:I

    sub-int/2addr v5, v6

    shr-int/2addr v4, v5

    and-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v3, v3

    iget v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    invoke-static {v2, v1, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iget-byte v3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->trailer:B

    aput-byte v3, v0, v2

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v3, v3

    invoke-interface {v0, v2, v1, v3}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/signers/PSSSigner;->clearBlock([B)V

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 3

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->random:Ljava/security/SecureRandom;

    move-object v0, v1

    :goto_0
    instance-of v1, v0, Lorg/bouncycastle/crypto/params/RSABlindingParameters;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/bouncycastle/crypto/params/RSABlindingParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/RSABlindingParameters;->getPublicKey()Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    move-result-object v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    :goto_1
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->emBits:I

    iget v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->emBits:I

    iget v1, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    mul-int/lit8 v1, v1, 0x8

    iget v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x9

    if-ge v0, v1, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key too small for specified hash and salt lengths"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->random:Ljava/security/SecureRandom;

    :cond_1
    move-object v0, p2

    goto :goto_0

    :cond_2
    move-object v1, v0

    check-cast v1, Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v2, p1, v0}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_1

    :cond_3
    iget v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->emBits:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/signers/PSSSigner;->reset()V

    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->contentDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->contentDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->contentDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method public verifySignature([B)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->contentDigest:Lorg/bouncycastle/crypto/Digest;

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v4, v4

    iget v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v4, v5

    iget v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    sub-int/2addr v4, v5

    invoke-interface {v0, v2, v4}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    const/4 v2, 0x0

    array-length v4, p1

    invoke-interface {v0, p1, v2, v4}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v0

    const/4 v2, 0x0

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v5, v5

    array-length v6, v0

    sub-int/2addr v5, v6

    array-length v6, v0

    invoke-static {v0, v2, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-byte v0, v0, v2

    iget-byte v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->trailer:B

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/signers/PSSSigner;->clearBlock([B)V

    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v2, v2

    iget v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    iget v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v5, v5

    iget v6, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-direct {p0, v0, v2, v4, v5}, Lorg/bouncycastle/crypto/signers/PSSSigner;->maskGeneratorFunction1([BIII)[B

    move-result-object v2

    move v0, v1

    :goto_1
    array-length v4, v2

    if-eq v0, v4, :cond_1

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    aget-byte v5, v4, v0

    aget-byte v6, v2, v0

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    aget-byte v2, v0, v1

    const/16 v4, 0xff

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x8

    iget v6, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->emBits:I

    sub-int/2addr v5, v6

    shr-int/2addr v4, v5

    and-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    move v0, v1

    :goto_2
    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v2, v2

    iget v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v2, v4

    iget v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x2

    if-eq v0, v2, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    aget-byte v2, v2, v0

    if-eqz v2, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/signers/PSSSigner;->clearBlock([B)V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v2, v2

    iget v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v2, v4

    iget v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x2

    aget-byte v0, v0, v2

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/signers/PSSSigner;->clearBlock([B)V

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sSet:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->salt:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v4, v4

    iget v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    sub-int/2addr v4, v5

    iget v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    invoke-static {v0, v1, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_3
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->contentDigest:Lorg/bouncycastle/crypto/Digest;

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v4, v4

    invoke-interface {v0, v2, v1, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->contentDigest:Lorg/bouncycastle/crypto/Digest;

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v4, v4

    iget v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v4, v5

    invoke-interface {v0, v2, v4}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v0, v0

    iget v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v0, v2

    add-int/lit8 v2, v0, -0x1

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v0, v0

    iget v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v0, v4

    :goto_4
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v4, v4

    if-eq v0, v4, :cond_7

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    aget-byte v4, v4, v2

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    aget-byte v5, v5, v0

    xor-int/2addr v4, v5

    if-eqz v4, :cond_6

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/signers/PSSSigner;->clearBlock([B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/signers/PSSSigner;->clearBlock([B)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    array-length v2, v2

    iget v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    sub-int/2addr v2, v4

    iget v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v5, v5

    iget v6, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    sub-int/2addr v5, v6

    iget v6, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->sLen:I

    invoke-static {v0, v2, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    :cond_6
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->mDash:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/signers/PSSSigner;->clearBlock([B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/PSSSigner;->block:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/signers/PSSSigner;->clearBlock([B)V

    move v1, v3

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method
