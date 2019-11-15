.class public Lorg/bouncycastle/crypto/signers/DSASigner;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/DSA;


# instance fields
.field private final kCalculator:Lorg/bouncycastle/crypto/signers/DSAKCalculator;

.field private key:Lorg/bouncycastle/crypto/params/DSAKeyParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/signers/RandomDSAKCalculator;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/signers/RandomDSAKCalculator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/DSASigner;->kCalculator:Lorg/bouncycastle/crypto/signers/DSAKCalculator;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/signers/DSAKCalculator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/signers/DSASigner;->kCalculator:Lorg/bouncycastle/crypto/signers/DSAKCalculator;

    return-void
.end method

.method private calculateE(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    array-length v1, p2

    mul-int/lit8 v1, v1, 0x8

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v3, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    new-array v1, v0, [B

    array-length v0, v1

    invoke-static {p2, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v3, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    goto :goto_0
.end method


# virtual methods
.method public generateSignature([B)[Ljava/math/BigInteger;
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/DSASigner;->key:Lorg/bouncycastle/crypto/params/DSAKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/DSAKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/DSAParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lorg/bouncycastle/crypto/signers/DSASigner;->calculateE(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;

    move-result-object v3

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/DSASigner;->key:Lorg/bouncycastle/crypto/params/DSAKeyParameters;

    check-cast v0, Lorg/bouncycastle/crypto/params/DSAPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/DSAPrivateKeyParameters;->getX()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/DSASigner;->kCalculator:Lorg/bouncycastle/crypto/signers/DSAKCalculator;

    invoke-interface {v4}, Lorg/bouncycastle/crypto/signers/DSAKCalculator;->isDeterministic()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/DSASigner;->kCalculator:Lorg/bouncycastle/crypto/signers/DSAKCalculator;

    invoke-interface {v4, v2, v0, p1}, Lorg/bouncycastle/crypto/signers/DSAKCalculator;->init(Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    :goto_0
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/DSASigner;->kCalculator:Lorg/bouncycastle/crypto/signers/DSAKCalculator;

    invoke-interface {v4}, Lorg/bouncycastle/crypto/signers/DSAKCalculator;->nextK()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v5, v4, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v4, v2}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/math/BigInteger;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    return-object v2

    :cond_0
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/DSASigner;->kCalculator:Lorg/bouncycastle/crypto/signers/DSAKCalculator;

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/DSASigner;->random:Ljava/security/SecureRandom;

    invoke-interface {v4, v2, v5}, Lorg/bouncycastle/crypto/signers/DSAKCalculator;->init(Ljava/math/BigInteger;Ljava/security/SecureRandom;)V

    goto :goto_0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_0

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/DSAPrivateKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/DSASigner;->key:Lorg/bouncycastle/crypto/params/DSAKeyParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    move-object v1, v0

    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/DSASigner;->kCalculator:Lorg/bouncycastle/crypto/signers/DSAKCalculator;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/signers/DSAKCalculator;->isDeterministic()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/signers/DSASigner;->initSecureRandom(ZLjava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/DSASigner;->random:Ljava/security/SecureRandom;

    return-void

    :cond_0
    check-cast p2, Lorg/bouncycastle/crypto/params/DSAPrivateKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/crypto/signers/DSASigner;->key:Lorg/bouncycastle/crypto/params/DSAKeyParameters;

    move-object v1, v0

    goto :goto_0

    :cond_1
    check-cast p2, Lorg/bouncycastle/crypto/params/DSAPublicKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/crypto/signers/DSASigner;->key:Lorg/bouncycastle/crypto/params/DSAKeyParameters;

    move-object v1, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected initSecureRandom(ZLjava/security/SecureRandom;)Ljava/security/SecureRandom;
    .locals 0

    if-nez p1, :cond_1

    const/4 p2, 0x0

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    if-nez p2, :cond_0

    new-instance p2, Ljava/security/SecureRandom;

    invoke-direct {p2}, Ljava/security/SecureRandom;-><init>()V

    goto :goto_0
.end method

.method public verifySignature([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/DSASigner;->key:Lorg/bouncycastle/crypto/params/DSAKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/DSAKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/DSAParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lorg/bouncycastle/crypto/signers/DSASigner;->calculateE(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-gez v5, :cond_0

    invoke-virtual {v2, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-gtz v5, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v4, p3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-gez v4, :cond_0

    invoke-virtual {v2, p3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {p3, v2}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v3, v5}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/DSASigner;->key:Lorg/bouncycastle/crypto/params/DSAKeyParameters;

    check-cast v0, Lorg/bouncycastle/crypto/params/DSAPublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/DSAPublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
