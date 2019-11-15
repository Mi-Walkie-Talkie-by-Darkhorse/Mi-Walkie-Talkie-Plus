.class public Lorg/bouncycastle/crypto/engines/HC128Engine;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/StreamCipher;


# instance fields
.field private buf:[B

.field private cnt:I

.field private idx:I

.field private initialised:Z

.field private iv:[B

.field private key:[B

.field private p:[I

.field private q:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v2, 0x200

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v2, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->p:[I

    new-array v0, v2, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->q:[I

    iput v1, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->cnt:I

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->buf:[B

    iput v1, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->idx:I

    return-void
.end method

.method private static dim(II)I
    .locals 1

    sub-int v0, p0, p1

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/HC128Engine;->mod512(I)I

    move-result v0

    return v0
.end method

.method private static f1(I)I
    .locals 2

    const/4 v0, 0x7

    invoke-static {p0, v0}, Lorg/bouncycastle/crypto/engines/HC128Engine;->rotateRight(II)I

    move-result v0

    const/16 v1, 0x12

    invoke-static {p0, v1}, Lorg/bouncycastle/crypto/engines/HC128Engine;->rotateRight(II)I

    move-result v1

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x3

    xor-int/2addr v0, v1

    return v0
.end method

.method private static f2(I)I
    .locals 2

    const/16 v0, 0x11

    invoke-static {p0, v0}, Lorg/bouncycastle/crypto/engines/HC128Engine;->rotateRight(II)I

    move-result v0

    const/16 v1, 0x13

    invoke-static {p0, v1}, Lorg/bouncycastle/crypto/engines/HC128Engine;->rotateRight(II)I

    move-result v1

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0xa

    xor-int/2addr v0, v1

    return v0
.end method

.method private g1(III)I
    .locals 2

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/engines/HC128Engine;->rotateRight(II)I

    move-result v0

    const/16 v1, 0x17

    invoke-static {p3, v1}, Lorg/bouncycastle/crypto/engines/HC128Engine;->rotateRight(II)I

    move-result v1

    xor-int/2addr v0, v1

    const/16 v1, 0x8

    invoke-static {p2, v1}, Lorg/bouncycastle/crypto/engines/HC128Engine;->rotateRight(II)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private g2(III)I
    .locals 2

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/engines/HC128Engine;->rotateLeft(II)I

    move-result v0

    const/16 v1, 0x17

    invoke-static {p3, v1}, Lorg/bouncycastle/crypto/engines/HC128Engine;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    const/16 v1, 0x8

    invoke-static {p2, v1}, Lorg/bouncycastle/crypto/engines/HC128Engine;->rotateLeft(II)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getByte()B
    .locals 4

    iget v0, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->idx:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/HC128Engine;->step()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->buf:[B

    const/4 v2, 0x0

    and-int/lit16 v3, v0, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    shr-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->buf:[B

    const/4 v2, 0x1

    and-int/lit16 v3, v0, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    shr-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->buf:[B

    const/4 v2, 0x2

    and-int/lit16 v3, v0, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    shr-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->buf:[B

    const/4 v2, 0x3

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->idx:I

    aget-byte v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->idx:I

    add-int/lit8 v1, v1, 0x1

    and-int/lit8 v1, v1, 0x3

    iput v1, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->idx:I

    return v0
.end method

.method private h1(I)I
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->q:[I

    and-int/lit16 v1, p1, 0xff

    aget v0, v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->q:[I

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    add-int/lit16 v2, v2, 0x100

    aget v1, v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private h2(I)I
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->p:[I

    and-int/lit16 v1, p1, 0xff

    aget v0, v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->p:[I

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    add-int/lit16 v2, v2, 0x100

    aget v1, v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private init()V
    .locals 11

    const/16 v10, 0x500

    const/4 v9, 0x4

    const/16 v8, 0x200

    const/16 v2, 0x10

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->key:[B

    array-length v0, v0

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The key must be 128 bits long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput v1, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->idx:I

    iput v1, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->cnt:I

    new-array v3, v10, [I

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    shr-int/lit8 v4, v0, 0x2

    aget v5, v3, v4

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->key:[B

    aget-byte v6, v6, v0

    and-int/lit16 v6, v6, 0xff

    and-int/lit8 v7, v0, 0x3

    mul-int/lit8 v7, v7, 0x8

    shl-int/2addr v6, v7

    or-int/2addr v5, v6

    aput v5, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v3, v1, v3, v9, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v1

    :goto_1
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->iv:[B

    array-length v4, v4

    if-ge v0, v4, :cond_2

    if-ge v0, v2, :cond_2

    shr-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x8

    aget v5, v3, v4

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->iv:[B

    aget-byte v6, v6, v0

    and-int/lit16 v6, v6, 0xff

    and-int/lit8 v7, v0, 0x3

    mul-int/lit8 v7, v7, 0x8

    shl-int/2addr v6, v7

    or-int/2addr v5, v6

    aput v5, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/16 v0, 0x8

    const/16 v4, 0xc

    invoke-static {v3, v0, v3, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v2

    :goto_2
    if-ge v0, v10, :cond_3

    add-int/lit8 v2, v0, -0x2

    aget v2, v3, v2

    invoke-static {v2}, Lorg/bouncycastle/crypto/engines/HC128Engine;->f2(I)I

    move-result v2

    add-int/lit8 v4, v0, -0x7

    aget v4, v3, v4

    add-int/2addr v2, v4

    add-int/lit8 v4, v0, -0xf

    aget v4, v3, v4

    invoke-static {v4}, Lorg/bouncycastle/crypto/engines/HC128Engine;->f1(I)I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v4, v0, -0x10

    aget v4, v3, v4

    add-int/2addr v2, v4

    add-int/2addr v2, v0

    aput v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const/16 v0, 0x100

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->p:[I

    invoke-static {v3, v0, v2, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x300

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->q:[I

    invoke-static {v3, v0, v2, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v1

    :goto_3
    if-ge v0, v8, :cond_4

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->p:[I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/HC128Engine;->step()I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    move v0, v1

    :goto_4
    if-ge v0, v8, :cond_5

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->q:[I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/HC128Engine;->step()I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    iput v1, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->cnt:I

    return-void
.end method

.method private static mod1024(I)I
    .locals 1

    and-int/lit16 v0, p0, 0x3ff

    return v0
.end method

.method private static mod512(I)I
    .locals 1

    and-int/lit16 v0, p0, 0x1ff

    return v0
.end method

.method private static rotateLeft(II)I
    .locals 2

    shl-int v0, p0, p1

    neg-int v1, p1

    ushr-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private static rotateRight(II)I
    .locals 2

    ushr-int v0, p0, p1

    neg-int v1, p1

    shl-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private step()I
    .locals 8

    const/16 v6, 0x1ff

    const/16 v7, 0xc

    const/16 v5, 0xa

    const/4 v4, 0x3

    iget v0, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->cnt:I

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/HC128Engine;->mod512(I)I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->cnt:I

    const/16 v2, 0x200

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->p:[I

    aget v2, v1, v0

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->p:[I

    invoke-static {v0, v4}, Lorg/bouncycastle/crypto/engines/HC128Engine;->dim(II)I

    move-result v4

    aget v3, v3, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->p:[I

    invoke-static {v0, v5}, Lorg/bouncycastle/crypto/engines/HC128Engine;->dim(II)I

    move-result v5

    aget v4, v4, v5

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->p:[I

    invoke-static {v0, v6}, Lorg/bouncycastle/crypto/engines/HC128Engine;->dim(II)I

    move-result v6

    aget v5, v5, v6

    invoke-direct {p0, v3, v4, v5}, Lorg/bouncycastle/crypto/engines/HC128Engine;->g1(III)I

    move-result v3

    add-int/2addr v2, v3

    aput v2, v1, v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->p:[I

    invoke-static {v0, v7}, Lorg/bouncycastle/crypto/engines/HC128Engine;->dim(II)I

    move-result v2

    aget v1, v1, v2

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/HC128Engine;->h1(I)I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->p:[I

    aget v0, v2, v0

    xor-int/2addr v0, v1

    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->cnt:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/HC128Engine;->mod1024(I)I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->cnt:I

    return v0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->q:[I

    aget v2, v1, v0

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->q:[I

    invoke-static {v0, v4}, Lorg/bouncycastle/crypto/engines/HC128Engine;->dim(II)I

    move-result v4

    aget v3, v3, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->q:[I

    invoke-static {v0, v5}, Lorg/bouncycastle/crypto/engines/HC128Engine;->dim(II)I

    move-result v5

    aget v4, v4, v5

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->q:[I

    invoke-static {v0, v6}, Lorg/bouncycastle/crypto/engines/HC128Engine;->dim(II)I

    move-result v6

    aget v5, v5, v6

    invoke-direct {p0, v3, v4, v5}, Lorg/bouncycastle/crypto/engines/HC128Engine;->g2(III)I

    move-result v3

    add-int/2addr v2, v3

    aput v2, v1, v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->q:[I

    invoke-static {v0, v7}, Lorg/bouncycastle/crypto/engines/HC128Engine;->dim(II)I

    move-result v2

    aget v1, v1, v2

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/HC128Engine;->h2(I)I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->q:[I

    aget v0, v2, v0

    xor-int/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "HC-128"

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->iv:[B

    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->key:[B

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/HC128Engine;->init()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->initialised:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->iv:[B

    move-object v0, p2

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid parameter passed to HC128 init - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processBytes([BII[BI)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/HC128Engine;->initialised:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/HC128Engine;->getAlgorithmName()Ljava/lang/String;

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

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/HC128Engine;->getByte()B

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
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/HC128Engine;->init()V

    return-void
.end method

.method public returnByte(B)B
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/HC128Engine;->getByte()B

    move-result v0

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    return v0
.end method
