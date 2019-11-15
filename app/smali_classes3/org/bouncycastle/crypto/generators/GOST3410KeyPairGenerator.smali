.class public Lorg/bouncycastle/crypto/generators/GOST3410KeyPairGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private param:Lorg/bouncycastle/crypto/params/GOST3410KeyGenerationParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 9

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/GOST3410KeyPairGenerator;->param:Lorg/bouncycastle/crypto/params/GOST3410KeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/GOST3410KeyGenerationParameters;->getParameters()Lorg/bouncycastle/crypto/params/GOST3410Parameters;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/GOST3410KeyPairGenerator;->param:Lorg/bouncycastle/crypto/params/GOST3410KeyGenerationParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/GOST3410KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/GOST3410Parameters;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/GOST3410Parameters;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/GOST3410Parameters;->getA()Ljava/math/BigInteger;

    move-result-object v4

    const/16 v5, 0x40

    :cond_0
    new-instance v6, Ljava/math/BigInteger;

    const/16 v7, 0x100

    invoke-direct {v6, v7, v1}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    invoke-virtual {v6}, Ljava/math/BigInteger;->signum()I

    move-result v7

    const/4 v8, 0x1

    if-lt v7, v8, :cond_0

    invoke-virtual {v6, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v7

    if-gez v7, :cond_0

    invoke-static {v6}, Lorg/bouncycastle/math/ec/WNafUtil;->getNafWeight(Ljava/math/BigInteger;)I

    move-result v7

    if-lt v7, v5, :cond_0

    invoke-virtual {v4, v6, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    new-instance v3, Lorg/bouncycastle/crypto/params/GOST3410PublicKeyParameters;

    invoke-direct {v3, v1, v0}, Lorg/bouncycastle/crypto/params/GOST3410PublicKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/GOST3410Parameters;)V

    new-instance v1, Lorg/bouncycastle/crypto/params/GOST3410PrivateKeyParameters;

    invoke-direct {v1, v6, v0}, Lorg/bouncycastle/crypto/params/GOST3410PrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/GOST3410Parameters;)V

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v2
.end method

.method public init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 0

    check-cast p1, Lorg/bouncycastle/crypto/params/GOST3410KeyGenerationParameters;

    iput-object p1, p0, Lorg/bouncycastle/crypto/generators/GOST3410KeyPairGenerator;->param:Lorg/bouncycastle/crypto/params/GOST3410KeyGenerationParameters;

    return-void
.end method
