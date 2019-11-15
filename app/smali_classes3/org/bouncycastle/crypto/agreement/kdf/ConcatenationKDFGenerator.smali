.class public Lorg/bouncycastle/crypto/agreement/kdf/ConcatenationKDFGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/DerivationFunction;


# instance fields
.field private digest:Lorg/bouncycastle/crypto/Digest;

.field private hLen:I

.field private otherInfo:[B

.field private shared:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/agreement/kdf/ConcatenationKDFGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/agreement/kdf/ConcatenationKDFGenerator;->hLen:I

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


# virtual methods
.method public generateBytes([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v1, 0x0

    array-length v0, p1

    sub-int/2addr v0, p3

    if-ge v0, p2, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "output buffer too small"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/agreement/kdf/ConcatenationKDFGenerator;->hLen:I

    new-array v4, v0, [B

    const/4 v0, 0x4

    new-array v5, v0, [B

    const/4 v0, 0x1

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/kdf/ConcatenationKDFGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->reset()V

    iget v2, p0, Lorg/bouncycastle/crypto/agreement/kdf/ConcatenationKDFGenerator;->hLen:I

    if-le p3, v2, :cond_3

    move v2, v0

    move v0, v1

    :goto_0
    invoke-direct {p0, v2, v5}, Lorg/bouncycastle/crypto/agreement/kdf/ConcatenationKDFGenerator;->ItoOSP(I[B)V

    iget-object v3, p0, Lorg/bouncycastle/crypto/agreement/kdf/ConcatenationKDFGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v6, v5

    invoke-interface {v3, v5, v1, v6}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v3, p0, Lorg/bouncycastle/crypto/agreement/kdf/ConcatenationKDFGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v6, p0, Lorg/bouncycastle/crypto/agreement/kdf/ConcatenationKDFGenerator;->shared:[B

    iget-object v7, p0, Lorg/bouncycastle/crypto/agreement/kdf/ConcatenationKDFGenerator;->shared:[B

    array-length v7, v7

    invoke-interface {v3, v6, v1, v7}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v3, p0, Lorg/bouncycastle/crypto/agreement/kdf/ConcatenationKDFGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v6, p0, Lorg/bouncycastle/crypto/agreement/kdf/ConcatenationKDFGenerator;->otherInfo:[B

    iget-object v7, p0, Lorg/bouncycastle/crypto/agreement/kdf/ConcatenationKDFGenerator;->otherInfo:[B

    array-length v7, v7

    invoke-interface {v3, v6, v1, v7}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v3, p0, Lorg/bouncycastle/crypto/agreement/kdf/ConcatenationKDFGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v3, v4, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    add-int v3, p2, v0

    iget v6, p0, Lorg/bouncycastle/crypto/agreement/kdf/ConcatenationKDFGenerator;->hLen:I

    invoke-static {v4, v1, p1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lorg/bouncycastle/crypto/agreement/kdf/ConcatenationKDFGenerator;->hLen:I

    add-int/2addr v0, v3

    add-int/lit8 v3, v2, 0x1

    iget v6, p0, Lorg/bouncycastle/crypto/agreement/kdf/ConcatenationKDFGenerator;->hLen:I

    div-int v6, p3, v6

    if-lt v2, v6, :cond_2

    :goto_1
    if-ge v0, p3, :cond_1

    invoke-direct {p0, v3, v5}, Lorg/bouncycastle/crypto/agreement/kdf/ConcatenationKDFGenerator;->ItoOSP(I[B)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/kdf/ConcatenationKDFGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v3, v5

    invoke-interface {v2, v5, v1, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/kdf/ConcatenationKDFGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v3, p0, Lorg/bouncycastle/crypto/agreement/kdf/ConcatenationKDFGenerator;->shared:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/agreement/kdf/ConcatenationKDFGenerator;->shared:[B

    array-length v5, v5

    invoke-interface {v2, v3, v1, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/kdf/ConcatenationKDFGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v3, p0, Lorg/bouncycastle/crypto/agreement/kdf/ConcatenationKDFGenerator;->otherInfo:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/agreement/kdf/ConcatenationKDFGenerator;->otherInfo:[B

    array-length v5, v5

    invoke-interface {v2, v3, v1, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/kdf/ConcatenationKDFGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2, v4, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    add-int v2, p2, v0

    sub-int v0, p3, v0

    invoke-static {v4, v1, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return p3

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    move v3, v0

    move v0, v1

    goto :goto_1
.end method

.method public getDigest()Lorg/bouncycastle/crypto/Digest;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/kdf/ConcatenationKDFGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/DerivationParameters;)V
    .locals 2

    instance-of v0, p1, Lorg/bouncycastle/crypto/params/KDFParameters;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/bouncycastle/crypto/params/KDFParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/KDFParameters;->getSharedSecret()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/kdf/ConcatenationKDFGenerator;->shared:[B

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/KDFParameters;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/kdf/ConcatenationKDFGenerator;->otherInfo:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "KDF parameters required for KDF2Generator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
