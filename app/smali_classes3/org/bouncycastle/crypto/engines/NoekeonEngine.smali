.class public Lorg/bouncycastle/crypto/engines/NoekeonEngine;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# static fields
.field private static final genericSize:I = 0x10

.field private static final nullVector:[I

.field private static final roundConstants:[I


# instance fields
.field private _forEncryption:Z

.field private _initialised:Z

.field private decryptKeys:[I

.field private state:[I

.field private subKeys:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->nullVector:[I

    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->roundConstants:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x80
        0x1b
        0x36
        0x6c
        0xd8
        0xab
        0x4d
        0x9a
        0x2f
        0x5e
        0xbc
        0x63
        0xc6
        0x97
        0x35
        0x6a
        0xd4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->subKeys:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->decryptKeys:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->_initialised:Z

    return-void
.end method

.method private bytesToIntBig([BI)I
    .locals 3

    add-int/lit8 v0, p2, 0x1

    aget-byte v1, p1, p2

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private decryptBlock([BI[BI)I
    .locals 9

    const/16 v1, 0x10

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->bytesToIntBig([BI)I

    move-result v2

    aput v2, v0, v5

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    add-int/lit8 v2, p2, 0x4

    invoke-direct {p0, p1, v2}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->bytesToIntBig([BI)I

    move-result v2

    aput v2, v0, v6

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    add-int/lit8 v2, p2, 0x8

    invoke-direct {p0, p1, v2}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->bytesToIntBig([BI)I

    move-result v2

    aput v2, v0, v7

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    add-int/lit8 v2, p2, 0xc

    invoke-direct {p0, p1, v2}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->bytesToIntBig([BI)I

    move-result v2

    aput v2, v0, v8

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->subKeys:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->decryptKeys:[I

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->subKeys:[I

    array-length v3, v3

    invoke-static {v0, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->decryptKeys:[I

    sget-object v2, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->nullVector:[I

    invoke-direct {p0, v0, v2}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->theta([I[I)V

    move v0, v1

    :goto_0
    if-lez v0, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->decryptKeys:[I

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->theta([I[I)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    aget v3, v2, v5

    sget-object v4, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->roundConstants:[I

    aget v4, v4, v0

    xor-int/2addr v3, v4

    aput v3, v2, v5

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->pi1([I)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->gamma([I)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->pi2([I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->decryptKeys:[I

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->theta([I[I)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    aget v3, v2, v5

    sget-object v4, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->roundConstants:[I

    aget v0, v4, v0

    xor-int/2addr v0, v3

    aput v0, v2, v5

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    aget v0, v0, v5

    invoke-direct {p0, v0, p3, p4}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->intToBytesBig(I[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    aget v0, v0, v6

    add-int/lit8 v2, p4, 0x4

    invoke-direct {p0, v0, p3, v2}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->intToBytesBig(I[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    aget v0, v0, v7

    add-int/lit8 v2, p4, 0x8

    invoke-direct {p0, v0, p3, v2}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->intToBytesBig(I[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    aget v0, v0, v8

    add-int/lit8 v2, p4, 0xc

    invoke-direct {p0, v0, p3, v2}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->intToBytesBig(I[BI)V

    return v1
.end method

.method private encryptBlock([BI[BI)I
    .locals 9

    const/16 v8, 0x10

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->bytesToIntBig([BI)I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    add-int/lit8 v2, p2, 0x4

    invoke-direct {p0, p1, v2}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->bytesToIntBig([BI)I

    move-result v2

    aput v2, v0, v5

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    add-int/lit8 v2, p2, 0x8

    invoke-direct {p0, p1, v2}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->bytesToIntBig([BI)I

    move-result v2

    aput v2, v0, v6

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    add-int/lit8 v2, p2, 0xc

    invoke-direct {p0, p1, v2}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->bytesToIntBig([BI)I

    move-result v2

    aput v2, v0, v7

    move v0, v1

    :goto_0
    if-ge v0, v8, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    aget v3, v2, v1

    sget-object v4, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->roundConstants:[I

    aget v4, v4, v0

    xor-int/2addr v3, v4

    aput v3, v2, v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->subKeys:[I

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->theta([I[I)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->pi1([I)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->gamma([I)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->pi2([I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    aget v3, v2, v1

    sget-object v4, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->roundConstants:[I

    aget v0, v4, v0

    xor-int/2addr v0, v3

    aput v0, v2, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->subKeys:[I

    invoke-direct {p0, v0, v2}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->theta([I[I)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    aget v0, v0, v1

    invoke-direct {p0, v0, p3, p4}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->intToBytesBig(I[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    aget v0, v0, v5

    add-int/lit8 v1, p4, 0x4

    invoke-direct {p0, v0, p3, v1}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->intToBytesBig(I[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    aget v0, v0, v6

    add-int/lit8 v1, p4, 0x8

    invoke-direct {p0, v0, p3, v1}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->intToBytesBig(I[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->state:[I

    aget v0, v0, v7

    add-int/lit8 v1, p4, 0xc

    invoke-direct {p0, v0, p3, v1}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->intToBytesBig(I[BI)V

    return v8
.end method

.method private gamma([I)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    aget v0, p1, v4

    aget v1, p1, v6

    xor-int/lit8 v1, v1, -0x1

    aget v2, p1, v5

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    xor-int/2addr v0, v1

    aput v0, p1, v4

    aget v0, p1, v3

    aget v1, p1, v5

    aget v2, p1, v4

    and-int/2addr v1, v2

    xor-int/2addr v0, v1

    aput v0, p1, v3

    aget v0, p1, v6

    aget v1, p1, v3

    aput v1, p1, v6

    aput v0, p1, v3

    aget v0, p1, v5

    aget v1, p1, v3

    aget v2, p1, v4

    xor-int/2addr v1, v2

    aget v2, p1, v6

    xor-int/2addr v1, v2

    xor-int/2addr v0, v1

    aput v0, p1, v5

    aget v0, p1, v4

    aget v1, p1, v6

    xor-int/lit8 v1, v1, -0x1

    aget v2, p1, v5

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    xor-int/2addr v0, v1

    aput v0, p1, v4

    aget v0, p1, v3

    aget v1, p1, v5

    aget v2, p1, v4

    and-int/2addr v1, v2

    xor-int/2addr v0, v1

    aput v0, p1, v3

    return-void
.end method

.method private intToBytesBig(I[BI)V
    .locals 3

    add-int/lit8 v0, p3, 0x1

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    add-int/lit8 v1, v0, 0x1

    ushr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    add-int/lit8 v0, v1, 0x1

    ushr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    int-to-byte v1, p1

    aput-byte v1, p2, v0

    return-void
.end method

.method private pi1([I)V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    aget v0, p1, v1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->rotl(II)I

    move-result v0

    aput v0, p1, v1

    aget v0, p1, v2

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->rotl(II)I

    move-result v0

    aput v0, p1, v2

    aget v0, p1, v3

    invoke-direct {p0, v0, v2}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->rotl(II)I

    move-result v0

    aput v0, p1, v3

    return-void
.end method

.method private pi2([I)V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    aget v0, p1, v2

    const/16 v1, 0x1f

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->rotl(II)I

    move-result v0

    aput v0, p1, v2

    aget v0, p1, v3

    const/16 v1, 0x1b

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->rotl(II)I

    move-result v0

    aput v0, p1, v3

    aget v0, p1, v4

    const/16 v1, 0x1e

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->rotl(II)I

    move-result v0

    aput v0, p1, v4

    return-void
.end method

.method private rotl(II)I
    .locals 2

    shl-int v0, p1, p2

    rsub-int/lit8 v1, p2, 0x20

    ushr-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private setKey([B)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->subKeys:[I

    invoke-direct {p0, p1, v2}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->bytesToIntBig([BI)I

    move-result v1

    aput v1, v0, v2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->subKeys:[I

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-direct {p0, p1, v2}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->bytesToIntBig([BI)I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->subKeys:[I

    const/4 v1, 0x2

    const/16 v2, 0x8

    invoke-direct {p0, p1, v2}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->bytesToIntBig([BI)I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->subKeys:[I

    const/4 v1, 0x3

    const/16 v2, 0xc

    invoke-direct {p0, p1, v2}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->bytesToIntBig([BI)I

    move-result v2

    aput v2, v0, v1

    return-void
.end method

.method private theta([I[I)V
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    aget v0, p1, v1

    aget v2, p1, v5

    xor-int/2addr v0, v2

    invoke-direct {p0, v0, v7}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->rotl(II)I

    move-result v2

    const/16 v3, 0x18

    invoke-direct {p0, v0, v3}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->rotl(II)I

    move-result v3

    xor-int/2addr v2, v3

    xor-int/2addr v0, v2

    aget v2, p1, v4

    xor-int/2addr v2, v0

    aput v2, p1, v4

    aget v2, p1, v6

    xor-int/2addr v0, v2

    aput v0, p1, v6

    move v0, v1

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    aget v2, p1, v0

    aget v3, p2, v0

    xor-int/2addr v2, v3

    aput v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    aget v0, p1, v4

    aget v2, p1, v6

    xor-int/2addr v0, v2

    invoke-direct {p0, v0, v7}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->rotl(II)I

    move-result v2

    const/16 v3, 0x18

    invoke-direct {p0, v0, v3}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->rotl(II)I

    move-result v3

    xor-int/2addr v2, v3

    xor-int/2addr v0, v2

    aget v2, p1, v1

    xor-int/2addr v2, v0

    aput v2, p1, v1

    aget v1, p1, v5

    xor-int/2addr v0, v1

    aput v0, p1, v5

    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "Noekeon"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 3

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter passed to Noekeon init - "

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

    :cond_0
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->_forEncryption:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->_initialised:Z

    check-cast p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->setKey([B)V

    return-void
.end method

.method public processBlock([BI[BI)I
    .locals 3

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->_initialised:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->getAlgorithmName()Ljava/lang/String;

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
    add-int/lit8 v0, p2, 0x10

    array-length v1, p1

    if-le v0, v1, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int/lit8 v0, p4, 0x10

    array-length v1, p3

    if-le v0, v1, :cond_2

    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->_forEncryption:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->encryptBlock([BI[BI)I

    move-result v0

    :goto_0
    return v0

    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->decryptBlock([BI[BI)I

    move-result v0

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    return-void
.end method
