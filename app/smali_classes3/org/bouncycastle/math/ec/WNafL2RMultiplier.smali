.class public Lorg/bouncycastle/math/ec/WNafL2RMultiplier;
.super Lorg/bouncycastle/math/ec/AbstractECMultiplier;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/math/ec/AbstractECMultiplier;-><init>()V

    return-void
.end method


# virtual methods
.method protected getWindowSize(I)I
    .locals 1

    invoke-static {p1}, Lorg/bouncycastle/math/ec/WNafUtil;->getWindowSize(I)I

    move-result v0

    return v0
.end method

.method protected multiplyPositive(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 13

    const v11, 0xffff

    const/4 v10, 0x1

    const/4 v0, 0x2

    const/16 v1, 0x10

    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/bouncycastle/math/ec/WNafL2RMultiplier;->getWindowSize(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {p1, v5, v10}, Lorg/bouncycastle/math/ec/WNafUtil;->precompute(Lorg/bouncycastle/math/ec/ECPoint;IZ)Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-static {v5, p2}, Lorg/bouncycastle/math/ec/WNafUtil;->generateCompactWindowNaf(ILjava/math/BigInteger;)[I

    move-result-object v6

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    array-length v0, v6

    if-le v0, v10, :cond_4

    add-int/lit8 v4, v0, -0x1

    aget v0, v6, v4

    shr-int/lit8 v1, v0, 0x10

    and-int/2addr v0, v11

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-gez v1, :cond_0

    move-object v1, v2

    :goto_0
    shl-int/lit8 v8, v7, 0x2

    shl-int v9, v10, v5

    if-ge v8, v9, :cond_1

    sget-object v8, Lorg/bouncycastle/math/ec/LongArray;->bitLengths:[B

    aget-byte v8, v8, v7

    sub-int v9, v5, v8

    add-int/lit8 v8, v8, -0x1

    shl-int v8, v10, v8

    xor-int/2addr v7, v8

    add-int/lit8 v5, v5, -0x1

    shl-int v5, v10, v5

    add-int/lit8 v5, v5, -0x1

    shl-int/2addr v7, v9

    add-int/lit8 v7, v7, 0x1

    ushr-int/lit8 v5, v5, 0x1

    aget-object v5, v1, v5

    ushr-int/lit8 v7, v7, 0x1

    aget-object v1, v1, v7

    invoke-virtual {v5, v1}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    sub-int/2addr v0, v9

    :goto_1
    invoke-virtual {v1, v0}, Lorg/bouncycastle/math/ec/ECPoint;->timesPow2(I)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    move v12, v4

    move-object v4, v0

    move v0, v12

    :goto_2
    if-lez v0, :cond_3

    add-int/lit8 v1, v0, -0x1

    aget v0, v6, v1

    shr-int/lit8 v5, v0, 0x10

    and-int v7, v0, v11

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-gez v5, :cond_2

    move-object v0, v2

    :goto_3
    ushr-int/lit8 v5, v8, 0x1

    aget-object v0, v0, v5

    invoke-virtual {v4, v0}, Lorg/bouncycastle/math/ec/ECPoint;->twicePlus(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, v7}, Lorg/bouncycastle/math/ec/ECPoint;->timesPow2(I)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    move-object v4, v0

    move v0, v1

    goto :goto_2

    :cond_0
    move-object v1, v3

    goto :goto_0

    :cond_1
    ushr-int/lit8 v5, v7, 0x1

    aget-object v1, v1, v5

    goto :goto_1

    :cond_2
    move-object v0, v3

    goto :goto_3

    :cond_3
    return-object v4

    :cond_4
    move-object v4, v1

    goto :goto_2
.end method
