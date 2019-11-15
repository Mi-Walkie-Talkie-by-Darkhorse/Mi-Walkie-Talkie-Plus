.class Lorg/bouncycastle/math/field/GenericPolynomialExtensionField;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/math/field/PolynomialExtensionField;


# instance fields
.field protected final minimalPolynomial:Lorg/bouncycastle/math/field/Polynomial;

.field protected final subfield:Lorg/bouncycastle/math/field/FiniteField;


# direct methods
.method constructor <init>(Lorg/bouncycastle/math/field/FiniteField;Lorg/bouncycastle/math/field/Polynomial;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/math/field/GenericPolynomialExtensionField;->subfield:Lorg/bouncycastle/math/field/FiniteField;

    iput-object p2, p0, Lorg/bouncycastle/math/field/GenericPolynomialExtensionField;->minimalPolynomial:Lorg/bouncycastle/math/field/Polynomial;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lorg/bouncycastle/math/field/GenericPolynomialExtensionField;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lorg/bouncycastle/math/field/GenericPolynomialExtensionField;

    iget-object v2, p0, Lorg/bouncycastle/math/field/GenericPolynomialExtensionField;->subfield:Lorg/bouncycastle/math/field/FiniteField;

    iget-object v3, p1, Lorg/bouncycastle/math/field/GenericPolynomialExtensionField;->subfield:Lorg/bouncycastle/math/field/FiniteField;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/math/field/GenericPolynomialExtensionField;->minimalPolynomial:Lorg/bouncycastle/math/field/Polynomial;

    iget-object v3, p1, Lorg/bouncycastle/math/field/GenericPolynomialExtensionField;->minimalPolynomial:Lorg/bouncycastle/math/field/Polynomial;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getCharacteristic()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/field/GenericPolynomialExtensionField;->subfield:Lorg/bouncycastle/math/field/FiniteField;

    invoke-interface {v0}, Lorg/bouncycastle/math/field/FiniteField;->getCharacteristic()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getDegree()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/field/GenericPolynomialExtensionField;->minimalPolynomial:Lorg/bouncycastle/math/field/Polynomial;

    invoke-interface {v0}, Lorg/bouncycastle/math/field/Polynomial;->getDegree()I

    move-result v0

    return v0
.end method

.method public getDimension()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/math/field/GenericPolynomialExtensionField;->subfield:Lorg/bouncycastle/math/field/FiniteField;

    invoke-interface {v0}, Lorg/bouncycastle/math/field/FiniteField;->getDimension()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/math/field/GenericPolynomialExtensionField;->minimalPolynomial:Lorg/bouncycastle/math/field/Polynomial;

    invoke-interface {v1}, Lorg/bouncycastle/math/field/Polynomial;->getDegree()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public getMinimalPolynomial()Lorg/bouncycastle/math/field/Polynomial;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/field/GenericPolynomialExtensionField;->minimalPolynomial:Lorg/bouncycastle/math/field/Polynomial;

    return-object v0
.end method

.method public getSubfield()Lorg/bouncycastle/math/field/FiniteField;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/field/GenericPolynomialExtensionField;->subfield:Lorg/bouncycastle/math/field/FiniteField;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/math/field/GenericPolynomialExtensionField;->subfield:Lorg/bouncycastle/math/field/FiniteField;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/math/field/GenericPolynomialExtensionField;->minimalPolynomial:Lorg/bouncycastle/math/field/Polynomial;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
