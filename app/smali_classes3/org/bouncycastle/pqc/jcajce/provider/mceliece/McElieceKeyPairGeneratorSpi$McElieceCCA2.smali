.class public Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McElieceKeyPairGeneratorSpi$McElieceCCA2;
.super Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McElieceKeyPairGeneratorSpi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McElieceKeyPairGeneratorSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "McElieceCCA2"
.end annotation


# instance fields
.field kpg:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyPairGenerator;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "McElieceCCA-2"

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McElieceKeyPairGeneratorSpi;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McElieceKeyPairGeneratorSpi;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McElieceKeyPairGeneratorSpi$McElieceCCA2;->kpg:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyPairGenerator;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyPairGenerator;->generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    new-instance v2, Ljava/security/KeyPair;

    new-instance v3, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;

    invoke-direct {v3, v1}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;-><init>(Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;)V

    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PrivateKey;

    invoke-direct {v1, v0}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PrivateKey;-><init>(Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;)V

    invoke-direct {v2, v3, v1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v2
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2ParameterSpec;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2ParameterSpec;-><init>()V

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McElieceKeyPairGeneratorSpi$McElieceCCA2;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyPairGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyPairGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McElieceKeyPairGeneratorSpi$McElieceCCA2;->kpg:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyPairGenerator;

    invoke-super {p0, p1}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McElieceKeyPairGeneratorSpi;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    check-cast p1, Lorg/bouncycastle/pqc/jcajce/spec/ECCKeyGenParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyGenerationParameters;

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    new-instance v2, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/spec/ECCKeyGenParameterSpec;->getM()I

    move-result v3

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/spec/ECCKeyGenParameterSpec;->getT()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;-><init>(II)V

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McElieceKeyPairGeneratorSpi$McElieceCCA2;->kpg:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyPairGenerator;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    return-void
.end method
