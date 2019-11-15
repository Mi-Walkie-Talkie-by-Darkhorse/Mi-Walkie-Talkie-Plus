.class public Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/DigestDerivationFunction;


# instance fields
.field private counterStart:I

.field private digest:Lorg/bouncycastle/crypto/Digest;

.field private iv:[B

.field private shared:[B


# direct methods
.method protected constructor <init>(ILorg/bouncycastle/crypto/Digest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->counterStart:I

    iput-object p2, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    return-void
.end method


# virtual methods
.method public generateBytes([BII)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object/from16 v0, p1

    array-length v2, v0

    sub-int v2, v2, p3

    move/from16 v0, p2

    if-ge v2, v0, :cond_0

    new-instance v2, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v3, "output buffer too small"

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move/from16 v0, p3

    int-to-long v6, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v8

    const-wide v2, 0x1ffffffffL

    cmp-long v2, v6, v2

    if-lez v2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Output length too large"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    int-to-long v2, v8

    add-long/2addr v2, v6

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    int-to-long v4, v8

    div-long/2addr v2, v4

    long-to-int v9, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    new-array v10, v2, [B

    const/4 v2, 0x4

    new-array v11, v2, [B

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->counterStart:I

    const/4 v3, 0x0

    invoke-static {v2, v11, v3}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->counterStart:I

    and-int/lit16 v4, v2, -0x100

    const/4 v2, 0x0

    move v5, v2

    move/from16 v3, p2

    move/from16 v2, p3

    :goto_0
    if-ge v5, v9, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->shared:[B

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->shared:[B

    array-length v15, v15

    invoke-interface {v12, v13, v14, v15}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    const/4 v13, 0x0

    array-length v14, v11

    invoke-interface {v12, v11, v13, v14}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->iv:[B

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->iv:[B

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->iv:[B

    array-length v15, v15

    invoke-interface {v12, v13, v14, v15}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    const/4 v13, 0x0

    invoke-interface {v12, v10, v13}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    if-le v2, v8, :cond_4

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-static {v10, v12, v0, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v8

    sub-int/2addr v2, v8

    :goto_1
    const/4 v12, 0x3

    aget-byte v13, v11, v12

    add-int/lit8 v13, v13, 0x1

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    if-nez v13, :cond_3

    add-int/lit16 v4, v4, 0x100

    const/4 v12, 0x0

    invoke-static {v4, v11, v12}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-static {v10, v12, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->reset()V

    long-to-int v2, v6

    return v2
.end method

.method public getDigest()Lorg/bouncycastle/crypto/Digest;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/DerivationParameters;)V
    .locals 2

    instance-of v0, p1, Lorg/bouncycastle/crypto/params/KDFParameters;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/bouncycastle/crypto/params/KDFParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/KDFParameters;->getSharedSecret()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->shared:[B

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/KDFParameters;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->iv:[B

    :goto_0
    return-void

    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/crypto/params/ISO18033KDFParameters;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/bouncycastle/crypto/params/ISO18033KDFParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ISO18033KDFParameters;->getSeed()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->shared:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->iv:[B

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "KDF parameters required for KDF2Generator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
