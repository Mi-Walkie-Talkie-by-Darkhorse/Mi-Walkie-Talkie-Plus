.class public abstract Lorg/bouncycastle/math/ec/WNafUtil;
.super Ljava/lang/Object;


# static fields
.field private static final DEFAULT_WINDOW_SIZE_CUTOFFS:[I

.field private static final EMPTY_BYTES:[B

.field private static final EMPTY_INTS:[I

.field private static final EMPTY_POINTS:[Lorg/bouncycastle/math/ec/ECPoint;

.field public static final PRECOMP_NAME:Ljava/lang/String; = "bc_wnaf"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/math/ec/WNafUtil;->DEFAULT_WINDOW_SIZE_CUTOFFS:[I

    new-array v0, v1, [B

    sput-object v0, Lorg/bouncycastle/math/ec/WNafUtil;->EMPTY_BYTES:[B

    new-array v0, v1, [I

    sput-object v0, Lorg/bouncycastle/math/ec/WNafUtil;->EMPTY_INTS:[I

    new-array v0, v1, [Lorg/bouncycastle/math/ec/ECPoint;

    sput-object v0, Lorg/bouncycastle/math/ec/WNafUtil;->EMPTY_POINTS:[Lorg/bouncycastle/math/ec/ECPoint;

    return-void

    :array_0
    .array-data 4
        0xd
        0x29
        0x79
        0x151
        0x381
        0x901
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateCompactNaf(Ljava/math/BigInteger;)[I
    .locals 10

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'k\' must have bitlength < 2^16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/bouncycastle/math/ec/WNafUtil;->EMPTY_INTS:[I

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    shr-int/lit8 v4, v3, 0x1

    new-array v5, v4, [I

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    add-int/lit8 v8, v3, -0x1

    move v6, v2

    move v3, v2

    move v2, v1

    :goto_1
    if-ge v2, v8, :cond_4

    invoke-virtual {v7, v2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-nez v0, :cond_2

    add-int/lit8 v0, v6, 0x1

    move v9, v2

    move v2, v0

    move v0, v9

    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v6, v2

    move v2, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    :goto_3
    add-int/lit8 v4, v3, 0x1

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v6

    aput v0, v5, v3

    add-int/lit8 v0, v2, 0x1

    move v2, v1

    move v3, v4

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v3, 0x1

    const/high16 v1, 0x10000

    or-int/2addr v1, v6

    aput v1, v5, v3

    array-length v1, v5

    if-le v1, v0, :cond_5

    invoke-static {v5, v0}, Lorg/bouncycastle/math/ec/WNafUtil;->trim([II)[I

    move-result-object v0

    goto :goto_0

    :cond_5
    move-object v0, v5

    goto :goto_0
.end method

.method public static generateCompactWindowNaf(ILjava/math/BigInteger;)[I
    .locals 11

    const/4 v0, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/math/ec/WNafUtil;->generateCompactNaf(Ljava/math/BigInteger;)[I

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-lt p0, v0, :cond_1

    const/16 v0, 0x10

    if-le p0, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'width\' must be in the range [2, 16]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'k\' must have bitlength < 2^16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lorg/bouncycastle/math/ec/WNafUtil;->EMPTY_INTS:[I

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    div-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v5, v0, [I

    shl-int v8, v7, p0

    add-int/lit8 v9, v8, -0x1

    ushr-int/lit8 v10, v8, 0x1

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    if-gt v0, v4, :cond_9

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v4

    if-ne v4, v3, :cond_5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    and-int/2addr v4, v9

    if-eqz v3, :cond_6

    add-int/lit8 v4, v4, 0x1

    :cond_6
    and-int v3, v4, v10

    if-eqz v3, :cond_7

    move v3, v7

    :goto_2
    if-eqz v3, :cond_b

    sub-int/2addr v4, v8

    move v6, v4

    :goto_3
    if-lez v2, :cond_8

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_4
    add-int/lit8 v0, v2, 0x1

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v4, v6

    aput v4, v5, v2

    move v2, v0

    move v0, p0

    goto :goto_1

    :cond_7
    move v3, v1

    goto :goto_2

    :cond_8
    move v4, v0

    goto :goto_4

    :cond_9
    array-length v0, v5

    if-le v0, v2, :cond_a

    invoke-static {v5, v2}, Lorg/bouncycastle/math/ec/WNafUtil;->trim([II)[I

    move-result-object v0

    goto :goto_0

    :cond_a
    move-object v0, v5

    goto :goto_0

    :cond_b
    move v6, v4

    goto :goto_3
.end method

.method public static generateJSF(Ljava/math/BigInteger;Ljava/math/BigInteger;)[B
    .locals 12

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v3, v0, [B

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    move v8, v0

    move v9, v1

    move-object v2, p0

    move v0, v4

    move-object v1, p1

    move v4, v5

    :goto_0
    or-int v5, v4, v0

    if-nez v5, :cond_0

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    if-gt v5, v8, :cond_0

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    if-le v5, v8, :cond_2

    :cond_0
    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    ushr-int/2addr v5, v8

    add-int/2addr v5, v4

    and-int/lit8 v6, v5, 0x7

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    ushr-int/2addr v5, v8

    add-int/2addr v5, v0

    and-int/lit8 v10, v5, 0x7

    and-int/lit8 v5, v6, 0x1

    if-eqz v5, :cond_7

    and-int/lit8 v7, v6, 0x2

    sub-int/2addr v5, v7

    add-int v7, v6, v5

    const/4 v11, 0x4

    if-ne v7, v11, :cond_7

    and-int/lit8 v7, v10, 0x3

    const/4 v11, 0x2

    if-ne v7, v11, :cond_7

    neg-int v5, v5

    move v7, v5

    :goto_1
    and-int/lit8 v5, v10, 0x1

    if-eqz v5, :cond_6

    and-int/lit8 v11, v10, 0x2

    sub-int/2addr v5, v11

    add-int/2addr v10, v5

    const/4 v11, 0x4

    if-ne v10, v11, :cond_6

    and-int/lit8 v6, v6, 0x3

    const/4 v10, 0x2

    if-ne v6, v10, :cond_6

    neg-int v5, v5

    move v6, v5

    :goto_2
    shl-int/lit8 v5, v4, 0x1

    add-int/lit8 v10, v7, 0x1

    if-ne v5, v10, :cond_5

    xor-int/lit8 v4, v4, 0x1

    move v5, v4

    :goto_3
    shl-int/lit8 v4, v0, 0x1

    add-int/lit8 v10, v6, 0x1

    if-ne v4, v10, :cond_4

    xor-int/lit8 v0, v0, 0x1

    move v4, v0

    :goto_4
    add-int/lit8 v0, v8, 0x1

    const/16 v8, 0x1e

    if-ne v0, v8, :cond_1

    const/4 v0, 0x0

    const/16 v8, 0x1e

    invoke-virtual {v2, v8}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    const/16 v8, 0x1e

    invoke-virtual {v1, v8}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    :cond_1
    add-int/lit8 v8, v9, 0x1

    shl-int/lit8 v7, v7, 0x4

    and-int/lit8 v6, v6, 0xf

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v3, v9

    move v9, v8

    move v8, v0

    move v0, v4

    move v4, v5

    goto :goto_0

    :cond_2
    array-length v0, v3

    if-le v0, v9, :cond_3

    invoke-static {v3, v9}, Lorg/bouncycastle/math/ec/WNafUtil;->trim([BI)[B

    move-result-object v0

    :goto_5
    return-object v0

    :cond_3
    move-object v0, v3

    goto :goto_5

    :cond_4
    move v4, v0

    goto :goto_4

    :cond_5
    move v5, v4

    goto :goto_3

    :cond_6
    move v6, v5

    goto :goto_2

    :cond_7
    move v7, v5

    goto :goto_1
.end method

.method public static generateNaf(Ljava/math/BigInteger;)[B
    .locals 7

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/bouncycastle/math/ec/WNafUtil;->EMPTY_BYTES:[B

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    add-int/lit8 v4, v2, -0x1

    new-array v3, v4, [B

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_2

    invoke-virtual {v5, v2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    :goto_2
    int-to-byte v0, v0

    aput-byte v0, v3, v6

    add-int/lit8 v0, v2, 0x1

    :goto_3
    add-int/lit8 v2, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v4, -0x1

    aput-byte v1, v3, v0

    move-object v0, v3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_3
.end method

.method public static generateWindowNaf(ILjava/math/BigInteger;)[B
    .locals 10

    const/4 v0, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/math/ec/WNafUtil;->generateNaf(Ljava/math/BigInteger;)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-lt p0, v0, :cond_1

    const/16 v0, 0x8

    if-le p0, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'width\' must be in the range [2, 8]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lorg/bouncycastle/math/ec/WNafUtil;->EMPTY_BYTES:[B

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v4, v0, [B

    shl-int v7, v6, p0

    add-int/lit8 v8, v7, -0x1

    ushr-int/lit8 v9, v7, 0x1

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    if-gt v0, v5, :cond_9

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v5

    if-ne v5, v3, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    and-int/2addr v5, v8

    if-eqz v3, :cond_5

    add-int/lit8 v5, v5, 0x1

    :cond_5
    and-int v3, v5, v9

    if-eqz v3, :cond_8

    move v3, v6

    :goto_2
    if-eqz v3, :cond_6

    sub-int/2addr v5, v7

    :cond_6
    if-lez v2, :cond_7

    add-int/lit8 v0, v0, -0x1

    :cond_7
    add-int/2addr v2, v0

    add-int/lit8 v0, v2, 0x1

    int-to-byte v5, v5

    aput-byte v5, v4, v2

    move v2, v0

    move v0, p0

    goto :goto_1

    :cond_8
    move v3, v1

    goto :goto_2

    :cond_9
    array-length v0, v4

    if-le v0, v2, :cond_a

    invoke-static {v4, v2}, Lorg/bouncycastle/math/ec/WNafUtil;->trim([BI)[B

    move-result-object v0

    goto :goto_0

    :cond_a
    move-object v0, v4

    goto :goto_0
.end method

.method public static getNafWeight(Ljava/math/BigInteger;)I
    .locals 1

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitCount()I

    move-result v0

    goto :goto_0
.end method

.method public static getWNafPreCompInfo(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/WNafPreCompInfo;
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    const-string v1, "bc_wnaf"

    invoke-virtual {v0, p0, v1}, Lorg/bouncycastle/math/ec/ECCurve;->getPreCompInfo(Lorg/bouncycastle/math/ec/ECPoint;Ljava/lang/String;)Lorg/bouncycastle/math/ec/PreCompInfo;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/math/ec/WNafUtil;->getWNafPreCompInfo(Lorg/bouncycastle/math/ec/PreCompInfo;)Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getWNafPreCompInfo(Lorg/bouncycastle/math/ec/PreCompInfo;)Lorg/bouncycastle/math/ec/WNafPreCompInfo;
    .locals 1

    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    :goto_0
    return-object p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    invoke-direct {p0}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;-><init>()V

    goto :goto_0
.end method

.method public static getWindowSize(I)I
    .locals 1

    sget-object v0, Lorg/bouncycastle/math/ec/WNafUtil;->DEFAULT_WINDOW_SIZE_CUTOFFS:[I

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/WNafUtil;->getWindowSize(I[I)I

    move-result v0

    return v0
.end method

.method public static getWindowSize(I[I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget v1, p1, v0

    if-ge p0, v1, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x2

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static mapPointWithPrecomp(Lorg/bouncycastle/math/ec/ECPoint;IZLorg/bouncycastle/math/ec/ECPointMap;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 8

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/ec/WNafUtil;->precompute(Lorg/bouncycastle/math/ec/ECPoint;IZ)Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v0

    invoke-interface {p3, p0}, Lorg/bouncycastle/math/ec/ECPointMap;->map(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    const-string v4, "bc_wnaf"

    invoke-virtual {v2, v3, v4}, Lorg/bouncycastle/math/ec/ECCurve;->getPreCompInfo(Lorg/bouncycastle/math/ec/ECPoint;Ljava/lang/String;)Lorg/bouncycastle/math/ec/PreCompInfo;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/math/ec/WNafUtil;->getWNafPreCompInfo(Lorg/bouncycastle/math/ec/PreCompInfo;)Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v4

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getTwice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {p3, v5}, Lorg/bouncycastle/math/ec/ECPointMap;->map(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->setTwice(Lorg/bouncycastle/math/ec/ECPoint;)V

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    array-length v0, v5

    new-array v6, v0, [Lorg/bouncycastle/math/ec/ECPoint;

    move v0, v1

    :goto_0
    array-length v7, v5

    if-ge v0, v7, :cond_1

    aget-object v7, v5, v0

    invoke-interface {p3, v7}, Lorg/bouncycastle/math/ec/ECPointMap;->map(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    aput-object v7, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v6}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->setPreComp([Lorg/bouncycastle/math/ec/ECPoint;)V

    if-eqz p2, :cond_3

    array-length v0, v6

    new-array v0, v0, [Lorg/bouncycastle/math/ec/ECPoint;

    :goto_1
    array-length v5, v0

    if-ge v1, v5, :cond_2

    aget-object v5, v6, v1

    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/ECPoint;->negate()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    aput-object v5, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v4, v0}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->setPreCompNeg([Lorg/bouncycastle/math/ec/ECPoint;)V

    :cond_3
    const-string v0, "bc_wnaf"

    invoke-virtual {v2, v3, v0, v4}, Lorg/bouncycastle/math/ec/ECCurve;->setPreCompInfo(Lorg/bouncycastle/math/ec/ECPoint;Ljava/lang/String;Lorg/bouncycastle/math/ec/PreCompInfo;)V

    return-object v3
.end method

.method public static precompute(Lorg/bouncycastle/math/ec/ECPoint;IZ)Lorg/bouncycastle/math/ec/WNafPreCompInfo;
    .locals 13

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v8

    const-string v0, "bc_wnaf"

    invoke-virtual {v8, p0, v0}, Lorg/bouncycastle/math/ec/ECCurve;->getPreCompInfo(Lorg/bouncycastle/math/ec/ECPoint;Ljava/lang/String;)Lorg/bouncycastle/math/ec/PreCompInfo;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/math/ec/WNafUtil;->getWNafPreCompInfo(Lorg/bouncycastle/math/ec/PreCompInfo;)Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v9

    add-int/lit8 v0, p1, -0x2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    shl-int v10, v3, v0

    invoke-virtual {v9}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/bouncycastle/math/ec/WNafUtil;->EMPTY_POINTS:[Lorg/bouncycastle/math/ec/ECPoint;

    move v7, v2

    :goto_0
    if-ge v7, v10, :cond_0

    invoke-static {v0, v10}, Lorg/bouncycastle/math/ec/WNafUtil;->resizeTable([Lorg/bouncycastle/math/ec/ECPoint;I)[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    if-ne v10, v3, :cond_2

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->normalize()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    aput-object v0, v1, v2

    move-object v0, v1

    :cond_0
    :goto_1
    invoke-virtual {v9, v0}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->setPreComp([Lorg/bouncycastle/math/ec/ECPoint;)V

    if-eqz p2, :cond_8

    invoke-virtual {v9}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    if-nez v3, :cond_6

    new-array v1, v10, [Lorg/bouncycastle/math/ec/ECPoint;

    move v12, v2

    move-object v2, v1

    move v1, v12

    :goto_2
    if-ge v1, v10, :cond_7

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECPoint;->negate()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    array-length v7, v0

    goto :goto_0

    :cond_2
    if-nez v7, :cond_b

    aput-object p0, v1, v2

    move v6, v3

    :goto_3
    const/4 v0, 0x0

    const/4 v4, 0x2

    if-ne v10, v4, :cond_4

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->threeTimes()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    aput-object v4, v1, v3

    :cond_3
    sub-int v3, v10, v7

    invoke-virtual {v8, v1, v7, v3, v0}, Lorg/bouncycastle/math/ec/ECCurve;->normalizeAll([Lorg/bouncycastle/math/ec/ECPoint;IILorg/bouncycastle/math/ec/ECFieldElement;)V

    move-object v0, v1

    goto :goto_1

    :cond_4
    invoke-virtual {v9}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getTwice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    add-int/lit8 v3, v6, -0x1

    aget-object v3, v1, v3

    if-nez v4, :cond_5

    aget-object v4, v1, v2

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECPoint;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v9, v4}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->setTwice(Lorg/bouncycastle/math/ec/ECPoint;)V

    invoke-static {v8}, Lorg/bouncycastle/math/ec/ECAlgorithms;->isFpCurve(Lorg/bouncycastle/math/ec/ECCurve;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v8}, Lorg/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v5

    const/16 v11, 0x40

    if-lt v5, v11, :cond_5

    invoke-virtual {v8}, Lorg/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_5
    move v5, v6

    :goto_4
    if-ge v5, v10, :cond_3

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v3, v4}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    aput-object v3, v1, v5

    move v5, v6

    goto :goto_4

    :pswitch_0
    invoke-virtual {v4, v2}, Lorg/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECPoint;->getXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECPoint;->getYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v8, v0, v4}, Lorg/bouncycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    invoke-virtual {v3, v0}, Lorg/bouncycastle/math/ec/ECPoint;->scaleX(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, v11}, Lorg/bouncycastle/math/ec/ECPoint;->scaleY(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    if-nez v7, :cond_a

    aput-object v0, v1, v2

    move-object v3, v0

    move-object v0, v5

    move v5, v6

    goto :goto_4

    :cond_6
    array-length v1, v3

    if-ge v1, v10, :cond_9

    invoke-static {v3, v10}, Lorg/bouncycastle/math/ec/WNafUtil;->resizeTable([Lorg/bouncycastle/math/ec/ECPoint;I)[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    goto/16 :goto_2

    :cond_7
    invoke-virtual {v9, v2}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->setPreCompNeg([Lorg/bouncycastle/math/ec/ECPoint;)V

    :cond_8
    const-string v0, "bc_wnaf"

    invoke-virtual {v8, p0, v0, v9}, Lorg/bouncycastle/math/ec/ECCurve;->setPreCompInfo(Lorg/bouncycastle/math/ec/ECPoint;Ljava/lang/String;Lorg/bouncycastle/math/ec/PreCompInfo;)V

    return-object v9

    :cond_9
    move-object v2, v3

    goto/16 :goto_2

    :cond_a
    move-object v3, v0

    move-object v0, v5

    move v5, v6

    goto :goto_4

    :cond_b
    move v6, v7

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static resizeTable([Lorg/bouncycastle/math/ec/ECPoint;I)[Lorg/bouncycastle/math/ec/ECPoint;
    .locals 3

    const/4 v2, 0x0

    new-array v0, p1, [Lorg/bouncycastle/math/ec/ECPoint;

    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static trim([BI)[B
    .locals 3

    const/4 v2, 0x0

    new-array v0, p1, [B

    array-length v1, v0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static trim([II)[I
    .locals 3

    const/4 v2, 0x0

    new-array v0, p1, [I

    array-length v1, v0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
