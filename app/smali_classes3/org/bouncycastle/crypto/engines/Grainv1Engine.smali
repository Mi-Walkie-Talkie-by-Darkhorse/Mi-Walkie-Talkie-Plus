.class public Lorg/bouncycastle/crypto/engines/Grainv1Engine;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/StreamCipher;


# static fields
.field private static final STATE_SIZE:I = 0x5


# instance fields
.field private index:I

.field private initialised:Z

.field private lfsr:[I

.field private nfsr:[I

.field private out:[B

.field private output:I

.field private workingIV:[B

.field private workingKey:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->index:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->initialised:Z

    return-void
.end method

.method private getKeyStream()B
    .locals 3

    iget v0, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->index:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->oneRound()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->index:I

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->out:[B

    iget v1, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->index:I

    aget-byte v0, v0, v1

    return v0
.end method

.method private getOutput()I
    .locals 14

    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v0, v0, v9

    ushr-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v1, v1, v10

    shl-int/lit8 v1, v1, 0xf

    or-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v1, v1, v9

    ushr-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v2, v2, v10

    shl-int/lit8 v2, v2, 0xe

    or-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v2, v2, v9

    ushr-int/lit8 v2, v2, 0x4

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v3, v3, v10

    shl-int/lit8 v3, v3, 0xc

    or-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v3, v3, v9

    ushr-int/lit8 v3, v3, 0xa

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v4, v4, v10

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v3, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v4, v4, v10

    ushr-int/lit8 v4, v4, 0xf

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v5, v5, v11

    shl-int/lit8 v5, v5, 0x1

    or-int/2addr v4, v5

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v5, v5, v11

    ushr-int/lit8 v5, v5, 0xb

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v6, v6, v12

    shl-int/lit8 v6, v6, 0x5

    or-int/2addr v5, v6

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v6, v6, v12

    ushr-int/lit8 v6, v6, 0x8

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v7, v7, v13

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v7, v7, v12

    ushr-int/lit8 v7, v7, 0xf

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v8, v8, v13

    shl-int/lit8 v8, v8, 0x1

    or-int/2addr v7, v8

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    aget v8, v8, v9

    ushr-int/lit8 v8, v8, 0x3

    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    aget v9, v9, v10

    shl-int/lit8 v9, v9, 0xd

    or-int/2addr v8, v9

    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    aget v9, v9, v10

    ushr-int/lit8 v9, v9, 0x9

    iget-object v10, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    aget v10, v10, v11

    shl-int/lit8 v10, v10, 0x7

    or-int/2addr v9, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    aget v10, v10, v11

    ushr-int/lit8 v10, v10, 0xe

    iget-object v11, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    aget v11, v11, v12

    shl-int/lit8 v11, v11, 0x2

    or-int/2addr v10, v11

    iget-object v11, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    aget v11, v11, v13

    xor-int v12, v9, v7

    and-int v13, v8, v11

    xor-int/2addr v12, v13

    and-int v13, v10, v11

    xor-int/2addr v12, v13

    and-int v13, v11, v7

    xor-int/2addr v12, v13

    and-int v13, v8, v9

    and-int/2addr v13, v10

    xor-int/2addr v12, v13

    and-int v13, v8, v10

    and-int/2addr v13, v11

    xor-int/2addr v12, v13

    and-int/2addr v8, v10

    and-int/2addr v8, v7

    xor-int/2addr v8, v12

    and-int/2addr v9, v10

    and-int/2addr v9, v7

    xor-int/2addr v8, v9

    and-int v9, v10, v11

    and-int/2addr v7, v9

    xor-int/2addr v7, v8

    xor-int/2addr v0, v7

    xor-int/2addr v0, v1

    xor-int/2addr v0, v2

    xor-int/2addr v0, v3

    xor-int/2addr v0, v4

    xor-int/2addr v0, v5

    xor-int/2addr v0, v6

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method private getOutputLFSR()I
    .locals 8

    const/4 v7, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    aget v0, v0, v2

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    aget v1, v1, v2

    ushr-int/lit8 v1, v1, 0xd

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    aget v2, v2, v3

    shl-int/lit8 v2, v2, 0x3

    or-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    aget v2, v2, v3

    ushr-int/lit8 v2, v2, 0x7

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    aget v3, v3, v4

    shl-int/lit8 v3, v3, 0x9

    or-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    aget v3, v3, v4

    ushr-int/lit8 v3, v3, 0x6

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    aget v4, v4, v6

    shl-int/lit8 v4, v4, 0xa

    or-int/2addr v3, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    aget v4, v4, v6

    ushr-int/lit8 v4, v4, 0x3

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    aget v5, v5, v7

    shl-int/lit8 v5, v5, 0xd

    or-int/2addr v4, v5

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    aget v5, v5, v6

    ushr-int/lit8 v5, v5, 0xe

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    aget v6, v6, v7

    shl-int/lit8 v6, v6, 0x2

    or-int/2addr v5, v6

    xor-int/2addr v0, v1

    xor-int/2addr v0, v2

    xor-int/2addr v0, v3

    xor-int/2addr v0, v4

    xor-int/2addr v0, v5

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method private getOutputNFSR()I
    .locals 15

    const/4 v14, 0x4

    const/4 v4, 0x0

    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v13, 0x3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v0, v0, v4

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v1, v1, v4

    ushr-int/lit8 v1, v1, 0x9

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v2, v2, v6

    shl-int/lit8 v2, v2, 0x7

    or-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v2, v2, v4

    ushr-int/lit8 v2, v2, 0xe

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v3, v3, v6

    shl-int/lit8 v3, v3, 0x2

    or-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v3, v3, v4

    ushr-int/lit8 v3, v3, 0xf

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v4, v4, v6

    shl-int/lit8 v4, v4, 0x1

    or-int/2addr v3, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v4, v4, v6

    ushr-int/lit8 v4, v4, 0x5

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v5, v5, v9

    shl-int/lit8 v5, v5, 0xb

    or-int/2addr v4, v5

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v5, v5, v6

    ushr-int/lit8 v5, v5, 0xc

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v6, v6, v9

    shl-int/lit8 v6, v6, 0x4

    or-int/2addr v5, v6

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v6, v6, v9

    ushr-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v7, v7, v13

    shl-int/lit8 v7, v7, 0xf

    or-int/2addr v6, v7

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v7, v7, v9

    ushr-int/lit8 v7, v7, 0x5

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v8, v8, v13

    shl-int/lit8 v8, v8, 0xb

    or-int/2addr v7, v8

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v8, v8, v9

    ushr-int/lit8 v8, v8, 0xd

    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v9, v9, v13

    shl-int/lit8 v9, v9, 0x3

    or-int/2addr v8, v9

    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v9, v9, v13

    ushr-int/lit8 v9, v9, 0x4

    iget-object v10, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v10, v10, v14

    shl-int/lit8 v10, v10, 0xc

    or-int/2addr v9, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v10, v10, v13

    ushr-int/lit8 v10, v10, 0xc

    iget-object v11, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v11, v11, v14

    shl-int/lit8 v11, v11, 0x4

    or-int/2addr v10, v11

    iget-object v11, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v11, v11, v13

    ushr-int/lit8 v11, v11, 0xe

    iget-object v12, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v12, v12, v14

    shl-int/lit8 v12, v12, 0x2

    or-int/2addr v11, v12

    iget-object v12, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v12, v12, v13

    ushr-int/lit8 v12, v12, 0xf

    iget-object v13, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    aget v13, v13, v14

    shl-int/lit8 v13, v13, 0x1

    or-int/2addr v12, v13

    xor-int/2addr v11, v10

    xor-int/2addr v11, v9

    xor-int/2addr v11, v8

    xor-int/2addr v11, v7

    xor-int/2addr v11, v6

    xor-int/2addr v11, v5

    xor-int/2addr v11, v4

    xor-int/2addr v2, v11

    xor-int/2addr v2, v1

    xor-int/2addr v0, v2

    and-int v2, v12, v10

    xor-int/2addr v0, v2

    and-int v2, v7, v6

    xor-int/2addr v0, v2

    and-int v2, v3, v1

    xor-int/2addr v0, v2

    and-int v2, v10, v9

    and-int/2addr v2, v8

    xor-int/2addr v0, v2

    and-int v2, v6, v5

    and-int/2addr v2, v4

    xor-int/2addr v0, v2

    and-int v2, v12, v8

    and-int/2addr v2, v5

    and-int/2addr v2, v1

    xor-int/2addr v0, v2

    and-int v2, v10, v9

    and-int/2addr v2, v7

    and-int/2addr v2, v6

    xor-int/2addr v0, v2

    and-int v2, v12, v10

    and-int/2addr v2, v4

    and-int/2addr v2, v3

    xor-int/2addr v0, v2

    and-int v2, v12, v10

    and-int/2addr v2, v9

    and-int/2addr v2, v8

    and-int/2addr v2, v7

    xor-int/2addr v0, v2

    and-int v2, v6, v5

    and-int/2addr v2, v4

    and-int/2addr v2, v3

    and-int/2addr v1, v2

    xor-int/2addr v0, v1

    and-int v1, v9, v8

    and-int/2addr v1, v7

    and-int/2addr v1, v6

    and-int/2addr v1, v5

    and-int/2addr v1, v4

    xor-int/2addr v0, v1

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method private initGrain()V
    .locals 5

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->getOutput()I

    move-result v2

    iput v2, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->output:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->getOutputNFSR()I

    move-result v3

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    aget v4, v4, v1

    xor-int/2addr v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->output:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->shift([II)[I

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->getOutputLFSR()I

    move-result v3

    iget v4, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->output:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->shift([II)[I

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->initialised:Z

    return-void
.end method

.method private oneRound()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->getOutput()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->output:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->out:[B

    iget v1, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->output:I

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->out:[B

    const/4 v1, 0x1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->output:I

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->getOutputNFSR()I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    aget v2, v2, v3

    xor-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->shift([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->getOutputLFSR()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->shift([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    return-void
.end method

.method private setKey([B[B)V
    .locals 6

    const v5, 0xffff

    const/4 v0, 0x0

    const/4 v2, -0x1

    const/16 v1, 0x8

    aput-byte v2, p2, v1

    const/16 v1, 0x9

    aput-byte v2, p2, v1

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->workingKey:[B

    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->workingIV:[B

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->workingKey:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    shl-int/lit8 v3, v3, 0x8

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->workingKey:[B

    aget-byte v4, v4, v1

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    and-int/2addr v3, v5

    aput v3, v2, v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->workingIV:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    shl-int/lit8 v3, v3, 0x8

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->workingIV:[B

    aget-byte v4, v4, v1

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    and-int/2addr v3, v5

    aput v3, v2, v0

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private shift([II)[I
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v0, 0x0

    aget v1, p1, v2

    aput v1, p1, v0

    aget v0, p1, v3

    aput v0, p1, v2

    aget v0, p1, v4

    aput v0, p1, v3

    aget v0, p1, v5

    aput v0, p1, v4

    aput p2, p1, v5

    return-object p1
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "Grain v1"

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v3, 0x5

    const/4 v4, 0x0

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Grain v1 Init parameters must include an IV"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v0, v1

    const/16 v2, 0x8

    if-eq v0, v2, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Grain v1 requires exactly 8 bytes of IV"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Grain v1 Init parameters must include a key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->workingIV:[B

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->workingKey:[B

    new-array v2, v3, [I

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->lfsr:[I

    new-array v2, v3, [I

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->nfsr:[I

    const/4 v2, 0x2

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->out:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->workingIV:[B

    array-length v3, v1

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->workingKey:[B

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    array-length v0, v0

    invoke-static {v1, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->reset()V

    return-void
.end method

.method public processBytes([BII[BI)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->initialised:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not initialised"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int v0, p5, p3

    array-length v1, p4

    if-le v0, v1, :cond_2

    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_3

    add-int v1, p5, v0

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->getKeyStream()B

    move-result v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return p3
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x2

    iput v0, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->index:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->workingKey:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->workingIV:[B

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->setKey([B[B)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->initGrain()V

    return-void
.end method

.method public returnByte(B)B
    .locals 3

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->initialised:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not initialised"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Grainv1Engine;->getKeyStream()B

    move-result v0

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    return v0
.end method
