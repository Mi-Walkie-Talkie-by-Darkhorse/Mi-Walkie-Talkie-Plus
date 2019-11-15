.class public Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/MessageEncryptor;


# static fields
.field private static final DEFAULT_PRNG_NAME:Ljava/lang/String; = "SHA1PRNG"

.field public static final OID:Ljava/lang/String; = "1.3.6.1.4.1.8301.3.1.3.4.2.3"

.field public static final PUBLIC_CONSTANT:[B


# instance fields
.field private k:I

.field key:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

.field private messDigest:Lorg/bouncycastle/crypto/Digest;

.field private n:I

.field private sr:Ljava/security/SecureRandom;

.field private t:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "a predetermined public constant"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->PUBLIC_CONSTANT:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private initCipherEncrypt(Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;)V
    .locals 1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;->getDigest()Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getN()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->n:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getK()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->k:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getT()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->t:I

    return-void
.end method


# virtual methods
.method public getKeySize(Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;)I
    .locals 2

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

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->sr:Ljava/security/SecureRandom;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->key:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->key:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    check-cast v0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->initCipherEncrypt(Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->sr:Ljava/security/SecureRandom;

    check-cast p2, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->key:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->key:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    check-cast v0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->initCipherEncrypt(Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;)V

    goto :goto_0

    :cond_1
    check-cast p2, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->key:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->key:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    check-cast v0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->initCipherDecrypt(Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;)V

    goto :goto_0
.end method

.method public initCipherDecrypt(Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;)V
    .locals 1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;->getDigest()Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->getN()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->n:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->getK()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->k:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->getT()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->t:I

    return-void
.end method

.method public messageDecrypt([B)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->n:I

    shr-int/lit8 v0, v0, 0x3

    array-length v1, p1

    if-ge v1, v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Bad Padding: Ciphertext too short."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->k:I

    shr-int/lit8 v3, v1, 0x3

    array-length v1, p1

    sub-int v0, v1, v0

    if-lez v0, :cond_2

    invoke-static {p1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/ByteUtils;->split([BI)[[B

    move-result-object v1

    aget-object v0, v1, v7

    aget-object p1, v1, v8

    move-object v1, v0

    :goto_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->n:I

    invoke-static {v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->OS2VP(I[B)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v4

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->key:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    check-cast v0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    invoke-static {v0, v4}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2Primitives;->decryptionPrimitive(Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;)[Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v4

    aget-object v0, v4, v7

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->getEncoded()[B

    move-result-object v0

    aget-object v4, v4, v8

    array-length v5, v0

    if-le v5, v3, :cond_1

    invoke-static {v0, v7, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/ByteUtils;->subArray([BII)[B

    move-result-object v0

    :cond_1
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->n:I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->t:I

    invoke-static {v3, v5, v4}, Lorg/bouncycastle/pqc/crypto/mceliece/Conversions;->decode(IILorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;)[B

    move-result-object v3

    invoke-static {v1, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/ByteUtils;->concatenate([B[B)[B

    move-result-object v1

    invoke-static {v1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/ByteUtils;->concatenate([B[B)[B

    move-result-object v0

    array-length v1, v0

    sub-int/2addr v1, v2

    invoke-static {v0, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/ByteUtils;->split([BI)[[B

    move-result-object v0

    aget-object v3, v0, v7

    aget-object v4, v0, v8

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v5, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    array-length v6, v4

    invoke-interface {v0, v4, v7, v6}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, v5, v7}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    add-int/lit8 v0, v2, -0x1

    :goto_1
    if-ltz v0, :cond_3

    aget-byte v2, v5, v0

    aget-byte v6, v3, v0

    xor-int/2addr v2, v6

    int-to-byte v2, v2

    aput-byte v2, v5, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    new-array v0, v7, [B

    move-object v1, v0

    goto :goto_0

    :cond_3
    new-instance v0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;

    new-instance v2, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v0, v2}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    invoke-virtual {v0, v5}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->addSeedMaterial([B)V

    new-array v2, v1, [B

    invoke-virtual {v0, v2}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->nextBytes([B)V

    add-int/lit8 v0, v1, -0x1

    :goto_2
    if-ltz v0, :cond_4

    aget-byte v3, v2, v0

    aget-byte v5, v4, v0

    xor-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    array-length v0, v2

    if-ge v0, v1, :cond_5

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Bad Padding: invalid ciphertext"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    sget-object v0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->PUBLIC_CONSTANT:[B

    array-length v0, v0

    sub-int v0, v1, v0

    invoke-static {v2, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/ByteUtils;->split([BI)[[B

    move-result-object v0

    aget-object v1, v0, v7

    aget-object v0, v0, v8

    sget-object v2, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->PUBLIC_CONSTANT:[B

    invoke-static {v0, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/ByteUtils;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Bad Padding: invalid ciphertext"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    return-object v1
.end method

.method public messageEncrypt([B)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v10, 0x0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->k:I

    shr-int/lit8 v2, v0, 0x3

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->n:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->t:I

    invoke-static {v0, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->binomial(II)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    shr-int/lit8 v3, v0, 0x3

    add-int v0, v2, v3

    sub-int/2addr v0, v1

    sget-object v4, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->PUBLIC_CONSTANT:[B

    array-length v4, v4

    sub-int/2addr v0, v4

    array-length v4, p1

    if-le v4, v0, :cond_0

    array-length v0, p1

    :cond_0
    sget-object v4, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->PUBLIC_CONSTANT:[B

    array-length v4, v4

    add-int/2addr v4, v0

    add-int v5, v4, v1

    sub-int/2addr v5, v2

    sub-int/2addr v5, v3

    new-array v6, v4, [B

    array-length v7, p1

    invoke-static {p1, v10, v6, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v7, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->PUBLIC_CONSTANT:[B

    sget-object v8, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->PUBLIC_CONSTANT:[B

    array-length v8, v8

    invoke-static {v7, v10, v6, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v7, v1, [B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->sr:Ljava/security/SecureRandom;

    invoke-virtual {v0, v7}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v0, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;

    new-instance v8, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v8}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v0, v8}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    invoke-virtual {v0, v7}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->addSeedMaterial([B)V

    new-array v8, v4, [B

    invoke-virtual {v0, v8}, Lorg/bouncycastle/crypto/prng/DigestRandomGenerator;->nextBytes([B)V

    add-int/lit8 v0, v4, -0x1

    :goto_0
    if-ltz v0, :cond_1

    aget-byte v4, v8, v0

    aget-byte v9, v6, v0

    xor-int/2addr v4, v9

    int-to-byte v4, v4

    aput-byte v4, v8, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v4, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    array-length v6, v8

    invoke-interface {v0, v8, v10, v6}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, v4, v10}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    add-int/lit8 v0, v1, -0x1

    :goto_1
    if-ltz v0, :cond_2

    aget-byte v1, v4, v0

    aget-byte v6, v7, v0

    xor-int/2addr v1, v6

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    invoke-static {v4, v8}, Lorg/bouncycastle/pqc/math/linearalgebra/ByteUtils;->concatenate([B[B)[B

    move-result-object v4

    new-array v0, v10, [B

    if-lez v5, :cond_3

    new-array v0, v5, [B

    invoke-static {v4, v10, v0, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    move-object v1, v0

    new-array v0, v3, [B

    invoke-static {v4, v5, v0, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v6, v2, [B

    add-int/2addr v3, v5

    invoke-static {v4, v3, v6, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->k:I

    invoke-static {v2, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->OS2VP(I[B)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v2

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->n:I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->t:I

    invoke-static {v3, v4, v0}, Lorg/bouncycastle/pqc/crypto/mceliece/Conversions;->encode(II[B)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->key:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    check-cast v0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    invoke-static {v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2Primitives;->encryptionPrimitive(Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->getEncoded()[B

    move-result-object v0

    if-lez v5, :cond_4

    invoke-static {v1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/ByteUtils;->concatenate([B[B)[B

    move-result-object v0

    :cond_4
    return-object v0
.end method
