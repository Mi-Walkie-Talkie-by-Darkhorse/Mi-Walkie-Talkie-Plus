.class public abstract Lorg/bouncycastle/math/Primes;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/math/Primes$1;,
        Lorg/bouncycastle/math/Primes$MROutput;,
        Lorg/bouncycastle/math/Primes$STOutput;
    }
.end annotation


# static fields
.field private static final ONE:Ljava/math/BigInteger;

.field public static final SMALL_FACTOR_LIMIT:I = 0xd3

.field private static final THREE:Ljava/math/BigInteger;

.field private static final TWO:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    const-wide/16 v0, 0x3

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/math/Primes;->THREE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkCandidate(Ljava/math/BigInteger;Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' must be non-null and >= 2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public static enhancedMRProbablePrimeTest(Ljava/math/BigInteger;Ljava/security/SecureRandom;I)Lorg/bouncycastle/math/Primes$MROutput;
    .locals 11

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v0, "candidate"

    invoke-static {p0, v0}, Lorg/bouncycastle/math/Primes;->checkCandidate(Ljava/math/BigInteger;Ljava/lang/String;)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'random\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-ge p2, v3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'iterations\' must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-static {}, Lorg/bouncycastle/math/Primes$MROutput;->access$000()Lorg/bouncycastle/math/Primes$MROutput;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {p0, v4}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lorg/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-static {v0}, Lorg/bouncycastle/math/Primes$MROutput;->access$100(Ljava/math/BigInteger;)Lorg/bouncycastle/math/Primes$MROutput;

    move-result-object v0

    goto :goto_0

    :cond_3
    sget-object v0, Lorg/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    sget-object v0, Lorg/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v6}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v9

    move v5, v4

    :goto_1
    if-ge v5, p2, :cond_b

    sget-object v0, Lorg/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-static {v0, v7, p1}, Lorg/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-lez v2, :cond_4

    invoke-static {v1}, Lorg/bouncycastle/math/Primes$MROutput;->access$100(Ljava/math/BigInteger;)Lorg/bouncycastle/math/Primes$MROutput;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v9, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    :cond_6
    move v2, v3

    move-object v1, v0

    :goto_2
    if-ge v2, v8, :cond_d

    sget-object v10, Lorg/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v1, v10, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    move v2, v3

    :goto_3
    if-nez v2, :cond_5

    sget-object v2, Lorg/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v0, Lorg/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v1, v0, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v2, Lorg/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_7
    :goto_4
    sget-object v1, Lorg/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-lez v1, :cond_a

    invoke-static {v0}, Lorg/bouncycastle/math/Primes$MROutput;->access$100(Ljava/math/BigInteger;)Lorg/bouncycastle/math/Primes$MROutput;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    sget-object v10, Lorg/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v10}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    move v2, v4

    goto :goto_3

    :cond_9
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v0, v1

    goto :goto_2

    :cond_a
    invoke-static {}, Lorg/bouncycastle/math/Primes$MROutput;->access$200()Lorg/bouncycastle/math/Primes$MROutput;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    invoke-static {}, Lorg/bouncycastle/math/Primes$MROutput;->access$000()Lorg/bouncycastle/math/Primes$MROutput;

    move-result-object v0

    goto/16 :goto_0

    :cond_c
    move-object v0, v1

    goto :goto_4

    :cond_d
    move v2, v4

    goto :goto_3
.end method

