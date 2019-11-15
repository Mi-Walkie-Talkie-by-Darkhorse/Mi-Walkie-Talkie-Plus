.class public Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;
.super Ljava/lang/Object;


# instance fields
.field private coeff:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

.field private size:I


# direct methods
.method private constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->size:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->size:I

    new-array v0, v0, [Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    return-void
.end method

.method public constructor <init>(ILorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->size:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->size:I

    new-array v0, v0, [Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->size:I

    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->getDegree()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->size:I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->size:I

    new-array v1, v1, [Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    iput-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    instance-of v1, p2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;

    if-eqz v1, :cond_1

    move v1, v0

    :goto_0
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->size:I

    if-ge v1, v0, :cond_4

    invoke-virtual {p1, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->ONE(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    move-result-object v0

    aput-object v0, v2, v1

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->ZERO(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    move-result-object v0

    aput-object v0, v2, v1

    goto :goto_1

    :cond_1
    instance-of v1, p2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;

    if-eqz v1, :cond_3

    move v1, v0

    :goto_2
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->size:I

    if-ge v1, v0, :cond_4

    invoke-virtual {p1, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->ONE(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    move-result-object v0

    aput-object v0, v2, v1

    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->ZERO(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    move-result-object v0

    aput-object v0, v2, v1

    goto :goto_3

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PolynomialGF2n(Bitstring, GF2nField): B1 must be an instance of GF2nONBField or GF2nPolynomialField!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->size:I

    new-array v0, v0, [Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    iget v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->size:I

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->size:I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->size:I

    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    iget-object v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final add(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->size()I

    move-result v1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->size()I

    move-result v2

    if-lt v1, v2, :cond_2

    new-instance v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->size()I

    move-result v1

    invoke-direct {v2, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;-><init>(I)V

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v3, v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    aget-object v0, v0, v1

    iget-object v4, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    aget-object v4, v4, v1

    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->add(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    aput-object v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    aget-object v3, v3, v1

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_2
    return-object v0

    :cond_2
    new-instance v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->size()I

    move-result v1

    invoke-direct {v2, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;-><init>(I)V

    move v1, v0

    :goto_3
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v3, v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    aget-object v0, v0, v1

    iget-object v4, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    aget-object v4, v4, v1

    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->add(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    aput-object v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_3
    :goto_4
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    iget-object v3, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    aget-object v3, v3, v1

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    move-object v0, v2

    goto :goto_2
.end method

.method public final assignZeroToElements()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->size:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->assignZero()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final at(I)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final divide(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;)[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;,
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v0, 0x2

    new-array v2, v0, [Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;

    new-instance v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;

    invoke-direct {v3, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;)V

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->shrink()V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result v5

    iget-object v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->invert()Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result v1

    if-ge v1, v5, :cond_0

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;)V

    aput-object v0, v2, v7

    aget-object v0, v2, v7

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->assignZeroToElements()V

    aget-object v0, v2, v7

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->shrink()V

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;)V

    aput-object v0, v2, v8

    aget-object v0, v2, v8

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->shrink()V

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;

    invoke-direct {v1, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;)V

    aput-object v1, v2, v7

    aget-object v1, v2, v7

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->assignZeroToElements()V

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result v1

    sub-int/2addr v1, v5

    move-object v4, v3

    move v3, v1

    :goto_1
    if-ltz v3, :cond_1

    iget-object v1, v4, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result v6

    aget-object v1, v1, v6

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->multiply(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    invoke-virtual {p1, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->scalarMultiply(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;

    move-result-object v6

    invoke-virtual {v6, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->shiftThisLeft(I)V

    invoke-virtual {v4, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->add(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->shrink()V

    aget-object v6, v2, v7

    iget-object v6, v6, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    aput-object v1, v6, v3

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result v1

    sub-int/2addr v1, v5

    move v3, v1

    goto :goto_1

    :cond_1
    aput-object v4, v2, v8

    aget-object v0, v2, v7

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->shrink()V

    move-object v0, v2

    goto :goto_0
.end method

.method public final enlarge(I)V
    .locals 4

    const/4 v2, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->size:I

    if-gt p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-array v3, p1, [Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->size:I

    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->getField()Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    move-result-object v1

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    aget-object v0, v0, v2

    instance-of v0, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->size:I

    move v2, v0

    :goto_1
    if-ge v2, p1, :cond_2

    move-object v0, v1

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->ZERO(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    move-result-object v0

    aput-object v0, v3, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    aget-object v0, v0, v2

    instance-of v0, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->size:I

    move v2, v0

    :goto_2
    if-ge v2, p1, :cond_2

    move-object v0, v1

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->ZERO(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    move-result-object v0

    aput-object v0, v3, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_2
    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->size:I

    iput-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    instance-of v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    check-cast p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result v2

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_1
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->size:I

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    aget-object v2, v2, v0

    iget-object v3, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final gcd(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;,
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;

    invoke-direct {v1, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;)V

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;

    invoke-direct {v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;)V

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->shrink()V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->shrink()V

    :goto_0
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->isZero()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->remainder(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;

    move-result-object v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result v2

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->invert()Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->scalarMultiply(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;

    move-result-object v0

    return-object v0
.end method

.method public final getDegree()I
    .locals 2

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->size:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->isZero()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isZero()Z
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->size:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->isZero()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public final multiply(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->size()I

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PolynomialGF2n.multiply: this and b must have the same size!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v4, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, -0x1

    invoke-direct {v4, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;-><init>(I)V

    move v1, v2

    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    move v3, v2

    :goto_1
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    iget-object v0, v4, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    add-int v5, v1, v3

    aget-object v0, v0, v5

    if-nez v0, :cond_1

    iget-object v5, v4, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    add-int v6, v1, v3

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    aget-object v0, v0, v1

    iget-object v7, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    aget-object v7, v7, v3

    invoke-virtual {v0, v7}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->multiply(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    aput-object v0, v5, v6

    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    iget-object v5, v4, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    add-int v6, v1, v3

    iget-object v0, v4, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    add-int v7, v1, v3

    aget-object v0, v0, v7

    iget-object v7, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    aget-object v7, v7, v1

    iget-object v8, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    aget-object v8, v8, v3

    invoke-virtual {v7, v8}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->multiply(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->add(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    aput-object v0, v5, v6

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    return-object v4
.end method

.method public final multiplyAndReduce(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;,
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->multiply(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->reduce(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;

    move-result-object v0

    return-object v0
.end method

.method public final quotient(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;,
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->divide(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;)[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final reduce(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;,
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->remainder(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;

    move-result-object v0

    return-object v0
.end method

.method public final remainder(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;,
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->divide(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;)[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final scalarMultiply(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    new-instance v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->size()I

    move-result v0

    invoke-direct {v2, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v3, v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->multiply(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    aput-object v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public final set(ILorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;)V
    .locals 2

    instance-of v0, p2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    if-nez v0, :cond_0

    instance-of v0, p2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PolynomialGF2n.set f must be an instance of either GF2nPolynomialElement or GF2nONBElement!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    aput-object v0, v1, p1

    return-void
.end method

.method public final shiftLeft(I)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;
    .locals 5

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->size:I

    add-int/2addr v2, p1

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    aget-object v3, v3, v0

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;-><init>(ILorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;)V

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->assignZeroToElements()V

    :goto_1
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->size:I

    if-ge v0, v2, :cond_1

    iget-object v2, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    add-int v3, v0, p1

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    aget-object v4, v4, v0

    aput-object v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final shiftThisLeft(I)V
    .locals 6

    const/4 v5, 0x0

    if-lez p1, :cond_2

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->size:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->getField()Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->size:I

    add-int/2addr v2, p1

    invoke-virtual {p0, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->enlarge(I)V

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    add-int v3, v0, p1

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    aget-object v4, v4, v0

    aput-object v4, v2, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    aget-object v0, v0, v5

    instance-of v0, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    if-eqz v0, :cond_1

    add-int/lit8 v0, p1, -0x1

    move v2, v0

    :goto_1
    if-ltz v2, :cond_2

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    move-object v0, v1

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->ZERO(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    move-result-object v0

    aput-object v0, v3, v2

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    aget-object v0, v0, v5

    instance-of v0, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    if-eqz v0, :cond_2

    add-int/lit8 v0, p1, -0x1

    move v2, v0

    :goto_2
    if-ltz v2, :cond_2

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    move-object v0, v1

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->ZERO(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    move-result-object v0

    aput-object v0, v3, v2

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final shrink()V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->size:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->isZero()Z

    move-result v1

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->size:I

    if-ge v0, v1, :cond_1

    new-array v1, v0, [Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->size:I

    :cond_1
    return-void
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->size:I

    return v0
.end method
