.class public Lorg/bouncycastle/crypto/macs/Poly1305;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/Mac;


# static fields
.field private static final BLOCK_SIZE:I = 0x10


# instance fields
.field private final cipher:Lorg/bouncycastle/crypto/BlockCipher;

.field private final currentBlock:[B

.field private currentBlockOffset:I

.field private h0:I

.field private h1:I

.field private h2:I

.field private h3:I

.field private h4:I

.field private k0:I

.field private k1:I

.field private k2:I

.field private k3:I

.field private r0:I

.field private r1:I

.field private r2:I

.field private r3:I

.field private r4:I

.field private s1:I

.field private s2:I

.field private s3:I

.field private s4:I

.field private final singleByte:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->singleByte:[B

    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->currentBlock:[B

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .locals 2

    const/16 v1, 0x10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->singleByte:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->currentBlock:[B

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Poly1305 requires a 128 bit block cipher."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    return-void
.end method

.method private static final mul32x32_64(II)J
    .locals 4

    int-to-long v0, p0

    int-to-long v2, p1

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method private processBlock()V
    .locals 12

    iget v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->currentBlock:[B

    iget v1, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    iget v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    add-int/lit8 v0, v0, 0x1

    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->currentBlock:[B

    const/4 v2, 0x0

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-wide v0, 0xffffffffL

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->currentBlock:[B

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v0, v2

    const-wide v2, 0xffffffffL

    iget-object v4, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->currentBlock:[B

    const/4 v5, 0x4

    invoke-static {v4, v5}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v2, v4

    const-wide v4, 0xffffffffL

    iget-object v6, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->currentBlock:[B

    const/16 v7, 0x8

    invoke-static {v6, v7}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v6

    int-to-long v6, v6

    and-long/2addr v4, v6

    const-wide v6, 0xffffffffL

    iget-object v8, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->currentBlock:[B

    const/16 v9, 0xc

    invoke-static {v8, v9}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v8

    int-to-long v8, v8

    and-long/2addr v6, v8

    iget v8, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h0:I

    int-to-long v8, v8

    const-wide/32 v10, 0x3ffffff

    and-long/2addr v10, v0

    add-long/2addr v8, v10

    long-to-int v8, v8

    iput v8, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h0:I

    iget v8, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h1:I

    int-to-long v8, v8

    const/16 v10, 0x20

    shl-long v10, v2, v10

    or-long/2addr v0, v10

    const/16 v10, 0x1a

    ushr-long/2addr v0, v10

    const-wide/32 v10, 0x3ffffff

    and-long/2addr v0, v10

    add-long/2addr v0, v8

    long-to-int v0, v0

    iput v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h1:I

    iget v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h2:I

    int-to-long v0, v0

    const/16 v8, 0x20

    shl-long v8, v4, v8

    or-long/2addr v2, v8

    const/16 v8, 0x14

    ushr-long/2addr v2, v8

    const-wide/32 v8, 0x3ffffff

    and-long/2addr v2, v8

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h2:I

    iget v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h3:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long v2, v6, v2

    or-long/2addr v2, v4

    const/16 v4, 0xe

    ushr-long/2addr v2, v4

    const-wide/32 v4, 0x3ffffff

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h3:I

    iget v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h4:I

    int-to-long v0, v0

    const/16 v2, 0x8

    ushr-long v2, v6, v2

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h4:I

    iget v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h4:I

    const/high16 v1, 0x1000000

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h4:I

    :cond_1
    iget v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h0:I

    iget v1, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->r0:I

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v0

    iget v2, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h1:I

    iget v3, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->s4:I

    invoke-static {v2, v3}, Lorg/bouncycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v2

    add-long/2addr v0, v2

    iget v2, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h2:I

    iget v3, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->s3:I

    invoke-static {v2, v3}, Lorg/bouncycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v2

    add-long/2addr v0, v2

    iget v2, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h3:I

    iget v3, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->s2:I

    invoke-static {v2, v3}, Lorg/bouncycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v2

    add-long/2addr v0, v2

    iget v2, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h4:I

    iget v3, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->s1:I

    invoke-static {v2, v3}, Lorg/bouncycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v2

    add-long/2addr v0, v2

    iget v2, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h0:I

    iget v3, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->r1:I

    invoke-static {v2, v3}, Lorg/bouncycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v2

    iget v4, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h1:I

    iget v5, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->r0:I

    invoke-static {v4, v5}, Lorg/bouncycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v4

    add-long/2addr v2, v4

    iget v4, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h2:I

    iget v5, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->s4:I

    invoke-static {v4, v5}, Lorg/bouncycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v4

    add-long/2addr v2, v4

    iget v4, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h3:I

    iget v5, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->s3:I

    invoke-static {v4, v5}, Lorg/bouncycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v4

    add-long/2addr v2, v4

    iget v4, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h4:I

    iget v5, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->s2:I

    invoke-static {v4, v5}, Lorg/bouncycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v4

    add-long/2addr v2, v4

    iget v4, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h0:I

    iget v5, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->r2:I

    invoke-static {v4, v5}, Lorg/bouncycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v4

    iget v6, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h1:I

    iget v7, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->r1:I

    invoke-static {v6, v7}, Lorg/bouncycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v6

    add-long/2addr v4, v6

    iget v6, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h2:I

    iget v7, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->r0:I

    invoke-static {v6, v7}, Lorg/bouncycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v6

    add-long/2addr v4, v6

    iget v6, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h3:I

    iget v7, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->s4:I

    invoke-static {v6, v7}, Lorg/bouncycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v6

    add-long/2addr v4, v6

    iget v6, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h4:I

    iget v7, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->s3:I

    invoke-static {v6, v7}, Lorg/bouncycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v6

    add-long/2addr v4, v6

    iget v6, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h0:I

    iget v7, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->r3:I

    invoke-static {v6, v7}, Lorg/bouncycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v6

    iget v8, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h1:I

    iget v9, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->r2:I

    invoke-static {v8, v9}, Lorg/bouncycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v8

    add-long/2addr v6, v8

    iget v8, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h2:I

    iget v9, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->r1:I

    invoke-static {v8, v9}, Lorg/bouncycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v8

    add-long/2addr v6, v8

    iget v8, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h3:I

    iget v9, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->r0:I

    invoke-static {v8, v9}, Lorg/bouncycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v8

    add-long/2addr v6, v8

    iget v8, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h4:I

    iget v9, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->s4:I

    invoke-static {v8, v9}, Lorg/bouncycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v8

    add-long/2addr v6, v8

    iget v8, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h0:I

    iget v9, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->r4:I

    invoke-static {v8, v9}, Lorg/bouncycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v8

    iget v10, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h1:I

    iget v11, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->r3:I

    invoke-static {v10, v11}, Lorg/bouncycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v10

    add-long/2addr v8, v10

    iget v10, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h2:I

    iget v11, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->r2:I

    invoke-static {v10, v11}, Lorg/bouncycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v10

    add-long/2addr v8, v10

    iget v10, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h3:I

    iget v11, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->r1:I

    invoke-static {v10, v11}, Lorg/bouncycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v10

    add-long/2addr v8, v10

    iget v10, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h4:I

    iget v11, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->r0:I

    invoke-static {v10, v11}, Lorg/bouncycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v10

    add-long/2addr v8, v10

    long-to-int v10, v0

    const v11, 0x3ffffff

    and-int/2addr v10, v11

    iput v10, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h0:I

    const/16 v10, 0x1a

    ushr-long/2addr v0, v10

    add-long/2addr v0, v2

    long-to-int v2, v0

    const v3, 0x3ffffff

    and-int/2addr v2, v3

    iput v2, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h1:I

    const/16 v2, 0x1a

    ushr-long/2addr v0, v2

    const-wide/16 v2, -0x1

    and-long/2addr v0, v2

    add-long/2addr v0, v4

    long-to-int v2, v0

    const v3, 0x3ffffff

    and-int/2addr v2, v3

    iput v2, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h2:I

    const/16 v2, 0x1a

    ushr-long/2addr v0, v2

    const-wide/16 v2, -0x1

    and-long/2addr v0, v2

    add-long/2addr v0, v6

    long-to-int v2, v0

    const v3, 0x3ffffff

    and-int/2addr v2, v3

    iput v2, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h3:I

    const/16 v2, 0x1a

    ushr-long/2addr v0, v2

    add-long/2addr v0, v8

    long-to-int v2, v0

    const v3, 0x3ffffff

    and-int/2addr v2, v3

    iput v2, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h4:I

    const/16 v2, 0x1a

    ushr-long/2addr v0, v2

    iget v2, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h0:I

    int-to-long v2, v2

    const-wide/16 v4, 0x5

    mul-long/2addr v0, v4

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h0:I

    return-void
.end method

.method private setKey([B[B)V
    .locals 7

    const/16 v6, 0x10

    const/4 v5, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    array-length v0, p2

    if-eq v0, v6, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Poly1305 requires a 128 bit IV."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1}, Lorg/bouncycastle/crypto/generators/Poly1305KeyGenerator;->checkKey([B)V

    invoke-static {p1, v6}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v0

    const/16 v1, 0x14

    invoke-static {p1, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    const/16 v2, 0x18

    invoke-static {p1, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v2

    const/16 v3, 0x1c

    invoke-static {p1, v3}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v3

    const v4, 0x3ffffff

    and-int/2addr v4, v0

    iput v4, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->r0:I

    ushr-int/lit8 v0, v0, 0x1a

    shl-int/lit8 v4, v1, 0x6

    or-int/2addr v0, v4

    const v4, 0x3ffff03

    and-int/2addr v0, v4

    iput v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->r1:I

    ushr-int/lit8 v0, v1, 0x14

    shl-int/lit8 v1, v2, 0xc

    or-int/2addr v0, v1

    const v1, 0x3ffc0ff

    and-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->r2:I

    ushr-int/lit8 v0, v2, 0xe

    shl-int/lit8 v1, v3, 0x12

    or-int/2addr v0, v1

    const v1, 0x3f03fff

    and-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->r3:I

    ushr-int/lit8 v0, v3, 0x8

    const v1, 0xfffff

    and-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->r4:I

    iget v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->r1:I

    mul-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->s1:I

    iget v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->r2:I

    mul-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->s2:I

    iget v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->r3:I

    mul-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->s3:I

    iget v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->r4:I

    mul-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->s4:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    if-nez v0, :cond_2

    :goto_0
    invoke-static {p1, v5}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->k0:I

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->k1:I

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->k2:I

    const/16 v0, 0xc

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->k3:I

    return-void

    :cond_2
    new-array v0, v6, [B

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    const/4 v2, 0x1

    new-instance v3, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v3, p1, v5, v6}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-interface {v1, v2, v3}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1, p2, v5, v0, v5}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-object p1, v0

    goto :goto_0
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/16 v12, 0x20

    const-wide v10, 0xffffffffL

    const v5, 0x3ffffff

    add-int/lit8 v0, p2, 0x10

    array-length v1, p1

    if-le v0, v1, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "Output buffer is too short."

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    if-lez v0, :cond_1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/macs/Poly1305;->processBlock()V

    :cond_1
    iget v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h0:I

    ushr-int/lit8 v0, v0, 0x1a

    iget v1, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h0:I

    and-int/2addr v1, v5

    iput v1, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h0:I

    iget v1, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h1:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h1:I

    iget v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h1:I

    ushr-int/lit8 v0, v0, 0x1a

    iget v1, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h1:I

    and-int/2addr v1, v5

    iput v1, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h1:I

    iget v1, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h2:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h2:I

    iget v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h2:I

    ushr-int/lit8 v0, v0, 0x1a

    iget v1, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h2:I

    and-int/2addr v1, v5

    iput v1, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h2:I

    iget v1, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h3:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h3:I

    iget v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h3:I

    ushr-int/lit8 v0, v0, 0x1a

    iget v1, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h3:I

    and-int/2addr v1, v5

    iput v1, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h3:I

    iget v1, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h4:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h4:I

    iget v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h4:I

    ushr-int/lit8 v0, v0, 0x1a

    iget v1, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h4:I

    and-int/2addr v1, v5

    iput v1, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h4:I

    iget v1, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h0:I

    mul-int/lit8 v0, v0, 0x5

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h0:I

    iget v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h0:I

    add-int/lit8 v0, v0, 0x5

    ushr-int/lit8 v1, v0, 0x1a

    and-int/2addr v0, v5

    iget v2, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h1:I

    add-int/2addr v1, v2

    ushr-int/lit8 v2, v1, 0x1a

    and-int/2addr v1, v5

    iget v3, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h2:I

    add-int/2addr v2, v3

    ushr-int/lit8 v3, v2, 0x1a

    and-int/2addr v2, v5

    iget v4, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h3:I

    add-int/2addr v3, v4

    ushr-int/lit8 v4, v3, 0x1a

    and-int/2addr v3, v5

    iget v5, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h4:I

    add-int/2addr v4, v5

    const/high16 v5, 0x4000000

    sub-int/2addr v4, v5

    ushr-int/lit8 v5, v4, 0x1f

    add-int/lit8 v5, v5, -0x1

    xor-int/lit8 v6, v5, -0x1

    iget v7, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h0:I

    and-int/2addr v7, v6

    and-int/2addr v0, v5

    or-int/2addr v0, v7

    iput v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h0:I

    iget v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h1:I

    and-int/2addr v0, v6

    and-int/2addr v1, v5

    or-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h1:I

    iget v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h2:I

    and-int/2addr v0, v6

    and-int v1, v2, v5

    or-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h2:I

    iget v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h3:I

    and-int/2addr v0, v6

    and-int v1, v3, v5

    or-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h3:I

    iget v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h4:I

    and-int/2addr v0, v6

    and-int v1, v4, v5

    or-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h4:I

    iget v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h0:I

    iget v1, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h1:I

    shl-int/lit8 v1, v1, 0x1a

    or-int/2addr v0, v1

    int-to-long v0, v0

    and-long/2addr v0, v10

    iget v2, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->k0:I

    int-to-long v2, v2

    and-long/2addr v2, v10

    add-long/2addr v0, v2

    iget v2, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h1:I

    ushr-int/lit8 v2, v2, 0x6

    iget v3, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h2:I

    shl-int/lit8 v3, v3, 0x14

    or-int/2addr v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v10

    iget v4, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->k1:I

    int-to-long v4, v4

    and-long/2addr v4, v10

    add-long/2addr v2, v4

    iget v4, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h2:I

    ushr-int/lit8 v4, v4, 0xc

    iget v5, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h3:I

    shl-int/lit8 v5, v5, 0xe

    or-int/2addr v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v10

    iget v6, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->k2:I

    int-to-long v6, v6

    and-long/2addr v6, v10

    add-long/2addr v4, v6

    iget v6, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h3:I

    ushr-int/lit8 v6, v6, 0x12

    iget v7, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h4:I

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    int-to-long v6, v6

    and-long/2addr v6, v10

    iget v8, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->k3:I

    int-to-long v8, v8

    and-long/2addr v8, v10

    add-long/2addr v6, v8

    long-to-int v8, v0

    invoke-static {v8, p1, p2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    ushr-long/2addr v0, v12

    add-long/2addr v0, v2

    long-to-int v2, v0

    add-int/lit8 v3, p2, 0x4

    invoke-static {v2, p1, v3}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    ushr-long/2addr v0, v12

    add-long/2addr v0, v4

    long-to-int v2, v0

    add-int/lit8 v3, p2, 0x8

    invoke-static {v2, p1, v3}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    ushr-long/2addr v0, v12

    add-long/2addr v0, v6

    long-to-int v0, v0

    add-int/lit8 v1, p2, 0xc

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/Poly1305;->reset()V

    const/16 v0, 0x10

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    if-nez v0, :cond_0

    const-string v0, "Poly1305"

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Poly1305-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMacSize()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    if-eqz v1, :cond_2

    instance-of v0, p1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Poly1305 requires an IV when used with a block cipher."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    move-object v1, v0

    move-object v0, p1

    :goto_0
    instance-of v2, v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Poly1305 requires a key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/macs/Poly1305;->setKey([B[B)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/Poly1305;->reset()V

    return-void

    :cond_2
    move-object v1, v0

    move-object v0, p1

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    iput v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h4:I

    iput v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h3:I

    iput v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h2:I

    iput v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h1:I

    iput v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->h0:I

    return-void
.end method

.method public update(B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->singleByte:[B

    aput-byte p1, v0, v2

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->singleByte:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lorg/bouncycastle/crypto/macs/Poly1305;->update([BII)V

    return-void
.end method

.method public update([BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    if-le p3, v0, :cond_1

    iget v2, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/macs/Poly1305;->processBlock()V

    iput v1, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    :cond_0
    sub-int v2, p3, v0

    iget v3, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    rsub-int/lit8 v3, v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int v3, v0, p2

    iget-object v4, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->currentBlock:[B

    iget v5, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    invoke-static {p1, v3, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v2

    iget v3, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/bouncycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    goto :goto_0

    :cond_1
    return-void
.end method
