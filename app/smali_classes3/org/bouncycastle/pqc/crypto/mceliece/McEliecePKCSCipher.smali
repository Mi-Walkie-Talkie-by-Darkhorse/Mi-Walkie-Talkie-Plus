.class public Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePKCSCipher;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/MessageEncryptor;


# static fields
.field public static final OID:Ljava/lang/String; = "1.3.6.1.4.1.8301.3.1.3.4.1"


# instance fields
.field public cipherTextSize:I

.field private k:I

.field key:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyParameters;

.field public maxPlainTextSize:I

.field private n:I

.field private sr:Ljava/security/SecureRandom;

.field private t:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private computeMessage(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->getEncoded()[B

    move-result-object v1

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    aget-byte v2, v1, v0

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    if-ltz v0, :cond_1

    aget-byte v2, v1, v0

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Bad Padding: invalid ciphertext"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-array v2, v0, [B

    invoke-static {v1, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method private computeMessageRepresentative([B)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->maxPlainTextSize:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->k:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    new-array v0, v0, [B

    array-length v3, p1

    invoke-static {p1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, p1

    aput-byte v1, v0, v2

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->k:I

    invoke-static {v1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->OS2VP(I[B)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public getKeySize(Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyParameters;)I
    .locals 2

    instance-of v0, p1, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;->getN()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->getN()I

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

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->sr:Ljava/security/SecureRandom;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->key:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyParameters;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->key:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyParameters;

    check-cast v0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->initCipherEncrypt(Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->sr:Ljava/security/SecureRandom;

    check-cast p2, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->key:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyParameters;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->key:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyParameters;

    check-cast v0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->initCipherEncrypt(Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;)V

    goto :goto_0

    :cond_1
    check-cast p2, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->key:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyParameters;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->key:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyParameters;

    check-cast v0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->initCipherDecrypt(Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;)V

    goto :goto_0
.end method

.method public initCipherDecrypt(Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;)V
    .locals 1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->getN()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->n:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->getK()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->k:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->k:I

    shr-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->maxPlainTextSize:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->n:I

    shr-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->cipherTextSize:I

    return-void
.end method

.method public initCipherEncrypt(Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->sr:Ljava/security/SecureRandom;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->sr:Ljava/security/SecureRandom;

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->sr:Ljava/security/SecureRandom;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;->getN()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->n:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;->getK()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->k:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;->getT()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->t:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->n:I

    shr-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->cipherTextSize:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->k:I

    shr-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->maxPlainTextSize:I

    return-void

    :cond_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    goto :goto_0
.end method

.method public messageDecrypt([B)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->n:I

    invoke-static {v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->OS2VP(I[B)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->key:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyParameters;

    check-cast v0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->getField()Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->getGoppaPoly()Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v3

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->getSInv()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    move-result-object v4

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->getP1()Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    move-result-object v5

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->getP2()Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    move-result-object v6

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->getH()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    move-result-object v7

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->getQInv()[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v8

    invoke-virtual {v5, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->rightMultiply(Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;)Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->computeInverse()Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->multiply(Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;)Lorg/bouncycastle/pqc/math/linearalgebra/Vector;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    invoke-virtual {v7, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->rightMultiply(Lorg/bouncycastle/pqc/math/linearalgebra/Vector;)Lorg/bouncycastle/pqc/math/linearalgebra/Vector;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    invoke-static {v1, v2, v3, v8}, Lorg/bouncycastle/pqc/math/linearalgebra/GoppaCode;->syndromeDecode(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->add(Lorg/bouncycastle/pqc/math/linearalgebra/Vector;)Lorg/bouncycastle/pqc/math/linearalgebra/Vector;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    invoke-virtual {v0, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->multiply(Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;)Lorg/bouncycastle/pqc/math/linearalgebra/Vector;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    invoke-virtual {v1, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->multiply(Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;)Lorg/bouncycastle/pqc/math/linearalgebra/Vector;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->k:I

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->extractRightVector(I)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->leftMultiply(Lorg/bouncycastle/pqc/math/linearalgebra/Vector;)Lorg/bouncycastle/pqc/math/linearalgebra/Vector;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->computeMessage(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;)[B

    move-result-object v0

    return-object v0
.end method

.method public messageEncrypt([B)[B
    .locals 5

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->computeMessageRepresentative([B)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->n:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->t:I

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->sr:Ljava/security/SecureRandom;

    invoke-direct {v2, v0, v3, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;-><init>(IILjava/security/SecureRandom;)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->key:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyParameters;

    check-cast v0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;->getG()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->leftMultiply(Lorg/bouncycastle/pqc/math/linearalgebra/Vector;)Lorg/bouncycastle/pqc/math/linearalgebra/Vector;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/Vector;->add(Lorg/bouncycastle/pqc/math/linearalgebra/Vector;)Lorg/bouncycastle/pqc/math/linearalgebra/Vector;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method
