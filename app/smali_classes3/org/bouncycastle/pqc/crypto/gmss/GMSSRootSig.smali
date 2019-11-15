.class public Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;
.super Ljava/lang/Object;


# instance fields
.field private big8:J

.field private checksum:I

.field private counter:I

.field private gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

.field private hash:[B

.field private height:I

.field private ii:I

.field private k:I

.field private keysize:I

.field private mdsize:I

.field private messDigestOTS:Lorg/bouncycastle/crypto/Digest;

.field private messagesize:I

.field private privateKeyOTS:[B

.field private r:I

.field private seed:[B

.field private sign:[B

.field private steps:I

.field private test:I

.field private test8:J

.field private w:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;II)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->height:I

    const/4 v0, 0x1

    shl-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->k:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    shl-int/lit8 v0, v0, 0x3

    int-to-double v0, v0

    int-to-double v2, p2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messagesize:I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;[[B[I)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    aget v0, p3, v7

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    aget v0, p3, v4

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test:I

    aget v0, p3, v8

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    const/4 v0, 0x3

    aget v0, p3, v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->r:I

    aget v0, p3, v5

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->steps:I

    const/4 v0, 0x5

    aget v0, p3, v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->keysize:I

    const/4 v0, 0x6

    aget v0, p3, v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->height:I

    const/4 v0, 0x7

    aget v0, p3, v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    aget v0, p3, v6

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->checksum:I

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    shl-int v0, v4, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->k:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    shl-int/lit8 v0, v0, 0x3

    int-to-double v0, v0

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messagesize:I

    aget-object v0, p2, v7

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    aget-object v0, p2, v4

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->seed:[B

    aget-object v0, p2, v8

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->hash:[B

    const/4 v0, 0x3

    aget-object v0, p2, v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->sign:[B

    aget-object v0, p2, v5

    aget-byte v0, v0, v7

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    aget-object v2, p2, v5

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    aget-object v2, p2, v5

    aget-byte v2, v2, v8

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    aget-object v2, p2, v5

    const/4 v3, 0x3

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    aget-object v2, p2, v5

    aget-byte v2, v2, v5

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    aget-object v2, p2, v5

    const/4 v3, 0x5

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    aget-object v2, p2, v5

    const/4 v3, 0x6

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    aget-object v2, p2, v5

    const/4 v3, 0x7

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test8:J

    aget-object v0, p2, v5

    aget-byte v0, v0, v6

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    aget-object v2, p2, v5

    const/16 v3, 0x9

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    aget-object v2, p2, v5

    const/16 v3, 0xa

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    aget-object v2, p2, v5

    const/16 v3, 0xb

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    aget-object v2, p2, v5

    const/16 v3, 0xc

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    aget-object v2, p2, v5

    const/16 v3, 0xd

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    aget-object v2, p2, v5

    const/16 v3, 0xe

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    aget-object v2, p2, v5

    const/16 v3, 0xf

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    return-void
.end method

.method private oneStep()V
    .locals 10

    const/16 v5, 0x8

    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    rem-int v0, v5, v0

    if-nez v0, :cond_4

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->seed:[B

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    if-ge v0, v2, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->hash:[B

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    aget-byte v0, v0, v2

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->k:I

    and-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test:I

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->hash:[B

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->hash:[B

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    aget-byte v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    ushr-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    :cond_0
    :goto_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->sign:[B

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    mul-int/2addr v3, v4

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    div-int v1, v5, v1

    rem-int/2addr v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->checksum:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->k:I

    and-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->checksum:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    ushr-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->checksum:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    array-length v3, v3

    invoke-interface {v0, v2, v1, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    invoke-interface {v0, v2, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test:I

    goto :goto_0

    :cond_4
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    if-ge v0, v5, :cond_a

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test:I

    if-nez v0, :cond_9

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    rem-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_6

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    if-ge v0, v2, :cond_6

    iput-wide v8, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    div-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x3

    if-ge v0, v2, :cond_5

    move v0, v1

    :goto_2
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    if-ge v0, v2, :cond_6

    iget-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->hash:[B

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v5, v0, 0x3

    shl-int/2addr v4, v5

    int-to-long v4, v4

    xor-long/2addr v2, v4

    iput-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_3
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    rem-int/2addr v2, v3

    if-ge v0, v2, :cond_6

    iget-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->hash:[B

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v5, v0, 0x3

    shl-int/2addr v4, v5

    int-to-long v4, v4

    xor-long/2addr v2, v4

    iput-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messagesize:I

    if-ne v0, v2, :cond_7

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->checksum:I

    int-to-long v2, v0

    iput-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    :cond_7
    iget-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->k:I

    int-to-long v4, v0

    and-long/2addr v2, v4

    long-to-int v0, v2

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test:I

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->seed:[B

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    :cond_8
    :goto_4
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->sign:[B

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    mul-int/2addr v3, v4

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-wide v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    ushr-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    goto/16 :goto_1

    :cond_9
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test:I

    if-lez v0, :cond_8

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    array-length v3, v3

    invoke-interface {v0, v2, v1, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    invoke-interface {v0, v2, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test:I

    goto :goto_4

    :cond_a
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    const/16 v2, 0x39

    if-ge v0, v2, :cond_1

    iget-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test8:J

    cmp-long v0, v2, v8

    if-nez v0, :cond_f

    iput-wide v8, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->r:I

    rem-int/lit8 v3, v0, 0x8

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->r:I

    ushr-int/lit8 v2, v0, 0x3

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    if-ge v2, v0, :cond_e

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->r:I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    shl-int/lit8 v4, v4, 0x3

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    sub-int/2addr v4, v5

    if-gt v0, v4, :cond_b

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->r:I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    add-int/2addr v0, v4

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->r:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->r:I

    add-int/lit8 v0, v0, 0x7

    ushr-int/lit8 v0, v0, 0x3

    :goto_5
    if-ge v2, v0, :cond_c

    iget-wide v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->hash:[B

    aget-byte v6, v6, v2

    and-int/lit16 v6, v6, 0xff

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    shl-int/lit8 v7, v7, 0x3

    shl-int/2addr v6, v7

    int-to-long v6, v6

    xor-long/2addr v4, v6

    iput-wide v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_b
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->r:I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    add-int/2addr v4, v5

    iput v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->r:I

    goto :goto_5

    :cond_c
    iget-wide v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    ushr-long v2, v4, v3

    iput-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    iget-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->k:I

    int-to-long v4, v0

    and-long/2addr v2, v4

    iput-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test8:J

    :goto_6
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->seed:[B

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    :cond_d
    :goto_7
    iget-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test8:J

    cmp-long v0, v2, v8

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->sign:[B

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    mul-int/2addr v3, v4

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    goto/16 :goto_1

    :cond_e
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->checksum:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->k:I

    and-int/2addr v0, v2

    int-to-long v2, v0

    iput-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test8:J

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->checksum:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    ushr-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->checksum:I

    goto :goto_6

    :cond_f
    iget-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test8:J

    cmp-long v0, v2, v8

    if-lez v0, :cond_d

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    array-length v3, v3

    invoke-interface {v0, v2, v1, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    invoke-interface {v0, v2, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test8:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test8:J

    goto :goto_7
.end method


# virtual methods
.method public getLog(I)I
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x2

    :goto_0
    if-ge v0, p1, :cond_0

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getSig()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->sign:[B

    return-object v0
.end method

.method public getStatByte()[[B
    .locals 3

    const/4 v0, 0x5

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->seed:[B

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->hash:[B

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->sign:[B

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->getStatLong()[B

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getStatInt()[I
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test:I

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    aput v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->r:I

    aput v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->steps:I

    aput v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->keysize:I

    aput v2, v0, v1

    const/4 v1, 0x6

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->height:I

    aput v2, v0, v1

    const/4 v1, 0x7

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    aput v2, v0, v1

    const/16 v1, 0x8

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->checksum:I

    aput v2, v0, v1

    return-object v0
.end method

.method public getStatLong()[B
    .locals 11

    const/16 v10, 0x20

    const/16 v9, 0x18

    const/16 v8, 0x10

    const/16 v5, 0x8

    const-wide/16 v6, 0xff

    new-array v0, v8, [B

    const/4 v1, 0x0

    iget-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test8:J

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test8:J

    shr-long/2addr v2, v5

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test8:J

    shr-long/2addr v2, v8

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test8:J

    shr-long/2addr v2, v9

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test8:J

    shr-long/2addr v2, v10

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    iget-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test8:J

    const/16 v4, 0x28

    shr-long/2addr v2, v4

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    iget-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test8:J

    const/16 v4, 0x30

    shr-long/2addr v2, v4

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    iget-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test8:J

    const/16 v4, 0x38

    shr-long/2addr v2, v4

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    and-long/2addr v2, v6

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    const/16 v1, 0x9

    iget-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    shr-long/2addr v2, v5

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    iget-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    shr-long/2addr v2, v8

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    iget-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    shr-long/2addr v2, v9

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    iget-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    shr-long/2addr v2, v10

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    iget-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    const/16 v4, 0x28

    shr-long/2addr v2, v4

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    iget-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    const/16 v4, 0x30

    shr-long/2addr v2, v4

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    iget-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    const/16 v4, 0x38

    shr-long/2addr v2, v4

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public initSign([B[B)V
    .locals 13

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->hash:[B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v1, 0x0

    array-length v2, p2

    invoke-interface {v0, p2, v1, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->hash:[B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->hash:[B

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    new-array v6, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->hash:[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    invoke-static {v0, v1, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messagesize:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    shl-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->getLog(I)I

    move-result v7

    const/16 v0, 0x8

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    rem-int/2addr v0, v2

    if-nez v0, :cond_2

    const/16 v0, 0x8

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    div-int v4, v0, v2

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    if-ge v0, v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_0

    aget-byte v3, v6, v0

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->k:I

    and-int/2addr v3, v5

    add-int/2addr v3, v1

    aget-byte v1, v6, v0

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    ushr-int/2addr v1, v5

    int-to-byte v1, v1

    aput-byte v1, v6, v0

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messagesize:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    shl-int/2addr v0, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->checksum:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->checksum:I

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v7, :cond_d

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->k:I

    and-int/2addr v3, v2

    add-int/2addr v1, v3

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    ushr-int/2addr v2, v3

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    add-int/2addr v0, v3

    goto :goto_2

    :cond_2
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    const/16 v2, 0x8

    if-ge v0, v2, :cond_8

    const/4 v2, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    div-int v8, v0, v3

    const/4 v0, 0x0

    move v5, v0

    move v4, v1

    move v1, v2

    :goto_3
    if-ge v5, v8, :cond_5

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    :goto_4
    iget v9, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    if-ge v0, v9, :cond_3

    aget-byte v9, v6, v1

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v10, v0, 0x3

    shl-int/2addr v9, v10

    int-to-long v10, v9

    xor-long/2addr v2, v10

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_3
    const/4 v0, 0x0

    :goto_5
    const/16 v9, 0x8

    if-ge v0, v9, :cond_4

    iget v9, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->k:I

    int-to-long v10, v9

    and-long/2addr v10, v2

    long-to-int v9, v10

    add-int/2addr v4, v9

    iget v9, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    ushr-long/2addr v2, v9

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_3

    :cond_5
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    rem-int v5, v0, v2

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v5, :cond_6

    aget-byte v8, v6, v1

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v9, v0, 0x3

    shl-int/2addr v8, v9

    int-to-long v8, v8

    xor-long/2addr v2, v8

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_6
    shl-int/lit8 v5, v5, 0x3

    const/4 v0, 0x0

    move v1, v4

    :goto_7
    if-ge v0, v5, :cond_7

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->k:I

    int-to-long v8, v4

    and-long/2addr v8, v2

    long-to-int v4, v8

    add-int/2addr v1, v4

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    ushr-long/2addr v2, v4

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    add-int/2addr v0, v4

    goto :goto_7

    :cond_7
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messagesize:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    shl-int/2addr v0, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->checksum:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->checksum:I

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v7, :cond_d

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->k:I

    and-int/2addr v3, v2

    add-int/2addr v1, v3

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    ushr-int/2addr v2, v3

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    add-int/2addr v0, v3

    goto :goto_8

    :cond_8
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    const/16 v2, 0x39

    if-ge v0, v2, :cond_d

    const/4 v0, 0x0

    :goto_9
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    shl-int/lit8 v2, v2, 0x3

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    sub-int/2addr v2, v3

    if-gt v0, v2, :cond_a

    ushr-int/lit8 v2, v0, 0x3

    rem-int/lit8 v8, v0, 0x8

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    add-int/2addr v0, v3

    add-int/lit8 v3, v0, 0x7

    ushr-int/lit8 v9, v3, 0x3

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    :goto_a
    if-ge v2, v9, :cond_9

    aget-byte v10, v6, v2

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v11, v3, 0x3

    shl-int/2addr v10, v11

    int-to-long v10, v10

    xor-long/2addr v4, v10

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_9
    ushr-long v2, v4, v8

    int-to-long v4, v1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->k:I

    int-to-long v8, v1

    and-long/2addr v2, v8

    add-long/2addr v2, v4

    long-to-int v1, v2

    goto :goto_9

    :cond_a
    ushr-int/lit8 v2, v0, 0x3

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    if-ge v2, v3, :cond_c

    rem-int/lit8 v3, v0, 0x8

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    move v12, v2

    move v2, v0

    move v0, v12

    :goto_b
    iget v8, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    if-ge v0, v8, :cond_b

    aget-byte v8, v6, v0

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v9, v2, 0x3

    shl-int/2addr v8, v9

    int-to-long v8, v8

    xor-long/2addr v4, v8

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_b
    ushr-long v2, v4, v3

    int-to-long v0, v1

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->k:I

    int-to-long v4, v4

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int v1, v0

    :cond_c
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messagesize:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    shl-int/2addr v0, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->checksum:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->checksum:I

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v7, :cond_d

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->k:I

    and-int/2addr v3, v2

    add-int/2addr v1, v3

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    ushr-int/2addr v2, v3

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    add-int/2addr v0, v3

    goto :goto_c

    :cond_d
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messagesize:I

    int-to-double v2, v7

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    add-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->keysize:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->keysize:I

    add-int/2addr v0, v1

    int-to-double v0, v0

    const/4 v2, 0x1

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->height:I

    shl-int/2addr v2, v3

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->steps:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->keysize:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->sign:[B

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test8:J

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->r:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->seed:[B

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->seed:[B

    const/4 v2, 0x0

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    const/16 v7, 0x9

    const/4 v6, 0x5

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v7, [I

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->getStatInt()[I

    move-result-object v4

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    filled-new-array {v6, v0}, [I

    move-result-object v0

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->getStatByte()[[B

    move-result-object v5

    move-object v0, v2

    move v2, v1

    :goto_0
    if-ge v2, v7, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v3, v4, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v0, v3

    goto :goto_0

    :cond_0
    move v8, v1

    move-object v1, v0

    move v0, v8

    :goto_1
    if-ge v0, v6, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    aget-object v3, v5, v0

    invoke-static {v3}, Lorg/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method public updateSign()Z
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->steps:I

    if-ge v0, v2, :cond_1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->keysize:I

    if-ge v2, v3, :cond_0

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->oneStep()V

    :cond_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->keysize:I

    if-ne v2, v3, :cond_2

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
