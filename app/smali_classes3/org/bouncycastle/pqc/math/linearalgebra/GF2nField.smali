.class public abstract Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;
.super Ljava/lang/Object;


# instance fields
.field protected fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

.field protected fields:Ljava/util/Vector;

.field protected mDegree:I

.field protected matrices:Ljava/util/Vector;

.field protected final random:Ljava/security/SecureRandom;


# direct methods
.method protected constructor <init>(Ljava/security/SecureRandom;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->random:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method protected abstract computeCOBMatrix(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;)V
.end method

.method protected abstract computeFieldPolynomial()V
.end method

.method public final convert(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    if-ne p2, p0, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget-object v1, p2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->mDegree:I

    iget v1, p2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->mDegree:I

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "GF2nField.convert: B1 has a different degree and thus cannot be coverted to!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->fields:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    invoke-virtual {p0, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->computeCOBMatrix(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->fields:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    :cond_3
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->matrices:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    check-cast v0, [Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    instance-of v2, v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    if-eqz v2, :cond_4

    move-object v2, v1

    check-cast v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->reverseOrder()V

    :cond_4
    new-instance v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->mDegree:I

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->toFlexiBigInt()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(ILjava/math/BigInteger;)V

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->mDegree:I

    invoke-virtual {v2, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->expandN(I)V

    new-instance v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->mDegree:I

    invoke-direct {v3, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    const/4 v1, 0x0

    :goto_1
    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->mDegree:I

    if-ge v1, v4, :cond_6

    aget-object v4, v0, v1

    invoke-virtual {v2, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->vectorMult(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->mDegree:I

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    instance-of v0, p2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;

    if-eqz v0, :cond_7

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    check-cast p2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;

    invoke-direct {v0, p2, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    goto/16 :goto_0

    :cond_7
    instance-of v0, p2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;

    if-eqz v0, :cond_8

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    check-cast p2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->toFlexiBigInt()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;Ljava/math/BigInteger;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->reverseOrder()V

    goto/16 :goto_0

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "GF2nField.convert: B1 must be an instance of GF2nPolynomialField or GF2nONBField!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;

    iget v1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->mDegree:I

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->mDegree:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget-object v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;

    if-eqz v1, :cond_2

    instance-of v1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialField;

    if-eqz v1, :cond_0

    :cond_2
    instance-of v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;

    if-eqz v1, :cond_3

    instance-of v1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;

    if-eqz v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getDegree()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->mDegree:I

    return v0
.end method

.method public final getFieldPolynomial()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->computeFieldPolynomial()V

    :cond_0
    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    return-object v0
.end method

.method protected abstract getRandomRoot(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->mDegree:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected final invertMatrix([Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)[Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;
    .locals 6

    const/4 v1, 0x0

    array-length v0, p1

    new-array v3, v0, [Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    array-length v0, p1

    new-array v4, v0, [Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move v0, v1

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->mDegree:I

    if-ge v0, v2, :cond_1

    :try_start_0
    new-instance v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    aget-object v5, p1, v0

    invoke-direct {v2, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    aput-object v2, v3, v0

    new-instance v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->mDegree:I

    invoke-direct {v2, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    aput-object v2, v4, v0

    aget-object v2, v4, v0

    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->mDegree:I

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v0

    invoke-virtual {v2, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    :cond_1
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->mDegree:I

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_6

    move v0, v1

    :goto_2
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->mDegree:I

    if-ge v0, v2, :cond_2

    aget-object v2, v3, v0

    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->mDegree:I

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v1

    invoke-virtual {v2, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->testBit(I)Z

    move-result v2

    if-nez v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->mDegree:I

    if-lt v0, v2, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "GF2nField.invertMatrix: Matrix cannot be inverted!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-eq v1, v0, :cond_4

    aget-object v2, v3, v1

    aget-object v5, v3, v0

    aput-object v5, v3, v1

    aput-object v2, v3, v0

    aget-object v2, v4, v1

    aget-object v5, v4, v0

    aput-object v5, v4, v1

    aput-object v2, v4, v0

    :cond_4
    add-int/lit8 v0, v1, 0x1

    :goto_3
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->mDegree:I

    if-ge v0, v2, :cond_0

    aget-object v2, v3, v0

    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->mDegree:I

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v1

    invoke-virtual {v2, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->testBit(I)Z

    move-result v2

    if-eqz v2, :cond_5

    aget-object v2, v3, v0

    aget-object v5, v3, v1

    invoke-virtual {v2, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->addToThis(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    aget-object v2, v4, v0

    aget-object v5, v4, v1

    invoke-virtual {v2, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->addToThis(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->mDegree:I

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_4
    if-lez v1, :cond_9

    add-int/lit8 v0, v1, -0x1

    :goto_5
    if-ltz v0, :cond_8

    aget-object v2, v3, v0

    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->mDegree:I

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v1

    invoke-virtual {v2, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->testBit(I)Z

    move-result v2

    if-eqz v2, :cond_7

    aget-object v2, v3, v0

    aget-object v5, v3, v1

    invoke-virtual {v2, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->addToThis(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    aget-object v2, v4, v0

    aget-object v5, v4, v1

    invoke-virtual {v2, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->addToThis(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    :cond_7
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_8
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_4

    :cond_9
    return-object v4
.end method
