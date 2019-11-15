.class public abstract Lorg/bouncycastle/math/ec/ECCurve$AbstractFp;
.super Lorg/bouncycastle/math/ec/ECCurve;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/math/ec/ECCurve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractFp"
.end annotation


# direct methods
.method protected constructor <init>(Ljava/math/BigInteger;)V
    .locals 1

    invoke-static {p1}, Lorg/bouncycastle/math/field/FiniteFields;->getPrimeField(Ljava/math/BigInteger;)Lorg/bouncycastle/math/field/FiniteField;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/math/ec/ECCurve;-><init>(Lorg/bouncycastle/math/field/FiniteField;)V

    return-void
.end method


# virtual methods
.method protected decompressPoint(ILjava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 5

    const/4 v2, 0x1

    invoke-virtual {p0, p2}, Lorg/bouncycastle/math/ec/ECCurve$AbstractFp;->fromBigInteger(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECCurve$AbstractFp;->a:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECCurve$AbstractFp;->b:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->sqrt()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid point compression"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->testBitZero()Z

    move-result v4

    if-ne p1, v2, :cond_2

    move v1, v2

    :goto_0
    if-eq v4, v1, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->negate()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    :cond_1
    invoke-virtual {p0, v3, v0, v2}, Lorg/bouncycastle/math/ec/ECCurve$AbstractFp;->createRawPoint(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Z)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isValidFieldElement(Ljava/math/BigInteger;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECCurve$AbstractFp;->getField()Lorg/bouncycastle/math/field/FiniteField;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/math/field/FiniteField;->getCharacteristic()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
