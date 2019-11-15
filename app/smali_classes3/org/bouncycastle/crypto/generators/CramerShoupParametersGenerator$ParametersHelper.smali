.class Lorg/bouncycastle/crypto/generators/CramerShoupParametersGenerator$ParametersHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/generators/CramerShoupParametersGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParametersHelper"
.end annotation


# static fields
.field private static final TWO:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/generators/CramerShoupParametersGenerator$ParametersHelper;->TWO:Ljava/math/BigInteger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static generateSafePrimes(IILjava/security/SecureRandom;)[Ljava/math/BigInteger;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x2

    add-int/lit8 v0, p0, -0x1

    :cond_0
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0, v4, p2}, Ljava/math/BigInteger;-><init>(IILjava/util/Random;)V

    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {}, Lorg/bouncycastle/crypto/generators/CramerShoupParametersGenerator;->access$000()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v3

    if-eqz v3, :cond_0

    if-le p1, v4, :cond_1

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    new-array v0, v4, [Ljava/math/BigInteger;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    aput-object v1, v0, v5

    return-object v0
.end method

.method static selectGenerator(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 3

    sget-object v0, Lorg/bouncycastle/crypto/generators/CramerShoupParametersGenerator$ParametersHelper;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    :cond_0
    sget-object v1, Lorg/bouncycastle/crypto/generators/CramerShoupParametersGenerator$ParametersHelper;->TWO:Ljava/math/BigInteger;

    invoke-static {v1, v0, p1}, Lorg/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/crypto/generators/CramerShoupParametersGenerator$ParametersHelper;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v1, v2, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {}, Lorg/bouncycastle/crypto/generators/CramerShoupParametersGenerator;->access$000()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1
.end method
