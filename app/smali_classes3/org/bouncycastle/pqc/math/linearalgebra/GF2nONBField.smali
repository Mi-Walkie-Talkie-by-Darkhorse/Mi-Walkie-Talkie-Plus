.class public Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;
.super Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;


# static fields
.field private static final MAXLONG:I = 0x40


# instance fields
.field private mBit:I

.field private mLength:I

.field mMult:[[I

.field private mType:I


# direct methods
.method public constructor <init>(ILjava/security/SecureRandom;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v2, 0x3

    const/4 v1, 0x0

    const/4 v4, -0x1

    invoke-direct {p0, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;-><init>(Ljava/security/SecureRandom;)V

    if-ge p1, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "k must be at least 3"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    div-int/lit8 v0, v0, 0x40

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mLength:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    and-int/lit8 v0, v0, 0x3f

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mBit:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mBit:I

    if-nez v0, :cond_1

    const/16 v0, 0x40

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mBit:I

    :goto_0
    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->computeType()V

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    if-ge v0, v2, :cond_3

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    const/4 v2, 0x2

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mMult:[[I

    move v0, v1

    :goto_1
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mMult:[[I

    aget-object v2, v2, v0

    aput v4, v2, v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mMult:[[I

    aget-object v2, v2, v0

    const/4 v3, 0x1

    aput v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mLength:I

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->computeMultMatrix()V

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->computeFieldPolynomial()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->fields:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->matrices:Ljava/util/Vector;

    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nThe type of this field is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private computeMultMatrix()V
    .locals 12

    const/4 v11, 0x2

    const/4 v10, -0x1

    const/4 v3, 0x0

    const/4 v1, 0x1

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_d

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    mul-int/2addr v0, v2

    add-int/lit8 v7, v0, 0x1

    new-array v8, v7, [I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    move v2, v3

    move v4, v1

    :goto_1
    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    if-ge v2, v5, :cond_5

    move v5, v3

    move v6, v4

    :goto_2
    iget v9, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    if-ge v5, v9, :cond_3

    aput v5, v8, v6

    shl-int/lit8 v6, v6, 0x1

    rem-int/2addr v6, v7

    if-gez v6, :cond_0

    add-int/2addr v6, v7

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    if-ne v0, v11, :cond_2

    add-int/lit8 v0, v7, -0x1

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    invoke-direct {p0, v0, v7}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->elementOfOrder(II)I

    move-result v0

    goto :goto_0

    :cond_3
    mul-int/2addr v4, v0

    rem-int/2addr v4, v7

    if-gez v4, :cond_4

    add-int/2addr v4, v7

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    if-ne v0, v1, :cond_a

    move v0, v1

    :goto_3
    add-int/lit8 v2, v7, -0x1

    if-ge v0, v2, :cond_7

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mMult:[[I

    add-int/lit8 v4, v0, 0x1

    aget v4, v8, v4

    aget-object v2, v2, v4

    aget v2, v2, v3

    if-ne v2, v10, :cond_6

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mMult:[[I

    add-int/lit8 v4, v0, 0x1

    aget v4, v8, v4

    aget-object v2, v2, v4

    sub-int v4, v7, v0

    aget v4, v8, v4

    aput v4, v2, v3

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mMult:[[I

    add-int/lit8 v4, v0, 0x1

    aget v4, v8, v4

    aget-object v2, v2, v4

    sub-int v4, v7, v0

    aget v4, v8, v4

    aput v4, v2, v1

    goto :goto_4

    :cond_7
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    shr-int/lit8 v2, v0, 0x1

    move v0, v1

    :goto_5
    if-gt v0, v2, :cond_e

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mMult:[[I

    add-int/lit8 v5, v0, -0x1

    aget-object v4, v4, v5

    aget v4, v4, v3

    if-ne v4, v10, :cond_8

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mMult:[[I

    add-int/lit8 v5, v0, -0x1

    aget-object v4, v4, v5

    add-int v5, v2, v0

    add-int/lit8 v5, v5, -0x1

    aput v5, v4, v3

    :goto_6
    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mMult:[[I

    add-int v5, v2, v0

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    aget v4, v4, v3

    if-ne v4, v10, :cond_9

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mMult:[[I

    add-int v5, v2, v0

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    add-int/lit8 v5, v0, -0x1

    aput v5, v4, v3

    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_8
    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mMult:[[I

    add-int/lit8 v5, v0, -0x1

    aget-object v4, v4, v5

    add-int v5, v2, v0

    add-int/lit8 v5, v5, -0x1

    aput v5, v4, v1

    goto :goto_6

    :cond_9
    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mMult:[[I

    add-int v5, v2, v0

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    add-int/lit8 v5, v0, -0x1

    aput v5, v4, v1

    goto :goto_7

    :cond_a
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    if-ne v0, v11, :cond_c

    move v0, v1

    :goto_8
    add-int/lit8 v2, v7, -0x1

    if-ge v0, v2, :cond_e

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mMult:[[I

    add-int/lit8 v4, v0, 0x1

    aget v4, v8, v4

    aget-object v2, v2, v4

    aget v2, v2, v3

    if-ne v2, v10, :cond_b

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mMult:[[I

    add-int/lit8 v4, v0, 0x1

    aget v4, v8, v4

    aget-object v2, v2, v4

    sub-int v4, v7, v0

    aget v4, v8, v4

    aput v4, v2, v3

    :goto_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_b
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mMult:[[I

    add-int/lit8 v4, v0, 0x1

    aget v4, v8, v4

    aget-object v2, v2, v4

    sub-int v4, v7, v0

    aget v4, v8, v4

    aput v4, v2, v1

    goto :goto_9

    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "only type 1 or type 2 implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "bisher nur fuer Gausssche Normalbasen implementiert"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    return-void
.end method

.method private computeType()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v3, 0x1

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    and-int/lit8 v0, v0, 0x7

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The extension degree is divisible by 8!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    const/4 v0, 0x0

    :goto_0
    if-eq v0, v3, :cond_2

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    mul-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->isPrime(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v4, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->order(II)I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    mul-int/2addr v1, v2

    div-int v0, v1, v0

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->gcd(II)I

    move-result v0

    :cond_1
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    if-ne v0, v3, :cond_3

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->isPrime(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v4, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->order(II)I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    shl-int/lit8 v1, v1, 0x1

    div-int v0, v1, v0

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->gcd(II)I

    move-result v0

    if-ne v0, v3, :cond_3

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    :cond_3
    return-void
.end method

.method private elementOfOrder(II)I
    .locals 4

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v0

    add-int/lit8 v1, p2, -0x1

    rem-int v1, v0, v1

    if-gez v1, :cond_0

    add-int/lit8 v0, p2, -0x1

    add-int/2addr v1, v0

    goto :goto_0

    :cond_1
    invoke-static {v1, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->order(II)I

    move-result v0

    :goto_1
    rem-int v3, v0, p1

    if-nez v3, :cond_2

    if-nez v0, :cond_4

    :cond_2
    :goto_2
    if-nez v1, :cond_3

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v0

    add-int/lit8 v1, p2, -0x1

    rem-int v1, v0, v1

    if-gez v1, :cond_2

    add-int/lit8 v0, p2, -0x1

    add-int/2addr v1, v0

    goto :goto_2

    :cond_3
    invoke-static {v1, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->order(II)I

    move-result v0

    goto :goto_1

    :cond_4
    div-int v3, p1, v0

    const/4 v0, 0x2

    move v2, v1

    :goto_3
    if-gt v0, v3, :cond_5

    mul-int/2addr v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    return v2
.end method


# virtual methods
.method protected computeCOBMatrix(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;)V
    .locals 7

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    iget v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->mDegree:I

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "GF2nField.computeCOBMatrix: B1 has a different degree and thus cannot be coverted to!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    new-array v3, v0, [Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move v0, v1

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    if-ge v0, v2, :cond_1

    new-instance v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    invoke-direct {v2, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    aput-object v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->getRandomRoot(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->isZero()Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    new-array v4, v2, [Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    aput-object v0, v4, v1

    const/4 v0, 0x1

    :goto_1
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    if-ge v0, v2, :cond_2

    add-int/lit8 v2, v0, -0x1

    aget-object v2, v4, v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->square()Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;

    move-result-object v2

    aput-object v2, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_2
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    if-ge v0, v2, :cond_5

    move v2, v1

    :goto_3
    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    if-ge v2, v5, :cond_4

    aget-object v5, v4, v0

    invoke-virtual {v5, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;->testBit(I)Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    sub-int/2addr v5, v2

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v3, v5

    iget v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    sub-int/2addr v6, v0

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->fields:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->matrices:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->fields:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nField;->matrices:Ljava/util/Vector;

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->invertMatrix([Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)[Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method protected computeFieldPolynomial()V
    .locals 5

    const/4 v0, 0x1

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    if-ne v1, v0, :cond_1

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    add-int/lit8 v1, v1, 0x1

    const-string v2, "ALL"

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    new-instance v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    add-int/lit8 v1, v1, 0x1

    const-string v3, "ONE"

    invoke-direct {v2, v1, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(ILjava/lang/String;)V

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    add-int/lit8 v3, v3, 0x1

    const-string v4, "X"

    invoke-direct {v1, v3, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->addToThis(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    move-object v3, v2

    :goto_1
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    if-ge v0, v2, :cond_2

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->shiftLeft()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;->addToThis(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    add-int/lit8 v0, v0, 0x1

    move-object v3, v1

    move-object v1, v2

    goto :goto_1

    :cond_2
    iput-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->fieldPolynomial:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Polynomial;

    goto :goto_0
.end method

.method getONBBit()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mBit:I

    return v0
.end method

.method getONBLength()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mLength:I

    return v0
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
    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->random:Ljava/security/SecureRandom;

    invoke-direct {v0, p0, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;Ljava/security/SecureRandom;)V

    new-instance v4, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;

    const/4 v2, 0x2

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;->ZERO(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBElement;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;-><init>(ILorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;)V

    invoke-virtual {v4, v1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;->set(ILorg/bouncycastle/pqc/math/linearalgebra/GF2nElement;)V

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;

    invoke-direct {v0, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2nPolynomial;)V

    move-object v2, v0

    move v0, v1

    :goto_1
    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

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

.method invMatrix([[I)[[I
    .locals 5

    const/4 v2, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    move v1, v2

    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    if-ge v1, v3, :cond_1

    aget-object v3, v0, v1

    const/4 v4, 0x1

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    :cond_1
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    if-ge v2, v0, :cond_2

    move v0, v2

    :goto_1
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    if-ge v0, v1, :cond_0

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, v2

    aget-object v1, p1, v1

    aget-object v3, p1, v2

    aget v3, v3, v2

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    check-cast v0, [[I

    return-object v0
.end method
