.class public Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/SignerWithRecovery;


# static fields
.field public static final TRAILER_IMPLICIT:I = 0xbc

.field public static final TRAILER_RIPEMD128:I = 0x32cc

.field public static final TRAILER_RIPEMD160:I = 0x31cc

.field public static final TRAILER_SHA1:I = 0x33cc

.field public static final TRAILER_SHA256:I = 0x34cc

.field public static final TRAILER_SHA384:I = 0x36cc

.field public static final TRAILER_SHA512:I = 0x35cc

.field public static final TRAILER_WHIRLPOOL:I = 0x37cc


# instance fields
.field private block:[B

.field private cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

.field private digest:Lorg/bouncycastle/crypto/Digest;

.field private fullMessage:Z

.field private keyBits:I

.field private mBuf:[B

.field private messageLength:I

.field private preBlock:[B

.field private preSig:[B

.field private recoveredMessage:[B

.field private trailer:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    iput-object p2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    if-eqz p3, :cond_0

    const/16 v0, 0xbc

    iput v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->trailer:I

    :goto_0
    return-void

    :cond_0
    invoke-static {p2}, Lorg/bouncycastle/crypto/signers/ISOTrailers;->getTrailer(Lorg/bouncycastle/crypto/Digest;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->trailer:I

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no valid trailer for digest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
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

.method private isSameAs([B[B)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    array-length v3, v3

    if-le v2, v3, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    array-length v2, v2

    array-length v3, p2

    if-le v2, v3, :cond_0

    move v0, v1

    :cond_0
    move v2, v0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    array-length v3, v3

    if-eq v0, v3, :cond_5

    aget-byte v3, p1, v0

    aget-byte v4, p2, v0

    if-eq v3, v4, :cond_1

    move v2, v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    array-length v3, p2

    if-eq v2, v3, :cond_3

    move v0, v1

    :cond_3
    move v2, v0

    move v0, v1

    :goto_1
    array-length v3, p2

    if-eq v0, v3, :cond_5

    aget-byte v3, p1, v0

    aget-byte v4, p2, v0

    if-eq v3, v4, :cond_4

    move v2, v1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return v2
.end method

.method private returnFalse([B)Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public generateSignature()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/CryptoException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    iget v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->trailer:I

    const/16 v1, 0xbc

    if-ne v0, v1, :cond_0

    const/16 v1, 0x8

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    array-length v0, v0

    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x1

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    invoke-interface {v4, v5, v0}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    const/16 v6, -0x44

    aput-byte v6, v4, v5

    :goto_0
    iget v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    add-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x8

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x4

    iget v3, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->keyBits:I

    sub-int/2addr v1, v3

    if-lez v1, :cond_1

    iget v3, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    sub-int/2addr v3, v1

    const/16 v1, 0x60

    sub-int/2addr v0, v3

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    invoke-static {v4, v2, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v3, v3, [B

    iput-object v3, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    move v3, v0

    :goto_1
    add-int/lit8 v0, v3, -0x1

    if-lez v0, :cond_3

    add-int/lit8 v0, v3, -0x1

    :goto_2
    if-eqz v0, :cond_2

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    const/16 v5, -0x45

    aput-byte v5, v4, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_0
    const/16 v1, 0x10

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    array-length v0, v0

    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x2

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    invoke-interface {v4, v5, v0}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    array-length v5, v5

    add-int/lit8 v5, v5, -0x2

    iget v6, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->trailer:I

    ushr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->trailer:I

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    goto :goto_0

    :cond_1
    const/16 v1, 0x40

    iget v3, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    sub-int/2addr v0, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    iget v5, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    invoke-static {v3, v2, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    new-array v3, v3, [B

    iput-object v3, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    move v3, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    add-int/lit8 v3, v3, -0x1

    aget-byte v4, v0, v3

    xor-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    const/16 v3, 0xb

    aput-byte v3, v0, v2

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    aget-byte v3, v0, v2

    or-int/2addr v3, v1

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    :goto_3
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    array-length v4, v4

    invoke-interface {v0, v3, v2, v4}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v3

    and-int/lit8 v0, v1, 0x20

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_4
    iput-boolean v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->fullMessage:Z

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    array-length v4, v4

    invoke-static {v0, v2, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    return-object v3

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    const/16 v3, 0xa

    aput-byte v3, v0, v2

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    aget-byte v3, v0, v2

    or-int/2addr v3, v1

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_4
.end method

.method public getRecoveredMessage()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    return-object v0
.end method

.method public hasFullMessage()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->fullMessage:Z

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2

    check-cast p2, Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->keyBits:I

    iget v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->keyBits:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    iget v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->trailer:I

    const/16 v1, 0xbc

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    array-length v0, v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->reset()V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->block:[B

    array-length v0, v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    iput v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    :cond_0
    iput-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    iput-boolean v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->fullMessage:Z

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->preSig:[B

    if-eqz v0, :cond_1

    iput-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->preSig:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->preBlock:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    iput-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->preBlock:[B

    :cond_1
    return-void
.end method

.method public update(B)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    iget v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    aput-byte p1, v0, v1

    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    return-void
.end method

.method public update([BII)V
    .locals 2

    :goto_0
    if-lez p3, :cond_0

    iget v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->update(B)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    return-void
.end method

.method public updateWithRecoveredMessage([B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    array-length v2, p1

    invoke-interface {v0, p1, v3, v2}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v4

    aget-byte v0, v4, v3

    and-int/lit16 v0, v0, 0xc0

    xor-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "malformed signature"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, v4, v0

    and-int/lit8 v0, v0, 0xf

    xor-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "malformed signature"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    xor-int/lit16 v0, v0, 0xbc

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    move v2, v3

    :goto_1
    array-length v5, v4

    if-eq v2, v5, :cond_2

    aget-byte v5, v4, v2

    and-int/lit8 v5, v5, 0xf

    xor-int/lit8 v5, v5, 0xa

    if-nez v5, :cond_6

    :cond_2
    add-int/lit8 v2, v2, 0x1

    array-length v5, v4

    sub-int v0, v5, v0

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v5}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v5

    sub-int/2addr v0, v5

    sub-int v5, v0, v2

    if-gtz v5, :cond_7

    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "malformed block"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    array-length v0, v4

    add-int/lit8 v0, v0, -0x2

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    array-length v2, v4

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, v4, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-static {v2}, Lorg/bouncycastle/crypto/signers/ISOTrailers;->getTrailer(Lorg/bouncycastle/crypto/Digest;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v0, v2, :cond_5

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "signer initialised with wrong digest for trailer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unrecognised hash in signature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/4 v0, 0x2

    goto :goto_0

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    aget-byte v5, v4, v3

    and-int/lit8 v5, v5, 0x20

    if-nez v5, :cond_8

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->fullMessage:Z

    sub-int/2addr v0, v2

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    array-length v1, v1

    invoke-static {v4, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    iput-object p1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->preSig:[B

    iput-object v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->preBlock:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    array-length v2, v2

    invoke-interface {v0, v1, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    array-length v0, v0

    iput v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_8
    iput-boolean v3, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->fullMessage:Z

    sub-int/2addr v0, v2

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    array-length v1, v1

    invoke-static {v4, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2
.end method

.method public verifySignature([B)Z
    .locals 11

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->preSig:[B

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    const/4 v1, 0x0

    array-length v3, p1

    invoke-interface {v0, p1, v1, v3}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    aget-byte v1, v0, v4

    and-int/lit16 v1, v1, 0xc0

    xor-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->returnFalse([B)Z

    move-result v4

    :goto_1
    return v4

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->preSig:[B

    invoke-static {v0, p1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "updateWithRecoveredMessage called on different signature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->preBlock:[B

    iput-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->preSig:[B

    iput-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->preBlock:[B

    goto :goto_0

    :cond_2
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, v0, v1

    and-int/lit8 v1, v1, 0xf

    xor-int/lit8 v1, v1, 0xc

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->returnFalse([B)Z

    move-result v4

    goto :goto_1

    :cond_3
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    xor-int/lit16 v1, v1, 0xbc

    if-nez v1, :cond_5

    move v1, v2

    :goto_2
    move v3, v4

    :goto_3
    array-length v5, v0

    if-eq v3, v5, :cond_4

    aget-byte v5, v0, v3

    and-int/lit8 v5, v5, 0xf

    xor-int/lit8 v5, v5, 0xa

    if-nez v5, :cond_8

    :cond_4
    add-int/lit8 v5, v3, 0x1

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v6, v3, [B

    array-length v3, v0

    sub-int v1, v3, v1

    array-length v3, v6

    sub-int v7, v1, v3

    sub-int v1, v7, v5

    if-gtz v1, :cond_9

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->returnFalse([B)Z

    move-result v4

    goto :goto_1

    :cond_5
    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-static {v3}, Lorg/bouncycastle/crypto/signers/ISOTrailers;->getTrailer(Lorg/bouncycastle/crypto/Digest;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v1, v3, :cond_7

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "signer initialised with wrong digest for trailer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unrecognised hash in signature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const/4 v1, 0x2

    goto :goto_2

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_9
    aget-byte v1, v0, v4

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_e

    iput-boolean v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->fullMessage:Z

    iget v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    sub-int v3, v7, v5

    if-le v1, v3, :cond_a

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->returnFalse([B)Z

    move-result v4

    goto/16 :goto_1

    :cond_a
    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->reset()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    sub-int v3, v7, v5

    invoke-interface {v1, v0, v5, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1, v6, v4}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    move v1, v4

    move v3, v2

    :goto_4
    array-length v8, v6

    if-eq v1, v8, :cond_c

    add-int v8, v7, v1

    aget-byte v9, v0, v8

    aget-byte v10, v6, v1

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v0, v8

    add-int v8, v7, v1

    aget-byte v8, v0, v8

    if-eqz v8, :cond_b

    move v3, v4

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_c
    if-nez v3, :cond_d

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->returnFalse([B)Z

    move-result v4

    goto/16 :goto_1

    :cond_d
    sub-int v1, v7, v5

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    array-length v3, v3

    invoke-static {v0, v5, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_5
    iget v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    if-eqz v1, :cond_12

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    invoke-direct {p0, v1, v3}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->isSameAs([B[B)Z

    move-result v1

    if-nez v1, :cond_12

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->returnFalse([B)Z

    move-result v4

    goto/16 :goto_1

    :cond_e
    iput-boolean v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->fullMessage:Z

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1, v6, v4}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    move v1, v4

    move v3, v2

    :goto_6
    array-length v8, v6

    if-eq v1, v8, :cond_10

    add-int v8, v7, v1

    aget-byte v9, v0, v8

    aget-byte v10, v6, v1

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v0, v8

    add-int v8, v7, v1

    aget-byte v8, v0, v8

    if-eqz v8, :cond_f

    move v3, v4

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_10
    if-nez v3, :cond_11

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->returnFalse([B)Z

    move-result v4

    goto/16 :goto_1

    :cond_11
    sub-int v1, v7, v5

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    array-length v3, v3

    invoke-static {v0, v5, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    :cond_12
    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    move v4, v2

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_1
.end method
