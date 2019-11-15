.class public Lorg/bouncycastle/crypto/digests/SM3Digest;
.super Lorg/bouncycastle/crypto/digests/GeneralDigest;


# static fields
.field private static final BLOCK_SIZE:I = 0x10

.field private static final DIGEST_LENGTH:I = 0x20

.field private static final T:[I


# instance fields
.field private V:[I

.field private W:[I

.field private W1:[I

.field private inwords:[I

.field private xOff:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v6, 0x40

    const/16 v0, 0x10

    new-array v1, v6, [I

    sput-object v1, Lorg/bouncycastle/crypto/digests/SM3Digest;->T:[I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    const v2, 0x79cc4519

    sget-object v3, Lorg/bouncycastle/crypto/digests/SM3Digest;->T:[I

    shl-int v4, v2, v1

    rsub-int/lit8 v5, v1, 0x20

    ushr-int/2addr v2, v5

    or-int/2addr v2, v4

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v0, v6, :cond_1

    rem-int/lit8 v1, v0, 0x20

    const v2, 0x7a879d8a

    sget-object v3, Lorg/bouncycastle/crypto/digests/SM3Digest;->T:[I

    shl-int v4, v2, v1

    rsub-int/lit8 v1, v1, 0x20

    ushr-int v1, v2, v1

    or-int/2addr v1, v4

    aput v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/GeneralDigest;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->inwords:[I

    const/16 v0, 0x44

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->W:[I

    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->W1:[I

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SM3Digest;->reset()V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/digests/SM3Digest;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/GeneralDigest;-><init>(Lorg/bouncycastle/crypto/digests/GeneralDigest;)V

    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->inwords:[I

    const/16 v0, 0x44

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->W:[I

    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->W1:[I

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/SM3Digest;->copyIn(Lorg/bouncycastle/crypto/digests/SM3Digest;)V

    return-void
.end method

.method private FF0(III)I
    .locals 1

    xor-int v0, p1, p2

    xor-int/2addr v0, p3

    return v0
.end method

.method private FF1(III)I
    .locals 2

    and-int v0, p1, p2

    and-int v1, p1, p3

    or-int/2addr v0, v1

    and-int v1, p2, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private GG0(III)I
    .locals 1

    xor-int v0, p1, p2

    xor-int/2addr v0, p3

    return v0
.end method

.method private GG1(III)I
    .locals 2

    and-int v0, p1, p2

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v1, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private P0(I)I
    .locals 3

    shl-int/lit8 v0, p1, 0x9

    ushr-int/lit8 v1, p1, 0x17

    or-int/2addr v0, v1

    shl-int/lit8 v1, p1, 0x11

    ushr-int/lit8 v2, p1, 0xf

    or-int/2addr v1, v2

    xor-int/2addr v0, p1

    xor-int/2addr v0, v1

    return v0
.end method

.method private P1(I)I
    .locals 3

    shl-int/lit8 v0, p1, 0xf

    ushr-int/lit8 v1, p1, 0x11

    or-int/2addr v0, v1

    shl-int/lit8 v1, p1, 0x17

    ushr-int/lit8 v2, p1, 0x9

    or-int/2addr v1, v2

    xor-int/2addr v0, p1

    xor-int/2addr v0, v1

    return v0
.end method

.method private copyIn(Lorg/bouncycastle/crypto/digests/SM3Digest;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/SM3Digest;->inwords:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->inwords:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->inwords:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lorg/bouncycastle/crypto/digests/SM3Digest;->xOff:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->xOff:I

    return-void
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/Memoable;
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/digests/SM3Digest;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/digests/SM3Digest;-><init>(Lorg/bouncycastle/crypto/digests/SM3Digest;)V

    return-object v0
.end method

.method public doFinal([BI)I
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SM3Digest;->finish()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    add-int/lit8 v1, p2, 0x0

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    add-int/lit8 v1, p2, 0x4

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    add-int/lit8 v1, p2, 0x8

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    add-int/lit8 v1, p2, 0xc

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    add-int/lit8 v1, p2, 0x10

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    add-int/lit8 v1, p2, 0x14

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v1, 0x6

    aget v0, v0, v1

    add-int/lit8 v1, p2, 0x18

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v1, 0x7

    aget v0, v0, v1

    add-int/lit8 v1, p2, 0x1c

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SM3Digest;->reset()V

    const/16 v0, 0x20

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "SM3"

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method protected processBlock()V
    .locals 15

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->W:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->inwords:[I

    aget v2, v2, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    :goto_1
    const/16 v1, 0x44

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->W:[I

    add-int/lit8 v2, v0, -0x3

    aget v1, v1, v2

    shl-int/lit8 v2, v1, 0xf

    ushr-int/lit8 v1, v1, 0x11

    or-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->W:[I

    add-int/lit8 v3, v0, -0xd

    aget v2, v2, v3

    shl-int/lit8 v3, v2, 0x7

    ushr-int/lit8 v2, v2, 0x19

    or-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->W:[I

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->W:[I

    add-int/lit8 v5, v0, -0x10

    aget v4, v4, v5

    iget-object v5, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->W:[I

    add-int/lit8 v6, v0, -0x9

    aget v5, v5, v6

    xor-int/2addr v4, v5

    xor-int/2addr v1, v4

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/digests/SM3Digest;->P1(I)I

    move-result v1

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->W:[I

    add-int/lit8 v4, v0, -0x6

    aget v2, v2, v4

    xor-int/2addr v1, v2

    aput v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_2
    const/16 v1, 0x40

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->W1:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->W:[I

    aget v2, v2, v0

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->W:[I

    add-int/lit8 v4, v0, 0x4

    aget v3, v3, v4

    xor-int/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v1, 0x0

    aget v8, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v1, 0x1

    aget v7, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v1, 0x2

    aget v6, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v1, 0x3

    aget v5, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v1, 0x4

    aget v4, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v1, 0x5

    aget v3, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v1, 0x6

    aget v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v1, 0x7

    aget v1, v0, v1

    const/4 v0, 0x0

    :goto_3
    const/16 v9, 0x10

    if-ge v0, v9, :cond_3

    shl-int/lit8 v9, v8, 0xc

    ushr-int/lit8 v10, v8, 0x14

    or-int/2addr v9, v10

    add-int v10, v9, v4

    sget-object v11, Lorg/bouncycastle/crypto/digests/SM3Digest;->T:[I

    aget v11, v11, v0

    add-int/2addr v10, v11

    shl-int/lit8 v11, v10, 0x7

    ushr-int/lit8 v10, v10, 0x19

    or-int/2addr v10, v11

    xor-int/2addr v9, v10

    invoke-direct {p0, v8, v7, v6}, Lorg/bouncycastle/crypto/digests/SM3Digest;->FF0(III)I

    move-result v11

    add-int/2addr v5, v11

    add-int/2addr v5, v9

    iget-object v9, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->W1:[I

    aget v9, v9, v0

    add-int/2addr v9, v5

    invoke-direct {p0, v4, v3, v2}, Lorg/bouncycastle/crypto/digests/SM3Digest;->GG0(III)I

    move-result v5

    add-int/2addr v1, v5

    add-int/2addr v1, v10

    iget-object v5, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->W:[I

    aget v5, v5, v0

    add-int v10, v1, v5

    shl-int/lit8 v1, v7, 0x9

    ushr-int/lit8 v5, v7, 0x17

    or-int/2addr v5, v1

    shl-int/lit8 v1, v3, 0x13

    ushr-int/lit8 v3, v3, 0xd

    or-int/2addr v1, v3

    invoke-direct {p0, v10}, Lorg/bouncycastle/crypto/digests/SM3Digest;->P0(I)I

    move-result v3

    add-int/lit8 v0, v0, 0x1

    move v7, v8

    move v8, v9

    move v12, v4

    move v4, v3

    move v3, v12

    move v13, v6

    move v6, v5

    move v5, v13

    move v14, v2

    move v2, v1

    move v1, v14

    goto :goto_3

    :cond_3
    const/16 v0, 0x10

    :goto_4
    const/16 v9, 0x40

    if-ge v0, v9, :cond_4

    shl-int/lit8 v9, v8, 0xc

    ushr-int/lit8 v10, v8, 0x14

    or-int/2addr v9, v10

    add-int v10, v9, v4

    sget-object v11, Lorg/bouncycastle/crypto/digests/SM3Digest;->T:[I

    aget v11, v11, v0

    add-int/2addr v10, v11

    shl-int/lit8 v11, v10, 0x7

    ushr-int/lit8 v10, v10, 0x19

    or-int/2addr v10, v11

    xor-int/2addr v9, v10

    invoke-direct {p0, v8, v7, v6}, Lorg/bouncycastle/crypto/digests/SM3Digest;->FF1(III)I

    move-result v11

    add-int/2addr v5, v11

    add-int/2addr v5, v9

    iget-object v9, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->W1:[I

    aget v9, v9, v0

    add-int/2addr v9, v5

    invoke-direct {p0, v4, v3, v2}, Lorg/bouncycastle/crypto/digests/SM3Digest;->GG1(III)I

    move-result v5

    add-int/2addr v1, v5

    add-int/2addr v1, v10

    iget-object v5, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->W:[I

    aget v5, v5, v0

    add-int v10, v1, v5

    shl-int/lit8 v1, v7, 0x9

    ushr-int/lit8 v5, v7, 0x17

    or-int/2addr v5, v1

    shl-int/lit8 v1, v3, 0x13

    ushr-int/lit8 v3, v3, 0xd

    or-int/2addr v1, v3

    invoke-direct {p0, v10}, Lorg/bouncycastle/crypto/digests/SM3Digest;->P0(I)I

    move-result v3

    add-int/lit8 v0, v0, 0x1

    move v7, v8

    move v8, v9

    move v12, v4

    move v4, v3

    move v3, v12

    move v13, v6

    move v6, v5

    move v5, v13

    move v14, v2

    move v2, v1

    move v1, v14

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v9, 0x0

    aget v10, v0, v9

    xor-int/2addr v8, v10

    aput v8, v0, v9

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v8, 0x1

    aget v9, v0, v8

    xor-int/2addr v7, v9

    aput v7, v0, v8

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v7, 0x2

    aget v8, v0, v7

    xor-int/2addr v6, v8

    aput v6, v0, v7

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v6, 0x3

    aget v7, v0, v6

    xor-int/2addr v5, v7

    aput v5, v0, v6

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v5, 0x4

    aget v6, v0, v5

    xor-int/2addr v4, v6

    aput v4, v0, v5

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v4, 0x5

    aget v5, v0, v4

    xor-int/2addr v3, v5

    aput v3, v0, v4

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v3, 0x6

    aget v4, v0, v3

    xor-int/2addr v2, v4

    aput v2, v0, v3

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v2, 0x7

    aget v3, v0, v2

    xor-int/2addr v1, v3

    aput v1, v0, v2

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->xOff:I

    return-void
.end method

.method protected processLength(J)V
    .locals 5

    const/16 v3, 0xe

    const/4 v2, 0x0

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->xOff:I

    if-le v0, v3, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->inwords:[I

    iget v1, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->xOff:I

    aput v2, v0, v1

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->xOff:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->xOff:I

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SM3Digest;->processBlock()V

    :cond_0
    :goto_0
    iget v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->xOff:I

    if-ge v0, v3, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->inwords:[I

    iget v1, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->xOff:I

    aput v2, v0, v1

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->xOff:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->xOff:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->inwords:[I

    iget v1, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->xOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->xOff:I

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v2, v2

    aput v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->inwords:[I

    iget v1, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->xOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->xOff:I

    long-to-int v2, p1

    aput v2, v0, v1

    return-void
.end method

.method protected processWord([BI)V
    .locals 3

    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p2, 0x1

    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->inwords:[I

    iget v2, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->xOff:I

    aput v0, v1, v2

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->xOff:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->xOff:I

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->xOff:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SM3Digest;->processBlock()V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lorg/bouncycastle/crypto/digests/GeneralDigest;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    const v1, 0x7380166f

    aput v1, v0, v3

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v1, 0x1

    const v2, 0x4914b2b9

    aput v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v1, 0x2

    const v2, 0x172442d7

    aput v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v1, 0x3

    const v2, -0x2575fa00

    aput v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v1, 0x4

    const v2, -0x5690cf44

    aput v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v1, 0x5

    const v2, 0x163138aa

    aput v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v1, 0x6

    const v2, -0x1c7211b3

    aput v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v1, 0x7

    const v2, -0x4f04f1b2

    aput v2, v0, v1

    iput v3, p0, Lorg/bouncycastle/crypto/digests/SM3Digest;->xOff:I

    return-void
.end method

.method public reset(Lorg/bouncycastle/util/Memoable;)V
    .locals 0

    check-cast p1, Lorg/bouncycastle/crypto/digests/SM3Digest;

    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/digests/GeneralDigest;->copyIn(Lorg/bouncycastle/crypto/digests/GeneralDigest;)V

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/SM3Digest;->copyIn(Lorg/bouncycastle/crypto/digests/SM3Digest;)V

    return-void
.end method
