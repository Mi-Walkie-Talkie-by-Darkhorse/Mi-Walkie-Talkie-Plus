.class public final Lorg/bouncycastle/pqc/math/linearalgebra/GoppaCode;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/math/linearalgebra/GoppaCode$MaMaPe;,
        Lorg/bouncycastle/pqc/math/linearalgebra/GoppaCode$MatrixSet;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeSystematicForm(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;Ljava/security/SecureRandom;)Lorg/bouncycastle/pqc/math/linearalgebra/GoppaCode$MaMaPe;
    .locals 8

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->getNumColumns()I

    move-result v4

    const/4 v0, 0x0

    move-object v2, v0

    :goto_0
    new-instance v5, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    invoke-direct {v5, v4, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;-><init>(ILjava/security/SecureRandom;)V

    invoke-virtual {p0, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->rightMultiply(Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;)Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->getLeftSubMatrix()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    move-result-object v6

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v6}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->computeInverse()Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->rightMultiply(Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;)Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->getRightSubMatrix()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/GoppaCode$MaMaPe;

    invoke-direct {v1, v6, v0, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GoppaCode$MaMaPe;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;)V

    return-object v1

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    move v7, v1

    move-object v1, v2

    move v2, v7

    goto :goto_1

    :cond_0
    move-object v2, v1

    goto :goto_0
.end method

.method public static createCanonicalCheckMatrix(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;
    .locals 13

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->getDegree()I

    move-result v5

    const/4 v0, 0x1

    shl-int v6, v0, v5

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->getDegree()I

    move-result v7

    filled-new-array {v7, v6}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    filled-new-array {v7, v6}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v6, :cond_0

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {p1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->evaluateAt(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->inverse(I)I

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    move v3, v2

    :goto_1
    if-ge v3, v7, :cond_2

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v6, :cond_1

    aget-object v4, v1, v3

    add-int/lit8 v8, v3, -0x1

    aget-object v8, v1, v8

    aget v8, v8, v2

    invoke-virtual {p0, v8, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->mult(II)I

    move-result v8

    aput v8, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    move v4, v2

    :goto_3
    if-ge v4, v7, :cond_5

    const/4 v2, 0x0

    move v3, v2

    :goto_4
    if-ge v3, v6, :cond_4

    const/4 v2, 0x0

    :goto_5
    if-gt v2, v4, :cond_3

    aget-object v8, v0, v4

    aget-object v9, v0, v4

    aget v9, v9, v3

    aget-object v10, v1, v2

    aget v10, v10, v3

    add-int v11, v7, v2

    sub-int/2addr v11, v4

    invoke-virtual {p1, v11}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->getCoefficient(I)I

    move-result v11

    invoke-virtual {p0, v10, v11}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->mult(II)I

    move-result v10

    invoke-virtual {p0, v9, v10}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->add(II)I

    move-result v9

    aput v9, v8, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_4

    :cond_4
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_3

    :cond_5
    mul-int v1, v7, v5

    add-int/lit8 v2, v6, 0x1f

    ushr-int/lit8 v2, v2, 0x5

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    const/4 v2, 0x0

    move v4, v2

    :goto_6
    if-ge v4, v6, :cond_9

    ushr-int/lit8 v8, v4, 0x5

    const/4 v2, 0x1

    and-int/lit8 v3, v4, 0x1f

    shl-int v9, v2, v3

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v7, :cond_8

    aget-object v2, v0, v3

    aget v10, v2, v4

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v5, :cond_7

    ushr-int v11, v10, v2

    and-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_6

    add-int/lit8 v11, v3, 0x1

    mul-int/2addr v11, v5

    sub-int/2addr v11, v2

    add-int/lit8 v11, v11, -0x1

    aget-object v11, v1, v11

    aget v12, v11, v8

    xor-int/2addr v12, v9

    aput v12, v11, v8

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_7
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_7

    :cond_8
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_6

    :cond_9
    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    invoke-direct {v0, v6, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(I[[I)V

    return-object v0
.end method

.method public static syndromeDecode(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;
    .locals 7

    const/4 v0, 0x0

    const/4 v6, 0x1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->getDegree()I

    move-result v1

    shl-int v1, v6, v1

    new-instance v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    invoke-direct {v2, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;-><init>(I)V

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->isZero()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->toExtensionFieldVector(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;)V

    invoke-virtual {v3, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->modInverse(Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v3

    invoke-virtual {v3, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->addMonomial(I)Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v3

    invoke-virtual {v3, p3}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->modSquareRootMatrix([Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v3

    invoke-virtual {v3, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->modPolynomialToFracton(Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v3

    aget-object v4, v3, v0

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->multiply(Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v4

    aget-object v5, v3, v6

    aget-object v3, v3, v6

    invoke-virtual {v5, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->multiply(Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v3

    invoke-virtual {v3, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->multWithMonomial(I)Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->add(Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->getHeadCoefficient()I

    move-result v4

    invoke-virtual {p1, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->inverse(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->multWithElement(I)Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v3

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {v3, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->evaluateAt(I)I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->setBit(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method
