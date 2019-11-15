.class public Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;
.super Ljava/lang/Object;


# instance fields
.field private degree:I

.field private polynomial:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    const/16 v0, 0x20

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " Error: the degree of field is too large "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " Error: the degree of field is non-positive "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    invoke-static {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2;->getIrreduciblePolynomial(I)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->polynomial:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    invoke-static {p2}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result v0

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " Error: the degree is not correct"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p2}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2;->isIrreducible(I)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " Error: given polynomial is reducible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    iput p2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->polynomial:I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    iget v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    iget v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->polynomial:I

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->polynomial:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    array-length v0, p1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "byte array is not an encoded finite field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/LittleEndianConversions;->OS2IP([B)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->polynomial:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->polynomial:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2;->isIrreducible(I)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "byte array is not an encoded finite field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->polynomial:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    return-void
.end method

.method private static polyToString(I)Ljava/lang/String;
    .locals 5

    const/4 v2, 0x1

    const-string v0, ""

    if-nez p0, :cond_1

    const-string v0, "0"

    :cond_0
    return-object v0

    :cond_1
    and-int/lit8 v1, p0, 0x1

    int-to-byte v1, v1

    if-ne v1, v2, :cond_2

    const-string v0, "1"

    :cond_2
    ushr-int/lit8 v1, p0, 0x1

    move v3, v1

    move v1, v2

    :goto_0
    if-eqz v3, :cond_0

    and-int/lit8 v4, v3, 0x1

    int-to-byte v4, v4

    if-ne v4, v2, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "+x^"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    ushr-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public add(II)I
    .locals 1

    xor-int v0, p1, p2

    return v0
.end method

.method public elementToStr(I)Ljava/lang/String;
    .locals 5

    const-string v1, ""

    const/4 v0, 0x0

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    if-ge v1, v2, :cond_1

    int-to-byte v2, p1

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    ushr-int/lit8 p1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    iget v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->polynomial:I

    iget v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->polynomial:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public exp(II)I
    .locals 3

    const/4 v1, 0x1

    if-nez p2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    if-ne p1, v1, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    if-gez p2, :cond_5

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->inverse(I)I

    move-result p1

    neg-int p2, p2

    move v0, v1

    :goto_1
    if-eqz p2, :cond_0

    and-int/lit8 v2, p2, 0x1

    if-ne v2, v1, :cond_4

    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->mult(II)I

    move-result v0

    :cond_4
    invoke-virtual {p0, p1, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->mult(II)I

    move-result p1

    ushr-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method public getDegree()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    return v0
.end method

.method public getEncoded()[B
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->polynomial:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/LittleEndianConversions;->I2OSP(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getPolynomial()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->polynomial:I

    return v0
.end method

.method public getRandomElement(Ljava/security/SecureRandom;)I
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    shl-int/2addr v0, v1

    invoke-static {p1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/RandUtils;->nextInt(Ljava/security/SecureRandom;I)I

    move-result v0

    return v0
.end method

.method public getRandomNonZeroElement()I
    .locals 1

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->getRandomNonZeroElement(Ljava/security/SecureRandom;)I

    move-result v0

    return v0
.end method

.method public getRandomNonZeroElement(Ljava/security/SecureRandom;)I
    .locals 4

    const/4 v0, 0x1

    const/high16 v3, 0x100000

    const/4 v2, 0x0

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    shl-int v1, v0, v1

    invoke-static {p1, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/RandUtils;->nextInt(Ljava/security/SecureRandom;I)I

    move-result v1

    :goto_0
    if-nez v1, :cond_0

    if-ge v2, v3, :cond_0

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    shl-int v1, v0, v1

    invoke-static {p1, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/RandUtils;->nextInt(Ljava/security/SecureRandom;I)I

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-ne v2, v3, :cond_1

    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->polynomial:I

    return v0
.end method

.method public inverse(I)I
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    shl-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->exp(II)I

    move-result v0

    return v0
.end method

.method public isElementOfThisField(I)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    const/16 v3, 0x1f

    if-ne v2, v3, :cond_2

    if-ltz p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    if-ltz p1, :cond_3

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    shl-int v2, v0, v2

    if-lt p1, v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public mult(II)I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->polynomial:I

    invoke-static {p1, p2, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2;->modMultiply(III)I

    move-result v0

    return v0
.end method

.method public sqRoot(I)I
    .locals 2

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, p1, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->mult(II)I

    move-result p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finite Field GF(2^"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "GF(2)[X]/<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->polynomial:I

    invoke-static {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->polyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
