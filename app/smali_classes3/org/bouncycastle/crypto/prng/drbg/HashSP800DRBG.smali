.class public Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/prng/drbg/SP80090DRBG;


# static fields
.field private static final MAX_BITS_REQUEST:I = 0x40000

.field private static final ONE:[B

.field private static final RESEED_MAX:J = 0x800000000000L

.field private static final seedlens:Ljava/util/Hashtable;


# instance fields
.field private _C:[B

.field private _V:[B

.field private _digest:Lorg/bouncycastle/crypto/Digest;

.field private _entropySource:Lorg/bouncycastle/crypto/prng/EntropySource;

.field private _reseedCounter:J

.field private _securityStrength:I

.field private _seedLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v4, 0x378

    const/4 v2, 0x1

    const/16 v3, 0x1b8

    new-array v0, v2, [B

    const/4 v1, 0x0

    aput-byte v2, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->ONE:[B

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->seedlens:Ljava/util/Hashtable;

    sget-object v0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->seedlens:Ljava/util/Hashtable;

    const-string v1, "SHA-1"

    invoke-static {v3}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->seedlens:Ljava/util/Hashtable;

    const-string v1, "SHA-224"

    invoke-static {v3}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->seedlens:Ljava/util/Hashtable;

    const-string v1, "SHA-256"

    invoke-static {v3}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->seedlens:Ljava/util/Hashtable;

    const-string v1, "SHA-512/256"

    invoke-static {v3}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->seedlens:Ljava/util/Hashtable;

    const-string v1, "SHA-512/224"

    invoke-static {v3}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->seedlens:Ljava/util/Hashtable;

    const-string v1, "SHA-384"

    invoke-static {v4}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->seedlens:Ljava/util/Hashtable;

    const-string v1, "SHA-512"

    invoke-static {v4}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;ILorg/bouncycastle/crypto/prng/EntropySource;[B[B)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/crypto/prng/drbg/Utils;->getMaxSecurityStrength(Lorg/bouncycastle/crypto/Digest;)I

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
    iput-object p1, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_digest:Lorg/bouncycastle/crypto/Digest;

    iput-object p3, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_entropySource:Lorg/bouncycastle/crypto/prng/EntropySource;

    iput p2, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_securityStrength:I

    sget-object v0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->seedlens:Ljava/util/Hashtable;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_seedLength:I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->getEntropy()[B

    move-result-object v0

    invoke-static {v0, p5, p4}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_digest:Lorg/bouncycastle/crypto/Digest;

    iget v2, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_seedLength:I

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/crypto/prng/drbg/Utils;->hash_df(Lorg/bouncycastle/crypto/Digest;[BI)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_V:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_V:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_V:[B

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_V:[B

    array-length v4, v4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_digest:Lorg/bouncycastle/crypto/Digest;

    iget v2, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_seedLength:I

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/crypto/prng/drbg/Utils;->hash_df(Lorg/bouncycastle/crypto/Digest;[BI)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_C:[B

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_reseedCounter:J

    return-void
.end method

.method private addTo([B[B)V
    .locals 7

    const/16 v6, 0xff

    const/4 v1, 0x1

    const/4 v3, 0x0

    move v0, v1

    move v2, v3

    :goto_0
    array-length v4, p2

    if-gt v0, v4, :cond_1

    array-length v4, p1

    sub-int/2addr v4, v0

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    array-length v5, p2

    sub-int/2addr v5, v0

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v4, v5

    add-int/2addr v4, v2

    if-le v4, v6, :cond_0

    move v2, v1

    :goto_1
    array-length v5, p1

    sub-int/2addr v5, v0

    int-to-byte v4, v4

    aput-byte v4, p1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    array-length v0, p2

    add-int/lit8 v0, v0, 0x1

    :goto_2
    array-length v4, p1

    if-gt v0, v4, :cond_3

    array-length v4, p1

    sub-int/2addr v4, v0

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v4, v2

    if-le v4, v6, :cond_2

    move v2, v1

    :goto_3
    array-length v5, p1

    sub-int/2addr v5, v0

    int-to-byte v4, v4

    aput-byte v4, p1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move v2, v3

    goto :goto_3

    :cond_3
    return-void
.end method

.method private doHash([B[B)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_digest:Lorg/bouncycastle/crypto/Digest;

    array-length v1, p1

    invoke-interface {v0, p1, v2, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p2, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-void
.end method

.method private getEntropy()[B
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_entropySource:Lorg/bouncycastle/crypto/prng/EntropySource;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/prng/EntropySource;->getEntropy()[B

    move-result-object v0

    array-length v1, v0

    iget v2, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_securityStrength:I

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

.method private hash([B)[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->doHash([B[B)V

    return-object v0
.end method

.method private hashgen([BI)[B
    .locals 8

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    div-int/lit8 v1, p2, 0x8

    div-int v3, v1, v0

    array-length v0, p1

    new-array v4, v0, [B

    array-length v0, p1

    invoke-static {p1, v2, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    div-int/lit8 v0, p2, 0x8

    new-array v5, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v6, v0, [B

    move v1, v2

    :goto_0
    if-gt v1, v3, :cond_1

    invoke-direct {p0, v4, v6}, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->doHash([B[B)V

    array-length v0, v5

    array-length v7, v6

    mul-int/2addr v7, v1

    sub-int/2addr v0, v7

    array-length v7, v6

    if-le v0, v7, :cond_0

    array-length v0, v6

    :goto_1
    array-length v7, v6

    mul-int/2addr v7, v1

    invoke-static {v6, v2, v5, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->ONE:[B

    invoke-direct {p0, v4, v0}, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->addTo([B[B)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v0, v5

    array-length v7, v6

    mul-int/2addr v7, v1

    sub-int/2addr v0, v7

    goto :goto_1

    :cond_1
    return-object v5
.end method


# virtual methods
.method public generate([B[BZ)I
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x8

    const/high16 v1, 0x40000

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of bits per request limited to 262144"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v2, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_reseedCounter:J

    const-wide v4, 0x800000000000L

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->reseed([B)V

    const/4 p2, 0x0

    :cond_2
    if-eqz p2, :cond_3

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_V:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    array-length v2, p2

    add-int/2addr v1, v2

    new-array v1, v1, [B

    aput-byte v8, v1, v6

    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_V:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_V:[B

    array-length v3, v3

    invoke-static {v2, v6, v1, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_V:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    array-length v3, p2

    invoke-static {p2, v6, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->hash([B)[B

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_V:[B

    invoke-direct {p0, v2, v1}, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->addTo([B[B)V

    :cond_3
    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_V:[B

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->hashgen([BI)[B

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_V:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [B

    iget-object v3, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_V:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_V:[B

    array-length v4, v4

    invoke-static {v3, v6, v2, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte v9, v2, v6

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->hash([B)[B

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_V:[B

    invoke-direct {p0, v3, v2}, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->addTo([B[B)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_V:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_C:[B

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->addTo([B[B)V

    const/4 v2, 0x4

    new-array v2, v2, [B

    iget-wide v4, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_reseedCounter:J

    const/16 v3, 0x18

    shr-long/2addr v4, v3

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v6

    iget-wide v4, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_reseedCounter:J

    const/16 v3, 0x10

    shr-long/2addr v4, v3

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v7

    iget-wide v4, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_reseedCounter:J

    const/16 v3, 0x8

    shr-long/2addr v4, v3

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v8

    iget-wide v4, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_reseedCounter:J

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v9

    iget-object v3, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_V:[B

    invoke-direct {p0, v3, v2}, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->addTo([B[B)V

    iget-wide v2, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_reseedCounter:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_reseedCounter:J

    array-length v2, p1

    invoke-static {v1, v6, p1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0
.end method

.method public getBlockSize()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public reseed([B)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->getEntropy()[B

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->ONE:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_V:[B

    invoke-static {v1, v2, v0, p1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B[B)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_digest:Lorg/bouncycastle/crypto/Digest;

    iget v2, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_seedLength:I

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/crypto/prng/drbg/Utils;->hash_df(Lorg/bouncycastle/crypto/Digest;[BI)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_V:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_V:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    aput-byte v4, v0, v4

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_V:[B

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_V:[B

    array-length v3, v3

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_digest:Lorg/bouncycastle/crypto/Digest;

    iget v2, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_seedLength:I

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/crypto/prng/drbg/Utils;->hash_df(Lorg/bouncycastle/crypto/Digest;[BI)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_C:[B

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lorg/bouncycastle/crypto/prng/drbg/HashSP800DRBG;->_reseedCounter:J

    return-void
.end method
