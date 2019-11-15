.class public Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricBlockCipher;


# static fields
.field private static final SIX:Ljava/math/BigInteger;

.field private static final SIXTEEN:Ljava/math/BigInteger;

.field private static inverse:[B

.field private static shadows:[B


# instance fields
.field private bitSize:I

.field private engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

.field private forEncryption:Z

.field private modulus:Ljava/math/BigInteger;

.field private padBits:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v2, 0x10

    const-wide/16 v0, 0x10

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->SIXTEEN:Ljava/math/BigInteger;

    const-wide/16 v0, 0x6

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->SIX:Ljava/math/BigInteger;

    new-array v0, v2, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->shadows:[B

    new-array v0, v2, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->inverse:[B

    return-void

    nop

    :array_0
    .array-data 1
        0xet
        0x3t
        0x5t
        0x8t
        0x9t
        0x4t
        0x2t
        0xft
        0x0t
        0xdt
        0xbt
        0x6t
        0x7t
        0xat
        0xct
        0x1t
    .end array-data

    :array_1
    .array-data 1
        0x8t
        0xft
        0x6t
        0x1t
        0x5t
        0x2t
        0xbt
        0xct
        0x3t
        0x4t
        0xdt
        0xat
        0xet
        0x9t
        0x0t
        0x7t
    .end array-data
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->padBits:I

    iput-object p1, p0, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    return-void
.end method

.method private static convertOutputDecryptOnly(Ljava/math/BigInteger;)[B
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    aget-byte v0, v1, v4

    if-nez v0, :cond_0

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [B

    const/4 v2, 0x1

    array-length v3, v0

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private decodeBlock([BII)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v1

    iget v0, p0, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->bitSize:I

    add-int/lit8 v0, v0, 0xd

    div-int/lit8 v6, v0, 0x10

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v5, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    sget-object v1, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->SIXTEEN:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v3, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->SIX:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    invoke-static {v0}, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->convertOutputDecryptOnly(Ljava/math/BigInteger;)[B

    move-result-object v7

    array-length v0, v7

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, v7, v0

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "invalid forcing byte in block"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->modulus:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v3, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->SIXTEEN:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v3, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->SIX:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->modulus:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "resulting integer iS or (modulus - iS) is not congruent to 6 mod 16"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    array-length v0, v7

    add-int/lit8 v0, v0, -0x1

    array-length v1, v7

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, v7, v1

    and-int/lit16 v1, v1, 0xff

    ushr-int/lit8 v1, v1, 0x4

    sget-object v3, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->inverse:[B

    array-length v4, v7

    add-int/lit8 v4, v4, -0x2

    aget-byte v4, v7, v4

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v4, v4, 0x4

    aget-byte v3, v3, v4

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, v7, v0

    sget-object v0, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->shadows:[B

    aget-byte v1, v7, v5

    and-int/lit16 v1, v1, 0xff

    ushr-int/lit8 v1, v1, 0x4

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x4

    sget-object v1, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->shadows:[B

    aget-byte v3, v7, v5

    and-int/lit8 v3, v3, 0xf

    aget-byte v1, v1, v3

    or-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v7, v2

    array-length v0, v7

    add-int/lit8 v0, v0, -0x1

    move v1, v2

    move v3, v2

    move v4, v5

    :goto_1
    array-length v8, v7

    mul-int/lit8 v9, v6, 0x2

    sub-int/2addr v8, v9

    if-lt v0, v8, :cond_5

    sget-object v8, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->shadows:[B

    aget-byte v9, v7, v0

    and-int/lit16 v9, v9, 0xff

    ushr-int/lit8 v9, v9, 0x4

    aget-byte v8, v8, v9

    shl-int/lit8 v8, v8, 0x4

    sget-object v9, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->shadows:[B

    aget-byte v10, v7, v0

    and-int/lit8 v10, v10, 0xf

    aget-byte v9, v9, v10

    or-int/2addr v8, v9

    add-int/lit8 v9, v0, -0x1

    aget-byte v9, v7, v9

    xor-int/2addr v9, v8

    and-int/lit16 v9, v9, 0xff

    if-eqz v9, :cond_3

    if-nez v3, :cond_4

    add-int/lit8 v1, v0, -0x1

    aget-byte v1, v7, v1

    xor-int/2addr v1, v8

    and-int/lit16 v4, v1, 0xff

    add-int/lit8 v1, v0, -0x1

    move v3, v5

    :cond_3
    add-int/lit8 v0, v0, -0x2

    goto :goto_1

    :cond_4
    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "invalid tsums in block"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    aput-byte v2, v7, v1

    array-length v0, v7

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    :goto_2
    array-length v3, v0

    if-ge v2, v3, :cond_6

    mul-int/lit8 v3, v2, 0x2

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, v7, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v1, v4, -0x1

    iput v1, p0, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->padBits:I

    return-object v0
.end method

.method private encodeBlock([BII)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->bitSize:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v3, v0, [B

    iget v0, p0, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->padBits:I

    add-int/lit8 v4, v0, 0x1

    iget v0, p0, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->bitSize:I

    add-int/lit8 v0, v0, 0xd

    div-int/lit8 v5, v0, 0x10

    move v0, v1

    :goto_0
    if-ge v0, v5, :cond_1

    sub-int v6, v5, p3

    if-le v0, v6, :cond_0

    add-int v6, p2, p3

    sub-int v7, v5, v0

    sub-int/2addr v6, v7

    array-length v7, v3

    sub-int/2addr v7, v5

    sub-int v8, v5, v0

    invoke-static {p1, v6, v3, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    add-int/2addr v0, p3

    goto :goto_0

    :cond_0
    array-length v6, v3

    add-int v7, v0, p3

    sub-int/2addr v6, v7

    invoke-static {p1, p2, v3, v6, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_1
    array-length v0, v3

    mul-int/lit8 v6, v5, 0x2

    sub-int/2addr v0, v6

    :goto_2
    array-length v6, v3

    if-eq v0, v6, :cond_2

    array-length v6, v3

    sub-int/2addr v6, v5

    div-int/lit8 v7, v0, 0x2

    add-int/2addr v6, v7

    aget-byte v6, v3, v6

    sget-object v7, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->shadows:[B

    and-int/lit16 v8, v6, 0xff

    ushr-int/lit8 v8, v8, 0x4

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x4

    sget-object v8, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->shadows:[B

    and-int/lit8 v9, v6, 0xf

    aget-byte v8, v8, v9

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v3, v0

    add-int/lit8 v7, v0, 0x1

    aput-byte v6, v3, v7

    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    :cond_2
    array-length v0, v3

    mul-int/lit8 v5, p3, 0x2

    sub-int/2addr v0, v5

    aget-byte v5, v3, v0

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, v3, v4

    shl-int/lit8 v4, v4, 0x4

    or-int/lit8 v4, v4, 0x6

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    iget v0, p0, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->bitSize:I

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v0, v0, 0x8

    rsub-int/lit8 v0, v0, 0x8

    const/16 v4, 0x8

    if-eq v0, v4, :cond_3

    aget-byte v2, v3, v1

    const/16 v4, 0xff

    ushr-int/2addr v4, v0

    and-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, v3, v1

    aget-byte v2, v3, v1

    const/16 v4, 0x80

    ushr-int v0, v4, v0

    or-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, v3, v1

    move v0, v1

    :goto_3
    iget-object v1, p0, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    array-length v2, v3

    sub-int/2addr v2, v0

    invoke-interface {v1, v3, v0, v2}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v0

    return-object v0

    :cond_3
    aput-byte v1, v3, v1

    aget-byte v0, v3, v2

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    aput-byte v0, v3, v2

    move v0, v2

    goto :goto_3
.end method


# virtual methods
.method public getInputBlockSize()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v0

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->forEncryption:Z

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    :cond_0
    return v0
.end method

.method public getOutputBlockSize()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v0

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->forEncryption:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public getPadBits()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->padBits:I

    return v0
.end method

.method public getUnderlyingCipher()Lorg/bouncycastle/crypto/AsymmetricBlockCipher;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1, p1, p2}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->modulus:Ljava/math/BigInteger;

    iget-object v0, p0, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->modulus:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->bitSize:I

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->forEncryption:Z

    return-void

    :cond_0
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    goto :goto_0
.end method

.method public processBlock([BII)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->forEncryption:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->encodeBlock([BII)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->decodeBlock([BII)[B

    move-result-object v0

    goto :goto_0
.end method

.method public setPadBits(I)V
    .locals 2

    const/4 v0, 0x7

    if-le p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "padBits > 7"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->padBits:I

    return-void
.end method
