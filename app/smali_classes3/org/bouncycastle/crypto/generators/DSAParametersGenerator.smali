.class public Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;
.super Ljava/lang/Object;


# static fields
.field private static final ONE:Ljava/math/BigInteger;

.field private static final TWO:Ljava/math/BigInteger;

.field private static final ZERO:Ljava/math/BigInteger;


# instance fields
.field private L:I

.field private N:I

.field private certainty:I

.field private digest:Lorg/bouncycastle/crypto/Digest;

.field private iterations:I

.field private random:Ljava/security/SecureRandom;

.field private usageIndex:I

.field private use186_3:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->ZERO:Ljava/math/BigInteger;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    return-void
.end method

.method private static calculateGenerator_FIPS186_2(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 5

    sget-object v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    :cond_0
    sget-object v2, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-static {v2, v1, p2}, Lorg/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v0, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    return-object v2
.end method

.method private static calculateGenerator_FIPS186_3_Unverifiable(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 1

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->calculateGenerator_FIPS186_2(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method private static calculateGenerator_FIPS186_3_Verifiable(Lorg/bouncycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;[BI)Ljava/math/BigInteger;
    .locals 8

    const/4 v2, 0x1

    const/4 v7, 0x0

    sget-object v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    const-string v0, "6767656E"

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, p3

    array-length v4, v0

    add-int/2addr v1, v4

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x2

    new-array v4, v1, [B

    array-length v1, p3

    invoke-static {p3, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p3

    array-length v5, v0

    invoke-static {v0, v7, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v4

    add-int/lit8 v0, v0, -0x3

    int-to-byte v1, p4

    aput-byte v1, v4, v0

    invoke-interface {p0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v5, v0, [B

    move v1, v2

    :goto_0
    const/high16 v0, 0x10000

    if-ge v1, v0, :cond_1

    invoke-static {v4}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    invoke-static {p0, v4, v5, v7}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lorg/bouncycastle/crypto/Digest;[B[BI)V

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v2, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v0, v3, p1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v6, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    if-ltz v6, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private generateParameters_FIPS186_2()Lorg/bouncycastle/crypto/params/DSAParameters;
    .locals 15

    const/16 v0, 0x14

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-array v4, v0, [B

    new-array v5, v0, [B

    new-array v6, v0, [B

    new-array v7, v0, [B

    iget v0, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    add-int/lit8 v0, v0, -0x1

    div-int/lit16 v8, v0, 0xa0

    iget v0, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    div-int/lit8 v0, v0, 0x8

    new-array v9, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    instance-of v0, v0, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can only use SHA-1 for generating FIPS 186-2 parameters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    aget-byte v0, v7, v1

    or-int/lit8 v0, v0, -0x80

    int-to-byte v0, v0

    aput-byte v0, v7, v1

    const/16 v0, 0x13

    aget-byte v3, v7, v0

    or-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    aput-byte v3, v7, v0

    new-instance v10, Ljava/math/BigInteger;

    invoke-direct {v10, v2, v7}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {p0, v10}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->isProbablePrime(Ljava/math/BigInteger;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-static {v0, v4, v5, v1}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lorg/bouncycastle/crypto/Digest;[B[BI)V

    array-length v0, v4

    invoke-static {v4, v1, v6, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v6}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-static {v0, v6, v6, v1}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lorg/bouncycastle/crypto/Digest;[B[BI)V

    move v0, v1

    :goto_0
    array-length v3, v7

    if-eq v0, v3, :cond_0

    aget-byte v3, v5, v0

    aget-byte v10, v6, v0

    xor-int/2addr v3, v10

    int-to-byte v3, v3

    aput-byte v3, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v4}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v11

    invoke-static {v11}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    move v3, v1

    :goto_1
    const/16 v0, 0x1000

    if-ge v3, v0, :cond_1

    move v0, v2

    :goto_2
    if-gt v0, v8, :cond_3

    invoke-static {v11}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    iget-object v12, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v13, v9

    array-length v14, v5

    mul-int/2addr v14, v0

    sub-int/2addr v13, v14

    invoke-static {v12, v11, v9, v13}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lorg/bouncycastle/crypto/Digest;[B[BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    array-length v0, v9

    array-length v12, v5

    mul-int/2addr v12, v8

    sub-int/2addr v0, v12

    invoke-static {v11}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    iget-object v12, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-static {v12, v11, v5, v1}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lorg/bouncycastle/crypto/Digest;[B[BI)V

    array-length v12, v5

    sub-int/2addr v12, v0

    invoke-static {v5, v12, v9, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte v0, v9, v1

    or-int/lit8 v0, v0, -0x80

    int-to-byte v0, v0

    aput-byte v0, v9, v1

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v2, v9}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v10, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    sget-object v13, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v12

    iget v13, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    if-eq v12, v13, :cond_5

    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_5
    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->isProbablePrime(Ljava/math/BigInteger;)Z

    move-result v12

    if-eqz v12, :cond_4

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-static {v0, v10, v1}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->calculateGenerator_FIPS186_2(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/crypto/params/DSAParameters;

    new-instance v5, Lorg/bouncycastle/crypto/params/DSAValidationParameters;

    invoke-direct {v5, v4, v3}, Lorg/bouncycastle/crypto/params/DSAValidationParameters;-><init>([BI)V

    invoke-direct {v2, v0, v10, v1, v5}, Lorg/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/DSAValidationParameters;)V

    return-object v2
.end method

.method private generateParameters_FIPS186_3()Lorg/bouncycastle/crypto/params/DSAParameters;
    .locals 14

    const/4 v1, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    iget v2, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    div-int/lit8 v2, v2, 0x8

    new-array v5, v2, [B

    iget v2, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    add-int/lit8 v2, v2, -0x1

    div-int v6, v2, v0

    iget v2, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    add-int/lit8 v2, v2, -0x1

    rem-int v0, v2, v0

    iget v0, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    div-int/lit8 v0, v0, 0x8

    new-array v7, v0, [B

    invoke-interface {v4}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v8, v0, [B

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {v4, v5, v8, v3}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lorg/bouncycastle/crypto/Digest;[B[BI)V

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v1, v8}, Ljava/math/BigInteger;-><init>(I[B)V

    sget-object v2, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    iget v9, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v2, v9}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v0

    iget v2, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v9

    invoke-direct {p0, v9}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->isProbablePrime(Ljava/math/BigInteger;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v5}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v10

    iget v0, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    mul-int/lit8 v11, v0, 0x4

    move v2, v3

    :goto_0
    if-ge v2, v11, :cond_0

    move v0, v1

    :goto_1
    if-gt v0, v6, :cond_1

    invoke-static {v10}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    array-length v12, v7

    array-length v13, v8

    mul-int/2addr v13, v0

    sub-int/2addr v12, v13

    invoke-static {v4, v10, v7, v12}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lorg/bouncycastle/crypto/Digest;[B[BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    array-length v0, v7

    array-length v12, v8

    mul-int/2addr v12, v6

    sub-int/2addr v0, v12

    invoke-static {v10}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    invoke-static {v4, v10, v8, v3}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lorg/bouncycastle/crypto/Digest;[B[BI)V

    array-length v12, v8

    sub-int/2addr v12, v0

    invoke-static {v8, v12, v7, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte v0, v7, v3

    or-int/lit8 v0, v0, -0x80

    int-to-byte v0, v0

    aput-byte v0, v7, v3

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v1, v7}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v9, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    sget-object v13, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    iget v13, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    if-eq v0, v13, :cond_3

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    invoke-direct {p0, v12}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->isProbablePrime(Ljava/math/BigInteger;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    if-ltz v0, :cond_4

    iget v0, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    invoke-static {v4, v12, v9, v5, v0}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->calculateGenerator_FIPS186_3_Verifiable(Lorg/bouncycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;[BI)Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v0, Lorg/bouncycastle/crypto/params/DSAParameters;

    new-instance v3, Lorg/bouncycastle/crypto/params/DSAValidationParameters;

    iget v4, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    invoke-direct {v3, v5, v2, v4}, Lorg/bouncycastle/crypto/params/DSAValidationParameters;-><init>([BII)V

    invoke-direct {v0, v12, v9, v1, v3}, Lorg/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/DSAValidationParameters;)V

    :goto_2
    return-object v0

    :cond_4
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-static {v12, v9, v0}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->calculateGenerator_FIPS186_3_Unverifiable(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    new-instance v0, Lorg/bouncycastle/crypto/params/DSAParameters;

    new-instance v3, Lorg/bouncycastle/crypto/params/DSAValidationParameters;

    invoke-direct {v3, v5, v2}, Lorg/bouncycastle/crypto/params/DSAValidationParameters;-><init>([BI)V

    invoke-direct {v0, v12, v9, v1, v3}, Lorg/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/DSAValidationParameters;)V

    goto :goto_2
.end method

.method private static getDefaultN(I)I
    .locals 1

    const/16 v0, 0x400

    if-le p0, v0, :cond_0

    const/16 v0, 0x100

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xa0

    goto :goto_0
.end method

.method private static getMinimumIterations(I)I
    .locals 1

    const/16 v0, 0x400

    if-gt p0, v0, :cond_0

    const/16 v0, 0x28

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p0, -0x1

    div-int/lit16 v0, v0, 0x400

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x30

    goto :goto_0
.end method

.method private static hash(Lorg/bouncycastle/crypto/Digest;[B[BI)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-interface {p0, p1, v0, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {p0, p2, p3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-void
.end method

.method private static inc([B)V
    .locals 2

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    aget-byte v1, p0, v0

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private isProbablePrime(Ljava/math/BigInteger;)Z
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public generateParameters()Lorg/bouncycastle/crypto/params/DSAParameters;
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->use186_3:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->generateParameters_FIPS186_3()Lorg/bouncycastle/crypto/params/DSAParameters;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->generateParameters_FIPS186_2()Lorg/bouncycastle/crypto/params/DSAParameters;

    move-result-object v0

    goto :goto_0
.end method

.method public init(IILjava/security/SecureRandom;)V
    .locals 2

    iput p1, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    invoke-static {p1}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->getDefaultN(I)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    iput p2, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    iget v0, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    invoke-static {v0}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->getMinimumIterations(I)I

    move-result v0

    add-int/lit8 v1, p2, 0x1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->iterations:I

    iput-object p3, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->use186_3:Z

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    return-void
.end method

.method public init(Lorg/bouncycastle/crypto/params/DSAParameterGenerationParameters;)V
    .locals 6

    const/16 v5, 0xc00

    const/16 v4, 0x400

    const/16 v3, 0x100

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/DSAParameterGenerationParameters;->getL()I

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/DSAParameterGenerationParameters;->getN()I

    move-result v1

    if-lt v0, v4, :cond_0

    if-gt v0, v5, :cond_0

    rem-int/lit16 v2, v0, 0x400

    if-eqz v2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "L values must be between 1024 and 3072 and a multiple of 1024"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-ne v0, v4, :cond_2

    const/16 v2, 0xa0

    if-eq v1, v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "N must be 160 for L = 1024"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v2, 0x800

    if-ne v0, v2, :cond_3

    const/16 v2, 0xe0

    if-eq v1, v2, :cond_3

    if-eq v1, v3, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "N must be 224 or 256 for L = 2048"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-ne v0, v5, :cond_4

    if-eq v1, v3, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "N must be 256 for L = 3072"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    if-ge v2, v1, :cond_5

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Digest output size too small for value of N"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iput v0, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    iput v1, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/DSAParameterGenerationParameters;->getCertainty()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    invoke-static {v0}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->getMinimumIterations(I)I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->iterations:I

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/DSAParameterGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->use186_3:Z

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/DSAParameterGenerationParameters;->getUsageIndex()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    return-void
.end method
