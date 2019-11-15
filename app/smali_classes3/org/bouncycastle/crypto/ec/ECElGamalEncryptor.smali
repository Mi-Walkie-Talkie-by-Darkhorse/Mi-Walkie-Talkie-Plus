.class public Lorg/bouncycastle/crypto/ec/ECElGamalEncryptor;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/ec/ECEncryptor;


# instance fields
.field private key:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected createBasePointMultiplier()Lorg/bouncycastle/math/ec/ECMultiplier;
    .locals 1

    new-instance v0, Lorg/bouncycastle/math/ec/FixedPointCombMultiplier;

    invoke-direct {v0}, Lorg/bouncycastle/math/ec/FixedPointCombMultiplier;-><init>()V

    return-object v0
.end method

.method public encrypt(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/crypto/ec/ECPair;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/ec/ECElGamalEncryptor;->key:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ECElGamalEncryptor not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/ec/ECElGamalEncryptor;->key:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/ec/ECElGamalEncryptor;->random:Ljava/security/SecureRandom;

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/ec/ECUtil;->generateK(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/ec/ECElGamalEncryptor;->createBasePointMultiplier()Lorg/bouncycastle/math/ec/ECMultiplier;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getG()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Lorg/bouncycastle/math/ec/ECMultiplier;->multiply(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    aput-object v2, v3, v5

    iget-object v2, p0, Lorg/bouncycastle/crypto/ec/ECElGamalEncryptor;->key:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/bouncycastle/math/ec/ECCurve;->normalizeAll([Lorg/bouncycastle/math/ec/ECPoint;)V

    new-instance v0, Lorg/bouncycastle/crypto/ec/ECPair;

    aget-object v1, v3, v5

    aget-object v2, v3, v6

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/ec/ECPair;-><init>(Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECPoint;)V

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2

    instance-of v0, p1, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ECPublicKeyParameters are required for encryption."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/crypto/ec/ECElGamalEncryptor;->key:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/ec/ECElGamalEncryptor;->random:Ljava/security/SecureRandom;

    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ECPublicKeyParameters are required for encryption."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    check-cast p1, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    iput-object p1, p0, Lorg/bouncycastle/crypto/ec/ECElGamalEncryptor;->key:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/ec/ECElGamalEncryptor;->random:Ljava/security/SecureRandom;

    goto :goto_0
.end method
