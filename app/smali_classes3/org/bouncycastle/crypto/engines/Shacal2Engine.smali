.class public Lorg/bouncycastle/crypto/engines/Shacal2Engine;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# static fields
.field private static final BLOCK_SIZE:I = 0x20

.field private static final K:[I

.field private static final ROUNDS:I = 0x40


# instance fields
.field private forEncryption:Z

.field private workingKey:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->K:[I

    return-void

    :array_0
    .array-data 4
        0x428a2f98
        0x71374491
        -0x4a3f0431
        -0x164a245b
        0x3956c25b
        0x59f111f1
        -0x6dc07d5c    # -6.043E-28f
        -0x54e3a12b
        -0x27f85568
        0x12835b01
        0x243185be
        0x550c7dc3
        0x72be5d74
        -0x7f214e02
        -0x6423f959
        -0x3e640e8c
        -0x1b64963f
        -0x1041b87a
        0xfc19dc6
        0x240ca1cc
        0x2de92c6f
        0x4a7484aa    # 4006186.5f
        0x5cb0a9dc
        0x76f988da
        -0x67c1aeae
        -0x57ce3993
        -0x4ffcd838
        -0x40a68039
        -0x391ff40d
        -0x2a586eb9
        0x6ca6351
        0x14292967
        0x27b70a85
        0x2e1b2138
        0x4d2c6dfc    # 1.80805568E8f
        0x53380d13
        0x650a7354
        0x766a0abb
        -0x7e3d36d2
        -0x6d8dd37b
        -0x5d40175f
        -0x57e599b5
        -0x3db47490
        -0x3893ae5d
        -0x2e6d17e7
        -0x2966f9dc
        -0xbf1ca7b
        0x106aa070
        0x19a4c116
        0x1e376c08
        0x2748774c
        0x34b0bcb5
        0x391c0cb3
        0x4ed8aa4a    # 1.81751936E9f
        0x5b9cca4f
        0x682e6ff3
        0x748f82ee
        0x78a5636f
        -0x7b3787ec
        -0x7338fdf8
        -0x6f410006
        -0x5baf9315
        -0x41065c09
        -0x398e870e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->forEncryption:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->workingKey:[I

    return-void
.end method

.method private byteBlockToInts([B[III)V
    .locals 3

    :goto_0
    const/16 v0, 0x8

    if-ge p4, v0, :cond_0

    add-int/lit8 v0, p3, 0x1

    aget-byte v1, p1, p3

    and-int/lit16 v1, v1, 0xff

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

    add-int/lit8 p3, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    aput v0, p2, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private bytes2ints([B[III)V
    .locals 3

    :goto_0
    array-length v0, p1

    div-int/lit8 v0, v0, 0x4

    if-ge p4, v0, :cond_0

    add-int/lit8 v0, p3, 0x1

    aget-byte v1, p1, p3

    and-int/lit16 v1, v1, 0xff

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

    add-int/lit8 p3, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    aput v0, p2, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private decryptBlock([BI[BI)V
    .locals 7

    const/16 v0, 0x8

    new-array v1, v0, [I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, p2, v0}, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->byteBlockToInts([B[III)V

    const/16 v0, 0x3f

    :goto_0
    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v3, v1, v3

    ushr-int/lit8 v3, v3, 0x2

    const/4 v4, 0x1

    aget v4, v1, v4

    shl-int/lit8 v4, v4, -0x2

    or-int/2addr v3, v4

    const/4 v4, 0x1

    aget v4, v1, v4

    ushr-int/lit8 v4, v4, 0xd

    const/4 v5, 0x1

    aget v5, v1, v5

    shl-int/lit8 v5, v5, -0xd

    or-int/2addr v4, v5

    xor-int/2addr v3, v4

    const/4 v4, 0x1

    aget v4, v1, v4

    ushr-int/lit8 v4, v4, 0x16

    const/4 v5, 0x1

    aget v5, v1, v5

    shl-int/lit8 v5, v5, -0x16

    or-int/2addr v4, v5

    xor-int/2addr v3, v4

    sub-int/2addr v2, v3

    const/4 v3, 0x1

    aget v3, v1, v3

    const/4 v4, 0x2

    aget v4, v1, v4

    and-int/2addr v3, v4

    const/4 v4, 0x1

    aget v4, v1, v4

    const/4 v5, 0x3

    aget v5, v1, v5

    and-int/2addr v4, v5

    xor-int/2addr v3, v4

    const/4 v4, 0x2

    aget v4, v1, v4

    const/4 v5, 0x3

    aget v5, v1, v5

    and-int/2addr v4, v5

    xor-int/2addr v3, v4

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    aget v4, v1, v4

    aput v4, v1, v3

    const/4 v3, 0x1

    const/4 v4, 0x2

    aget v4, v1, v4

    aput v4, v1, v3

    const/4 v3, 0x2

    const/4 v4, 0x3

    aget v4, v1, v4

    aput v4, v1, v3

    const/4 v3, 0x3

    const/4 v4, 0x4

    aget v4, v1, v4

    sub-int/2addr v4, v2

    aput v4, v1, v3

    const/4 v3, 0x4

    const/4 v4, 0x5

    aget v4, v1, v4

    aput v4, v1, v3

    const/4 v3, 0x5

    const/4 v4, 0x6

    aget v4, v1, v4

    aput v4, v1, v3

    const/4 v3, 0x6

    const/4 v4, 0x7

    aget v4, v1, v4

    aput v4, v1, v3

    const/4 v3, 0x7

    sget-object v4, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->K:[I

    aget v4, v4, v0

    sub-int/2addr v2, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->workingKey:[I

    aget v4, v4, v0

    sub-int/2addr v2, v4

    const/4 v4, 0x4

    aget v4, v1, v4

    ushr-int/lit8 v4, v4, 0x6

    const/4 v5, 0x4

    aget v5, v1, v5

    shl-int/lit8 v5, v5, -0x6

    or-int/2addr v4, v5

    const/4 v5, 0x4

    aget v5, v1, v5

    ushr-int/lit8 v5, v5, 0xb

    const/4 v6, 0x4

    aget v6, v1, v6

    shl-int/lit8 v6, v6, -0xb

    or-int/2addr v5, v6

    xor-int/2addr v4, v5

    const/4 v5, 0x4

    aget v5, v1, v5

    ushr-int/lit8 v5, v5, 0x19

    const/4 v6, 0x4

    aget v6, v1, v6

    shl-int/lit8 v6, v6, -0x19

    or-int/2addr v5, v6

    xor-int/2addr v4, v5

    sub-int/2addr v2, v4

    const/4 v4, 0x4

    aget v4, v1, v4

    const/4 v5, 0x5

    aget v5, v1, v5

    and-int/2addr v4, v5

    const/4 v5, 0x4

    aget v5, v1, v5

    xor-int/lit8 v5, v5, -0x1

    const/4 v6, 0x6

    aget v6, v1, v6

    and-int/2addr v5, v6

    xor-int/2addr v4, v5

    sub-int/2addr v2, v4

    aput v2, v1, v3

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_0
    invoke-direct {p0, v1, p3, p4}, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->ints2bytes([I[BI)V

    return-void
.end method

.method private encryptBlock([BI[BI)V
    .locals 11

    const/4 v10, 0x5

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x4

    const/4 v1, 0x0

    const/16 v0, 0x8

    new-array v2, v0, [I

    invoke-direct {p0, p1, v2, p2, v1}, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->byteBlockToInts([B[III)V

    move v0, v1

    :goto_0
    const/16 v3, 0x40

    if-ge v0, v3, :cond_0

    aget v3, v2, v7

    ushr-int/lit8 v3, v3, 0x6

    aget v4, v2, v7

    shl-int/lit8 v4, v4, -0x6

    or-int/2addr v3, v4

    aget v4, v2, v7

    ushr-int/lit8 v4, v4, 0xb

    aget v5, v2, v7

    shl-int/lit8 v5, v5, -0xb

    or-int/2addr v4, v5

    xor-int/2addr v3, v4

    aget v4, v2, v7

    ushr-int/lit8 v4, v4, 0x19

    aget v5, v2, v7

    shl-int/lit8 v5, v5, -0x19

    or-int/2addr v4, v5

    xor-int/2addr v3, v4

    aget v4, v2, v7

    aget v5, v2, v10

    and-int/2addr v4, v5

    aget v5, v2, v7

    xor-int/lit8 v5, v5, -0x1

    const/4 v6, 0x6

    aget v6, v2, v6

    and-int/2addr v5, v6

    xor-int/2addr v4, v5

    add-int/2addr v3, v4

    const/4 v4, 0x7

    aget v4, v2, v4

    add-int/2addr v3, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->K:[I

    aget v4, v4, v0

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->workingKey:[I

    aget v4, v4, v0

    add-int/2addr v3, v4

    const/4 v4, 0x7

    const/4 v5, 0x6

    aget v5, v2, v5

    aput v5, v2, v4

    const/4 v4, 0x6

    aget v5, v2, v10

    aput v5, v2, v4

    aget v4, v2, v7

    aput v4, v2, v10

    aget v4, v2, v9

    add-int/2addr v4, v3

    aput v4, v2, v7

    aget v4, v2, v8

    aput v4, v2, v9

    const/4 v4, 0x1

    aget v4, v2, v4

    aput v4, v2, v8

    const/4 v4, 0x1

    aget v5, v2, v1

    aput v5, v2, v4

    aget v4, v2, v1

    ushr-int/lit8 v4, v4, 0x2

    aget v5, v2, v1

    shl-int/lit8 v5, v5, -0x2

    or-int/2addr v4, v5

    aget v5, v2, v1

    ushr-int/lit8 v5, v5, 0xd

    aget v6, v2, v1

    shl-int/lit8 v6, v6, -0xd

    or-int/2addr v5, v6

    xor-int/2addr v4, v5

    aget v5, v2, v1

    ushr-int/lit8 v5, v5, 0x16

    aget v6, v2, v1

    shl-int/lit8 v6, v6, -0x16

    or-int/2addr v5, v6

    xor-int/2addr v4, v5

    add-int/2addr v3, v4

    aget v4, v2, v1

    aget v5, v2, v8

    and-int/2addr v4, v5

    aget v5, v2, v1

    aget v6, v2, v9

    and-int/2addr v5, v6

    xor-int/2addr v4, v5

    aget v5, v2, v8

    aget v6, v2, v9

    and-int/2addr v5, v6

    xor-int/2addr v4, v5

    add-int/2addr v3, v4

    aput v3, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_0
    invoke-direct {p0, v2, p3, p4}, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->ints2bytes([I[BI)V

    return-void
.end method

.method private ints2bytes([I[BI)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, p3, 0x1

    aget v2, p1, v0

    ushr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, p2, p3

    add-int/lit8 v2, v1, 0x1

    aget v3, p1, v0

    ushr-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    aput-byte v3, p2, v1

    add-int/lit8 v1, v2, 0x1

    aget v3, p1, v0

    ushr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    add-int/lit8 p3, v1, 0x1

    aget v2, p1, v0

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "Shacal2"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "only simple KeyParameter expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->forEncryption:Z

    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->workingKey:[I

    check-cast p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->setKey([B)V

    return-void
.end method

.method public processBlock([BI[BI)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->workingKey:[I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Shacal2 not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/lit8 v0, p2, 0x20

    array-length v1, p1

    if-le v0, v1, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int/lit8 v0, p4, 0x20

    array-length v1, p3

    if-le v0, v1, :cond_2

    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->forEncryption:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->encryptBlock([BI[BI)V

    :goto_0
    const/16 v0, 0x20

    return v0

    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->decryptBlock([BI[BI)V

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public setKey([B)V
    .locals 8

    const/16 v7, 0x40

    const/16 v0, 0x10

    const/4 v2, 0x0

    array-length v1, p1

    if-eqz v1, :cond_0

    array-length v1, p1

    if-gt v1, v7, :cond_0

    array-length v1, p1

    if-lt v1, v0, :cond_0

    array-length v1, p1

    rem-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Shacal2-key must be 16 - 64 bytes and multiple of 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->workingKey:[I

    invoke-direct {p0, p1, v1, v2, v2}, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->bytes2ints([B[III)V

    :goto_0
    if-ge v0, v7, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->workingKey:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->workingKey:[I

    add-int/lit8 v3, v0, -0x2

    aget v2, v2, v3

    ushr-int/lit8 v2, v2, 0x11

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->workingKey:[I

    add-int/lit8 v4, v0, -0x2

    aget v3, v3, v4

    shl-int/lit8 v3, v3, -0x11

    or-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->workingKey:[I

    add-int/lit8 v4, v0, -0x2

    aget v3, v3, v4

    ushr-int/lit8 v3, v3, 0x13

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->workingKey:[I

    add-int/lit8 v5, v0, -0x2

    aget v4, v4, v5

    shl-int/lit8 v4, v4, -0x13

    or-int/2addr v3, v4

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->workingKey:[I

    add-int/lit8 v4, v0, -0x2

    aget v3, v3, v4

    ushr-int/lit8 v3, v3, 0xa

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->workingKey:[I

    add-int/lit8 v4, v0, -0x7

    aget v3, v3, v4

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->workingKey:[I

    add-int/lit8 v4, v0, -0xf

    aget v3, v3, v4

    ushr-int/lit8 v3, v3, 0x7

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->workingKey:[I

    add-int/lit8 v5, v0, -0xf

    aget v4, v4, v5

    shl-int/lit8 v4, v4, -0x7

    or-int/2addr v3, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->workingKey:[I

    add-int/lit8 v5, v0, -0xf

    aget v4, v4, v5

    ushr-int/lit8 v4, v4, 0x12

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->workingKey:[I

    add-int/lit8 v6, v0, -0xf

    aget v5, v5, v6

    shl-int/lit8 v5, v5, -0x12

    or-int/2addr v4, v5

    xor-int/2addr v3, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->workingKey:[I

    add-int/lit8 v5, v0, -0xf

    aget v4, v4, v5

    ushr-int/lit8 v4, v4, 0x3

    xor-int/2addr v3, v4

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Shacal2Engine;->workingKey:[I

    add-int/lit8 v4, v0, -0x10

    aget v3, v3, v4

    add-int/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
