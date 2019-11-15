.class public Lorg/bouncycastle/crypto/generators/SCrypt;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static BlockMix([I[I[I[II)V
    .locals 7

    const/16 v6, 0x10

    const/4 v2, 0x0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x10

    invoke-static {p0, v0, p1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, p0

    ushr-int/lit8 v4, v0, 0x1

    mul-int/lit8 v0, p4, 0x2

    move v1, v2

    move v3, v2

    :goto_0
    if-lez v0, :cond_0

    invoke-static {p1, p0, v3, p2}, Lorg/bouncycastle/crypto/generators/SCrypt;->Xor([I[II[I)V

    const/16 v5, 0x8

    invoke-static {v5, p2, p1}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->salsaCore(I[I[I)V

    invoke-static {p1, v2, p3, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v5, v4, v3

    sub-int v1, v5, v1

    add-int/lit8 v3, v3, 0x10

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    array-length v0, p3

    invoke-static {p3, v2, p0, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private static Clear([B)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    :cond_0
    return-void
.end method

.method private static Clear([I)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/bouncycastle/util/Arrays;->fill([II)V

    :cond_0
    return-void
.end method

.method private static ClearAll([[I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-object v1, p0, v0

    invoke-static {v1}, Lorg/bouncycastle/crypto/generators/SCrypt;->Clear([I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static MFcrypt([B[BIIII)[B
    .locals 6

    const/4 v0, 0x0

    mul-int/lit16 v2, p3, 0x80

    mul-int v1, p4, v2

    invoke-static {p0, p1, v1}, Lorg/bouncycastle/crypto/generators/SCrypt;->SingleIterationPBKDF2([B[BI)[B

    move-result-object v3

    const/4 v1, 0x0

    :try_start_0
    array-length v4, v3

    ushr-int/lit8 v4, v4, 0x2

    new-array v1, v4, [I

    const/4 v5, 0x0

    invoke-static {v3, v5, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[I)V

    ushr-int/lit8 v2, v2, 0x2

    :goto_0
    if-ge v0, v4, :cond_0

    invoke-static {v1, v0, p2, p3}, Lorg/bouncycastle/crypto/generators/SCrypt;->SMix([IIII)V

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v1, v3, v0}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I[BI)V

    invoke-static {p0, v3, p5}, Lorg/bouncycastle/crypto/generators/SCrypt;->SingleIterationPBKDF2([B[BI)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-static {v3}, Lorg/bouncycastle/crypto/generators/SCrypt;->Clear([B)V

    invoke-static {v1}, Lorg/bouncycastle/crypto/generators/SCrypt;->Clear([I)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v3}, Lorg/bouncycastle/crypto/generators/SCrypt;->Clear([B)V

    invoke-static {v1}, Lorg/bouncycastle/crypto/generators/SCrypt;->Clear([I)V

    throw v0
.end method

.method private static SMix([IIII)V
    .locals 10

    mul-int/lit8 v1, p3, 0x20

    const/16 v0, 0x10

    new-array v2, v0, [I

    const/16 v0, 0x10

    new-array v3, v0, [I

    new-array v4, v1, [I

    new-array v5, v1, [I

    new-array v6, p2, [[I

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1, v5, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    invoke-static {v5}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v5, v2, v3, v4, p3}, Lorg/bouncycastle/crypto/generators/SCrypt;->BlockMix([I[I[I[II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v7, p2, -0x1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_1

    add-int/lit8 v8, v1, -0x10

    aget v8, v5, v8

    and-int/2addr v8, v7

    aget-object v8, v6, v8

    const/4 v9, 0x0

    invoke-static {v5, v8, v9, v5}, Lorg/bouncycastle/crypto/generators/SCrypt;->Xor([I[II[I)V

    invoke-static {v5, v2, v3, v4, p3}, Lorg/bouncycastle/crypto/generators/SCrypt;->BlockMix([I[I[I[II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    invoke-static {v5, v0, p0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v6}, Lorg/bouncycastle/crypto/generators/SCrypt;->ClearAll([[I)V

    const/4 v0, 0x4

    new-array v0, v0, [[I

    const/4 v1, 0x0

    aput-object v5, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v3, v0, v1

    const/4 v1, 0x3

    aput-object v4, v0, v1

    invoke-static {v0}, Lorg/bouncycastle/crypto/generators/SCrypt;->ClearAll([[I)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lorg/bouncycastle/crypto/generators/SCrypt;->ClearAll([[I)V

    const/4 v1, 0x4

    new-array v1, v1, [[I

    const/4 v6, 0x0

    aput-object v5, v1, v6

    const/4 v5, 0x1

    aput-object v2, v1, v5

    const/4 v2, 0x2

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object v4, v1, v2

    invoke-static {v1}, Lorg/bouncycastle/crypto/generators/SCrypt;->ClearAll([[I)V

    throw v0
.end method

.method private static SingleIterationPBKDF2([B[BI)[B
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    mul-int/lit8 v1, p2, 0x8

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    return-object v0
.end method

.method private static Xor([I[II[I)V
    .locals 3

    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    aget v1, p0, v0

    add-int v2, p2, v0

    aget v2, p1, v2

    xor-int/2addr v1, v2

    aput v1, p3, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static generate([B[BIIII)[B
    .locals 4

    const/4 v2, 0x1

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Passphrase P must be provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Salt S must be provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-gt p2, v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cost parameter N must be > 1."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-ne p3, v2, :cond_3

    const/high16 v0, 0x10000

    if-le p2, v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cost parameter N must be > 1 and < 65536."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-ge p3, v2, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Block size r must be >= 1."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const v0, 0x7fffffff

    mul-int/lit16 v1, p3, 0x80

    mul-int/lit8 v1, v1, 0x8

    div-int/2addr v0, v1

    if-lt p4, v2, :cond_5

    if-le p4, v0, :cond_6

    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parallelisation parameter p must be >= 1 and <= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " (based on block size r of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    if-ge p5, v2, :cond_7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Generated key length dkLen must be >= 1."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    invoke-static/range {p0 .. p5}, Lorg/bouncycastle/crypto/generators/SCrypt;->MFcrypt([B[BIIII)[B

    move-result-object v0

    return-object v0
.end method
