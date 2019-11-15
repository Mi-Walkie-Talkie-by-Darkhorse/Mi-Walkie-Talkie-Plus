.class public Lorg/bouncycastle/math/ec/NafL2RMultiplier;
.super Lorg/bouncycastle/math/ec/AbstractECMultiplier;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/math/ec/AbstractECMultiplier;-><init>()V

    return-void
.end method


# virtual methods
.method protected multiplyPositive(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 8

    invoke-static {p2}, Lorg/bouncycastle/math/ec/WNafUtil;->generateCompactNaf(Ljava/math/BigInteger;)[I

    move-result-object v5

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->normalize()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECPoint;->negate()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    array-length v0, v5

    move-object v4, v3

    :goto_0
    add-int/lit8 v3, v0, -0x1

    if-ltz v3, :cond_1

    aget v0, v5, v3

    shr-int/lit8 v6, v0, 0x10

    const v7, 0xffff

    and-int/2addr v7, v0

    if-gez v6, :cond_0

    move-object v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Lorg/bouncycastle/math/ec/ECPoint;->twicePlus(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, v7}, Lorg/bouncycastle/math/ec/ECPoint;->timesPow2(I)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    move-object v4, v0

    move v0, v3

    goto :goto_0

    :cond_0
    move-object v0, v2

    goto :goto_1

    :cond_1
    return-object v4
.end method
