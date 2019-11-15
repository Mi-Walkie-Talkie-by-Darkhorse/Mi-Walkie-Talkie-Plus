.class public Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/prng/drbg/SP80090DRBG;


# static fields
.field private static final AES_MAX_BITS_REQUEST:I = 0x40000

.field private static final AES_RESEED_MAX:J = 0x800000000000L

.field private static final K_BITS:[B

.field private static final TDEA_MAX_BITS_REQUEST:I = 0x1000

.field private static final TDEA_RESEED_MAX:J = 0x80000000L


# instance fields
.field private _Key:[B

.field private _V:[B

.field private _engine:Lorg/bouncycastle/crypto/BlockCipher;

.field private _entropySource:Lorg/bouncycastle/crypto/prng/EntropySource;

.field private _isTDEA:Z

.field private _keySizeInBits:I

.field private _reseedCounter:J

.field private _securityStrength:I

.field private _seedLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "000102030405060708090A0B0C0D0E0F101112131415161718191A1B1C1D1E1F"

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->K_BITS:[B

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;IILorg/bouncycastle/crypto/prng/EntropySource;[B[B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_reseedCounter:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_isTDEA:Z

    iput-object p4, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_entropySource:Lorg/bouncycastle/crypto/prng/EntropySource;

    iput-object p1, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_engine:Lorg/bouncycastle/crypto/BlockCipher;

    iput p2, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_keySizeInBits:I

    iput p3, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_securityStrength:I

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    add-int/2addr v0, p2

    iput v0, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_seedLength:I

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->isTDEA(Lorg/bouncycastle/crypto/BlockCipher;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_isTDEA:Z

    const/16 v0, 0x100

    if-le p3, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Requested security strength is not supported by the derivation function"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->getMaxSecurityStrength(Lorg/bouncycastle/crypto/BlockCipher;I)I

    move-result v0

    if-ge v0, p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Requested security strength is not supported by block cipher and key size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-interface {p4}, Lorg/bouncycastle/crypto/prng/EntropySource;->entropySize()I

    move-result v0

    if-ge v0, p3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not enough entropy for security strength required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-direct {p0}, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->getEntropy()[B

    move-result-object v0

    invoke-direct {p0, v0, p6, p5}, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->CTR_DRBG_Instantiate_algorithm([B[B[B)V

    return-void
.end method

.method private BCC([B[B[B[B)V
    .locals 9

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_engine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    new-array v3, v2, [B

    array-length v0, p4

    div-int v4, v0, v2

    new-array v5, v2, [B

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_engine:Lorg/bouncycastle/crypto/BlockCipher;

    const/4 v6, 0x1

    new-instance v7, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->expandKey([B)[B

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {v0, v6, v7}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_engine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0, p3, v1, v3, v1}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_0

    mul-int v6, v0, v2

    invoke-direct {p0, v5, v3, p4, v6}, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->XOR([B[B[BI)V

    iget-object v6, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_engine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v6, v5, v1, v3, v1}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    array-length v0, p1

    invoke-static {v3, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private Block_Cipher_df([BI)[B
    .locals 11

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_engine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v3

    array-length v0, p1

    div-int/lit8 v2, p2, 0x8

    add-int/lit8 v4, v0, 0x8

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, -0x1

    div-int/2addr v4, v3

    mul-int/2addr v4, v3

    new-array v4, v4, [B

    invoke-direct {p0, v4, v0, v1}, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->copyIntToByteArray([BII)V

    const/4 v5, 0x4

    invoke-direct {p0, v4, v2, v5}, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->copyIntToByteArray([BII)V

    const/16 v2, 0x8

    invoke-static {p1, v1, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x8

    const/16 v2, -0x80

    aput-byte v2, v4, v0

    iget v0, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_keySizeInBits:I

    div-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v3

    new-array v5, v0, [B

    new-array v6, v3, [B

    new-array v7, v3, [B

    iget v0, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_keySizeInBits:I

    div-int/lit8 v0, v0, 0x8

    new-array v8, v0, [B

    sget-object v0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->K_BITS:[B

    array-length v2, v8

    invoke-static {v0, v1, v8, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v1

    :goto_0
    mul-int v2, v0, v3

    mul-int/lit8 v2, v2, 0x8

    iget v9, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_keySizeInBits:I

    mul-int/lit8 v10, v3, 0x8

    add-int/2addr v9, v10

    if-ge v2, v9, :cond_1

    invoke-direct {p0, v7, v0, v1}, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->copyIntToByteArray([BII)V

    invoke-direct {p0, v6, v8, v7, v4}, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->BCC([B[B[B[B)V

    array-length v2, v5

    mul-int v9, v0, v3

    sub-int/2addr v2, v9

    if-le v2, v3, :cond_0

    move v2, v3

    :goto_1
    mul-int v9, v0, v3

    invoke-static {v6, v1, v5, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    array-length v2, v5

    mul-int v9, v0, v3

    sub-int/2addr v2, v9

    goto :goto_1

    :cond_1
    new-array v4, v3, [B

    array-length v0, v8

    invoke-static {v5, v1, v8, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v8

    array-length v2, v4

    invoke-static {v5, v0, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    div-int/lit8 v0, p2, 0x2

    new-array v5, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_engine:Lorg/bouncycastle/crypto/BlockCipher;

    const/4 v2, 0x1

    new-instance v6, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p0, v8}, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->expandKey([B)[B

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {v0, v2, v6}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    move v0, v1

    :goto_2
    mul-int v2, v0, v3

    array-length v6, v5

    if-ge v2, v6, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_engine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v2, v4, v1, v4, v1}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    array-length v2, v5

    mul-int v6, v0, v3

    sub-int/2addr v2, v6

    if-le v2, v3, :cond_2

    move v2, v3

    :goto_3
    mul-int v6, v0, v3

    invoke-static {v4, v1, v5, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    array-length v2, v5

    mul-int v6, v0, v3

    sub-int/2addr v2, v6

    goto :goto_3

    :cond_3
    return-object v5
.end method

.method private CTR_DRBG_Instantiate_algorithm([B[B[B)V
    .locals 3

    invoke-static {p1, p2, p3}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_seedLength:I

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->Block_Cipher_df([BI)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_engine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    iget v2, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_keySizeInBits:I

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_Key:[B

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_V:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_Key:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_V:[B

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->CTR_DRBG_Update([B[B[B)V

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_reseedCounter:J

    return-void
.end method

.method private CTR_DRBG_Reseed_algorithm([B)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->getEntropy()[B

    move-result-object v0

    invoke-static {v0, p1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_seedLength:I

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->Block_Cipher_df([BI)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_Key:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_V:[B

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->CTR_DRBG_Update([B[B[B)V

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_reseedCounter:J

    return-void
.end method

.method private CTR_DRBG_Update([B[B[B)V
    .locals 8

    const/4 v1, 0x0

    array-length v0, p1

    new-array v4, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_engine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v5, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_engine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v3

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_engine:Lorg/bouncycastle/crypto/BlockCipher;

    const/4 v2, 0x1

    new-instance v6, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->expandKey([B)[B

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {v0, v2, v6}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    move v0, v1

    :goto_0
    mul-int v2, v0, v3

    array-length v6, p1

    if-ge v2, v6, :cond_1

    invoke-direct {p0, p3}, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->addOneTo([B)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_engine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v2, p3, v1, v5, v1}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    array-length v2, v4

    mul-int v6, v0, v3

    sub-int/2addr v2, v6

    if-le v2, v3, :cond_0

    move v2, v3

    :goto_1
    mul-int v6, v0, v3

    invoke-static {v5, v1, v4, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    array-length v2, v4

    mul-int v6, v0, v3

    sub-int/2addr v2, v6

    goto :goto_1

    :cond_1
    invoke-direct {p0, v4, p1, v4, v1}, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->XOR([B[B[BI)V

    array-length v0, p2

    invoke-static {v4, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, p2

    array-length v2, p3

    invoke-static {v4, v0, p3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private XOR([B[B[BI)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-byte v1, p2, v0

    add-int v2, v0, p4

    aget-byte v2, p3, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addOneTo([B)V
    .locals 5

    const/4 v1, 0x1

    move v0, v1

    move v2, v1

    :goto_0
    array-length v3, p1

    if-gt v0, v3, :cond_1

    array-length v3, p1

    sub-int/2addr v3, v0

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v3, v2

    const/16 v2, 0xff

    if-le v3, v2, :cond_0

    move v2, v1

    :goto_1
    array-length v4, p1

    sub-int/2addr v4, v0

    int-to-byte v3, v3

    aput-byte v3, p1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    return-void
.end method

.method private copyIntToByteArray([BII)V
    .locals 2

    add-int/lit8 v0, p3, 0x0

    shr-int/lit8 v1, p2, 0x18

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p3, 0x1

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p3, 0x2

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p3, 0x3

    int-to-byte v1, p2

    aput-byte v1, p1, v0

    return-void
.end method

.method private getEntropy()[B
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_entropySource:Lorg/bouncycastle/crypto/prng/EntropySource;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/prng/EntropySource;->getEntropy()[B

    move-result-object v0

    array-length v1, v0

    iget v2, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_securityStrength:I

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    if-ge v1, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Insufficient entropy provided by entropy source"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method private getMaxSecurityStrength(Lorg/bouncycastle/crypto/BlockCipher;I)I
    .locals 2

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->isTDEA(Lorg/bouncycastle/crypto/BlockCipher;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xa8

    if-ne p2, v0, :cond_1

    const/16 p2, 0x70

    :cond_0
    :goto_0
    return p2

    :cond_1
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p2, -0x1

    goto :goto_0
.end method

.method private isTDEA(Lorg/bouncycastle/crypto/BlockCipher;)Z
    .locals 2

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DESede"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TDEA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private padKey([BI[BI)V
    .locals 5

    add-int/lit8 v0, p4, 0x0

    add-int/lit8 v1, p2, 0x0

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xfe

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x1

    add-int/lit8 v1, p2, 0x0

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x7

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xfc

    ushr-int/lit8 v2, v2, 0x1

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x2

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x6

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xf8

    ushr-int/lit8 v2, v2, 0x2

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x3

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x5

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xf0

    ushr-int/lit8 v2, v2, 0x3

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x4

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v2, p2, 0x4

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xe0

    ushr-int/lit8 v2, v2, 0x4

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x5

    add-int/lit8 v1, p2, 0x4

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x3

    add-int/lit8 v2, p2, 0x5

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xc0

    ushr-int/lit8 v2, v2, 0x5

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x6

    add-int/lit8 v1, p2, 0x5

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x2

    add-int/lit8 v2, p2, 0x6

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0x80

    ushr-int/lit8 v2, v2, 0x6

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x7

    add-int/lit8 v1, p2, 0x6

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    move v0, p4

    :goto_0
    add-int/lit8 v1, p4, 0x7

    if-gt v0, v1, :cond_0

    aget-byte v1, p3, v0

    and-int/lit16 v2, v1, 0xfe

    shr-int/lit8 v3, v1, 0x1

    shr-int/lit8 v4, v1, 0x2

    xor-int/2addr v3, v4

    shr-int/lit8 v4, v1, 0x3

    xor-int/2addr v3, v4

    shr-int/lit8 v4, v1, 0x4

    xor-int/2addr v3, v4

    shr-int/lit8 v4, v1, 0x5

    xor-int/2addr v3, v4

    shr-int/lit8 v4, v1, 0x6

    xor-int/2addr v3, v4

    shr-int/lit8 v1, v1, 0x7

    xor-int/2addr v1, v3

    xor-int/lit8 v1, v1, 0x1

    and-int/lit8 v1, v1, 0x1

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method expandKey([B)[B
    .locals 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_isTDEA:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    new-array v0, v0, [B

    invoke-direct {p0, p1, v1, v0, v1}, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->padKey([BI[BI)V

    const/4 v1, 0x7

    const/16 v2, 0x8

    invoke-direct {p0, p1, v1, v0, v2}, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->padKey([BI[BI)V

    const/16 v1, 0xe

    const/16 v2, 0x10

    invoke-direct {p0, p1, v1, v0, v2}, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->padKey([BI[BI)V

    move-object p1, v0

    :cond_0
    return-object p1
.end method

.method public generate([B[BZ)I
    .locals 8

    const/4 v0, -0x1

    const/4 v2, 0x0

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_isTDEA:Z

    if-eqz v1, :cond_2

    iget-wide v4, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_reseedCounter:J

    const-wide v6, 0x80000000L

    cmp-long v1, v4, v6

    if-lez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v0, 0x200

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/prng/drbg/Utils;->isTooLarge([BI)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of bits per request limited to 4096"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v4, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_reseedCounter:J

    const-wide v6, 0x800000000000L

    cmp-long v1, v4, v6

    if-gtz v1, :cond_0

    const v0, 0x8000

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/prng/drbg/Utils;->isTooLarge([BI)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of bits per request limited to 262144"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-eqz p3, :cond_4

    invoke-direct {p0, p2}, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->CTR_DRBG_Reseed_algorithm([B)V

    const/4 p2, 0x0

    :cond_4
    if-eqz p2, :cond_6

    iget v0, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_seedLength:I

    invoke-direct {p0, p2, v0}, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->Block_Cipher_df([BI)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_Key:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_V:[B

    invoke-direct {p0, v0, v1, v3}, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->CTR_DRBG_Update([B[B[B)V

    :goto_1
    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_V:[B

    array-length v1, v1

    new-array v4, v1, [B

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_engine:Lorg/bouncycastle/crypto/BlockCipher;

    const/4 v3, 0x1

    new-instance v5, Lorg/bouncycastle/crypto/params/KeyParameter;

    iget-object v6, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_Key:[B

    invoke-virtual {p0, v6}, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->expandKey([B)[B

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {v1, v3, v5}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    move v1, v2

    :goto_2
    array-length v3, p1

    array-length v5, v4

    div-int/2addr v3, v5

    if-gt v1, v3, :cond_8

    array-length v3, p1

    array-length v5, v4

    mul-int/2addr v5, v1

    sub-int/2addr v3, v5

    array-length v5, v4

    if-le v3, v5, :cond_7

    array-length v3, v4

    :goto_3
    if-eqz v3, :cond_5

    iget-object v5, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_V:[B

    invoke-direct {p0, v5}, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->addOneTo([B)V

    iget-object v5, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_engine:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v6, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_V:[B

    invoke-interface {v5, v6, v2, v4, v2}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    array-length v5, v4

    mul-int/2addr v5, v1

    invoke-static {v4, v2, p1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    iget v0, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_seedLength:I

    new-array v0, v0, [B

    goto :goto_1

    :cond_7
    array-length v3, p1

    iget-object v5, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_V:[B

    array-length v5, v5

    mul-int/2addr v5, v1

    sub-int/2addr v3, v5

    goto :goto_3

    :cond_8
    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_Key:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_V:[B

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->CTR_DRBG_Update([B[B[B)V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_reseedCounter:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_reseedCounter:J

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x8

    goto/16 :goto_0
.end method

.method public getBlockSize()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->_V:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public reseed([B)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/prng/drbg/CTRSP800DRBG;->CTR_DRBG_Reseed_algorithm([B)V

    return-void
.end method
