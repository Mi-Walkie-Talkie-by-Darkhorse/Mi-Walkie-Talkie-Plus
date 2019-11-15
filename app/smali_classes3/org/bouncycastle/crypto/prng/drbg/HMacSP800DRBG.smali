.class public Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/prng/drbg/SP80090DRBG;


# static fields
.field private static final MAX_BITS_REQUEST:I = 0x40000

.field private static final RESEED_MAX:J = 0x800000000000L


# instance fields
.field private _K:[B

.field private _V:[B

.field private _entropySource:Lorg/bouncycastle/crypto/prng/EntropySource;

.field private _hMac:Lorg/bouncycastle/crypto/Mac;

.field private _reseedCounter:J

.field private _securityStrength:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/Mac;ILorg/bouncycastle/crypto/prng/EntropySource;[B[B)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/crypto/prng/drbg/Utils;->getMaxSecurityStrength(Lorg/bouncycastle/crypto/Mac;)I

    move-result v0

    if-le p2, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Requested security strength is not supported by the derivation function"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {p3}, Lorg/bouncycastle/crypto/prng/EntropySource;->entropySize()I

    move-result v0

    if-ge v0, p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not enough entropy for security strength required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p2, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_securityStrength:I

    iput-object p3, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_entropySource:Lorg/bouncycastle/crypto/prng/EntropySource;

    iput-object p1, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/bouncycastle/crypto/Mac;

    invoke-direct {p0}, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->getEntropy()[B

    move-result-object v0

    invoke-static {v0, p5, p4}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v0

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_K:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_K:[B

    array-length v1, v1

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->hmac_DRBG_Update([B)V

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_reseedCounter:J

    return-void
.end method

.method private getEntropy()[B
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_entropySource:Lorg/bouncycastle/crypto/prng/EntropySource;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/prng/EntropySource;->getEntropy()[B

    move-result-object v0

    array-length v1, v0

    iget v2, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_securityStrength:I

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

.method private hmac_DRBG_Update([B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->hmac_DRBG_Update_Func([BB)V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->hmac_DRBG_Update_Func([BB)V

    :cond_0
    return-void
.end method

.method private hmac_DRBG_Update_Func([BB)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/bouncycastle/crypto/Mac;

    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_K:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/Mac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/bouncycastle/crypto/Mac;

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    array-length v2, v2

    invoke-interface {v0, v1, v3, v2}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v0, p2}, Lorg/bouncycastle/crypto/Mac;->update(B)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/bouncycastle/crypto/Mac;

    array-length v1, p1

    invoke-interface {v0, p1, v3, v1}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/bouncycastle/crypto/Mac;

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_K:[B

    invoke-interface {v0, v1, v3}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/bouncycastle/crypto/Mac;

    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_K:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/Mac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/bouncycastle/crypto/Mac;

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    array-length v2, v2

    invoke-interface {v0, v1, v3, v2}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/bouncycastle/crypto/Mac;

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    invoke-interface {v0, v1, v3}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    return-void
.end method


# virtual methods
.method public generate([B[BZ)I
    .locals 8

    const/4 v2, 0x0

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x8

    const/high16 v1, 0x40000

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of bits per request limited to 262144"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v4, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_reseedCounter:J

    const-wide v6, 0x800000000000L

    cmp-long v1, v4, v6

    if-lez v1, :cond_1

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->reseed([B)V

    const/4 p2, 0x0

    :cond_2
    if-eqz p2, :cond_3

    invoke-direct {p0, p2}, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->hmac_DRBG_Update([B)V

    :cond_3
    array-length v1, p1

    new-array v3, v1, [B

    array-length v1, p1

    iget-object v4, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    array-length v4, v4

    div-int v4, v1, v4

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/bouncycastle/crypto/Mac;

    new-instance v5, Lorg/bouncycastle/crypto/params/KeyParameter;

    iget-object v6, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_K:[B

    invoke-direct {v5, v6}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {v1, v5}, Lorg/bouncycastle/crypto/Mac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_4

    iget-object v5, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/bouncycastle/crypto/Mac;

    iget-object v6, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    iget-object v7, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    array-length v7, v7

    invoke-interface {v5, v6, v2, v7}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    iget-object v5, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/bouncycastle/crypto/Mac;

    iget-object v6, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    invoke-interface {v5, v6, v2}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    iget-object v5, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    iget-object v6, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    array-length v6, v6

    mul-int/2addr v6, v1

    iget-object v7, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    array-length v7, v7

    invoke-static {v5, v2, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    array-length v1, v1

    mul-int/2addr v1, v4

    array-length v5, v3

    if-ge v1, v5, :cond_5

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/bouncycastle/crypto/Mac;

    iget-object v5, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    iget-object v6, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    array-length v6, v6

    invoke-interface {v1, v5, v2, v6}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/bouncycastle/crypto/Mac;

    iget-object v5, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    invoke-interface {v1, v5, v2}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    array-length v5, v5

    mul-int/2addr v5, v4

    array-length v6, v3

    iget-object v7, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    array-length v7, v7

    mul-int/2addr v4, v7

    sub-int v4, v6, v4

    invoke-static {v1, v2, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    invoke-direct {p0, p2}, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->hmac_DRBG_Update([B)V

    iget-wide v4, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_reseedCounter:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_reseedCounter:J

    array-length v1, p1

    invoke-static {v3, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public getBlockSize()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public reseed([B)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->getEntropy()[B

    move-result-object v0

    invoke-static {v0, p1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->hmac_DRBG_Update([B)V

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_reseedCounter:J

    return-void
.end method
