.class public Lorg/bouncycastle/crypto/engines/RC532Engine;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# static fields
.field private static final P32:I = -0x481eae9d

.field private static final Q32:I = -0x61c88647


# instance fields
.field private _S:[I

.field private _noRounds:I

.field private forEncryption:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    iput v0, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_noRounds:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    return-void
.end method

.method private bytesToWord([BI)I
    .locals 2

    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method private decryptBlock([BI[BI)I
    .locals 6

    const/4 v5, 0x1

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/RC532Engine;->bytesToWord([BI)I

    move-result v2

    add-int/lit8 v0, p2, 0x4

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/engines/RC532Engine;->bytesToWord([BI)I

    move-result v1

    iget v0, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_noRounds:I

    :goto_0
    if-lt v0, v5, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    aget v3, v3, v4

    sub-int/2addr v1, v3

    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/crypto/engines/RC532Engine;->rotateRight(II)I

    move-result v1

    xor-int/2addr v1, v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    mul-int/lit8 v4, v0, 0x2

    aget v3, v3, v4

    sub-int/2addr v2, v3

    invoke-direct {p0, v2, v1}, Lorg/bouncycastle/crypto/engines/RC532Engine;->rotateRight(II)I

    move-result v2

    xor-int/2addr v2, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    const/4 v3, 0x0

    aget v0, v0, v3

    sub-int v0, v2, v0

    invoke-direct {p0, v0, p3, p4}, Lorg/bouncycastle/crypto/engines/RC532Engine;->wordToBytes(I[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    aget v0, v0, v5

    sub-int v0, v1, v0

    add-int/lit8 v1, p4, 0x4

    invoke-direct {p0, v0, p3, v1}, Lorg/bouncycastle/crypto/engines/RC532Engine;->wordToBytes(I[BI)V

    const/16 v0, 0x8

    return v0
.end method

.method private encryptBlock([BI[BI)I
    .locals 5

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/RC532Engine;->bytesToWord([BI)I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    add-int/2addr v2, v1

    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/crypto/engines/RC532Engine;->bytesToWord([BI)I

    move-result v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    aget v3, v3, v0

    add-int/2addr v1, v3

    :goto_0
    iget v3, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_noRounds:I

    if-gt v0, v3, :cond_0

    xor-int/2addr v2, v1

    invoke-direct {p0, v2, v1}, Lorg/bouncycastle/crypto/engines/RC532Engine;->rotateLeft(II)I

    move-result v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    mul-int/lit8 v4, v0, 0x2

    aget v3, v3, v4

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/crypto/engines/RC532Engine;->rotateLeft(II)I

    move-result v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    aget v3, v3, v4

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v2, p3, p4}, Lorg/bouncycastle/crypto/engines/RC532Engine;->wordToBytes(I[BI)V

    add-int/lit8 v0, p4, 0x4

    invoke-direct {p0, v1, p3, v0}, Lorg/bouncycastle/crypto/engines/RC532Engine;->wordToBytes(I[BI)V

    const/16 v0, 0x8

    return v0
.end method

.method private rotateLeft(II)I
    .locals 2

    and-int/lit8 v0, p2, 0x1f

    shl-int v0, p1, v0

    and-int/lit8 v1, p2, 0x1f

    rsub-int/lit8 v1, v1, 0x20

    ushr-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private rotateRight(II)I
    .locals 2

    and-int/lit8 v0, p2, 0x1f

    ushr-int v0, p1, v0

    and-int/lit8 v1, p2, 0x1f

    rsub-int/lit8 v1, v1, 0x20

    shl-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private setKey([B)V
    .locals 9

    const/4 v1, 0x0

    array-length v0, p1

    add-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    new-array v6, v0, [I

    move v0, v1

    :goto_0
    array-length v2, p1

    if-eq v0, v2, :cond_0

    div-int/lit8 v2, v0, 0x4

    aget v3, v6, v2

    aget-byte v4, p1, v0

    and-int/lit16 v4, v4, 0xff

    rem-int/lit8 v5, v0, 0x4

    mul-int/lit8 v5, v5, 0x8

    shl-int/2addr v4, v5

    add-int/2addr v3, v4

    aput v3, v6, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_noRounds:I

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    const v2, -0x481eae9d

    aput v2, v0, v1

    const/4 v0, 0x1

    :goto_1
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    const v4, -0x61c88647

    add-int/2addr v3, v4

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    array-length v0, v6

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    array-length v2, v2

    if-le v0, v2, :cond_2

    array-length v0, v6

    mul-int/lit8 v0, v0, 0x3

    :goto_2
    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    :goto_3
    if-ge v1, v0, :cond_3

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    aget v8, v8, v3

    add-int/2addr v5, v8

    add-int/2addr v5, v4

    const/4 v8, 0x3

    invoke-direct {p0, v5, v8}, Lorg/bouncycastle/crypto/engines/RC532Engine;->rotateLeft(II)I

    move-result v5

    aput v5, v7, v3

    aget v7, v6, v2

    add-int/2addr v7, v5

    add-int/2addr v7, v4

    add-int/2addr v4, v5

    invoke-direct {p0, v7, v4}, Lorg/bouncycastle/crypto/engines/RC532Engine;->rotateLeft(II)I

    move-result v4

    aput v4, v6, v2

    add-int/lit8 v3, v3, 0x1

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    array-length v7, v7

    rem-int/2addr v3, v7

    add-int/lit8 v2, v2, 0x1

    array-length v7, v6

    rem-int/2addr v2, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_S:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x3

    goto :goto_2

    :cond_3
    return-void
.end method

.method private wordToBytes(I[BI)V
    .locals 2

    int-to-byte v0, p1

    aput-byte v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x3

    shr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "RC5-32"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 3

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/RC5Parameters;

    if-eqz v0, :cond_0

    check-cast p2, Lorg/bouncycastle/crypto/params/RC5Parameters;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/RC5Parameters;->getRounds()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->_noRounds:I

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/RC5Parameters;->getKey()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RC532Engine;->setKey([B)V

    :goto_0
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->forEncryption:Z

    return-void

    :cond_0
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_1

    check-cast p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RC532Engine;->setKey([B)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter passed to RC532 init - "

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

.method public processBlock([BI[BI)I
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/RC532Engine;->forEncryption:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/RC532Engine;->encryptBlock([BI[BI)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/RC532Engine;->decryptBlock([BI[BI)I

    move-result v0

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    return-void
.end method
