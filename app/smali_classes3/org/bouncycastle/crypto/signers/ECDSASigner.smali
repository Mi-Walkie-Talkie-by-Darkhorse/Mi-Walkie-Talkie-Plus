.class public Lorg/bouncycastle/crypto/signers/ECDSASigner;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/DSA;
.implements Lorg/bouncycastle/math/ec/ECConstants;


# instance fields
.field private final kCalculator:Lorg/bouncycastle/crypto/signers/DSAKCalculator;

.field private key:Lorg/bouncycastle/crypto/params/ECKeyParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/signers/RandomDSAKCalculator;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/signers/RandomDSAKCalculator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/ECDSASigner;->kCalculator:Lorg/bouncycastle/crypto/signers/DSAKCalculator;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/signers/DSAKCalculator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/signers/ECDSASigner;->kCalculator:Lorg/bouncycastle/crypto/signers/DSAKCalculator;

    return-void
.end method


# virtual methods
.method protected calculateE(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;
    .locals 4

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    array-length v0, p2

    mul-int/lit8 v2, v0, 0x8

    new-instance v0, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-direct {v0, v3, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    if-ge v1, v2, :cond_0

    sub-int v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected createBasePointMultiplier()Lorg/bouncycastle/math/ec/ECMultiplier;
    .locals 1

    new-instance v0, Lorg/bouncycastle/math/ec/FixedPointCombMultiplier;

    invoke-direct {v0}, Lorg/bouncycastle/math/ec/FixedPointCombMultiplier;-><init>()V

    return-object v0
.end method

.method public generateSignature([B)[Ljava/math/BigInteger;
    .locals 8

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ECDSASigner;->key:Lorg/bouncycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lorg/bouncycastle/crypto/signers/ECDSASigner;->calculateE(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;

    move-result-object v3

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ECDSASigner;->key:Lorg/bouncycastle/crypto/params/ECKeyParameters;

    check-cast v0, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/ECDSASigner;->kCalculator:Lorg/bouncycastle/crypto/signers/DSAKCalculator;

    invoke-interface {v4}, Lorg/bouncycastle/crypto/signers/DSAKCalculator;->isDeterministic()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/ECDSASigner;->kCalculator:Lorg/bouncycastle/crypto/signers/DSAKCalculator;

    invoke-interface {v4, v2, v0, p1}, Lorg/bouncycastle/crypto/signers/DSAKCalculator;->init(Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/signers/ECDSASigner;->createBasePointMultiplier()Lorg/bouncycastle/math/ec/ECMultiplier;

    move-result-object v4

    :cond_0
    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/ECDSASigner;->kCalculator:Lorg/bouncycastle/crypto/signers/DSAKCalculator;

    invoke-interface {v5}, Lorg/bouncycastle/crypto/signers/DSAKCalculator;->nextK()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getG()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    invoke-interface {v4, v6, v5}, Lorg/bouncycastle/math/ec/ECMultiplier;->multiply(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/math/ec/ECPoint;->normalize()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    sget-object v7, Lorg/bouncycastle/crypto/signers/ECDSASigner;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v5, v2}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    sget-object v7, Lorg/bouncycastle/crypto/signers/ECDSASigner;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v5, v7}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/math/BigInteger;

    const/4 v1, 0x0

    aput-object v6, v0, v1

    const/4 v1, 0x1

    aput-object v5, v0, v1

    return-object v0

    :cond_1
    iget-object v4, p0, Lorg/bouncycastle/crypto/signers/ECDSASigner;->kCalculator:Lorg/bouncycastle/crypto/signers/DSAKCalculator;

    iget-object v5, p0, Lorg/bouncycastle/crypto/signers/ECDSASigner;->random:Ljava/security/SecureRandom;

    invoke-interface {v4, v2, v5}, Lorg/bouncycastle/crypto/signers/DSAKCalculator;->init(Ljava/math/BigInteger;Ljava/security/SecureRandom;)V

    goto :goto_0
.end method

.method protected getDenominator(ILorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_1
    invoke-virtual {p2, v0}, Lorg/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p2, v0}, Lorg/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
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

    check-cast v0, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/ECDSASigner;->key:Lorg/bouncycastle/crypto/params/ECKeyParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    move-object v1, v0

    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ECDSASigner;->kCalculator:Lorg/bouncycastle/crypto/signers/DSAKCalculator;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/signers/DSAKCalculator;->isDeterministic()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/signers/ECDSASigner;->initSecureRandom(ZLjava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/ECDSASigner;->random:Ljava/security/SecureRandom;

    return-void

    :cond_0
    check-cast p2, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/crypto/signers/ECDSASigner;->key:Lorg/bouncycastle/crypto/params/ECKeyParameters;

    move-object v1, v0

    goto :goto_0

    :cond_1
    check-cast p2, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/crypto/signers/ECDSASigner;->key:Lorg/bouncycastle/crypto/params/ECKeyParameters;

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

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ECDSASigner;->key:Lorg/bouncycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lorg/bouncycastle/crypto/signers/ECDSASigner;->calculateE(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;

    move-result-object v3

    sget-object v4, Lorg/bouncycastle/crypto/signers/ECDSASigner;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p2, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-ltz v4, :cond_0

    invoke-virtual {p2, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-ltz v4, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    sget-object v4, Lorg/bouncycastle/crypto/signers/ECDSASigner;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p3, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-ltz v4, :cond_2

    invoke-virtual {p3, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-ltz v4, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p3, v2}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p2, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getG()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/ECDSASigner;->key:Lorg/bouncycastle/crypto/params/ECKeyParameters;

    check-cast v0, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-static {v5, v3, v0, v4}, Lorg/bouncycastle/math/ec/ECAlgorithms;->sumOfTwoMultiplies(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECCurve;->getCofactor()Ljava/math/BigInteger;

    move-result-object v4

    if-eqz v4, :cond_7

    sget-object v5, Lorg/bouncycastle/crypto/signers/ECDSASigner;->EIGHT:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-gtz v4, :cond_7

    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v4

    invoke-virtual {p0, v4, v0}, Lorg/bouncycastle/crypto/signers/ECDSASigner;->getDenominator(ILorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint;->getXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, p2}, Lorg/bouncycastle/math/ec/ECCurve;->isValidFieldElement(Ljava/math/BigInteger;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v3, p2}, Lorg/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p2, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    goto :goto_1

    :cond_6
    move v0, v1

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint;->normalize()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_0
.end method
