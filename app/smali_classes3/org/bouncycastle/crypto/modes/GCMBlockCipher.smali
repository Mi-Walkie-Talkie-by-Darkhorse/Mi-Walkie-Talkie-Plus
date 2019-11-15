.class public Lorg/bouncycastle/crypto/modes/GCMBlockCipher;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/modes/AEADBlockCipher;


# static fields
.field private static final BLOCK_SIZE:I = 0x10


# instance fields
.field private H:[B

.field private J0:[B

.field private S:[B

.field private S_at:[B

.field private S_atPre:[B

.field private atBlock:[B

.field private atBlockPos:I

.field private atLength:J

.field private atLengthPre:J

.field private bufBlock:[B

.field private bufOff:I

.field private cipher:Lorg/bouncycastle/crypto/BlockCipher;

.field private counter:[B

.field private exp:Lorg/bouncycastle/crypto/modes/gcm/GCMExponentiator;

.field private forEncryption:Z

.field private initialAssociatedText:[B

.field private macBlock:[B

.field private macSize:I

.field private multiplier:Lorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;

.field private nonce:[B

.field private totalLength:J


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cipher required with a block size of 16."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance p2, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;

    invoke-direct {p2}, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;-><init>()V

    :cond_1
    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iput-object p2, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->multiplier:Lorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    return-void
.end method

.method private gCTRBlock([B[BI)V
    .locals 4

    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->getNextCounterBlock()[B

    move-result-object v0

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[B)V

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {v0, v1, p2, p3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    iget-boolean v2, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-eqz v2, :cond_0

    move-object p1, v0

    :cond_0
    invoke-direct {p0, v1, p1}, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHBlock([B[B)V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    return-void
.end method

.method private gCTRPartial([BII[BI)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->getNextCounterBlock()[B

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[BII)V

    invoke-static {v0, v3, p4, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    iget-boolean v2, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-eqz v2, :cond_0

    move-object p1, v0

    :cond_0
    invoke-direct {p0, v1, p1, v3, p3}, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHPartial([B[BII)V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    return-void
.end method

.method private gHASH([B[BI)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    sub-int v1, p3, v0

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHPartial([B[BII)V

    add-int/lit8 v0, v0, 0x10

    goto :goto_0

    :cond_0
    return-void
.end method

.method private gHASHBlock([B[B)V
    .locals 1

    invoke-static {p1, p2}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->multiplier:Lorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;->multiplyH([B)V

    return-void
.end method

.method private gHASHPartial([B[BII)V
    .locals 1

    invoke-static {p1, p2, p3, p4}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->multiplier:Lorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;->multiplyH([B)V

    return-void
.end method

.method private getNextCounterBlock()[B
    .locals 8

    const/16 v7, 0xf

    const/16 v6, 0xe

    const/16 v5, 0xd

    const/16 v4, 0xc

    const/4 v3, 0x0

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    aget-byte v1, v1, v7

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    int-to-byte v2, v0

    aput-byte v2, v1, v7

    ushr-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    aget-byte v1, v1, v6

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    int-to-byte v2, v0

    aput-byte v2, v1, v6

    ushr-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    aget-byte v1, v1, v5

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    int-to-byte v2, v0

    aput-byte v2, v1, v5

    ushr-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    int-to-byte v0, v0

    aput-byte v0, v1, v4

    const/16 v0, 0x10

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    invoke-interface {v1, v2, v3, v0, v3}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    return-object v0
.end method

.method private initCipher()V
    .locals 8

    const-wide/16 v6, 0x0

    const/16 v5, 0x10

    const/4 v4, 0x0

    iget-wide v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    invoke-static {v0, v4, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    iget v2, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    invoke-direct {p0, v0, v1, v4, v2}, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHPartial([B[BII)V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    iget v2, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    :cond_1
    iget-wide v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    invoke-static {v0, v4, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    return-void
.end method

.method private outputBlock([BI)V
    .locals 5

    const/4 v4, 0x0

    array-length v0, p1

    add-int/lit8 v1, p2, 0x10

    if-ge v0, v1, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "Output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->initCipher()V

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->gCTRBlock([B[BI)V

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_2

    iput v4, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    const/16 v1, 0x10

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    iget v3, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    iput v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    goto :goto_0
.end method

.method private reset(Z)V
    .locals 6

    const-wide/16 v4, 0x0

    const/16 v1, 0x10

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->reset()V

    new-array v0, v1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    iput v2, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    iput-wide v4, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    iput-wide v4, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    iput v2, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    iput-wide v4, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    invoke-static {v0, v2}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    array-length v1, v1

    invoke-virtual {p0, v0, v2, v1}, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->processAADBytes([BII)V

    :cond_2
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    const-wide/16 v10, 0x0

    const-wide/16 v8, 0x8

    const/16 v7, 0x10

    const/4 v2, 0x0

    iget-wide v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    cmp-long v0, v0, v10

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->initCipher()V

    :cond_0
    iget v3, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_1

    array-length v0, p1

    add-int v1, p2, v3

    iget v4, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    add-int/2addr v1, v4

    if-ge v0, v1, :cond_3

    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "Output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    if-ge v3, v0, :cond_2

    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "data too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    sub-int/2addr v3, v0

    array-length v0, p1

    add-int v1, p2, v3

    if-ge v0, v1, :cond_3

    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "Output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-lez v3, :cond_4

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->gCTRPartial([BII[BI)V

    :cond_4
    iget-wide v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    iget v4, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    int-to-long v4, v4

    add-long/2addr v0, v4

    iput-wide v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    iget-wide v4, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_8

    iget v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    if-lez v0, :cond_5

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    iget v4, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    invoke-direct {p0, v0, v1, v2, v4}, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHPartial([B[BII)V

    :cond_5
    iget-wide v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    cmp-long v0, v0, v10

    if-lez v0, :cond_6

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[B)V

    :cond_6
    iget-wide v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    mul-long/2addr v0, v8

    const-wide/16 v4, 0x7f

    add-long/2addr v0, v4

    const/4 v4, 0x7

    ushr-long/2addr v0, v4

    new-array v4, v7, [B

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->exp:Lorg/bouncycastle/crypto/modes/gcm/GCMExponentiator;

    if-nez v5, :cond_7

    new-instance v5, Lorg/bouncycastle/crypto/modes/gcm/Tables1kGCMExponentiator;

    invoke-direct {v5}, Lorg/bouncycastle/crypto/modes/gcm/Tables1kGCMExponentiator;-><init>()V

    iput-object v5, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->exp:Lorg/bouncycastle/crypto/modes/gcm/GCMExponentiator;

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->exp:Lorg/bouncycastle/crypto/modes/gcm/GCMExponentiator;

    iget-object v6, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->H:[B

    invoke-interface {v5, v6}, Lorg/bouncycastle/crypto/modes/gcm/GCMExponentiator;->init([B)V

    :cond_7
    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->exp:Lorg/bouncycastle/crypto/modes/gcm/GCMExponentiator;

    invoke-interface {v5, v0, v1, v4}, Lorg/bouncycastle/crypto/modes/gcm/GCMExponentiator;->exponentiateX(J[B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    invoke-static {v0, v4}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->multiply([B[B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[B)V

    :cond_8
    new-array v0, v7, [B

    iget-wide v4, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    mul-long/2addr v4, v8

    invoke-static {v4, v5, v0, v2}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    iget-wide v4, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    mul-long/2addr v4, v8

    const/16 v1, 0x8

    invoke-static {v4, v5, v0, v1}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHBlock([B[B)V

    new-array v0, v7, [B

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    invoke-interface {v1, v4, v2, v0, v2}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[B)V

    iget v1, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    iget v4, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    invoke-static {v0, v2, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    iget v1, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int/2addr v1, p2

    iget v4, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    invoke-static {v0, v2, p1, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    add-int/2addr v3, v0

    :cond_9
    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->reset(Z)V

    return v3

    :cond_a
    iget v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    iget v4, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    invoke-static {v1, v3, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    invoke-static {v1, v0}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "mac check in GCM failed"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/GCM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMac()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getOutputSize(I)I
    .locals 2

    iget v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int/2addr v0, p1

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v1, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public getUpdateOutputSize(I)I
    .locals 2

    iget v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int/2addr v0, p1

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-nez v1, :cond_1

    iget v1, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    sub-int/2addr v0, v1

    :cond_1
    rem-int/lit8 v1, v0, 0x10

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-wide/16 v8, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/16 v1, 0x10

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    iput-object v5, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/AEADParameters;

    if-eqz v0, :cond_3

    check-cast p2, Lorg/bouncycastle/crypto/params/AEADParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/AEADParameters;->getNonce()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/AEADParameters;->getAssociatedText()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/AEADParameters;->getMacSize()I

    move-result v0

    const/16 v2, 0x20

    if-lt v0, v2, :cond_0

    const/16 v2, 0x80

    if-gt v0, v2, :cond_0

    rem-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid value for MAC size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/AEADParameters;->getKey()Lorg/bouncycastle/crypto/params/KeyParameter;

    move-result-object v0

    move-object v2, v0

    :goto_0
    if-eqz p1, :cond_5

    move v0, v1

    :goto_1
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    array-length v0, v0

    if-ge v0, v4, :cond_6

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "IV must be at least 1 byte"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_4

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    iput-object v5, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    iput v1, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    move-object v2, v0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid parameters passed to GCM"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    add-int/lit8 v0, v0, 0x10

    goto :goto_1

    :cond_6
    if-eqz v2, :cond_9

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0, v4, v2}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    new-array v0, v1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->H:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->H:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->H:[B

    invoke-interface {v0, v2, v6, v3, v6}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->multiplier:Lorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->H:[B

    invoke-interface {v0, v2}, Lorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;->init([B)V

    iput-object v5, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->exp:Lorg/bouncycastle/crypto/modes/gcm/GCMExponentiator;

    :cond_7
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    array-length v0, v0

    const/16 v2, 0xc

    if-ne v0, v2, :cond_a

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    array-length v3, v3

    invoke-static {v0, v6, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    const/16 v2, 0xf

    aput-byte v4, v0, v2

    :goto_2
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    iput v6, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    iput-wide v8, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    iput-wide v8, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    iput v6, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    iput-wide v8, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    array-length v1, v1

    invoke-virtual {p0, v0, v6, v1}, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->processAADBytes([BII)V

    :cond_8
    return-void

    :cond_9
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->H:[B

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key must be specified in initial init"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    array-length v3, v3

    invoke-direct {p0, v0, v2, v3}, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->gHASH([B[BI)V

    new-array v0, v1, [B

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    array-length v2, v2

    int-to-long v2, v2

    const-wide/16 v4, 0x8

    mul-long/2addr v2, v4

    const/16 v4, 0x8

    invoke-static {v2, v3, v0, v4}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    invoke-direct {p0, v2, v0}, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHBlock([B[B)V

    goto :goto_2
.end method

.method public processAADByte(B)V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    iget v1, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    aput-byte p1, v0, v1

    iget v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHBlock([B[B)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    iget-wide v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    :cond_0
    return-void
.end method

.method public processAADBytes([BII)V
    .locals 6

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    if-ge v0, p3, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    iget v3, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    add-int v4, p2, v0

    aget-byte v4, p1, v4

    aput-byte v4, v2, v3

    iget v2, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->gHASHBlock([B[B)V

    iput v1, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    iget-wide v2, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->atLength:J

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public processByte(B[BI)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    iget v1, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    aput-byte p1, v0, v1

    iget v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p2, p3}, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->outputBlock([BI)V

    const/16 v0, 0x10

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public processBytes([BII[BI)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    add-int v2, p2, p3

    if-ge v1, v2, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "Input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    iget v3, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int v4, p2, v1

    aget-byte v4, p1, v4

    aput-byte v4, v2, v3

    iget v2, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    array-length v3, v3

    if-ne v2, v3, :cond_1

    add-int v2, p5, v0

    invoke-direct {p0, p4, v2}, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->outputBlock([BI)V

    add-int/lit8 v0, v0, 0x10

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->reset(Z)V

    return-void
.end method
