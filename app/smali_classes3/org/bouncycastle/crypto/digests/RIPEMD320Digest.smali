.class public Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;
.super Lorg/bouncycastle/crypto/digests/GeneralDigest;


# static fields
.field private static final DIGEST_LENGTH:I = 0x28


# instance fields
.field private H0:I

.field private H1:I

.field private H2:I

.field private H3:I

.field private H4:I

.field private H5:I

.field private H6:I

.field private H7:I

.field private H8:I

.field private H9:I

.field private X:[I

.field private xOff:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/GeneralDigest;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->reset()V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/GeneralDigest;-><init>(Lorg/bouncycastle/crypto/digests/GeneralDigest;)V

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->doCopy(Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;)V

    return-void
.end method

.method private RL(II)I
    .locals 1

    shl-int v0, p1, p2

    rsub-int/lit8 p2, p2, 0x20

    ushr-int/2addr p1, p2

    or-int/2addr p1, v0

    return p1
.end method

.method private doCopy(Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;)V
    .locals 4

    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/digests/GeneralDigest;->copyIn(Lorg/bouncycastle/crypto/digests/GeneralDigest;)V

    iget v0, p1, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H0:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H0:I

    iget v0, p1, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H1:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H1:I

    iget v0, p1, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H2:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H2:I

    iget v0, p1, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H3:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H3:I

    iget v0, p1, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H4:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H4:I

    iget v0, p1, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H5:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H5:I

    iget v0, p1, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H6:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H6:I

    iget v0, p1, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H7:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H7:I

    iget v0, p1, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H8:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H8:I

    iget v0, p1, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H9:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H9:I

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p1, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->xOff:I

    iput p1, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->xOff:I

    return-void
.end method

.method private f1(III)I
    .locals 0

    xor-int/2addr p1, p2

    xor-int/2addr p1, p3

    return p1
.end method

.method private f2(III)I
    .locals 0

    and-int/2addr p2, p1

    not-int p1, p1

    and-int/2addr p1, p3

    or-int/2addr p1, p2

    return p1
.end method

.method private f3(III)I
    .locals 0

    not-int p2, p2

    or-int/2addr p1, p2

    xor-int/2addr p1, p3

    return p1
.end method

.method private f4(III)I
    .locals 0

    and-int/2addr p1, p3

    not-int p3, p3

    and-int/2addr p2, p3

    or-int/2addr p1, p2

    return p1
.end method

.method private f5(III)I
    .locals 0

    not-int p3, p3

    or-int/2addr p2, p3

    xor-int/2addr p1, p2

    return p1
.end method

.method private unpackWord(I[BI)V
    .locals 2

    int-to-byte v0, p1

    aput-byte v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 p3, p3, 0x3

    ushr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    aput-byte p1, p2, p3

    return-void
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/Memoable;
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;-><init>(Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;)V

    return-object v0
.end method

.method public doFinal([BI)I
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/GeneralDigest;->finish()V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H0:I

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->unpackWord(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H1:I

    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, v0, p1, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->unpackWord(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H2:I

    add-int/lit8 v1, p2, 0x8

    invoke-direct {p0, v0, p1, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->unpackWord(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H3:I

    add-int/lit8 v1, p2, 0xc

    invoke-direct {p0, v0, p1, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->unpackWord(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H4:I

    add-int/lit8 v1, p2, 0x10

    invoke-direct {p0, v0, p1, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->unpackWord(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H5:I

    add-int/lit8 v1, p2, 0x14

    invoke-direct {p0, v0, p1, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->unpackWord(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H6:I

    add-int/lit8 v1, p2, 0x18

    invoke-direct {p0, v0, p1, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->unpackWord(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H7:I

    add-int/lit8 v1, p2, 0x1c

    invoke-direct {p0, v0, p1, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->unpackWord(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H8:I

    add-int/lit8 v1, p2, 0x20

    invoke-direct {p0, v0, p1, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->unpackWord(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H9:I

    add-int/lit8 p2, p2, 0x24

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->unpackWord(I[BI)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->reset()V

    const/16 p1, 0x28

    return p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "RIPEMD320"

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    const/16 v0, 0x28

    return v0
.end method

.method protected processBlock()V
    .locals 26

    move-object/from16 v0, p0

    iget v1, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H0:I

    iget v2, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H1:I

    iget v3, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H2:I

    iget v4, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H3:I

    iget v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H4:I

    iget v6, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H5:I

    iget v7, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H6:I

    iget v8, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H7:I

    iget v9, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H8:I

    iget v10, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H9:I

    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v11

    add-int/2addr v1, v11

    iget-object v11, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    add-int/2addr v1, v11

    const/16 v11, 0xb

    invoke-direct {v0, v1, v11}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    add-int/2addr v1, v5

    const/16 v13, 0xa

    invoke-direct {v0, v3, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v14

    add-int/2addr v5, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    add-int/2addr v5, v14

    const/16 v14, 0xe

    invoke-direct {v0, v5, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    add-int/2addr v5, v4

    invoke-direct {v0, v2, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    invoke-direct {v0, v5, v1, v2}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v16

    add-int v4, v4, v16

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v17, 0x2

    aget v15, v15, v17

    add-int/2addr v4, v15

    const/16 v15, 0xf

    invoke-direct {v0, v4, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {v0, v1, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    invoke-direct {v0, v4, v5, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v18

    add-int v3, v3, v18

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v19, 0x3

    aget v12, v12, v19

    add-int/2addr v3, v12

    const/16 v12, 0xc

    invoke-direct {v0, v3, v12}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {v0, v5, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    invoke-direct {v0, v3, v4, v5}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v19

    add-int v2, v2, v19

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v20, 0x4

    aget v12, v12, v20

    add-int/2addr v2, v12

    const/4 v12, 0x5

    invoke-direct {v0, v2, v12}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v0, v4, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v20

    add-int v1, v1, v20

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v15, v15, v12

    add-int/2addr v1, v15

    const/16 v15, 0x8

    invoke-direct {v0, v1, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    add-int/2addr v1, v5

    invoke-direct {v0, v3, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v21

    add-int v5, v5, v21

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x6

    aget v12, v12, v14

    add-int/2addr v5, v12

    const/4 v12, 0x7

    invoke-direct {v0, v5, v12}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    add-int/2addr v5, v4

    invoke-direct {v0, v2, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    invoke-direct {v0, v5, v1, v2}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v23

    add-int v4, v4, v23

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v14, v14, v12

    add-int/2addr v4, v14

    const/16 v14, 0x9

    invoke-direct {v0, v4, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {v0, v1, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    invoke-direct {v0, v4, v5, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v24

    add-int v3, v3, v24

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v12, v12, v15

    add-int/2addr v3, v12

    invoke-direct {v0, v3, v11}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {v0, v5, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    invoke-direct {v0, v3, v4, v5}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v2, v12

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v12, v12, v14

    add-int/2addr v2, v12

    const/16 v12, 0xd

    invoke-direct {v0, v2, v12}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v0, v4, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v25

    add-int v1, v1, v25

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v15, v15, v13

    add-int/2addr v1, v15

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    add-int/2addr v1, v5

    invoke-direct {v0, v3, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v15

    add-int/2addr v5, v15

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v15, v15, v11

    add-int/2addr v5, v15

    const/16 v15, 0xf

    invoke-direct {v0, v5, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    add-int/2addr v5, v4

    invoke-direct {v0, v2, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    invoke-direct {v0, v5, v1, v2}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v15

    add-int/2addr v4, v15

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v19, 0xc

    aget v15, v15, v19

    add-int/2addr v4, v15

    const/4 v15, 0x6

    invoke-direct {v0, v4, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {v0, v1, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    invoke-direct {v0, v4, v5, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v15

    add-int/2addr v3, v15

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v15, v15, v12

    add-int/2addr v3, v15

    const/4 v15, 0x7

    invoke-direct {v0, v3, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {v0, v5, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    invoke-direct {v0, v3, v4, v5}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v15

    add-int/2addr v2, v15

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v22, 0xe

    aget v15, v15, v22

    add-int/2addr v2, v15

    invoke-direct {v0, v2, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v0, v4, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v15

    add-int/2addr v1, v15

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v20, 0xf

    aget v15, v15, v20

    add-int/2addr v1, v15

    const/16 v15, 0x8

    invoke-direct {v0, v1, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    add-int/2addr v1, v5

    invoke-direct {v0, v3, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    invoke-direct {v0, v7, v8, v9}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v25

    add-int v6, v6, v25

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v21, 0x5

    aget v12, v12, v21

    add-int/2addr v6, v12

    const v12, 0x50a28be6

    add-int/2addr v6, v12

    invoke-direct {v0, v6, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    add-int/2addr v6, v10

    invoke-direct {v0, v8, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    invoke-direct {v0, v6, v7, v8}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v15

    add-int/2addr v10, v15

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v22, 0xe

    aget v15, v15, v22

    add-int/2addr v10, v15

    add-int/2addr v10, v12

    invoke-direct {v0, v10, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v10

    add-int/2addr v10, v9

    invoke-direct {v0, v7, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    invoke-direct {v0, v10, v6, v7}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v15

    add-int/2addr v9, v15

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v24, 0x7

    aget v15, v15, v24

    add-int/2addr v9, v15

    add-int/2addr v9, v12

    invoke-direct {v0, v9, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    add-int/2addr v9, v8

    invoke-direct {v0, v6, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    invoke-direct {v0, v9, v10, v6}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v15

    add-int/2addr v8, v15

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v18, 0x0

    aget v15, v15, v18

    add-int/2addr v8, v15

    add-int/2addr v8, v12

    invoke-direct {v0, v8, v11}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    add-int/2addr v8, v7

    invoke-direct {v0, v10, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v10

    invoke-direct {v0, v8, v9, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v15

    add-int/2addr v7, v15

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v15, v15, v14

    add-int/2addr v7, v15

    add-int/2addr v7, v12

    const/16 v15, 0xd

    invoke-direct {v0, v7, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    add-int/2addr v7, v6

    invoke-direct {v0, v9, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    invoke-direct {v0, v7, v8, v9}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v15

    add-int/2addr v6, v15

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v15, v15, v17

    add-int/2addr v6, v15

    add-int/2addr v6, v12

    const/16 v15, 0xf

    invoke-direct {v0, v6, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    add-int/2addr v6, v10

    invoke-direct {v0, v8, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    invoke-direct {v0, v6, v7, v8}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v20

    add-int v10, v10, v20

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v14, v14, v11

    add-int/2addr v10, v14

    add-int/2addr v10, v12

    invoke-direct {v0, v10, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v10

    add-int/2addr v10, v9

    invoke-direct {v0, v7, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    invoke-direct {v0, v10, v6, v7}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v14

    add-int/2addr v9, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v15, 0x4

    aget v14, v14, v15

    add-int/2addr v9, v14

    add-int/2addr v9, v12

    const/4 v14, 0x5

    invoke-direct {v0, v9, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    add-int/2addr v9, v8

    invoke-direct {v0, v6, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    invoke-direct {v0, v9, v10, v6}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v14

    add-int/2addr v8, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v15, 0xd

    aget v14, v14, v15

    add-int/2addr v8, v14

    add-int/2addr v8, v12

    const/4 v14, 0x7

    invoke-direct {v0, v8, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    add-int/2addr v8, v7

    invoke-direct {v0, v10, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v10

    invoke-direct {v0, v8, v9, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v15

    add-int/2addr v7, v15

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v23, 0x6

    aget v15, v15, v23

    add-int/2addr v7, v15

    add-int/2addr v7, v12

    invoke-direct {v0, v7, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    add-int/2addr v7, v6

    invoke-direct {v0, v9, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    invoke-direct {v0, v7, v8, v9}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v14

    add-int/2addr v6, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v15, 0xf

    aget v14, v14, v15

    add-int/2addr v6, v14

    add-int/2addr v6, v12

    const/16 v14, 0x8

    invoke-direct {v0, v6, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    add-int/2addr v6, v10

    invoke-direct {v0, v8, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    invoke-direct {v0, v6, v7, v8}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v15

    add-int/2addr v10, v15

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v15, v15, v14

    add-int/2addr v10, v15

    add-int/2addr v10, v12

    invoke-direct {v0, v10, v11}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v10

    add-int/2addr v10, v9

    invoke-direct {v0, v7, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    invoke-direct {v0, v10, v6, v7}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v14

    add-int/2addr v9, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    add-int/2addr v9, v14

    add-int/2addr v9, v12

    const/16 v14, 0xe

    invoke-direct {v0, v9, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    add-int/2addr v9, v8

    invoke-direct {v0, v6, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    invoke-direct {v0, v9, v10, v6}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v15

    add-int/2addr v8, v15

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v15, v15, v13

    add-int/2addr v8, v15

    add-int/2addr v8, v12

    invoke-direct {v0, v8, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    add-int/2addr v8, v7

    invoke-direct {v0, v10, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v10

    invoke-direct {v0, v8, v9, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v14

    add-int/2addr v7, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v15, 0x3

    aget v14, v14, v15

    add-int/2addr v7, v14

    add-int/2addr v7, v12

    const/16 v14, 0xc

    invoke-direct {v0, v7, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    add-int/2addr v7, v6

    invoke-direct {v0, v9, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    invoke-direct {v0, v7, v8, v9}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v15

    add-int/2addr v6, v15

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v15, v15, v14

    add-int/2addr v6, v15

    add-int/2addr v6, v12

    const/4 v12, 0x6

    invoke-direct {v0, v6, v12}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    add-int/2addr v6, v10

    invoke-direct {v0, v8, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    invoke-direct {v0, v6, v2, v3}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v5, v12

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x7

    aget v12, v12, v14

    add-int/2addr v5, v12

    const v12, 0x5a827999

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    add-int/2addr v5, v4

    invoke-direct {v0, v2, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    invoke-direct {v0, v5, v6, v2}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v14

    add-int/2addr v4, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v15, 0x4

    aget v14, v14, v15

    add-int/2addr v4, v14

    add-int/2addr v4, v12

    const/4 v14, 0x6

    invoke-direct {v0, v4, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {v0, v6, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    invoke-direct {v0, v4, v5, v6}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v14

    add-int/2addr v3, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v15, 0xd

    aget v14, v14, v15

    add-int/2addr v3, v14

    add-int/2addr v3, v12

    const/16 v14, 0x8

    invoke-direct {v0, v3, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {v0, v5, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    invoke-direct {v0, v3, v4, v5}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v14

    add-int/2addr v2, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    add-int/2addr v2, v14

    add-int/2addr v2, v12

    const/16 v14, 0xd

    invoke-direct {v0, v2, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    add-int/2addr v2, v6

    invoke-direct {v0, v4, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v14

    add-int/2addr v6, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v14, v14, v13

    add-int/2addr v6, v14

    add-int/2addr v6, v12

    invoke-direct {v0, v6, v11}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    add-int/2addr v6, v5

    invoke-direct {v0, v3, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    invoke-direct {v0, v6, v2, v3}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v14

    add-int/2addr v5, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v15, 0x6

    aget v14, v14, v15

    add-int/2addr v5, v14

    add-int/2addr v5, v12

    const/16 v14, 0x9

    invoke-direct {v0, v5, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    add-int/2addr v5, v4

    invoke-direct {v0, v2, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    invoke-direct {v0, v5, v6, v2}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v14

    add-int/2addr v4, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v15, 0xf

    aget v14, v14, v15

    add-int/2addr v4, v14

    add-int/2addr v4, v12

    const/4 v14, 0x7

    invoke-direct {v0, v4, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {v0, v6, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    invoke-direct {v0, v4, v5, v6}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v14

    add-int/2addr v3, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v15, 0x3

    aget v14, v14, v15

    add-int/2addr v3, v14

    add-int/2addr v3, v12

    const/16 v14, 0xf

    invoke-direct {v0, v3, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {v0, v5, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    invoke-direct {v0, v3, v4, v5}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v14

    add-int/2addr v2, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v15, 0xc

    aget v14, v14, v15

    add-int/2addr v2, v14

    add-int/2addr v2, v12

    const/4 v14, 0x7

    invoke-direct {v0, v2, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    add-int/2addr v2, v6

    invoke-direct {v0, v4, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v14

    add-int/2addr v6, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    add-int/2addr v6, v14

    add-int/2addr v6, v12

    const/16 v14, 0xc

    invoke-direct {v0, v6, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    add-int/2addr v6, v5

    invoke-direct {v0, v3, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    invoke-direct {v0, v6, v2, v3}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v14

    add-int/2addr v5, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v15, 0x9

    aget v14, v14, v15

    add-int/2addr v5, v14

    add-int/2addr v5, v12

    const/16 v14, 0xf

    invoke-direct {v0, v5, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    add-int/2addr v5, v4

    invoke-direct {v0, v2, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    invoke-direct {v0, v5, v6, v2}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v14

    add-int/2addr v4, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v15, 0x5

    aget v14, v14, v15

    add-int/2addr v4, v14

    add-int/2addr v4, v12

    const/16 v14, 0x9

    invoke-direct {v0, v4, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {v0, v6, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    invoke-direct {v0, v4, v5, v6}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v14

    add-int/2addr v3, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v14, v14, v17

    add-int/2addr v3, v14

    add-int/2addr v3, v12

    invoke-direct {v0, v3, v11}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {v0, v5, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    invoke-direct {v0, v3, v4, v5}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v14

    add-int/2addr v2, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v15, 0xe

    aget v14, v14, v15

    add-int/2addr v2, v14

    add-int/2addr v2, v12

    const/4 v14, 0x7

    invoke-direct {v0, v2, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    add-int/2addr v2, v6

    invoke-direct {v0, v4, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v14

    add-int/2addr v6, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v14, v14, v11

    add-int/2addr v6, v14

    add-int/2addr v6, v12

    const/16 v14, 0xd

    invoke-direct {v0, v6, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    add-int/2addr v6, v5

    invoke-direct {v0, v3, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    invoke-direct {v0, v6, v2, v3}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v14

    add-int/2addr v5, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v15, 0x8

    aget v14, v14, v15

    add-int/2addr v5, v14

    add-int/2addr v5, v12

    const/16 v12, 0xc

    invoke-direct {v0, v5, v12}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    add-int/2addr v5, v4

    invoke-direct {v0, v2, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    invoke-direct {v0, v1, v7, v8}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v10, v12

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x6

    aget v12, v12, v14

    add-int/2addr v10, v12

    const v12, 0x5c4dd124

    add-int/2addr v10, v12

    const/16 v14, 0x9

    invoke-direct {v0, v10, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v10

    add-int/2addr v10, v9

    invoke-direct {v0, v7, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    invoke-direct {v0, v10, v1, v7}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v14

    add-int/2addr v9, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v14, v14, v11

    add-int/2addr v9, v14

    add-int/2addr v9, v12

    const/16 v14, 0xd

    invoke-direct {v0, v9, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    add-int/2addr v9, v8

    invoke-direct {v0, v1, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    invoke-direct {v0, v9, v10, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v14

    add-int/2addr v8, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v15, 0x3

    aget v14, v14, v15

    add-int/2addr v8, v14

    add-int/2addr v8, v12

    const/16 v14, 0xf

    invoke-direct {v0, v8, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    add-int/2addr v8, v7

    invoke-direct {v0, v10, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v10

    invoke-direct {v0, v8, v9, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v14

    add-int/2addr v7, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v15, 0x7

    aget v14, v14, v15

    add-int/2addr v7, v14

    add-int/2addr v7, v12

    invoke-direct {v0, v7, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    add-int/2addr v7, v1

    invoke-direct {v0, v9, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    invoke-direct {v0, v7, v8, v9}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v14

    add-int/2addr v1, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    add-int/2addr v1, v14

    add-int/2addr v1, v12

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    add-int/2addr v1, v10

    invoke-direct {v0, v8, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    invoke-direct {v0, v1, v7, v8}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v14

    add-int/2addr v10, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v15, 0xd

    aget v14, v14, v15

    add-int/2addr v10, v14

    add-int/2addr v10, v12

    const/16 v14, 0x8

    invoke-direct {v0, v10, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v10

    add-int/2addr v10, v9

    invoke-direct {v0, v7, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    invoke-direct {v0, v10, v1, v7}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v14

    add-int/2addr v9, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v15, 0x5

    aget v14, v14, v15

    add-int/2addr v9, v14

    add-int/2addr v9, v12

    const/16 v14, 0x9

    invoke-direct {v0, v9, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    add-int/2addr v9, v8

    invoke-direct {v0, v1, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    invoke-direct {v0, v9, v10, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v14

    add-int/2addr v8, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v14, v14, v13

    add-int/2addr v8, v14

    add-int/2addr v8, v12

    invoke-direct {v0, v8, v11}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    add-int/2addr v8, v7

    invoke-direct {v0, v10, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v10

    invoke-direct {v0, v8, v9, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v14

    add-int/2addr v7, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v15, 0xe

    aget v14, v14, v15

    add-int/2addr v7, v14

    add-int/2addr v7, v12

    const/4 v14, 0x7

    invoke-direct {v0, v7, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    add-int/2addr v7, v1

    invoke-direct {v0, v9, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    invoke-direct {v0, v7, v8, v9}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v15

    add-int/2addr v1, v15

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v20, 0xf

    aget v15, v15, v20

    add-int/2addr v1, v15

    add-int/2addr v1, v12

    invoke-direct {v0, v1, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    add-int/2addr v1, v10

    invoke-direct {v0, v8, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    invoke-direct {v0, v1, v7, v8}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v14

    add-int/2addr v10, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v15, 0x8

    aget v14, v14, v15

    add-int/2addr v10, v14

    add-int/2addr v10, v12

    const/16 v14, 0xc

    invoke-direct {v0, v10, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v10

    add-int/2addr v10, v9

    invoke-direct {v0, v7, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    invoke-direct {v0, v10, v1, v7}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v15

    add-int/2addr v9, v15

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v15, v15, v14

    add-int/2addr v9, v15

    add-int/2addr v9, v12

    const/4 v14, 0x7

    invoke-direct {v0, v9, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    add-int/2addr v9, v8

    invoke-direct {v0, v1, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    invoke-direct {v0, v9, v10, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v14

    add-int/2addr v8, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v15, 0x4

    aget v14, v14, v15

    add-int/2addr v8, v14

    add-int/2addr v8, v12

    const/4 v14, 0x6

    invoke-direct {v0, v8, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    add-int/2addr v8, v7

    invoke-direct {v0, v10, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v10

    invoke-direct {v0, v8, v9, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v14

    add-int/2addr v7, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v15, 0x9

    aget v14, v14, v15

    add-int/2addr v7, v14

    add-int/2addr v7, v12

    const/16 v14, 0xf

    invoke-direct {v0, v7, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    add-int/2addr v7, v1

    invoke-direct {v0, v9, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    invoke-direct {v0, v7, v8, v9}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v14

    add-int/2addr v1, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    add-int/2addr v1, v14

    add-int/2addr v1, v12

    const/16 v14, 0xd

    invoke-direct {v0, v1, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    add-int/2addr v1, v10

    invoke-direct {v0, v8, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    invoke-direct {v0, v1, v7, v8}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v14

    add-int/2addr v10, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v14, v14, v17

    add-int/2addr v10, v14

    add-int/2addr v10, v12

    invoke-direct {v0, v10, v11}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v10

    add-int/2addr v10, v9

    invoke-direct {v0, v7, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    invoke-direct {v0, v5, v6, v7}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v4, v12

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x3

    aget v12, v12, v14

    add-int/2addr v4, v12

    const v12, 0x6ed9eba1

    add-int/2addr v4, v12

    invoke-direct {v0, v4, v11}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {v0, v6, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    invoke-direct {v0, v4, v5, v6}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v14

    add-int/2addr v3, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v14, v14, v13

    add-int/2addr v3, v14

    add-int/2addr v3, v12

    const/16 v14, 0xd

    invoke-direct {v0, v3, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    add-int/2addr v3, v7

    invoke-direct {v0, v5, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    invoke-direct {v0, v3, v4, v5}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v14

    add-int/2addr v7, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v15, 0xe

    aget v14, v14, v15

    add-int/2addr v7, v14

    add-int/2addr v7, v12

    const/4 v14, 0x6

    invoke-direct {v0, v7, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    add-int/2addr v7, v6

    invoke-direct {v0, v4, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    invoke-direct {v0, v7, v3, v4}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v14

    add-int/2addr v6, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v15, 0x4

    aget v14, v14, v15

    add-int/2addr v6, v14

    add-int/2addr v6, v12

    const/4 v14, 0x7

    invoke-direct {v0, v6, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    add-int/2addr v6, v5

    invoke-direct {v0, v3, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    invoke-direct {v0, v6, v7, v3}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v14

    add-int/2addr v5, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v15, 0x9

    aget v14, v14, v15

    add-int/2addr v5, v14

    add-int/2addr v5, v12

    const/16 v14, 0xe

    invoke-direct {v0, v5, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    add-int/2addr v5, v4

    invoke-direct {v0, v7, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    invoke-direct {v0, v5, v6, v7}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v14

    add-int/2addr v4, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v15, 0xf

    aget v14, v14, v15

    add-int/2addr v4, v14

    add-int/2addr v4, v12

    const/16 v14, 0x9

    invoke-direct {v0, v4, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {v0, v6, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    invoke-direct {v0, v4, v5, v6}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v14

    add-int/2addr v3, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v15, 0x8

    aget v14, v14, v15

    add-int/2addr v3, v14

    add-int/2addr v3, v12

    const/16 v14, 0xd

    invoke-direct {v0, v3, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    add-int/2addr v3, v7

    invoke-direct {v0, v5, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    invoke-direct {v0, v3, v4, v5}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v14

    add-int/2addr v7, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    add-int/2addr v7, v14

    add-int/2addr v7, v12

    const/16 v14, 0xf

    invoke-direct {v0, v7, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    add-int/2addr v7, v6

    invoke-direct {v0, v4, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    invoke-direct {v0, v7, v3, v4}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v14

    add-int/2addr v6, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v14, v14, v17

    add-int/2addr v6, v14

    add-int/2addr v6, v12

    const/16 v14, 0xe

    invoke-direct {v0, v6, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    add-int/2addr v6, v5

    invoke-direct {v0, v3, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    invoke-direct {v0, v6, v7, v3}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v14

    add-int/2addr v5, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v15, 0x7

    aget v14, v14, v15

    add-int/2addr v5, v14

    add-int/2addr v5, v12

    const/16 v14, 0x8

    invoke-direct {v0, v5, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    add-int/2addr v5, v4

    invoke-direct {v0, v7, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    invoke-direct {v0, v5, v6, v7}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v14

    add-int/2addr v4, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    add-int/2addr v4, v14

    add-int/2addr v4, v12

    const/16 v14, 0xd

    invoke-direct {v0, v4, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {v0, v6, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    invoke-direct {v0, v4, v5, v6}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v14

    add-int/2addr v3, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v15, 0x6

    aget v14, v14, v15

    add-int/2addr v3, v14

    add-int/2addr v3, v12

    invoke-direct {v0, v3, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    add-int/2addr v3, v7

    invoke-direct {v0, v5, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    invoke-direct {v0, v3, v4, v5}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v14

    add-int/2addr v7, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v15, 0xd

    aget v14, v14, v15

    add-int/2addr v7, v14

    add-int/2addr v7, v12

    const/4 v14, 0x5

    invoke-direct {v0, v7, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    add-int/2addr v7, v6

    invoke-direct {v0, v4, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    invoke-direct {v0, v7, v3, v4}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v14

    add-int/2addr v6, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v14, v14, v11

    add-int/2addr v6, v14

    add-int/2addr v6, v12

    const/16 v14, 0xc

    invoke-direct {v0, v6, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    add-int/2addr v6, v5

    invoke-direct {v0, v3, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    invoke-direct {v0, v6, v7, v3}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v14

    add-int/2addr v5, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v15, 0x5

    aget v14, v14, v15

    add-int/2addr v5, v14

    add-int/2addr v5, v12

    const/4 v14, 0x7

    invoke-direct {v0, v5, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    add-int/2addr v5, v4

    invoke-direct {v0, v7, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    invoke-direct {v0, v5, v6, v7}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v14

    add-int/2addr v4, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v15, 0xc

    aget v14, v14, v15

    add-int/2addr v4, v14

    add-int/2addr v4, v12

    const/4 v12, 0x5

    invoke-direct {v0, v4, v12}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {v0, v6, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    invoke-direct {v0, v10, v1, v2}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v9, v12

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xf

    aget v12, v12, v14

    add-int/2addr v9, v12

    const v12, 0x6d703ef3

    add-int/2addr v9, v12

    const/16 v14, 0x9

    invoke-direct {v0, v9, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    add-int/2addr v9, v8

    invoke-direct {v0, v1, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    invoke-direct {v0, v9, v10, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v14

    add-int/2addr v8, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v15, 0x5

    aget v14, v14, v15

    add-int/2addr v8, v14

    add-int/2addr v8, v12

    const/4 v14, 0x7

    invoke-direct {v0, v8, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    add-int/2addr v8, v2

    invoke-direct {v0, v10, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v10

    invoke-direct {v0, v8, v9, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v14

    add-int/2addr v2, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    add-int/2addr v2, v14

    add-int/2addr v2, v12

    const/16 v14, 0xf

    invoke-direct {v0, v2, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v0, v9, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    invoke-direct {v0, v2, v8, v9}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v14

    add-int/2addr v1, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v15, 0x3

    aget v14, v14, v15

    add-int/2addr v1, v14

    add-int/2addr v1, v12

    invoke-direct {v0, v1, v11}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    add-int/2addr v1, v10

    invoke-direct {v0, v8, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    invoke-direct {v0, v1, v2, v8}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v14

    add-int/2addr v10, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v15, 0x7

    aget v14, v14, v15

    add-int/2addr v10, v14

    add-int/2addr v10, v12

    const/16 v14, 0x8

    invoke-direct {v0, v10, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v10

    add-int/2addr v10, v9

    invoke-direct {v0, v2, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    invoke-direct {v0, v10, v1, v2}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v14

    add-int/2addr v9, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v15, 0xe

    aget v14, v14, v15

    add-int/2addr v9, v14

    add-int/2addr v9, v12

    const/4 v14, 0x6

    invoke-direct {v0, v9, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    add-int/2addr v9, v8

    invoke-direct {v0, v1, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    invoke-direct {v0, v9, v10, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v15

    add-int/2addr v8, v15

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v15, v15, v14

    add-int/2addr v8, v15

    add-int/2addr v8, v12

    invoke-direct {v0, v8, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    add-int/2addr v8, v2

    invoke-direct {v0, v10, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v10

    invoke-direct {v0, v8, v9, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v14

    add-int/2addr v2, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v15, 0x9

    aget v14, v14, v15

    add-int/2addr v2, v14

    add-int/2addr v2, v12

    const/16 v14, 0xe

    invoke-direct {v0, v2, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v0, v9, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    invoke-direct {v0, v2, v8, v9}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v14

    add-int/2addr v1, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v14, v14, v11

    add-int/2addr v1, v14

    add-int/2addr v1, v12

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    add-int/2addr v1, v10

    invoke-direct {v0, v8, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    invoke-direct {v0, v1, v2, v8}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v14

    add-int/2addr v10, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v15, 0x8

    aget v14, v14, v15

    add-int/2addr v10, v14

    add-int/2addr v10, v12

    const/16 v14, 0xd

    invoke-direct {v0, v10, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v10

    add-int/2addr v10, v9

    invoke-direct {v0, v2, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    invoke-direct {v0, v10, v1, v2}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v14

    add-int/2addr v9, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v15, 0xc

    aget v14, v14, v15

    add-int/2addr v9, v14

    add-int/2addr v9, v12

    const/4 v14, 0x5

    invoke-direct {v0, v9, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    add-int/2addr v9, v8

    invoke-direct {v0, v1, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    invoke-direct {v0, v9, v10, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v14

    add-int/2addr v8, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v14, v14, v17

    add-int/2addr v8, v14

    add-int/2addr v8, v12

    const/16 v14, 0xe

    invoke-direct {v0, v8, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    add-int/2addr v8, v2

    invoke-direct {v0, v10, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v10

    invoke-direct {v0, v8, v9, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v14

    add-int/2addr v2, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v14, v14, v13

    add-int/2addr v2, v14

    add-int/2addr v2, v12

    const/16 v14, 0xd

    invoke-direct {v0, v2, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v0, v9, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    invoke-direct {v0, v2, v8, v9}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v15

    add-int/2addr v1, v15

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v18, 0x0

    aget v15, v15, v18

    add-int/2addr v1, v15

    add-int/2addr v1, v12

    invoke-direct {v0, v1, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    add-int/2addr v1, v10

    invoke-direct {v0, v8, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    invoke-direct {v0, v1, v2, v8}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v14

    add-int/2addr v10, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v15, 0x4

    aget v14, v14, v15

    add-int/2addr v10, v14

    add-int/2addr v10, v12

    const/4 v14, 0x7

    invoke-direct {v0, v10, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v10

    add-int/2addr v10, v9

    invoke-direct {v0, v2, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    invoke-direct {v0, v10, v1, v2}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v14

    add-int/2addr v9, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v15, 0xd

    aget v14, v14, v15

    add-int/2addr v9, v14

    add-int/2addr v9, v12

    const/4 v12, 0x5

    invoke-direct {v0, v9, v12}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    add-int/2addr v9, v8

    invoke-direct {v0, v1, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    invoke-direct {v0, v4, v5, v6}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v8, v12

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x1

    aget v12, v12, v14

    add-int/2addr v8, v12

    const v12, -0x70e44324

    add-int/2addr v8, v12

    invoke-direct {v0, v8, v11}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    add-int/2addr v8, v7

    invoke-direct {v0, v5, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    invoke-direct {v0, v8, v4, v5}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v14

    add-int/2addr v7, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v15, 0x9

    aget v14, v14, v15

    add-int/2addr v7, v14

    add-int/2addr v7, v12

    const/16 v14, 0xc

    invoke-direct {v0, v7, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    add-int/2addr v7, v6

    invoke-direct {v0, v4, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    invoke-direct {v0, v7, v8, v4}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v14

    add-int/2addr v6, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v14, v14, v11

    add-int/2addr v6, v14

    add-int/2addr v6, v12

    const/16 v14, 0xe

    invoke-direct {v0, v6, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    add-int/2addr v6, v5

    invoke-direct {v0, v8, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    invoke-direct {v0, v6, v7, v8}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v14

    add-int/2addr v5, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v14, v14, v13

    add-int/2addr v5, v14

    add-int/2addr v5, v12

    const/16 v14, 0xf

    invoke-direct {v0, v5, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    add-int/2addr v5, v4

    invoke-direct {v0, v7, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    invoke-direct {v0, v5, v6, v7}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v14

    add-int/2addr v4, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    add-int/2addr v4, v14

    add-int/2addr v4, v12

    const/16 v14, 0xe

    invoke-direct {v0, v4, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    add-int/2addr v4, v8

    invoke-direct {v0, v6, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    invoke-direct {v0, v4, v5, v6}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v14

    add-int/2addr v8, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v15, 0x8

    aget v14, v14, v15

    add-int/2addr v8, v14

    add-int/2addr v8, v12

    const/16 v14, 0xf

    invoke-direct {v0, v8, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    add-int/2addr v8, v7

    invoke-direct {v0, v5, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    invoke-direct {v0, v8, v4, v5}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v14

    add-int/2addr v7, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v15, 0xc

    aget v14, v14, v15

    add-int/2addr v7, v14

    add-int/2addr v7, v12

    const/16 v14, 0x9

    invoke-direct {v0, v7, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    add-int/2addr v7, v6

    invoke-direct {v0, v4, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    invoke-direct {v0, v7, v8, v4}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v14

    add-int/2addr v6, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v15, 0x4

    aget v14, v14, v15

    add-int/2addr v6, v14

    add-int/2addr v6, v12

    const/16 v14, 0x8

    invoke-direct {v0, v6, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    add-int/2addr v6, v5

    invoke-direct {v0, v8, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    invoke-direct {v0, v6, v7, v8}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v14

    add-int/2addr v5, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v15, 0xd

    aget v14, v14, v15

    add-int/2addr v5, v14

    add-int/2addr v5, v12

    const/16 v14, 0x9

    invoke-direct {v0, v5, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    add-int/2addr v5, v4

    invoke-direct {v0, v7, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    invoke-direct {v0, v5, v6, v7}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v14

    add-int/2addr v4, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v15, 0x3

    aget v14, v14, v15

    add-int/2addr v4, v14

    add-int/2addr v4, v12

    const/16 v14, 0xe

    invoke-direct {v0, v4, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    add-int/2addr v4, v8

    invoke-direct {v0, v6, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    invoke-direct {v0, v4, v5, v6}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v14

    add-int/2addr v8, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v15, 0x7

    aget v14, v14, v15

    add-int/2addr v8, v14

    add-int/2addr v8, v12

    const/4 v14, 0x5

    invoke-direct {v0, v8, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    add-int/2addr v8, v7

    invoke-direct {v0, v5, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    invoke-direct {v0, v8, v4, v5}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v14

    add-int/2addr v7, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v15, 0xf

    aget v14, v14, v15

    add-int/2addr v7, v14

    add-int/2addr v7, v12

    const/4 v14, 0x6

    invoke-direct {v0, v7, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    add-int/2addr v7, v6

    invoke-direct {v0, v4, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    invoke-direct {v0, v7, v8, v4}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v14

    add-int/2addr v6, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v15, 0xe

    aget v14, v14, v15

    add-int/2addr v6, v14

    add-int/2addr v6, v12

    const/16 v14, 0x8

    invoke-direct {v0, v6, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    add-int/2addr v6, v5

    invoke-direct {v0, v8, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    invoke-direct {v0, v6, v7, v8}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v14

    add-int/2addr v5, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v15, 0x5

    aget v14, v14, v15

    add-int/2addr v5, v14

    add-int/2addr v5, v12

    const/4 v14, 0x6

    invoke-direct {v0, v5, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    add-int/2addr v5, v4

    invoke-direct {v0, v7, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    invoke-direct {v0, v5, v6, v7}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v15

    add-int/2addr v4, v15

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v15, v15, v14

    add-int/2addr v4, v15

    add-int/2addr v4, v12

    const/4 v14, 0x5

    invoke-direct {v0, v4, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    add-int/2addr v4, v8

    invoke-direct {v0, v6, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    invoke-direct {v0, v4, v5, v6}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v14

    add-int/2addr v8, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v14, v14, v17

    add-int/2addr v8, v14

    add-int/2addr v8, v12

    const/16 v12, 0xc

    invoke-direct {v0, v8, v12}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    add-int/2addr v8, v7

    invoke-direct {v0, v5, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    invoke-direct {v0, v9, v10, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v3, v12

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0x8

    aget v12, v12, v14

    add-int/2addr v3, v12

    const v12, 0x7a6d76e9

    add-int/2addr v3, v12

    const/16 v14, 0xf

    invoke-direct {v0, v3, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {v0, v10, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v10

    invoke-direct {v0, v3, v9, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v14

    add-int/2addr v2, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v15, 0x6

    aget v14, v14, v15

    add-int/2addr v2, v14

    add-int/2addr v2, v12

    const/4 v14, 0x5

    invoke-direct {v0, v2, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v0, v9, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    invoke-direct {v0, v2, v3, v9}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v14

    add-int/2addr v1, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v15, 0x4

    aget v14, v14, v15

    add-int/2addr v1, v14

    add-int/2addr v1, v12

    const/16 v14, 0x8

    invoke-direct {v0, v1, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    add-int/2addr v1, v10

    invoke-direct {v0, v3, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v14

    add-int/2addr v10, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    add-int/2addr v10, v14

    add-int/2addr v10, v12

    invoke-direct {v0, v10, v11}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v10

    add-int/2addr v10, v9

    invoke-direct {v0, v2, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    invoke-direct {v0, v10, v1, v2}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v14

    add-int/2addr v9, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v15, 0x3

    aget v14, v14, v15

    add-int/2addr v9, v14

    add-int/2addr v9, v12

    const/16 v14, 0xe

    invoke-direct {v0, v9, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    add-int/2addr v9, v3

    invoke-direct {v0, v1, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    invoke-direct {v0, v9, v10, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v15

    add-int/2addr v3, v15

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v15, v15, v11

    add-int/2addr v3, v15

    add-int/2addr v3, v12

    invoke-direct {v0, v3, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {v0, v10, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v10

    invoke-direct {v0, v3, v9, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v14

    add-int/2addr v2, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v15, 0xf

    aget v14, v14, v15

    add-int/2addr v2, v14

    add-int/2addr v2, v12

    const/4 v14, 0x6

    invoke-direct {v0, v2, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v0, v9, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    invoke-direct {v0, v2, v3, v9}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v14

    add-int/2addr v1, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    add-int/2addr v1, v14

    add-int/2addr v1, v12

    const/16 v14, 0xe

    invoke-direct {v0, v1, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    add-int/2addr v1, v10

    invoke-direct {v0, v3, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v14

    add-int/2addr v10, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v15, 0x5

    aget v14, v14, v15

    add-int/2addr v10, v14

    add-int/2addr v10, v12

    const/4 v14, 0x6

    invoke-direct {v0, v10, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v10

    add-int/2addr v10, v9

    invoke-direct {v0, v2, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    invoke-direct {v0, v10, v1, v2}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v14

    add-int/2addr v9, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v15, 0xc

    aget v14, v14, v15

    add-int/2addr v9, v14

    add-int/2addr v9, v12

    const/16 v14, 0x9

    invoke-direct {v0, v9, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    add-int/2addr v9, v3

    invoke-direct {v0, v1, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    invoke-direct {v0, v9, v10, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v14

    add-int/2addr v3, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v14, v14, v17

    add-int/2addr v3, v14

    add-int/2addr v3, v12

    const/16 v14, 0xc

    invoke-direct {v0, v3, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {v0, v10, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v10

    invoke-direct {v0, v3, v9, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v14

    add-int/2addr v2, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v15, 0xd

    aget v14, v14, v15

    add-int/2addr v2, v14

    add-int/2addr v2, v12

    const/16 v14, 0x9

    invoke-direct {v0, v2, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v0, v9, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    invoke-direct {v0, v2, v3, v9}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v15

    add-int/2addr v1, v15

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v15, v15, v14

    add-int/2addr v1, v15

    add-int/2addr v1, v12

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    add-int/2addr v1, v10

    invoke-direct {v0, v3, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v14

    add-int/2addr v10, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v15, 0x7

    aget v14, v14, v15

    add-int/2addr v10, v14

    add-int/2addr v10, v12

    const/4 v14, 0x5

    invoke-direct {v0, v10, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v10

    add-int/2addr v10, v9

    invoke-direct {v0, v2, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    invoke-direct {v0, v10, v1, v2}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v14

    add-int/2addr v9, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v14, v14, v13

    add-int/2addr v9, v14

    add-int/2addr v9, v12

    const/16 v14, 0xf

    invoke-direct {v0, v9, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    add-int/2addr v9, v3

    invoke-direct {v0, v1, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    invoke-direct {v0, v9, v10, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v14

    add-int/2addr v3, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v15, 0xe

    aget v14, v14, v15

    add-int/2addr v3, v14

    add-int/2addr v3, v12

    const/16 v12, 0x8

    invoke-direct {v0, v3, v12}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {v0, v10, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v10

    invoke-direct {v0, v8, v9, v5}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v12

    add-int/2addr v7, v12

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x4

    aget v12, v12, v14

    add-int/2addr v7, v12

    const v12, -0x56ac02b2

    add-int/2addr v7, v12

    const/16 v14, 0x9

    invoke-direct {v0, v7, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    add-int/2addr v7, v6

    invoke-direct {v0, v9, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    invoke-direct {v0, v7, v8, v9}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v14

    add-int/2addr v6, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    add-int/2addr v6, v14

    add-int/2addr v6, v12

    const/16 v14, 0xf

    invoke-direct {v0, v6, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    add-int/2addr v6, v5

    invoke-direct {v0, v8, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    invoke-direct {v0, v6, v7, v8}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v14

    add-int/2addr v5, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v15, 0x5

    aget v14, v14, v15

    add-int/2addr v5, v14

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    add-int/2addr v5, v9

    invoke-direct {v0, v7, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    invoke-direct {v0, v5, v6, v7}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v14

    add-int/2addr v9, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v15, 0x9

    aget v14, v14, v15

    add-int/2addr v9, v14

    add-int/2addr v9, v12

    invoke-direct {v0, v9, v11}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    add-int/2addr v9, v8

    invoke-direct {v0, v6, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    invoke-direct {v0, v9, v5, v6}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v14

    add-int/2addr v8, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v15, 0x7

    aget v14, v14, v15

    add-int/2addr v8, v14

    add-int/2addr v8, v12

    const/4 v14, 0x6

    invoke-direct {v0, v8, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    add-int/2addr v8, v7

    invoke-direct {v0, v5, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    invoke-direct {v0, v8, v9, v5}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v14

    add-int/2addr v7, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v15, 0xc

    aget v14, v14, v15

    add-int/2addr v7, v14

    add-int/2addr v7, v12

    const/16 v14, 0x8

    invoke-direct {v0, v7, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    add-int/2addr v7, v6

    invoke-direct {v0, v9, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    invoke-direct {v0, v7, v8, v9}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v14

    add-int/2addr v6, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v14, v14, v17

    add-int/2addr v6, v14

    add-int/2addr v6, v12

    const/16 v14, 0xd

    invoke-direct {v0, v6, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    add-int/2addr v6, v5

    invoke-direct {v0, v8, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    invoke-direct {v0, v6, v7, v8}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v14

    add-int/2addr v5, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v14, v14, v13

    add-int/2addr v5, v14

    add-int/2addr v5, v12

    const/16 v14, 0xc

    invoke-direct {v0, v5, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    add-int/2addr v5, v9

    invoke-direct {v0, v7, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    invoke-direct {v0, v5, v6, v7}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v14

    add-int/2addr v9, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v15, 0xe

    aget v14, v14, v15

    add-int/2addr v9, v14

    add-int/2addr v9, v12

    const/4 v14, 0x5

    invoke-direct {v0, v9, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    add-int/2addr v9, v8

    invoke-direct {v0, v6, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    invoke-direct {v0, v9, v5, v6}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v14

    add-int/2addr v8, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    add-int/2addr v8, v14

    add-int/2addr v8, v12

    const/16 v14, 0xc

    invoke-direct {v0, v8, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    add-int/2addr v8, v7

    invoke-direct {v0, v5, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    invoke-direct {v0, v8, v9, v5}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v14

    add-int/2addr v7, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v15, 0x3

    aget v14, v14, v15

    add-int/2addr v7, v14

    add-int/2addr v7, v12

    const/16 v14, 0xd

    invoke-direct {v0, v7, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    add-int/2addr v7, v6

    invoke-direct {v0, v9, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    invoke-direct {v0, v7, v8, v9}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v14

    add-int/2addr v6, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v15, 0x8

    aget v14, v14, v15

    add-int/2addr v6, v14

    add-int/2addr v6, v12

    const/16 v14, 0xe

    invoke-direct {v0, v6, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    add-int/2addr v6, v5

    invoke-direct {v0, v8, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    invoke-direct {v0, v6, v7, v8}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v14

    add-int/2addr v5, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v14, v14, v11

    add-int/2addr v5, v14

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v11}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    add-int/2addr v5, v9

    invoke-direct {v0, v7, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    invoke-direct {v0, v5, v6, v7}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v14

    add-int/2addr v9, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v15, 0x6

    aget v14, v14, v15

    add-int/2addr v9, v14

    add-int/2addr v9, v12

    const/16 v14, 0x8

    invoke-direct {v0, v9, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    add-int/2addr v9, v8

    invoke-direct {v0, v6, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    invoke-direct {v0, v9, v5, v6}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v14

    add-int/2addr v8, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v15, 0xf

    aget v14, v14, v15

    add-int/2addr v8, v14

    add-int/2addr v8, v12

    const/4 v14, 0x5

    invoke-direct {v0, v8, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    add-int/2addr v8, v7

    invoke-direct {v0, v5, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    invoke-direct {v0, v8, v9, v5}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v14

    add-int/2addr v7, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v15, 0xd

    aget v14, v14, v15

    add-int/2addr v7, v14

    add-int/2addr v7, v12

    const/4 v12, 0x6

    invoke-direct {v0, v7, v12}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    add-int/2addr v7, v6

    invoke-direct {v0, v9, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    invoke-direct {v0, v3, v4, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v2, v12

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xc

    aget v12, v12, v14

    add-int/2addr v2, v12

    const/16 v12, 0x8

    invoke-direct {v0, v2, v12}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v0, v4, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v1, v12

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xf

    aget v12, v12, v14

    add-int/2addr v1, v12

    const/4 v12, 0x5

    invoke-direct {v0, v1, v12}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    add-int/2addr v1, v10

    invoke-direct {v0, v3, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v10, v12

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v12, v12, v13

    add-int/2addr v10, v12

    const/16 v12, 0xc

    invoke-direct {v0, v10, v12}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v10

    add-int/2addr v10, v4

    invoke-direct {v0, v2, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    invoke-direct {v0, v10, v1, v2}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v4, v12

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x4

    aget v12, v12, v14

    add-int/2addr v4, v12

    const/16 v12, 0x9

    invoke-direct {v0, v4, v12}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {v0, v1, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    invoke-direct {v0, v4, v10, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v3, v12

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x1

    aget v12, v12, v14

    add-int/2addr v3, v12

    const/16 v12, 0xc

    invoke-direct {v0, v3, v12}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {v0, v10, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v10

    invoke-direct {v0, v3, v4, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v2, v12

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x5

    aget v12, v12, v14

    add-int/2addr v2, v12

    invoke-direct {v0, v2, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v0, v4, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v1, v12

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0x8

    aget v12, v12, v14

    add-int/2addr v1, v12

    const/16 v12, 0xe

    invoke-direct {v0, v1, v12}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    add-int/2addr v1, v10

    invoke-direct {v0, v3, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v10, v12

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x7

    aget v12, v12, v14

    add-int/2addr v10, v12

    const/4 v12, 0x6

    invoke-direct {v0, v10, v12}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v10

    add-int/2addr v10, v4

    invoke-direct {v0, v2, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    invoke-direct {v0, v10, v1, v2}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v14

    add-int/2addr v4, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v14, v14, v12

    add-int/2addr v4, v14

    const/16 v12, 0x8

    invoke-direct {v0, v4, v12}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {v0, v1, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    invoke-direct {v0, v4, v10, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v3, v12

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v12, v12, v17

    add-int/2addr v3, v12

    const/16 v12, 0xd

    invoke-direct {v0, v3, v12}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {v0, v10, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v10

    invoke-direct {v0, v3, v4, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v14

    add-int/2addr v2, v14

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v14, v14, v12

    add-int/2addr v2, v14

    const/4 v12, 0x6

    invoke-direct {v0, v2, v12}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v0, v4, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v1, v12

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0xe

    aget v12, v12, v14

    add-int/2addr v1, v12

    const/4 v12, 0x5

    invoke-direct {v0, v1, v12}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    add-int/2addr v1, v10

    invoke-direct {v0, v3, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v10, v12

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x0

    aget v12, v12, v14

    add-int/2addr v10, v12

    const/16 v12, 0xf

    invoke-direct {v0, v10, v12}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v10

    add-int/2addr v10, v4

    invoke-direct {v0, v2, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    invoke-direct {v0, v10, v1, v2}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v4, v12

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x3

    aget v12, v12, v14

    add-int/2addr v4, v12

    const/16 v12, 0xd

    invoke-direct {v0, v4, v12}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {v0, v1, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    invoke-direct {v0, v4, v10, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v3, v12

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v14, 0x9

    aget v12, v12, v14

    add-int/2addr v3, v12

    invoke-direct {v0, v3, v11}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {v0, v10, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v10

    invoke-direct {v0, v3, v4, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v2, v12

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v12, v12, v11

    add-int/2addr v2, v12

    invoke-direct {v0, v2, v11}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v0, v4, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    iget v11, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H0:I

    add-int/2addr v11, v6

    iput v11, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H0:I

    iget v6, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H1:I

    add-int/2addr v6, v7

    iput v6, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H1:I

    iget v6, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H2:I

    add-int/2addr v6, v8

    iput v6, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H2:I

    iget v6, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H3:I

    add-int/2addr v6, v9

    iput v6, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H3:I

    iget v6, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H4:I

    add-int/2addr v6, v10

    iput v6, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H4:I

    iget v6, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H5:I

    add-int/2addr v6, v1

    iput v6, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H5:I

    iget v1, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H6:I

    add-int/2addr v1, v2

    iput v1, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H6:I

    iget v1, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H7:I

    add-int/2addr v1, v3

    iput v1, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H7:I

    iget v1, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H8:I

    add-int/2addr v1, v4

    iput v1, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H8:I

    iget v1, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H9:I

    add-int/2addr v1, v5

    iput v1, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H9:I

    const/4 v1, 0x0

    iput v1, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->xOff:I

    const/4 v2, 0x0

    :goto_0
    iget-object v3, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    array-length v4, v3

    if-eq v2, v4, :cond_0

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected processLength(J)V
    .locals 4

    iget v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->xOff:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->processBlock()V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const-wide/16 v2, -0x1

    and-long/2addr v2, p1

    long-to-int v3, v2

    aput v3, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x20

    ushr-long/2addr p1, v2

    long-to-int p2, p1

    aput p2, v0, v1

    return-void
.end method

.method protected processWord([BI)V
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    iget v1, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->xOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->xOff:I

    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, p2, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    add-int/lit8 v4, p2, 0x2

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x10

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    add-int/lit8 p2, p2, 0x3

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p1, v3

    aput p1, v0, v1

    if-ne v2, v5, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->processBlock()V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 4

    invoke-super {p0}, Lorg/bouncycastle/crypto/digests/GeneralDigest;->reset()V

    const v0, 0x67452301

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H0:I

    const v0, -0x10325477

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H1:I

    const v0, -0x67452302

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H2:I

    const v0, 0x10325476

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H3:I

    const v0, -0x3c2d1e10

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H4:I

    const v0, 0x76543210

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H5:I

    const v0, -0x1234568

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H6:I

    const v0, -0x76543211

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H7:I

    const v0, 0x1234567

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H8:I

    const v0, 0x3c2d1e0f

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H9:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->xOff:I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    array-length v3, v2

    if-eq v1, v3, :cond_0

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public reset(Lorg/bouncycastle/util/Memoable;)V
    .locals 0

    check-cast p1, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->doCopy(Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;)V

    return-void
.end method