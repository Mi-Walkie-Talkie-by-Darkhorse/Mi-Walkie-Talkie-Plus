.class public Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/DerivationFunction;


# instance fields
.field private digest:Lorg/bouncycastle/crypto/Digest;

.field private hLen:I

.field private seed:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->hLen:I

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
    .locals 7
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
    iget v0, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->hLen:I

    new-array v2, v0, [B

    const/4 v0, 0x4

    new-array v3, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    iget v0, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->hLen:I

    if-le p3, v0, :cond_3

    move v0, v1

    :cond_1
    invoke-direct {p0, v0, v3}, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->ItoOSP(I[B)V

    iget-object v4, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v5, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->seed:[B

    iget-object v6, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->seed:[B

    array-length v6, v6

    invoke-interface {v4, v5, v1, v6}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v4, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v5, v3

    invoke-interface {v4, v3, v1, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v4, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4, v2, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget v4, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->hLen:I

    mul-int/2addr v4, v0

    add-int/2addr v4, p2

    iget v5, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->hLen:I

    invoke-static {v2, v1, p1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    iget v4, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->hLen:I

    div-int v4, p3, v4

    if-lt v0, v4, :cond_1

    :goto_0
    iget v4, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->hLen:I

    mul-int/2addr v4, v0

    if-ge v4, p3, :cond_2

    invoke-direct {p0, v0, v3}, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->ItoOSP(I[B)V

    iget-object v4, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v5, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->seed:[B

    iget-object v6, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->seed:[B

    array-length v6, v6

    invoke-interface {v4, v5, v1, v6}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v4, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v5, v3

    invoke-interface {v4, v3, v1, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v3, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v3, v2, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget v3, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->hLen:I

    mul-int/2addr v3, v0

    add-int/2addr v3, p2

    iget v4, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->hLen:I

    mul-int/2addr v0, v4

    sub-int v0, p3, v0

    invoke-static {v2, v1, p1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    return p3

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getDigest()Lorg/bouncycastle/crypto/Digest;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/DerivationParameters;)V
    .locals 2

    instance-of v0, p1, Lorg/bouncycastle/crypto/params/MGFParameters;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MGF parameters required for MGF1Generator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Lorg/bouncycastle/crypto/params/MGFParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/MGFParameters;->getSeed()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->seed:[B

    return-void
.end method