.method private static extract32([B)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x4

    array-length v2, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v0, v2, :cond_0

    array-length v3, p0

    add-int/lit8 v4, v0, 0x1

    sub-int/2addr v3, v4

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v4, v0, 0x8

    shl-int/2addr v3, v4

    or-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static generateSTRandomPrime(Lorg/bouncycastle/crypto/Digest;I[B)Lorg/bouncycastle/math/Primes$STOutput;
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'hash\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x2

    if-ge p1, v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'length\' must be >= 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p2, :cond_2

    array-length v0, p2

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'inputSeed\' cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/Primes;->implSTRandomPrime(Lorg/bouncycastle/crypto/Digest;I[B)Lorg/bouncycastle/math/Primes$STOutput;

    move-result-object v0

    return-object v0
.end method

.method public static hasAnySmallFactors(Ljava/math/BigInteger;)Z
    .locals 1

    const-string v0, "candidate"

    invoke-static {p0, v0}, Lorg/bouncycastle/math/Primes;->checkCandidate(Ljava/math/BigInteger;Ljava/lang/String;)V

    invoke-static {p0}, Lorg/bouncycastle/math/Primes;->implHasAnySmallFactors(Ljava/math/BigInteger;)Z

    move-result v0

    return v0
.end method

.method private static hash(Lorg/bouncycastle/crypto/Digest;[B[BI)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-interface {p0, p1, v0, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {p0, p2, p3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-void
.end method

.method private static hashGen(Lorg/bouncycastle/crypto/Digest;[BI)Ljava/math/BigInteger;
    .locals 5

    const/4 v4, 0x1

    invoke-interface {p0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    mul-int v1, p2, v2

    new-array v3, v1, [B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    sub-int/2addr v1, v2

    invoke-static {p0, p1, v3, v1}, Lorg/bouncycastle/math/Primes;->hash(Lorg/bouncycastle/crypto/Digest;[B[BI)V

    invoke-static {p1, v4}, Lorg/bouncycastle/math/Primes;->inc([BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v4, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method private static implHasAnySmallFactors(Ljava/math/BigInteger;)Z
    .locals 4

    const/4 v0, 0x1

    const v1, 0xd4c2086

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    rem-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_0

    rem-int/lit8 v2, v1, 0x3

    if-eqz v2, :cond_0

    rem-int/lit8 v2, v1, 0x5

    if-eqz v2, :cond_0

    rem-int/lit8 v2, v1, 0x7

    if-eqz v2, :cond_0

    rem-int/lit8 v2, v1, 0xb

    if-eqz v2, :cond_0

    rem-int/lit8 v2, v1, 0xd

    if-eqz v2, :cond_0

    rem-int/lit8 v2, v1, 0x11

    if-eqz v2, :cond_0

    rem-int/lit8 v2, v1, 0x13

    if-eqz v2, :cond_0

    rem-int/lit8 v1, v1, 0x17

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const v1, 0x37ed0ed

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    rem-int/lit8 v2, v1, 0x1d

    if-eqz v2, :cond_0

    rem-int/lit8 v2, v1, 0x1f

    if-eqz v2, :cond_0

    rem-int/lit8 v2, v1, 0x25

    if-eqz v2, :cond_0

    rem-int/lit8 v2, v1, 0x29

    if-eqz v2, :cond_0

    rem-int/lit8 v1, v1, 0x2b

    if-eqz v1, :cond_0

    const v1, 0x23cd611f

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    rem-int/lit8 v2, v1, 0x2f

    if-eqz v2, :cond_0

    rem-int/lit8 v2, v1, 0x35

    if-eqz v2, :cond_0

    rem-int/lit8 v2, v1, 0x3b

    if-eqz v2, :cond_0

    rem-int/lit8 v2, v1, 0x3d

    if-eqz v2, :cond_0

    rem-int/lit8 v1, v1, 0x43

    if-eqz v1, :cond_0

    const v1, 0x20691a3

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    rem-int/lit8 v2, v1, 0x47

    if-eqz v2, :cond_0

    rem-int/lit8 v2, v1, 0x49

    if-eqz v2, :cond_0

    rem-int/lit8 v2, v1, 0x4f

    if-eqz v2, :cond_0

    rem-int/lit8 v1, v1, 0x53

    if-eqz v1, :cond_0

    const v1, 0x55a60cb

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    rem-int/lit8 v2, v1, 0x59

    if-eqz v2, :cond_0

    rem-int/lit8 v2, v1, 0x61

    if-eqz v2, :cond_0

    rem-int/lit8 v2, v1, 0x65

    if-eqz v2, :cond_0

    rem-int/lit8 v1, v1, 0x67

    if-eqz v1, :cond_0

    const v1, 0x9f9f361

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    rem-int/lit8 v2, v1, 0x6b

    if-eqz v2, :cond_0

    rem-int/lit8 v2, v1, 0x6d

    if-eqz v2, :cond_0

    rem-int/lit8 v2, v1, 0x71

    if-eqz v2, :cond_0

    rem-int/lit8 v1, v1, 0x7f

    if-eqz v1, :cond_0

    const v1, 0x1627b25d

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    rem-int/lit16 v2, v1, 0x83

    if-eqz v2, :cond_0

    rem-int/lit16 v2, v1, 0x89

    if-eqz v2, :cond_0

    rem-int/lit16 v2, v1, 0x8b

    if-eqz v2, :cond_0

    rem-int/lit16 v1, v1, 0x95

    if-eqz v1, :cond_0

    const v1, 0x2676ed77

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    rem-int/lit16 v2, v1, 0x97

    if-eqz v2, :cond_0

    rem-int/lit16 v2, v1, 0x9d

    if-eqz v2, :cond_0

    rem-int/lit16 v2, v1, 0xa3

    if-eqz v2, :cond_0

    rem-int/lit16 v1, v1, 0xa7

    if-eqz v1, :cond_0

    const v1, 0x3fcf739d

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    rem-int/lit16 v2, v1, 0xad

    if-eqz v2, :cond_0

    rem-int/lit16 v2, v1, 0xb3

    if-eqz v2, :cond_0

    rem-int/lit16 v2, v1, 0xb5

    if-eqz v2, :cond_0

    rem-int/lit16 v1, v1, 0xbf

    if-eqz v1, :cond_0

    const v1, 0x5f281a99

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    rem-int/lit16 v2, v1, 0xc1

    if-eqz v2, :cond_0

    rem-int/lit16 v2, v1, 0xc5

    if-eqz v2, :cond_0

    rem-int/lit16 v2, v1, 0xc7

    if-eqz v2, :cond_0

    rem-int/lit16 v1, v1, 0xd3

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private static implMRProbablePrimeToBase(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;ILjava/math/BigInteger;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p4, p2, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lorg/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move-object v3, v2

    move v2, v0

    :goto_1
    if-ge v2, p3, :cond_3

    sget-object v4, Lorg/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v3, v4, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lorg/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private static implSTRandomPrime(Lorg/bouncycastle/crypto/Digest;I[B)Lorg/bouncycastle/math/Primes$STOutput;
    .locals 12

    invoke-interface {p0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    const/16 v0, 0x21

    if-ge p1, v0, :cond_2

    const/4 v0, 0x0

    new-array v2, v1, [B

    new-array v1, v1, [B

    :cond_0
    const/4 v3, 0x0

    invoke-static {p0, p2, v2, v3}, Lorg/bouncycastle/math/Primes;->hash(Lorg/bouncycastle/crypto/Digest;[B[BI)V

    const/4 v3, 0x1

    invoke-static {p2, v3}, Lorg/bouncycastle/math/Primes;->inc([BI)V

    const/4 v3, 0x0

    invoke-static {p0, p2, v1, v3}, Lorg/bouncycastle/math/Primes;->hash(Lorg/bouncycastle/crypto/Digest;[B[BI)V

    const/4 v3, 0x1

    invoke-static {p2, v3}, Lorg/bouncycastle/math/Primes;->inc([BI)V

    invoke-static {v2}, Lorg/bouncycastle/math/Primes;->extract32([B)I

    move-result v3

    invoke-static {v1}, Lorg/bouncycastle/math/Primes;->extract32([B)I

    move-result v4

    xor-int/2addr v3, v4

    const/4 v4, -0x1

    rsub-int/lit8 v5, p1, 0x20

    ushr-int/2addr v4, v5

    and-int/2addr v3, v4

    const/4 v4, 0x1

    add-int/lit8 v5, p1, -0x1

    shl-int/2addr v4, v5

    or-int/lit8 v4, v4, 0x1

    or-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    int-to-long v4, v3

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    invoke-static {v4, v5}, Lorg/bouncycastle/math/Primes;->isPrime32(J)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v1, Lorg/bouncycastle/math/Primes$STOutput;

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, p2, v0, v3}, Lorg/bouncycastle/math/Primes$STOutput;-><init>(Ljava/math/BigInteger;[BILorg/bouncycastle/math/Primes$1;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    mul-int/lit8 v3, p1, 0x4

    if-le v0, v3, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Too many iterations in Shawe-Taylor Random_Prime Routine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    add-int/lit8 v0, p1, 0x3

    div-int/lit8 v0, v0, 0x2

    invoke-static {p0, v0, p2}, Lorg/bouncycastle/math/Primes;->implSTRandomPrime(Lorg/bouncycastle/crypto/Digest;I[B)Lorg/bouncycastle/math/Primes$STOutput;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/Primes$STOutput;->getPrime()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, Lorg/bouncycastle/math/Primes$STOutput;->getPrimeSeed()[B

    move-result-object v6

    invoke-virtual {v0}, Lorg/bouncycastle/math/Primes$STOutput;->getPrimeGenCounter()I

    move-result v4

    mul-int/lit8 v0, v1, 0x8

    add-int/lit8 v1, p1, -0x1

    div-int v7, v1, v0

    add-int/lit8 v0, v7, 0x1

    invoke-static {p0, v6, v0}, Lorg/bouncycastle/math/Primes;->hashGen(Lorg/bouncycastle/crypto/Digest;[BI)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v8

    sget-object v1, Lorg/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    const/4 v1, 0x0

    invoke-virtual {v2, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v3, Lorg/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    move v3, v4

    :goto_1
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v9

    if-le v9, p1, :cond_3

    sget-object v0, Lorg/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v2, Lorg/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v2, Lorg/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v9, Lorg/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v9}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    invoke-static {v0}, Lorg/bouncycastle/math/Primes;->implHasAnySmallFactors(Ljava/math/BigInteger;)Z

    move-result v9

    if-nez v9, :cond_4

    add-int/lit8 v9, v7, 0x1

    invoke-static {p0, v6, v9}, Lorg/bouncycastle/math/Primes;->hashGen(Lorg/bouncycastle/crypto/Digest;[BI)Ljava/math/BigInteger;

    move-result-object v9

    sget-object v10, Lorg/bouncycastle/math/Primes;->THREE:Ljava/math/BigInteger;

    invoke-virtual {v0, v10}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    sget-object v10, Lorg/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    int-to-long v10, v1

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    const/4 v1, 0x0

    invoke-virtual {v9, v2, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    sget-object v10, Lorg/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    sget-object v11, Lorg/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v10, v11}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v9, v5, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    sget-object v10, Lorg/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    new-instance v1, Lorg/bouncycastle/math/Primes$STOutput;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v6, v3, v2}, Lorg/bouncycastle/math/Primes$STOutput;-><init>(Ljava/math/BigInteger;[BILorg/bouncycastle/math/Primes$1;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v9, v7, 0x1

    invoke-static {v6, v9}, Lorg/bouncycastle/math/Primes;->inc([BI)V

    :cond_5
    mul-int/lit8 v9, p1, 0x4

    add-int/2addr v9, v4

    if-lt v3, v9, :cond_6

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Too many iterations in Shawe-Taylor Random_Prime Routine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto/16 :goto_1
.end method

.method private static inc([BI)V
    .locals 3

    array-length v0, p0

    :goto_0
    if-lez p1, :cond_0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v1, p1

    int-to-byte v2, v1

    aput-byte v2, p0, v0

    ushr-int/lit8 p1, v1, 0x8

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static isMRProbablePrime(Ljava/math/BigInteger;Ljava/security/SecureRandom;I)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "candidate"

    invoke-static {p0, v2}, Lorg/bouncycastle/math/Primes;->checkCandidate(Ljava/math/BigInteger;Ljava/lang/String;)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'random\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-ge p2, v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'iterations\' must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    :cond_2
    :goto_0
    return v0

    :cond_3
    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    sget-object v2, Lorg/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sget-object v2, Lorg/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v6

    move v2, v1

    :goto_1
    if-ge v2, p2, :cond_2

    sget-object v7, Lorg/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-static {v7, v4, p1}, Lorg/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-static {p0, v3, v6, v5, v7}, Lorg/bouncycastle/math/Primes;->implMRProbablePrimeToBase(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;ILjava/math/BigInteger;)Z

    move-result v7

    if-nez v7, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static isMRProbablePrimeToBase(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 3

    const-string v0, "candidate"

    invoke-static {p0, v0}, Lorg/bouncycastle/math/Primes;->checkCandidate(Ljava/math/BigInteger;Ljava/lang/String;)V

    const-string v0, "base"

    invoke-static {p1, v0}, Lorg/bouncycastle/math/Primes;->checkCandidate(Ljava/math/BigInteger;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'base\' must be < (\'candidate\' - 1)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    sget-object v0, Lorg/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {p0, v0, v2, v1, p1}, Lorg/bouncycastle/math/Primes;->implMRProbablePrimeToBase(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;ILjava/math/BigInteger;)Z

    move-result v0

    goto :goto_0
.end method

.method private static isPrime32(J)Z
    .locals 12

    const-wide/16 v8, 0x3

    const-wide/16 v4, 0x5

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-wide/16 v6, 0x0

    const/16 v2, 0x20

    ushr-long v2, p0, v2

    cmp-long v2, v2, v6

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Size limit exceeded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    cmp-long v2, p0, v4

    if-gtz v2, :cond_3

    const-wide/16 v2, 0x2

    cmp-long v2, p0, v2

    if-eqz v2, :cond_1

    cmp-long v2, p0, v8

    if-eqz v2, :cond_1

    cmp-long v2, p0, v4

    if-nez v2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    :goto_0
    return v0

    :cond_3
    const-wide/16 v2, 0x1

    and-long/2addr v2, p0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_2

    rem-long v2, p0, v8

    cmp-long v2, v2, v6

    if-eqz v2, :cond_2

    rem-long v2, p0, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_2

    const/16 v2, 0x8

    new-array v8, v2, [J

    fill-array-data v8, :array_0

    move v2, v1

    move-wide v4, v6

    :goto_1
    array-length v3, v8

    if-ge v2, v3, :cond_6

    aget-wide v10, v8, v2

    add-long/2addr v10, v4

    rem-long v10, p0, v10

    cmp-long v3, v10, v6

    if-nez v3, :cond_5

    const-wide/16 v2, 0x1e

    cmp-long v2, p0, v2

    if-gez v2, :cond_4

    :goto_2
    move v0, v1

    goto :goto_0

    :cond_4
    move v1, v0

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    const-wide/16 v2, 0x1e

    add-long/2addr v2, v4

    mul-long v4, v2, v2

    cmp-long v4, v4, p0

    if-ltz v4, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    move-wide v4, v2

    move v2, v0

    goto :goto_1

    nop

    :array_0
    .array-data 8
        0x1
        0x7
        0xb
        0xd
        0x11
        0x13
        0x17
        0x1d
    .end array-data
.end method
