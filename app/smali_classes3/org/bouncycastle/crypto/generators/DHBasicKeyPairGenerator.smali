.class public Lorg/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private param:Lorg/bouncycastle/crypto/params/DHKeyGenerationParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 5

    sget-object v0, Lorg/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->INSTANCE:Lorg/bouncycastle/crypto/generators/DHKeyGeneratorHelper;

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;->param:Lorg/bouncycastle/crypto/params/DHKeyGenerationParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/DHKeyGenerationParameters;->getParameters()Lorg/bouncycastle/crypto/params/DHParameters;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;->param:Lorg/bouncycastle/crypto/params/DHKeyGenerationParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/DHKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->calculatePrivate(Lorg/bouncycastle/crypto/params/DHParameters;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->calculatePublic(Lorg/bouncycastle/crypto/params/DHParameters;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    new-instance v3, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    new-instance v4, Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    invoke-direct {v4, v0, v1}, Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/DHParameters;)V

    new-instance v0, Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/DHParameters;)V

    invoke-direct {v3, v4, v0}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v3
.end method

.method public init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 0

    check-cast p1, Lorg/bouncycastle/crypto/params/DHKeyGenerationParameters;

    iput-object p1, p0, Lorg/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;->param:Lorg/bouncycastle/crypto/params/DHKeyGenerationParameters;

    return-void
.end method
