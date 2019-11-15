.class public Lorg/bouncycastle/crypto/generators/RSAKeyPairGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# static fields
.field private static final ONE:Ljava/math/BigInteger;


# instance fields
.field private iterations:I

.field private param:Lorg/bouncycastle/crypto/params/RSAKeyGenerationParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getNumberOfIterations(II)I
    .locals 5

    const/16 v4, 0x50

    const/4 v1, 0x5

    const/4 v0, 0x4

    const/16 v3, 0x64

    const/16 v2, 0x600

    if-lt p0, v2, :cond_2

    if-gt p1, v3, :cond_1

    const/4 v0, 0x3

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x80

    if-le p1, v1, :cond_0

    add-int/lit8 v0, p1, -0x80

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_2
    const/16 v2, 0x400

    if-lt p0, v2, :cond_4

    if-le p1, v3, :cond_0

    const/16 v0, 0x70

    if-gt p1, v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    add-int/lit8 v0, p1, -0x70

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x5

    goto :goto_0

    :cond_4
    const/16 v0, 0x200

    if-lt p0, v0, :cond_7

    if-gt p1, v4, :cond_5

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_5
    if-gt p1, v3, :cond_6

    const/4 v1, 0x7

    goto :goto_1

    :cond_6
    add-int/lit8 v0, p1, -0x64

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v0, 0x7

    goto :goto_1

    :cond_7
    if-gt p1, v4, :cond_8

    const/16 v0, 0x28

    goto :goto_0

    :cond_8
    add-int/lit8 v0, p1, -0x50

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x28

    goto :goto_0
.end method


# virtual methods
.method protected chooseRandomPrime(ILjava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v1, p1, 0x5

    if-eq v0, v1, :cond_2

    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lorg/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/RSAKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3}, Ljava/math/BigInteger;-><init>(IILjava/util/Random;)V

    invoke-virtual {v1, p2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lorg/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/generators/RSAKeyPairGenerator;->isProbablePrime(Ljava/math/BigInteger;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lorg/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lorg/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unable to generate prime number for RSA key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 24

    const/4 v6, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lorg/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/params/RSAKeyGenerationParameters;->getStrength()I

    move-result v16

    add-int/lit8 v4, v16, 0x1

    div-int/lit8 v17, v4, 0x2

    sub-int v18, v16, v17

    div-int/lit8 v4, v16, 0x2

    add-int/lit8 v4, v4, -0x64

    div-int/lit8 v7, v16, 0x3

    if-ge v4, v7, :cond_6

    div-int/lit8 v4, v16, 0x3

    move v13, v4

    :goto_0
    shr-int/lit8 v19, v16, 0x2

    const-wide/16 v8, 0x2

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    div-int/lit8 v7, v16, 0x2

    invoke-virtual {v4, v7}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v20

    sget-object v4, Lorg/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    add-int/lit8 v7, v16, -0x1

    invoke-virtual {v4, v7}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v21

    sget-object v4, Lorg/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v4, v13}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v22

    move v10, v5

    move-object v11, v6

    :cond_0
    :goto_1
    if-nez v10, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lorg/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/params/RSAKeyGenerationParameters;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v6

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v6, v2}, Lorg/bouncycastle/crypto/generators/RSAKeyPairGenerator;->chooseRandomPrime(ILjava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    :cond_1
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v6, v2}, Lorg/bouncycastle/crypto/generators/RSAKeyPairGenerator;->chooseRandomPrime(ILjava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    if-lt v7, v13, :cond_1

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-lez v5, :cond_1

    invoke-virtual {v4, v9}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    move/from16 v0, v16

    if-eq v7, v0, :cond_2

    invoke-virtual {v4, v9}, Ljava/math/BigInteger;->max(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    goto :goto_2

    :cond_2
    invoke-static {v5}, Lorg/bouncycastle/math/ec/WNafUtil;->getNafWeight(Ljava/math/BigInteger;)I

    move-result v7

    move/from16 v0, v19

    if-ge v7, v0, :cond_3

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v6, v2}, Lorg/bouncycastle/crypto/generators/RSAKeyPairGenerator;->chooseRandomPrime(ILjava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    goto :goto_2

    :cond_3
    invoke-virtual {v4, v9}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v7

    if-gez v7, :cond_5

    move-object v8, v9

    move-object v9, v4

    :goto_3
    sget-object v4, Lorg/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v8, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    sget-object v7, Lorg/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v9, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v14

    if-lez v14, :cond_0

    const/4 v14, 0x1

    invoke-virtual {v7, v4}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v7, v12}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v9, v8}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    new-instance v15, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    new-instance v23, Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-direct {v0, v4, v5, v6}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v4, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    invoke-direct/range {v4 .. v12}, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object/from16 v0, v23

    invoke-direct {v15, v0, v4}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    move v10, v14

    move-object v11, v15

    goto/16 :goto_1

    :cond_4
    return-object v11

    :cond_5
    move-object v8, v4

    goto :goto_3

    :cond_6
    move v13, v4

    goto/16 :goto_0
.end method

.method public init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 2

    check-cast p1, Lorg/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    iput-object p1, p0, Lorg/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lorg/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lorg/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/RSAKeyGenerationParameters;->getStrength()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lorg/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/RSAKeyGenerationParameters;->getCertainty()I

    move-result v1

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/generators/RSAKeyPairGenerator;->getNumberOfIterations(II)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/generators/RSAKeyPairGenerator;->iterations:I

    return-void
.end method

.method protected isProbablePrime(Ljava/math/BigInteger;)Z
    .locals 2

    invoke-static {p1}, Lorg/bouncycastle/math/Primes;->hasAnySmallFactors(Ljava/math/BigInteger;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lorg/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/RSAKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/crypto/generators/RSAKeyPairGenerator;->iterations:I

    invoke-static {p1, v0, v1}, Lorg/bouncycastle/math/Primes;->isMRProbablePrime(Ljava/math/BigInteger;Ljava/security/SecureRandom;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
