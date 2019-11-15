.class public Lorg/bouncycastle/crypto/digests/MD4Digest;
.super Lorg/bouncycastle/crypto/digests/GeneralDigest;


# static fields
.field private static final DIGEST_LENGTH:I = 0x10

.field private static final S11:I = 0x3

.field private static final S12:I = 0x7

.field private static final S13:I = 0xb

.field private static final S14:I = 0x13

.field private static final S21:I = 0x3

.field private static final S22:I = 0x5

.field private static final S23:I = 0x9

.field private static final S24:I = 0xd

.field private static final S31:I = 0x3

.field private static final S32:I = 0x9

.field private static final S33:I = 0xb

.field private static final S34:I = 0xf


# instance fields
.field private H1:I

.field private H2:I

.field private H3:I

.field private H4:I

.field private X:[I

.field private xOff:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/GeneralDigest;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/MD4Digest;->reset()V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/digests/MD4Digest;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/GeneralDigest;-><init>(Lorg/bouncycastle/crypto/digests/GeneralDigest;)V

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/MD4Digest;->copyIn(Lorg/bouncycastle/crypto/digests/MD4Digest;)V

    return-void
.end method

.method private F(III)I
    .locals 2

    and-int v0, p1, p2

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v1, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private G(III)I
    .locals 2

    and-int v0, p1, p2

    and-int v1, p1, p3

    or-int/2addr v0, v1

    and-int v1, p2, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private H(III)I
    .locals 1

    xor-int v0, p1, p2

    xor-int/2addr v0, p3

    return v0
.end method

.method private copyIn(Lorg/bouncycastle/crypto/digests/MD4Digest;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/digests/GeneralDigest;->copyIn(Lorg/bouncycastle/crypto/digests/GeneralDigest;)V

    iget v0, p1, Lorg/bouncycastle/crypto/digests/MD4Digest;->H1:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H1:I

    iget v0, p1, Lorg/bouncycastle/crypto/digests/MD4Digest;->H2:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H2:I

    iget v0, p1, Lorg/bouncycastle/crypto/digests/MD4Digest;->H3:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H3:I

    iget v0, p1, Lorg/bouncycastle/crypto/digests/MD4Digest;->H4:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H4:I

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    iget-object v2, p1, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lorg/bouncycastle/crypto/digests/MD4Digest;->xOff:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->xOff:I

    return-void
.end method

.method private rotateLeft(II)I
    .locals 2

    shl-int v0, p1, p2

    rsub-int/lit8 v1, p2, 0x20

    ushr-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
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

    add-int/lit8 v0, p3, 0x3

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    return-void
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/Memoable;
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/digests/MD4Digest;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/digests/MD4Digest;-><init>(Lorg/bouncycastle/crypto/digests/MD4Digest;)V

    return-object v0
.end method

.method public doFinal([BI)I
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/MD4Digest;->finish()V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H1:I

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/crypto/digests/MD4Digest;->unpackWord(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H2:I

    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, v0, p1, v1}, Lorg/bouncycastle/crypto/digests/MD4Digest;->unpackWord(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H3:I

    add-int/lit8 v1, p2, 0x8

    invoke-direct {p0, v0, p1, v1}, Lorg/bouncycastle/crypto/digests/MD4Digest;->unpackWord(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H4:I

    add-int/lit8 v1, p2, 0xc

    invoke-direct {p0, v0, p1, v1}, Lorg/bouncycastle/crypto/digests/MD4Digest;->unpackWord(I[BI)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/MD4Digest;->reset()V

    const/16 v0, 0x10

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "MD4"

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method protected processBlock()V
    .locals 11

    const/16 v10, 0xb

    const/16 v9, 0x9

    const/4 v8, 0x3

    const v7, 0x6ed9eba1

    const v6, 0x5a827999

    iget v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H1:I

    iget v1, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H2:I

    iget v2, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H3:I

    iget v3, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H4:I

    invoke-direct {p0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    add-int/2addr v0, v4

    invoke-direct {p0, v0, v8}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v0

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    add-int/2addr v3, v4

    const/4 v4, 0x7

    invoke-direct {p0, v3, v4}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    invoke-direct {p0, v3, v0, v1}, Lorg/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    add-int/2addr v2, v4

    invoke-direct {p0, v2, v10}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    invoke-direct {p0, v2, v3, v0}, Lorg/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v4, v4, v8

    add-int/2addr v1, v4

    const/16 v4, 0x13

    invoke-direct {p0, v1, v4}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    invoke-direct {p0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v5, 0x4

    aget v4, v4, v5

    add-int/2addr v0, v4

    invoke-direct {p0, v0, v8}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v0

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v5, 0x5

    aget v4, v4, v5

    add-int/2addr v3, v4

    const/4 v4, 0x7

    invoke-direct {p0, v3, v4}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    invoke-direct {p0, v3, v0, v1}, Lorg/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v5, 0x6

    aget v4, v4, v5

    add-int/2addr v2, v4

    invoke-direct {p0, v2, v10}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    invoke-direct {p0, v2, v3, v0}, Lorg/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v5, 0x7

    aget v4, v4, v5

    add-int/2addr v1, v4

    const/16 v4, 0x13

    invoke-direct {p0, v1, v4}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    invoke-direct {p0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v5, 0x8

    aget v4, v4, v5

    add-int/2addr v0, v4

    invoke-direct {p0, v0, v8}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v0

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v4, v4, v9

    add-int/2addr v3, v4

    const/4 v4, 0x7

    invoke-direct {p0, v3, v4}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    invoke-direct {p0, v3, v0, v1}, Lorg/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v5, 0xa

    aget v4, v4, v5

    add-int/2addr v2, v4

    invoke-direct {p0, v2, v10}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    invoke-direct {p0, v2, v3, v0}, Lorg/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v4, v4, v10

    add-int/2addr v1, v4

    const/16 v4, 0x13

    invoke-direct {p0, v1, v4}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    invoke-direct {p0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v5, 0xc

    aget v4, v4, v5

    add-int/2addr v0, v4

    invoke-direct {p0, v0, v8}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v0

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v5, 0xd

    aget v4, v4, v5

    add-int/2addr v3, v4

    const/4 v4, 0x7

    invoke-direct {p0, v3, v4}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    invoke-direct {p0, v3, v0, v1}, Lorg/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v5, 0xe

    aget v4, v4, v5

    add-int/2addr v2, v4

    invoke-direct {p0, v2, v10}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    invoke-direct {p0, v2, v3, v0}, Lorg/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v5, 0xf

    aget v4, v4, v5

    add-int/2addr v1, v4

    const/16 v4, 0x13

    invoke-direct {p0, v1, v4}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    invoke-direct {p0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    add-int/2addr v0, v4

    add-int/2addr v0, v6

    invoke-direct {p0, v0, v8}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v0

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v5, 0x4

    aget v4, v4, v5

    add-int/2addr v3, v4

    add-int/2addr v3, v6

    const/4 v4, 0x5

    invoke-direct {p0, v3, v4}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    invoke-direct {p0, v3, v0, v1}, Lorg/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v5, 0x8

    aget v4, v4, v5

    add-int/2addr v2, v4

    add-int/2addr v2, v6

    invoke-direct {p0, v2, v9}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    invoke-direct {p0, v2, v3, v0}, Lorg/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v5, 0xc

    aget v4, v4, v5

    add-int/2addr v1, v4

    add-int/2addr v1, v6

    const/16 v4, 0xd

    invoke-direct {p0, v1, v4}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    invoke-direct {p0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    add-int/2addr v0, v4

    add-int/2addr v0, v6

    invoke-direct {p0, v0, v8}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v0

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v5, 0x5

    aget v4, v4, v5

    add-int/2addr v3, v4

    add-int/2addr v3, v6

    const/4 v4, 0x5

    invoke-direct {p0, v3, v4}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    invoke-direct {p0, v3, v0, v1}, Lorg/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v4, v4, v9

    add-int/2addr v2, v4

    add-int/2addr v2, v6

    invoke-direct {p0, v2, v9}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    invoke-direct {p0, v2, v3, v0}, Lorg/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v5, 0xd

    aget v4, v4, v5

    add-int/2addr v1, v4

    add-int/2addr v1, v6

    const/16 v4, 0xd

    invoke-direct {p0, v1, v4}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    invoke-direct {p0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    add-int/2addr v0, v4

    add-int/2addr v0, v6

    invoke-direct {p0, v0, v8}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v0

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v5, 0x6

    aget v4, v4, v5

    add-int/2addr v3, v4

    add-int/2addr v3, v6

    const/4 v4, 0x5

    invoke-direct {p0, v3, v4}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    invoke-direct {p0, v3, v0, v1}, Lorg/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v5, 0xa

    aget v4, v4, v5

    add-int/2addr v2, v4

    add-int/2addr v2, v6

    invoke-direct {p0, v2, v9}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    invoke-direct {p0, v2, v3, v0}, Lorg/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v5, 0xe

    aget v4, v4, v5

    add-int/2addr v1, v4

    add-int/2addr v1, v6

    const/16 v4, 0xd

    invoke-direct {p0, v1, v4}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    invoke-direct {p0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v4, v4, v8

    add-int/2addr v0, v4

    add-int/2addr v0, v6

    invoke-direct {p0, v0, v8}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v0

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v5, 0x7

    aget v4, v4, v5

    add-int/2addr v3, v4

    add-int/2addr v3, v6

    const/4 v4, 0x5

    invoke-direct {p0, v3, v4}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    invoke-direct {p0, v3, v0, v1}, Lorg/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v4, v4, v10

    add-int/2addr v2, v4

    add-int/2addr v2, v6

    invoke-direct {p0, v2, v9}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    invoke-direct {p0, v2, v3, v0}, Lorg/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v5, 0xf

    aget v4, v4, v5

    add-int/2addr v1, v4

    add-int/2addr v1, v6

    const/16 v4, 0xd

    invoke-direct {p0, v1, v4}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    invoke-direct {p0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    add-int/2addr v0, v4

    add-int/2addr v0, v7

    invoke-direct {p0, v0, v8}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v0

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v5, 0x8

    aget v4, v4, v5

    add-int/2addr v3, v4

    add-int/2addr v3, v7

    invoke-direct {p0, v3, v9}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    invoke-direct {p0, v3, v0, v1}, Lorg/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v5, 0x4

    aget v4, v4, v5

    add-int/2addr v2, v4

    add-int/2addr v2, v7

    invoke-direct {p0, v2, v10}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    invoke-direct {p0, v2, v3, v0}, Lorg/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v5, 0xc

    aget v4, v4, v5

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    const/16 v4, 0xf

    invoke-direct {p0, v1, v4}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    invoke-direct {p0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    add-int/2addr v0, v4

    add-int/2addr v0, v7

    invoke-direct {p0, v0, v8}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v0

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v5, 0xa

    aget v4, v4, v5

    add-int/2addr v3, v4

    add-int/2addr v3, v7

    invoke-direct {p0, v3, v9}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    invoke-direct {p0, v3, v0, v1}, Lorg/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v5, 0x6

    aget v4, v4, v5

    add-int/2addr v2, v4

    add-int/2addr v2, v7

    invoke-direct {p0, v2, v10}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    invoke-direct {p0, v2, v3, v0}, Lorg/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v5, 0xe

    aget v4, v4, v5

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    const/16 v4, 0xf

    invoke-direct {p0, v1, v4}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    invoke-direct {p0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    add-int/2addr v0, v4

    add-int/2addr v0, v7

    invoke-direct {p0, v0, v8}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v0

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v4, v4, v9

    add-int/2addr v3, v4

    add-int/2addr v3, v7

    invoke-direct {p0, v3, v9}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    invoke-direct {p0, v3, v0, v1}, Lorg/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v5, 0x5

    aget v4, v4, v5

    add-int/2addr v2, v4

    add-int/2addr v2, v7

    invoke-direct {p0, v2, v10}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    invoke-direct {p0, v2, v3, v0}, Lorg/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v5, 0xd

    aget v4, v4, v5

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    const/16 v4, 0xf

    invoke-direct {p0, v1, v4}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    invoke-direct {p0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v4, v4, v8

    add-int/2addr v0, v4

    add-int/2addr v0, v7

    invoke-direct {p0, v0, v8}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v0

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v4, v4, v10

    add-int/2addr v3, v4

    add-int/2addr v3, v7

    invoke-direct {p0, v3, v9}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    invoke-direct {p0, v3, v0, v1}, Lorg/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v5, 0x7

    aget v4, v4, v5

    add-int/2addr v2, v4

    add-int/2addr v2, v7

    invoke-direct {p0, v2, v10}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    invoke-direct {p0, v2, v3, v0}, Lorg/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v5, 0xf

    aget v4, v4, v5

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    const/16 v4, 0xf

    invoke-direct {p0, v1, v4}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    iget v4, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H1:I

    add-int/2addr v0, v4

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H1:I

    iget v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H2:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H2:I

    iget v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H3:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H3:I

    iget v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H4:I

    add-int/2addr v0, v3

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H4:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->xOff:I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    array-length v1, v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected processLength(J)V
    .locals 5

    const/16 v4, 0xe

    iget v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->xOff:I

    if-le v0, v4, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/MD4Digest;->processBlock()V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const-wide/16 v2, -0x1

    and-long/2addr v2, p1

    long-to-int v1, v2

    aput v1, v0, v4

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v1, 0xf

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v2, v2

    aput v2, v0, v1

    return-void
.end method

.method protected processWord([BI)V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    iget v1, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->xOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->xOff:I

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    aput v2, v0, v1

    iget v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->xOff:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/MD4Digest;->processBlock()V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    const/4 v1, 0x0

    invoke-super {p0}, Lorg/bouncycastle/crypto/digests/GeneralDigest;->reset()V

    const v0, 0x67452301

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H1:I

    const v0, -0x10325477

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H2:I

    const v0, -0x67452302

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H3:I

    const v0, 0x10325476

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H4:I

    iput v1, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->xOff:I

    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    array-length v2, v2

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public reset(Lorg/bouncycastle/util/Memoable;)V
    .locals 0

    check-cast p1, Lorg/bouncycastle/crypto/digests/MD4Digest;

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/MD4Digest;->copyIn(Lorg/bouncycastle/crypto/digests/MD4Digest;)V

    return-void
.end method
