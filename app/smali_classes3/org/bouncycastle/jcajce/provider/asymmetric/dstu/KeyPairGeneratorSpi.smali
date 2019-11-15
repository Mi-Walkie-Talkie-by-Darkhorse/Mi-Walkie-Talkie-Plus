.class public Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;
.super Ljava/security/KeyPairGenerator;


# instance fields
.field algorithm:Ljava/lang/String;

.field ecParams:Ljava/lang/Object;

.field engine:Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;

.field initialised:Z

.field param:Lorg/bouncycastle/crypto/params/ECKeyGenerationParameters;

.field random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "DSTU4145"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->ecParams:Ljava/lang/Object;

    new-instance v0, Lorg/bouncycastle/crypto/generators/DSTU4145KeyPairGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/generators/DSTU4145KeyPairGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->engine:Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;

    const-string v0, "DSTU4145"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->algorithm:Ljava/lang/String;

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->initialised:Z

    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 6

    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->initialised:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DSTU Key Pair Generator not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->engine:Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;->generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->ecParams:Ljava/lang/Object;

    instance-of v2, v2, Lorg/bouncycastle/jce/spec/ECParameterSpec;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->ecParams:Ljava/lang/Object;

    check-cast v2, Lorg/bouncycastle/jce/spec/ECParameterSpec;

    new-instance v3, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;

    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->algorithm:Ljava/lang/String;

    invoke-direct {v3, v4, v0, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;-><init>(Ljava/lang/String;Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;Lorg/bouncycastle/jce/spec/ECParameterSpec;)V

    new-instance v0, Ljava/security/KeyPair;

    new-instance v4, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;

    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->algorithm:Ljava/lang/String;

    invoke-direct {v4, v5, v1, v3, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;-><init>(Ljava/lang/String;Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;Lorg/bouncycastle/jce/spec/ECParameterSpec;)V

    invoke-direct {v0, v3, v4}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    :goto_0
    return-object v0

    :cond_1
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->ecParams:Ljava/lang/Object;

    if-nez v2, :cond_2

    new-instance v2, Ljava/security/KeyPair;

    new-instance v3, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;

    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->algorithm:Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;-><init>(Ljava/lang/String;Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;)V

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;

    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->algorithm:Ljava/lang/String;

    invoke-direct {v0, v4, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;-><init>(Ljava/lang/String;Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;)V

    invoke-direct {v2, v3, v0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    move-object v0, v2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->ecParams:Ljava/lang/Object;

    check-cast v2, Ljava/security/spec/ECParameterSpec;

    new-instance v3, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;

    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->algorithm:Ljava/lang/String;

    invoke-direct {v3, v4, v0, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;-><init>(Ljava/lang/String;Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;Ljava/security/spec/ECParameterSpec;)V

    new-instance v0, Ljava/security/KeyPair;

    new-instance v4, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;

    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->algorithm:Ljava/lang/String;

    invoke-direct {v4, v5, v1, v3, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PrivateKey;-><init>(Ljava/lang/String;Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;Ljava/security/spec/ECParameterSpec;)V

    invoke-direct {v0, v3, v4}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    goto :goto_0
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 2

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->ecParams:Ljava/lang/Object;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->ecParams:Ljava/lang/Object;

    check-cast v0, Ljava/security/spec/ECGenParameterSpec;

    invoke-virtual {p0, v0, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "key size not configurable."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "unknown key size."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v8, 0x1

    instance-of v0, p1, Lorg/bouncycastle/jce/spec/ECParameterSpec;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/jce/spec/ECParameterSpec;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->ecParams:Ljava/lang/Object;

    new-instance v1, Lorg/bouncycastle/crypto/params/ECKeyGenerationParameters;

    new-instance v2, Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    invoke-virtual {v0}, Lorg/bouncycastle/jce/spec/ECParameterSpec;->getG()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v0}, Lorg/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V

    invoke-direct {v1, v2, p2}, Lorg/bouncycastle/crypto/params/ECKeyGenerationParameters;-><init>(Lorg/bouncycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->param:Lorg/bouncycastle/crypto/params/ECKeyGenerationParameters;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->engine:Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->param:Lorg/bouncycastle/crypto/params/ECKeyGenerationParameters;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    iput-boolean v8, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->initialised:Z

    :goto_0
    return-void

    :cond_0
    instance-of v0, p1, Ljava/security/spec/ECParameterSpec;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/security/spec/ECParameterSpec;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->ecParams:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Ljava/security/spec/EllipticCurve;)Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v2

    invoke-static {v1, v2, v7}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lorg/bouncycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;Z)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/crypto/params/ECKeyGenerationParameters;

    new-instance v4, Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v0

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v4, v1, v2, v5, v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v3, v4, p2}, Lorg/bouncycastle/crypto/params/ECKeyGenerationParameters;-><init>(Lorg/bouncycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V

    iput-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->param:Lorg/bouncycastle/crypto/params/ECKeyGenerationParameters;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->engine:Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->param:Lorg/bouncycastle/crypto/params/ECKeyGenerationParameters;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    iput-boolean v8, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->initialised:Z

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/security/spec/ECGenParameterSpec;

    if-nez v0, :cond_2

    instance-of v0, p1, Lorg/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;

    if-eqz v0, :cond_5

    :cond_2
    instance-of v0, p1, Ljava/security/spec/ECGenParameterSpec;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/security/spec/ECGenParameterSpec;

    invoke-virtual {p1}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_1
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/bouncycastle/asn1/ua/DSTU4145NamedCurves;->getByOID(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v6

    if-nez v6, :cond_4

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown curve name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    check-cast p1, Lorg/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;

    invoke-virtual {p1}, Lorg/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    new-instance v0, Lorg/bouncycastle/jce/spec/ECNamedCurveSpec;

    invoke-virtual {v6}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v6}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getG()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v6}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v6}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v6}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getSeed()[B

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/jce/spec/ECNamedCurveSpec;-><init>(Ljava/lang/String;Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->ecParams:Ljava/lang/Object;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->ecParams:Ljava/lang/Object;

    check-cast v0, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Ljava/security/spec/EllipticCurve;)Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v2

    invoke-static {v1, v2, v7}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lorg/bouncycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;Z)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/crypto/params/ECKeyGenerationParameters;

    new-instance v4, Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v0

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v4, v1, v2, v5, v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v3, v4, p2}, Lorg/bouncycastle/crypto/params/ECKeyGenerationParameters;-><init>(Lorg/bouncycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V

    iput-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->param:Lorg/bouncycastle/crypto/params/ECKeyGenerationParameters;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->engine:Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->param:Lorg/bouncycastle/crypto/params/ECKeyGenerationParameters;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    iput-boolean v8, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->initialised:Z

    goto/16 :goto_0

    :cond_5
    if-nez p1, :cond_6

    sget-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v0}, Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lorg/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v0}, Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lorg/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->ecParams:Ljava/lang/Object;

    new-instance v1, Lorg/bouncycastle/crypto/params/ECKeyGenerationParameters;

    new-instance v2, Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    invoke-virtual {v0}, Lorg/bouncycastle/jce/spec/ECParameterSpec;->getG()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v0}, Lorg/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V

    invoke-direct {v1, v2, p2}, Lorg/bouncycastle/crypto/params/ECKeyGenerationParameters;-><init>(Lorg/bouncycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->param:Lorg/bouncycastle/crypto/params/ECKeyGenerationParameters;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->engine:Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->param:Lorg/bouncycastle/crypto/params/ECKeyGenerationParameters;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    iput-boolean v8, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dstu/KeyPairGeneratorSpi;->initialised:Z

    goto/16 :goto_0

    :cond_6
    if-nez p1, :cond_7

    sget-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v0}, Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lorg/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "null parameter passed but no implicitCA set"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parameter object not a ECParameterSpec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
