.class public Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;
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

.field private hLen:I

.field private keyBits:I

.field private mBuf:[B

.field private messageLength:I

.field private preBlock:[B

.field private preMStart:I

.field private preSig:[B

.field private preTLength:I

.field private random:Ljava/security/SecureRandom;

.field private recoveredMessage:[B

.field private saltLength:I

.field private standardSalt:[B

.field private trailer:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;IZ)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;IZ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    iput-object p2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    iput p3, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->saltLength:I

    if-eqz p4, :cond_0

    const/16 v0, 0xbc

    iput v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->trailer:I

    :goto_0
    return-void

    :cond_0
    invoke-static {p2}, Lorg/bouncycastle/crypto/signers/ISOTrailers;->getTrailer(Lorg/bouncycastle/crypto/Digest;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->trailer:I

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

.method private LtoOSP(J[B)V
    .locals 5

    const/4 v4, 0x0

    const/16 v0, 0x38

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p3, v4

    const/4 v0, 0x1

    const/16 v1, 0x30

    ushr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    const/4 v0, 0x2

    const/16 v1, 0x28

    ushr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    const/4 v0, 0x3

    const/16 v1, 0x20

    ushr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    const/4 v0, 0x4

    const/16 v1, 0x18

    ushr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    const/4 v0, 0x5

    const/16 v1, 0x10

    ushr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    const/4 v0, 0x6

    const/16 v1, 0x8

    ushr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    const/4 v0, 0x7

    ushr-long v2, p1, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

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

.method private isSameAs([B[B)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    array-length v3, p2

    if-eq v2, v3, :cond_0

    move v0, v1

    :cond_0
    move v2, v0

    move v0, v1

    :goto_0
    array-length v3, p2

    if-eq v0, v3, :cond_2

    aget-byte v3, p1, v0

    aget-byte v4, p2, v0

    if-eq v3, v4, :cond_1

    move v2, v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private maskGeneratorFunction1([BIII)[B
    .locals 7

    const/4 v1, 0x0

    new-array v2, p4, [B

    iget v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    new-array v3, v0, [B

    const/4 v0, 0x4

    new-array v4, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    move v0, v1

    :goto_0
    iget v5, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    div-int v5, p4, v5

    if-ge v0, v5, :cond_0

    invoke-direct {p0, v0, v4}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->ItoOSP(I[B)V

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v5, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v6, v4

    invoke-interface {v5, v4, v1, v6}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v5, v3, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget v5, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    mul-int/2addr v5, v0

    iget v6, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    invoke-static {v3, v1, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v5, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    mul-int/2addr v5, v0

    if-ge v5, p4, :cond_1

    invoke-direct {p0, v0, v4}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->ItoOSP(I[B)V

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v5, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v6, v4

    invoke-interface {v5, v4, v1, v6}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4, v3, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    mul-int/2addr v4, v0

    array-length v5, v2

    iget v6, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    mul-int/2addr v0, v6

    sub-int v0, v5, v0

    invoke-static {v3, v1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-object v2
.end method


# virtual methods
.method public generateSignature()[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/CryptoException;
        }
    .end annotation

    const/16 v10, 0xbc

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1, v0, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    const/16 v1, 0x8

    new-array v1, v1, [B

    iget v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    mul-int/lit8 v4, v4, 0x8

    int-to-long v4, v4

    invoke-direct {p0, v4, v5, v1}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->LtoOSP(J[B)V

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v5, v1

    invoke-interface {v4, v1, v3, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    iget v5, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    invoke-interface {v1, v4, v3, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v4, v0

    invoke-interface {v1, v0, v3, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->standardSalt:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->standardSalt:[B

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v4, v0

    invoke-interface {v1, v0, v3, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v4, v1, [B

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1, v4, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    const/4 v1, 0x2

    iget v5, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->trailer:I

    if-ne v5, v10, :cond_0

    move v1, v2

    :cond_0
    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    array-length v5, v5

    iget v6, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    sub-int/2addr v5, v6

    array-length v6, v0

    sub-int/2addr v5, v6

    iget v6, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    iget-object v6, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    aput-byte v2, v6, v5

    iget-object v6, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    iget-object v7, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    add-int/lit8 v8, v5, 0x1

    iget v9, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    invoke-static {v6, v3, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    add-int/lit8 v5, v5, 0x1

    iget v7, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    add-int/2addr v5, v7

    array-length v7, v0

    invoke-static {v0, v3, v6, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v4

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    array-length v5, v5

    iget v6, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v1

    invoke-direct {p0, v4, v3, v0, v5}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->maskGeneratorFunction1([BIII)[B

    move-result-object v5

    move v0, v3

    :goto_1
    array-length v6, v5

    if-eq v0, v6, :cond_2

    iget-object v6, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    aget-byte v7, v6, v0

    aget-byte v8, v5, v0

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->saltLength:I

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    array-length v5, v5

    iget v6, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    sub-int/2addr v5, v6

    sub-int v1, v5, v1

    iget v5, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    invoke-static {v4, v3, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->trailer:I

    if-ne v0, v10, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    const/16 v4, -0x44

    aput-byte v4, v0, v1

    :goto_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    aget-byte v1, v0, v3

    and-int/lit8 v1, v1, 0x7f

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    array-length v4, v4

    invoke-interface {v0, v1, v3, v4}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    iget v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    array-length v4, v4

    if-gt v1, v4, :cond_4

    :goto_3
    iput-boolean v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->fullMessage:Z

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    array-length v4, v4

    invoke-static {v1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    iput v3, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    return-object v0

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x2

    iget v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->trailer:I

    ushr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    iget v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->trailer:I

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    goto :goto_2

    :cond_4
    move v2, v3

    goto :goto_3
.end method

.method public getRecoveredMessage()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    return-object v0
.end method

.method public hasFullMessage()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->fullMessage:Z

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 4

    iget v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->saltLength:I

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_1

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->random:Ljava/security/SecureRandom;

    :cond_0
    move-object p2, v0

    move v0, v1

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1, p1, p2}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->keyBits:I

    iget v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->keyBits:I

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    iget v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->trailer:I

    const/16 v2, 0xbc

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    array-length v1, v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int v0, v1, v0

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    :goto_1
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->reset()V

    return-void

    :cond_1
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithSalt;

    if-eqz v0, :cond_3

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithSalt;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithSalt;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithSalt;->getSalt()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->standardSalt:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->standardSalt:[B

    array-length v1, v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->standardSalt:[B

    array-length v2, v2

    iget v3, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->saltLength:I

    if-eq v2, v3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Fixed salt is of wrong length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object p2, v0

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p2, Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    if-eqz p1, :cond_4

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->random:Ljava/security/SecureRandom;

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    array-length v1, v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int v0, v1, v0

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v0, v0, -0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    goto :goto_1
.end method

.method public reset()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    iput v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    iput-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    :cond_1
    iput-boolean v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->fullMessage:Z

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->preSig:[B

    if-eqz v0, :cond_2

    iput-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->preSig:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->preBlock:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    iput-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->preBlock:[B

    :cond_2
    return-void
.end method

.method public update(B)V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->preSig:[B

    if-nez v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    aput-byte p1, v0, v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    goto :goto_0
.end method

.method public update([BII)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->preSig:[B

    if-nez v0, :cond_0

    :goto_0
    if-lez p3, :cond_0

    iget v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->update(B)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_0
    if-lez p3, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    :cond_1
    return-void
.end method

.method public updateWithRecoveredMessage([B)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    array-length v1, p1

    invoke-interface {v0, p1, v4, v1}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v1

    array-length v0, v1

    iget v3, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->keyBits:I

    add-int/lit8 v3, v3, 0x7

    div-int/lit8 v3, v3, 0x8

    if-ge v0, v3, :cond_8

    iget v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->keyBits:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    array-length v3, v0

    array-length v5, v1

    sub-int/2addr v3, v5

    array-length v5, v1

    invoke-static {v1, v4, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    :goto_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    xor-int/lit16 v1, v1, 0xbc

    if-nez v1, :cond_0

    move v1, v2

    :goto_1
    iget v3, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    new-array v3, v3, [B

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v5, v3, v4}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    array-length v3, v0

    iget v5, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    sub-int/2addr v3, v5

    sub-int/2addr v3, v1

    iget v5, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    array-length v6, v0

    iget v7, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    sub-int/2addr v6, v7

    sub-int/2addr v6, v1

    invoke-direct {p0, v0, v3, v5, v6}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->maskGeneratorFunction1([BIII)[B

    move-result-object v5

    move v3, v4

    :goto_2
    array-length v6, v5

    if-eq v3, v6, :cond_3

    aget-byte v6, v0, v3

    aget-byte v7, v5, v3

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_0
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

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-static {v3}, Lorg/bouncycastle/crypto/signers/ISOTrailers;->getTrailer(Lorg/bouncycastle/crypto/Digest;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v1, v3, :cond_2

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

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unrecognised hash in signature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v1, 0x2

    goto :goto_1

    :cond_3
    aget-byte v3, v0, v4

    and-int/lit8 v3, v3, 0x7f

    int-to-byte v3, v3

    aput-byte v3, v0, v4

    move v3, v4

    :goto_3
    array-length v6, v0

    if-eq v3, v6, :cond_4

    aget-byte v6, v0, v3

    if-ne v6, v2, :cond_6

    :cond_4
    add-int/lit8 v3, v3, 0x1

    array-length v6, v0

    if-lt v3, v6, :cond_5

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    :cond_5
    if-le v3, v2, :cond_7

    :goto_4
    iput-boolean v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->fullMessage:Z

    array-length v2, v5

    sub-int/2addr v2, v3

    iget v5, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->saltLength:I

    sub-int/2addr v2, v5

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    array-length v5, v5

    invoke-static {v0, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    iget-object v6, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    array-length v6, v6

    invoke-static {v2, v4, v5, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->preSig:[B

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->preBlock:[B

    iput v3, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->preMStart:I

    iput v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->preTLength:I

    return-void

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    move v2, v4

    goto :goto_4

    :cond_8
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public verifySignature([B)Z
    .locals 10

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    new-array v0, v0, [B

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2, v0, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->preSig:[B

    if-nez v2, :cond_3

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->updateWithRecoveredMessage([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->preBlock:[B

    iget v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->preMStart:I

    iget v5, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->preTLength:I

    iput-object v6, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->preSig:[B

    iput-object v6, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->preBlock:[B

    const/16 v6, 0x8

    new-array v6, v6, [B

    iget-object v7, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    array-length v7, v7

    mul-int/lit8 v7, v7, 0x8

    int-to-long v8, v7

    invoke-direct {p0, v8, v9, v6}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->LtoOSP(J[B)V

    iget-object v7, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v8, v6

    invoke-interface {v7, v6, v1, v8}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v6, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    array-length v6, v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v7, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    iget-object v8, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    array-length v8, v8

    invoke-interface {v6, v7, v1, v8}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    :cond_1
    iget-object v6, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v7, v0

    invoke-interface {v6, v0, v1, v7}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->standardSalt:[B

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->standardSalt:[B

    iget-object v6, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->standardSalt:[B

    array-length v6, v6

    invoke-interface {v0, v2, v1, v6}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v6, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, v6, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    array-length v0, v4

    sub-int/2addr v0, v5

    array-length v2, v6

    sub-int v5, v0, v2

    move v0, v1

    move v2, v3

    :goto_1
    array-length v7, v6

    if-eq v0, v7, :cond_5

    aget-byte v7, v6, v0

    add-int v8, v5, v0

    aget-byte v8, v4, v8

    if-eq v7, v8, :cond_2

    move v2, v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->preSig:[B

    invoke-static {v2, p1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "updateWithRecoveredMessage called on different signature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v6, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    array-length v6, v6

    add-int/2addr v2, v6

    iget v6, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->saltLength:I

    invoke-interface {v0, v4, v2, v6}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    goto :goto_0

    :cond_5
    invoke-direct {p0, v4}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    if-nez v2, :cond_6

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->fullMessage:Z

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    :goto_2
    return v1

    :cond_6
    iget v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    invoke-direct {p0, v0, v2}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->isSameAs([B[B)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    goto :goto_2

    :cond_7
    iput v1, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    :cond_8
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    move v1, v3

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_2
.end method
