.class public Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2m;
.super Ljava/lang/Object;


# instance fields
.field private field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

.field private p:Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

.field protected sqMatrix:[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

.field protected sqRootMatrix:[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    iput-object p2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->p:Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->computeSquaringMatrix()V

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->computeSquareRootMatrix()V

    return-void
.end method

.method private computeSquareRootMatrix()V
    .locals 8

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->p:Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->getDegree()I

    move-result v1

    new-array v5, v1, [Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    new-instance v2, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->sqMatrix:[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    aget-object v4, v4, v0

    invoke-direct {v2, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)V

    aput-object v2, v5, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    new-array v0, v1, [Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->sqRootMatrix:[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    add-int/lit8 v0, v1, -0x1

    :goto_1
    if-ltz v0, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->sqRootMatrix:[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    new-instance v4, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    invoke-direct {v4, v6, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;I)V

    aput-object v4, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_2
    if-ge v4, v1, :cond_7

    aget-object v0, v5, v4

    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->getCoefficient(I)I

    move-result v0

    if-nez v0, :cond_4

    add-int/lit8 v0, v4, 0x1

    move v2, v3

    :goto_3
    if-ge v0, v1, :cond_3

    aget-object v6, v5, v0

    invoke-virtual {v6, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->getCoefficient(I)I

    move-result v6

    if-eqz v6, :cond_2

    const/4 v2, 0x1

    invoke-static {v5, v4, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->swapColumns([Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;II)V

    iget-object v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->sqRootMatrix:[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    invoke-static {v6, v4, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->swapColumns([Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;II)V

    move v0, v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    if-nez v2, :cond_4

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Squaring matrix is not invertible."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    aget-object v0, v5, v4

    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->getCoefficient(I)I

    move-result v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v2, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->inverse(I)I

    move-result v0

    aget-object v2, v5, v4

    invoke-virtual {v2, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->multThisWithElement(I)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->sqRootMatrix:[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    aget-object v2, v2, v4

    invoke-virtual {v2, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->multThisWithElement(I)V

    move v0, v3

    :goto_4
    if-ge v0, v1, :cond_6

    if-eq v0, v4, :cond_5

    aget-object v2, v5, v0

    invoke-virtual {v2, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->getCoefficient(I)I

    move-result v2

    if-eqz v2, :cond_5

    aget-object v6, v5, v4

    invoke-virtual {v6, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->multWithElement(I)Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v6

    iget-object v7, p0, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->sqRootMatrix:[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    aget-object v7, v7, v4

    invoke-virtual {v7, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->multWithElement(I)Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v2

    aget-object v7, v5, v0

    invoke-virtual {v7, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->addToThis(Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)V

    iget-object v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->sqRootMatrix:[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    aget-object v6, v6, v0

    invoke-virtual {v6, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->addToThis(Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    :cond_7
    return-void
.end method

.method private computeSquaringMatrix()V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->p:Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->getDegree()I

    move-result v1

    new-array v0, v1, [Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->sqMatrix:[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    const/4 v0, 0x0

    :goto_0
    shr-int/lit8 v2, v1, 0x1

    if-ge v0, v2, :cond_0

    shl-int/lit8 v2, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [I

    shl-int/lit8 v3, v0, 0x1

    aput v6, v2, v3

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->sqMatrix:[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    new-instance v4, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    invoke-direct {v4, v5, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;[I)V

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    shr-int/lit8 v0, v1, 0x1

    :goto_1
    if-ge v0, v1, :cond_1

    shl-int/lit8 v2, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [I

    shl-int/lit8 v3, v0, 0x1

    aput v6, v2, v3

    new-instance v3, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    invoke-direct {v3, v4, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;[I)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->sqMatrix:[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->p:Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->mod(Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private static swapColumns([Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;II)V
    .locals 2

    aget-object v0, p0, p1

    aget-object v1, p0, p2

    aput-object v1, p0, p1

    aput-object v0, p0, p2

    return-void
.end method


# virtual methods
.method public getSquareRootMatrix()[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->sqRootMatrix:[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    return-object v0
.end method

.method public getSquaringMatrix()[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->sqMatrix:[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    return-object v0
.end method
