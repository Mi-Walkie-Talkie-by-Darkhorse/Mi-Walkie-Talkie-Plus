.class public Lorg/bouncycastle/math/ec/MixedNafR2LMultiplier;
.super Lorg/bouncycastle/math/ec/AbstractECMultiplier;


# instance fields
.field protected additionCoord:I

.field protected doublingCoord:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/math/ec/MixedNafR2LMultiplier;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/math/ec/AbstractECMultiplier;-><init>()V

    iput p1, p0, Lorg/bouncycastle/math/ec/MixedNafR2LMultiplier;->additionCoord:I

    iput p2, p0, Lorg/bouncycastle/math/ec/MixedNafR2LMultiplier;->doublingCoord:I

    return-void
.end method


# virtual methods
.method protected configureCurve(Lorg/bouncycastle/math/ec/ECCurve;I)Lorg/bouncycastle/math/ec/ECCurve;
    .locals 3

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v0

    if-ne v0, p2, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p1, p2}, Lorg/bouncycastle/math/ec/ECCurve;->supportsCoordinateSystem(I)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Coordinate system "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported by this curve"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECCurve;->configure()Lorg/bouncycastle/math/ec/ECCurve$Config;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/bouncycastle/math/ec/ECCurve$Config;->setCoordinateSystem(I)Lorg/bouncycastle/math/ec/ECCurve$Config;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve$Config;->create()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object p1

    goto :goto_0
.end method

.method protected multiplyPositive(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 10

    const/4 v0, 0x0

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v4

    iget v1, p0, Lorg/bouncycastle/math/ec/MixedNafR2LMultiplier;->additionCoord:I

    invoke-virtual {p0, v4, v1}, Lorg/bouncycastle/math/ec/MixedNafR2LMultiplier;->configureCurve(Lorg/bouncycastle/math/ec/ECCurve;I)Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v5

    iget v1, p0, Lorg/bouncycastle/math/ec/MixedNafR2LMultiplier;->doublingCoord:I

    invoke-virtual {p0, v4, v1}, Lorg/bouncycastle/math/ec/MixedNafR2LMultiplier;->configureCurve(Lorg/bouncycastle/math/ec/ECCurve;I)Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-static {p2}, Lorg/bouncycastle/math/ec/WNafUtil;->generateCompactNaf(Ljava/math/BigInteger;)[I

    move-result-object v6

    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v1, p1}, Lorg/bouncycastle/math/ec/ECCurve;->importPoint(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    move-object v3, v2

    move-object v2, v1

    move v1, v0

    :goto_0
    array-length v7, v6

    if-ge v0, v7, :cond_1

    aget v7, v6, v0

    shr-int/lit8 v8, v7, 0x10

    const v9, 0xffff

    and-int/2addr v7, v9

    add-int/2addr v1, v7

    invoke-virtual {v2, v1}, Lorg/bouncycastle/math/ec/ECPoint;->timesPow2(I)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v5, v2}, Lorg/bouncycastle/math/ec/ECCurve;->importPoint(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    if-gez v8, :cond_0

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->negate()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    :cond_0
    invoke-virtual {v3, v1}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    const/4 v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v3}, Lorg/bouncycastle/math/ec/ECCurve;->importPoint(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method
