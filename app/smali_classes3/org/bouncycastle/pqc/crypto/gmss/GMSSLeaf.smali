.class public Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;
.super Ljava/lang/Object;


# instance fields
.field private concHashs:[B

.field private gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

.field private i:I

.field private j:I

.field private keysize:I

.field private leaf:[B

.field private mdsize:I

.field private messDigestOTS:Lorg/bouncycastle/crypto/Digest;

.field privateKeyOTS:[B

.field private seed:[B

.field private steps:I

.field private two_power_w:I

.field private w:I


# direct methods
.method constructor <init>(Lorg/bouncycastle/crypto/Digest;II)V
    .locals 7

    const/4 v6, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->w:I

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->mdsize:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->mdsize:I

    shl-int/lit8 v0, v0, 0x3

    int-to-double v0, v0

    int-to-double v2, p2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    shl-int v1, v0, p2

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->getLog(I)I

    move-result v1

    int-to-double v2, v1

    int-to-double v4, p2

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->keysize:I

    shl-int v0, v6, p2

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->two_power_w:I

    shl-int v0, v6, p2

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->keysize:I

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->keysize:I

    add-int/2addr v0, v1

    int-to-double v0, v0

    int-to-double v2, p3

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->steps:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->mdsize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->seed:[B

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->mdsize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->leaf:[B

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->mdsize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->privateKeyOTS:[B

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->mdsize:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->keysize:I

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->concHashs:[B

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;II[B)V
    .locals 7

    const/4 v6, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->w:I

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->mdsize:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->mdsize:I

    shl-int/lit8 v0, v0, 0x3

    int-to-double v0, v0

    int-to-double v2, p2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    shl-int v1, v0, p2

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->getLog(I)I

    move-result v1

    int-to-double v2, v1

    int-to-double v4, p2

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->keysize:I

    shl-int v0, v6, p2

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->two_power_w:I

    shl-int v0, v6, p2

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->keysize:I

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->keysize:I

    add-int/2addr v0, v1

    int-to-double v0, v0

    int-to-double v2, p3

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->steps:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->mdsize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->seed:[B

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->mdsize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->leaf:[B

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->mdsize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->privateKeyOTS:[B

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->mdsize:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->keysize:I

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->concHashs:[B

    invoke-virtual {p0, p4}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->initLeafCalc([B)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;[[B[I)V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    aget v0, p3, v7

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->i:I

    aget v0, p3, v6

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->j:I

    aget v0, p3, v8

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->steps:I

    aget v0, p3, v9

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->w:I

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->mdsize:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->mdsize:I

    shl-int/lit8 v0, v0, 0x3

    int-to-double v0, v0

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->w:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->w:I

    shl-int v1, v0, v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->getLog(I)I

    move-result v1

    int-to-double v2, v1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->w:I

    int-to-double v4, v1

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->keysize:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->w:I

    shl-int v0, v6, v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->two_power_w:I

    aget-object v0, p2, v7

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->privateKeyOTS:[B

    aget-object v0, p2, v6

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->seed:[B

    aget-object v0, p2, v8

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->concHashs:[B

    aget-object v0, p2, v9

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->leaf:[B

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->mdsize:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->mdsize:I

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->keysize:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->keysize:I

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->leaf:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->leaf:[B

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->concHashs:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->concHashs:[B

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->i:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->i:I

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->j:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->j:I

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->two_power_w:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->two_power_w:I

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->w:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->w:I

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->steps:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->steps:I

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->seed:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->seed:[B

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->privateKeyOTS:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->privateKeyOTS:[B

    return-void
.end method

.method private getLog(I)I
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

.method private updateLeafCalc()V
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v2, v0, [B

    move v0, v1

    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->steps:I

    add-int/lit16 v3, v3, 0x2710

    if-ge v0, v3, :cond_4

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->i:I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->keysize:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->j:I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->two_power_w:I

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->concHashs:[B

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->concHashs:[B

    array-length v3, v3

    invoke-interface {v0, v2, v1, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->leaf:[B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->leaf:[B

    invoke-interface {v0, v2, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-void

    :cond_0
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->i:I

    if-eqz v3, :cond_1

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->j:I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->two_power_w:I

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_3

    :cond_1
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->i:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->i:I

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->j:I

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->seed:[B

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->privateKeyOTS:[B

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->privateKeyOTS:[B

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->privateKeyOTS:[B

    array-length v5, v5

    invoke-interface {v3, v4, v1, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->privateKeyOTS:[B

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->privateKeyOTS:[B

    invoke-interface {v3, v4, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->j:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->j:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->j:I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->two_power_w:I

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->privateKeyOTS:[B

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->concHashs:[B

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->mdsize:I

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->i:I

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v5, v6

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->mdsize:I

    invoke-static {v3, v1, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to updateLeaf in steps: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->steps:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getLeaf()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->leaf:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getStatByte()[[B
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [[B

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->mdsize:I

    new-array v1, v1, [B

    aput-object v1, v0, v3

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->mdsize:I

    new-array v1, v1, [B

    aput-object v1, v0, v4

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->mdsize:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->keysize:I

    mul-int/2addr v1, v2

    new-array v1, v1, [B

    aput-object v1, v0, v5

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->mdsize:I

    new-array v1, v1, [B

    aput-object v1, v0, v6

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->privateKeyOTS:[B

    aput-object v1, v0, v3

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->seed:[B

    aput-object v1, v0, v4

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->concHashs:[B

    aput-object v1, v0, v5

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->leaf:[B

    aput-object v1, v0, v6

    return-object v0
.end method

.method public getStatInt()[I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->i:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->j:I

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->steps:I

    aput v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->w:I

    aput v2, v0, v1

    return-object v0
.end method

.method initLeafCalc([B)V
    .locals 3

    const/4 v2, 0x0

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->i:I

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->j:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->mdsize:I

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->seed:[B

    array-length v1, v1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->seed:[B

    return-void
.end method

.method nextLeaf()Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;
    .locals 1

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;-><init>(Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;)V

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->updateLeafCalc()V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    const/4 v5, 0x4

    const/4 v0, 0x0

    const-string v1, ""

    move-object v2, v1

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->getStatInt()[I

    move-result-object v3

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->mdsize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->keysize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->two_power_w:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->getStatByte()[[B

    move-result-object v2

    move v6, v0

    move-object v0, v1

    move v1, v6

    :goto_1
    if-ge v1, v5, :cond_2

    aget-object v3, v2, v1

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v3, Ljava/lang/String;

    aget-object v4, v2, v1

    invoke-static {v4}, Lorg/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "null "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    return-object v0
.end method
