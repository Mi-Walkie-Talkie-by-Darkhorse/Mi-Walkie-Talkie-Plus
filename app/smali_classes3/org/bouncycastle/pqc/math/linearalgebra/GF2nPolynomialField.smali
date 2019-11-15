.class public Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;
.super Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;


# instance fields
.field private isPentanomial:Z

.field private isTrinomial:Z

.field private pc:[I

.field squaringMatrix:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

.field private tc:I


# direct methods
.method public constructor <init>(ILjava/security/SecureRandom;)V
    .locals 2

    const/4 v1, 0x3

    const/4 v0, 0x0

    invoke-direct {p0, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;-><init>(Ljava/security/SecureRandom;)V

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->isTrinomial:Z

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->isPentanomial:Z

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->pc:[I

    if-ge p1, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "k must be at least 3"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->computeFieldPolynomial()V

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->computeSquaringMatrix()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fields:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->matrices:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>(ILjava/security/SecureRandom;Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v6, 0x5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v5, 0x3

    invoke-direct {p0, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;-><init>(Ljava/security/SecureRandom;)V

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->isTrinomial:Z

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->isPentanomial:Z

    new-array v0, v5, [I

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->pc:[I

    if-ge p1, v5, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "degree must be at least 3"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->getLength()I

    move-result v0

    add-int/lit8 v2, p1, 0x1

    if-eq v0, v2, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->isIrreducible()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    iput-object p3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->computeSquaringMatrix()V

    const/4 v0, 0x2

    move v2, v0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->getLength()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_5

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v3, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->testBit(I)Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 v2, v2, 0x1

    if-ne v2, v5, :cond_3

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->tc:I

    :cond_3
    if-gt v2, v6, :cond_4

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->pc:[I

    add-int/lit8 v4, v2, -0x3

    aput v0, v3, v4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    if-ne v2, v5, :cond_6

    iput-boolean v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->isTrinomial:Z

    :cond_6
    if-ne v2, v6, :cond_7

    iput-boolean v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->isPentanomial:Z

    :cond_7
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fields:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->matrices:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>(ILjava/security/SecureRandom;Z)V
    .locals 2

    const/4 v1, 0x3

    const/4 v0, 0x0

    invoke-direct {p0, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;-><init>(Ljava/security/SecureRandom;)V

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->isTrinomial:Z

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->isPentanomial:Z

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->pc:[I

    if-ge p1, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "k must be at least 3"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->computeFieldPolynomial()V

    :goto_0
    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->computeSquaringMatrix()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fields:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->matrices:Ljava/util/Vector;

    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->computeFieldPolynomial2()V

    goto :goto_0
.end method

.method private computeSquaringMatrix()V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    add-int/lit8 v0, v0, -0x1

    new-array v3, v0, [Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    new-array v0, v0, [Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->squaringMatrix:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move v0, v1

    :goto_0
    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->squaringMatrix:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->squaringMatrix:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    new-instance v5, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    const-string v7, "ZERO"

    invoke-direct {v5, v6, v7}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(ILjava/lang/String;)V

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_1

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    const-string v4, "ONE"

    invoke-direct {v0, v2, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(ILjava/lang/String;)V

    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    add-int/2addr v4, v1

    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->shiftLeft(I)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v0

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->remainder(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v0

    aput-object v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_2
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    shr-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gt v0, v1, :cond_4

    move v1, v2

    :goto_3
    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    if-gt v1, v4, :cond_3

    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    shl-int/lit8 v5, v0, 0x1

    sub-int/2addr v4, v5

    aget-object v4, v3, v4

    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    sub-int/2addr v5, v1

    invoke-virtual {v4, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->testBit(I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->squaringMatrix:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    add-int/lit8 v5, v1, -0x1

    aget-object v4, v4, v5

    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    sub-int/2addr v5, v0

    invoke-virtual {v4, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    shr-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_4
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    if-gt v0, v1, :cond_5

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->squaringMatrix:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    shl-int/lit8 v2, v0, 0x1

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    return-void
.end method

.method private testPentanomials()Z
    .locals 9

    const/4 v4, 0x1

    const/4 v1, 0x0

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    move v0, v1

    move v2, v1

    move v3, v4

    :goto_0
    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    add-int/lit8 v5, v5, -0x3

    if-gt v3, v5, :cond_0

    if-nez v0, :cond_0

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v5, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    add-int/lit8 v5, v3, 0x1

    :goto_1
    iget v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    add-int/lit8 v6, v6, -0x2

    if-gt v5, v6, :cond_7

    if-nez v0, :cond_7

    iget-object v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v6, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    add-int/lit8 v6, v5, 0x1

    :goto_2
    iget v7, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    add-int/lit8 v7, v7, -0x1

    if-gt v6, v7, :cond_6

    if-nez v0, :cond_6

    iget-object v7, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v7, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    iget v7, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_1

    move v8, v4

    :goto_3
    and-int/lit8 v7, v3, 0x1

    if-eqz v7, :cond_2

    move v7, v4

    :goto_4
    or-int/2addr v8, v7

    and-int/lit8 v7, v5, 0x1

    if-eqz v7, :cond_3

    move v7, v4

    :goto_5
    or-int/2addr v8, v7

    and-int/lit8 v7, v6, 0x1

    if-eqz v7, :cond_4

    move v7, v4

    :goto_6
    or-int/2addr v7, v8

    if-eqz v7, :cond_5

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->isIrreducible()Z

    move-result v0

    add-int/lit8 v2, v2, 0x1

    if-eqz v0, :cond_5

    iput-boolean v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->isPentanomial:Z

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->pc:[I

    aput v3, v2, v1

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->pc:[I

    aput v5, v1, v4

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->pc:[I

    const/4 v2, 0x2

    aput v6, v1, v2

    :cond_0
    return v0

    :cond_1
    move v8, v1

    goto :goto_3

    :cond_2
    move v7, v1

    goto :goto_4

    :cond_3
    move v7, v1

    goto :goto_5

    :cond_4
    move v7, v1

    goto :goto_6

    :cond_5
    iget-object v7, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v7, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->resetBit(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    iget-object v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v6, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->resetBit(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_7
    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v5, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->resetBit(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private testRandom()Z
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    iput-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move v1, v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->randomize()V

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v2, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->isIrreducible()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method private testTrinomials()Z
    .locals 5

    const/4 v3, 0x1

    const/4 v0, 0x0

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    iput-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    move v1, v0

    move v2, v3

    :goto_0
    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    if-ge v2, v4, :cond_0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->isIrreducible()Z

    move-result v0

    add-int/lit8 v1, v1, 0x1

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->isTrinomial:Z

    iput v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->tc:I

    :cond_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->resetBit(I)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->isIrreducible()Z

    move-result v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected computeCOBMatrix(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;)V
    .locals 7

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    iget v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->mDegree:I

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "GF2nPolynomialField.computeCOBMatrix: B1 has a different degree and thus cannot be coverted to!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;

    if-eqz v0, :cond_1

    invoke-virtual {p1, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->computeCOBMatrix(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;)V

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    new-array v4, v0, [Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move v0, v1

    :goto_1
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    if-ge v0, v2, :cond_2

    new-instance v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    aput-object v2, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->getRandomRoot(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->isZero()Z

    move-result v0

    if-nez v0, :cond_2

    instance-of v0, v5, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    new-array v2, v0, [Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    add-int/lit8 v3, v0, -0x1

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->ONE(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    move-result-object v0

    aput-object v0, v2, v3

    :goto_2
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    add-int/lit8 v0, v0, -0x2

    aput-object v5, v2, v0

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    add-int/lit8 v0, v0, -0x3

    move v3, v0

    :goto_3
    if-ltz v3, :cond_4

    add-int/lit8 v0, v3, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v0, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->multiply(Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;)Lorg/bouncycastle/pqc/math/linearalgebra/GFElement;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    aput-object v0, v2, v3

    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_3

    :cond_3
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    new-array v2, v0, [Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    add-int/lit8 v3, v0, -0x1

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->ONE(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    move-result-object v0

    aput-object v0, v2, v3

    goto :goto_2

    :cond_4
    instance-of v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;

    if-eqz v0, :cond_7

    move v0, v1

    :goto_4
    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    if-ge v0, v3, :cond_a

    move v3, v1

    :goto_5
    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    if-ge v3, v5, :cond_6

    aget-object v5, v2, v0

    iget v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    sub-int/2addr v6, v3

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->testBit(I)Z

    move-result v5

    if-eqz v5, :cond_5

    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    sub-int/2addr v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v4, v5

    iget v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    sub-int/2addr v6, v0

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    move v0, v1

    :goto_6
    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    if-ge v0, v3, :cond_a

    move v3, v1

    :goto_7
    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    if-ge v3, v5, :cond_9

    aget-object v5, v2, v0

    invoke-virtual {v5, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->testBit(I)Z

    move-result v5

    if-eqz v5, :cond_8

    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    sub-int/2addr v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v4, v5

    iget v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    sub-int/2addr v6, v0

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_a
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fields:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->matrices:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->fields:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->matrices:Ljava/util/Vector;

    invoke-virtual {p0, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->invertMatrix([Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)[Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method protected computeFieldPolynomial()V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->testTrinomials()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->testPentanomials()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->testRandom()Z

    goto :goto_0
.end method

.method protected computeFieldPolynomial2()V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->testTrinomials()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->testPentanomials()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->testRandom()Z

    goto :goto_0
.end method

.method public getPc()[I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v3, 0x3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->isPentanomial:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    new-array v0, v3, [I

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->pc:[I

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method protected getRandomRoot(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;
    .locals 6

    const/4 v1, 0x1

    new-instance v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;

    invoke-direct {v2, p1, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;)V

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result v0

    move-object v3, v2

    :goto_0
    if-le v0, v1, :cond_3

    :cond_0
    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->random:Ljava/security/SecureRandom;

    invoke-direct {v0, p0, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;Ljava/util/Random;)V

    new-instance v4, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;

    const/4 v2, 0x2

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->ZERO(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;-><init>(ILorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;)V

    invoke-virtual {v4, v1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->set(ILorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;)V

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;

    invoke-direct {v0, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;)V

    move-object v2, v0

    move v0, v1

    :goto_1
    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    add-int/lit8 v5, v5, -0x1

    if-gt v0, v5, :cond_1

    invoke-virtual {v2, v2, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->multiplyAndReduce(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;

    move-result-object v2

    invoke-virtual {v2, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->add(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->gcd(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result v0

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result v4

    if-eqz v0, :cond_0

    if-eq v0, v4, :cond_0

    shl-int/lit8 v0, v0, 0x1

    if-le v0, v4, :cond_2

    invoke-virtual {v3, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->quotient(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;

    move-result-object v0

    :goto_2
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result v2

    move-object v3, v0

    move v0, v2

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;

    invoke-direct {v0, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;)V

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->at(I)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    move-result-object v0

    return-object v0
.end method

.method public getSquaringVector(I)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;
    .locals 2

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->squaringMatrix:[Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    aget-object v1, v1, p1

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    return-object v0
.end method

.method public getTc()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->isTrinomial:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->tc:I

    return v0
.end method

.method public isPentanomial()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->isPentanomial:Z

    return v0
.end method

.method public isTrinomial()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;->isTrinomial:Z

    return v0
.end method
