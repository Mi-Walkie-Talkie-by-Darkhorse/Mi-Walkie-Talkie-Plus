.class public Lorg/bouncycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/MessageEncryptor;


# static fields
.field private static final DEFAULT_PRNG_NAME:Ljava/lang/String; = "SHA1PRNG"

.field public static final OID:Ljava/lang/String; = "1.3.6.1.4.1.8301.3.1.3.4.2.1"


# instance fields
.field private k:I

.field key:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

.field private messDigest:Lorg/bouncycastle/crypto/Digest;

.field private n:I

.field private sr:Ljava/security/SecureRandom;

.field private t:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private initCipherEncrypt(Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->sr:Ljava/security/SecureRandom;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->sr:Ljava/security/SecureRandom;

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->sr:Ljava/security/SecureRandom;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;->getDigest()Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getN()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->n:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getK()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->k:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getT()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->t:I

    return-void

    :cond_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public getKeySize(Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    instance-of v0, p1, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getN()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->getN()I

    move-result v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unsupported type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1

    if-eqz p1, :cond_1

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->sr:Ljava/security/SecureRandom;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->key:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->key:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    check-cast v0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->initCipherEncrypt(Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->sr:Ljava/security/SecureRandom;

    check-cast p2, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->key:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->key:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    check-cast v0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->initCipherEncrypt(Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;)V

    goto :goto_0

    :cond_1
    check-cast p2, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->key:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->key:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    check-cast v0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->initCipherDecrypt(Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;)V

    goto :goto_0
.end method

.method public initCipherDecrypt(Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;)V
    .locals 1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;->getDigest()Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->getN()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->n:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->getT()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->t:I

    return-void
.end method

.method public messageDecrypt([B)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->n:I

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    array-length v2, p1

    sub-int/2addr v2, v0

    invoke-static {p1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/ByteUtils;->split([BI)[[B

    move-result-object v0

    aget-object v3, v0, v1

    aget-object v4, v0, v5

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->n:I

    invoke-static {v0, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->OS2VP(I[B)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->key:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    check-cast v0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    invoke-static {v0, v3}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2Primitives;->decryptionPrimitive(Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;)[Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v0

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->getEncoded()[B

    move-result-object v3

    aget-object v5, v0, v5

    new-instance v0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;

    new-instance v6, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v6}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v0, v6}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->addSeedMaterial([B)V

    new-array v6, v2, [B

    invoke-virtual {v0, v6}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->nextBytes([B)V

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-byte v7, v6, v0

    aget-byte v8, v4, v0

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v3, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/ByteUtils;->concatenate([B[B)[B

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    new-array v2, v2, [B

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    array-length v4, v0

    invoke-interface {v3, v0, v1, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, v2, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->n:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->t:I

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/mceliece/Conversions;->encode(II[B)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v0

    invoke-virtual {v0, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Bad Padding: invalid ciphertext"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object v6
.end method

.method public messageEncrypt([B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->k:I

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->sr:Ljava/security/SecureRandom;

    invoke-direct {v2, v0, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;-><init>(ILjava/security/SecureRandom;)V

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->getEncoded()[B

    move-result-object v3

    invoke-static {v3, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/ByteUtils;->concatenate([B[B)[B

    move-result-object v0

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    array-length v5, v0

    invoke-interface {v4, v0, v1, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4, v0, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->n:I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->t:I

    invoke-static {v4, v5, v0}, Lorg/bouncycastle/pqc/crypto/mceliece/Conversions;->encode(II[B)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v4

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->key:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    check-cast v0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    invoke-static {v0, v2, v4}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2Primitives;->encryptionPrimitive(Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->getEncoded()[B

    move-result-object v2

    new-instance v0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;

    new-instance v4, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v4}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v0, v4}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->addSeedMaterial([B)V

    array-length v3, p1

    new-array v3, v3, [B

    invoke-virtual {v0, v3}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->nextBytes([B)V

    move v0, v1

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-byte v1, v3, v0

    aget-byte v4, p1, v0

    xor-int/2addr v1, v4

    int-to-byte v1, v1

    aput-byte v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/ByteUtils;->concatenate([B[B)[B

    move-result-object v0

    return-object v0
.end method
