.class public Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;
.super Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;


# instance fields
.field private length:I

.field private matrix:[[I


# direct methods
.method public constructor <init>(IC)V
    .locals 1

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(ICLjava/security/SecureRandom;)V

    return-void
.end method

.method public constructor <init>(ICLjava/security/SecureRandom;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;-><init>()V

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Size of matrix is non-positive."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sparse-switch p2, :sswitch_data_0

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Unknown matrix type."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    invoke-direct {p0, p1, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->assignZeroMatrix(II)V

    :goto_0
    return-void

    :sswitch_1
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->assignUnitMatrix(I)V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, p1, p3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->assignRandomLowerTriangularMatrix(ILjava/security/SecureRandom;)V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0, p1, p3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->assignRandomUpperTriangularMatrix(ILjava/security/SecureRandom;)V

    goto :goto_0

    :sswitch_4
    invoke-direct {p0, p1, p3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->assignRandomRegularMatrix(ILjava/security/SecureRandom;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x49 -> :sswitch_1
        0x4c -> :sswitch_2
        0x52 -> :sswitch_4
        0x55 -> :sswitch_3
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

.method private constructor <init>(II)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;-><init>()V

    if-lez p2, :cond_0

    if-gtz p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "size of matrix is non-positive"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->assignZeroMatrix(II)V

    return-void
.end method

.method public constructor <init>(I[[I)V
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;-><init>()V

    aget-object v0, p2, v1

    array-length v0, v0

    add-int/lit8 v2, p1, 0x1f

    shr-int/lit8 v2, v2, 0x5

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Int array does not match given number of columns."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    array-length v0, p2

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    aget-object v0, p2, v1

    array-length v0, v0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    and-int/lit8 v0, p1, 0x1f

    if-nez v0, :cond_1

    const/4 v0, -0x1

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-ge v1, v2, :cond_2

    aget-object v2, p2, v1

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    and-int/2addr v4, v0

    aput v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    shl-int v0, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    iput-object p2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->getNumColumns()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->getNumRows()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iget v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    iget-object v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    array-length v0, v0

    new-array v0, v0, [[I

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    iget-object v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v2, v2, v0

    invoke-static {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 9

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;-><init>()V

    array-length v0, p1

    const/16 v2, 0x9

    if-ge v0, v2, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "given array is not an encoded matrix over GF(2)"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/LittleEndianConversions;->OS2IP([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/LittleEndianConversions;->OS2IP([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/lit8 v0, v0, 0x7

    ushr-int/lit8 v0, v0, 0x3

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    mul-int/2addr v0, v2

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-lez v2, :cond_1

    array-length v2, p1

    add-int/lit8 v2, v2, -0x8

    if-eq v0, v2, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "given array is not an encoded matrix over GF(2)"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/lit8 v0, v0, 0x1f

    ushr-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    shr-int/lit8 v5, v0, 0x5

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    and-int/lit8 v6, v0, 0x1f

    const/16 v0, 0x8

    move v2, v0

    move v0, v1

    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-ge v0, v3, :cond_5

    move v3, v1

    :goto_1
    if-ge v3, v5, :cond_3

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v4, v4, v0

    invoke-static {p1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/LittleEndianConversions;->OS2IP([BI)I

    move-result v7

    aput v7, v4, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x4

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_2
    if-ge v3, v6, :cond_4

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v7, v4, v0

    aget v8, v7, v5

    add-int/lit8 v4, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v3

    xor-int/2addr v2, v8

    aput v2, v7, v5

    add-int/lit8 v2, v3, 0x8

    move v3, v2

    move v2, v4

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private static addToRow([I[II)V
    .locals 3

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lt v0, p2, :cond_0

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private assignRandomLowerTriangularMatrix(ILjava/security/SecureRandom;)V
    .locals 8

    const/4 v1, 0x0

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/lit8 v0, p1, 0x1f

    ushr-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    move v0, v1

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-ge v0, v2, :cond_2

    ushr-int/lit8 v3, v0, 0x5

    and-int/lit8 v2, v0, 0x1f

    rsub-int/lit8 v4, v2, 0x1f

    const/4 v5, 0x1

    shl-int/2addr v5, v2

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    iget-object v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v6, v6, v0

    invoke-virtual {p2}, Ljava/security/SecureRandom;->nextInt()I

    move-result v7

    aput v7, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v2, v2, v0

    invoke-virtual {p2}, Ljava/security/SecureRandom;->nextInt()I

    move-result v6

    ushr-int v4, v6, v4

    or-int/2addr v4, v5

    aput v4, v2, v3

    add-int/lit8 v2, v3, 0x1

    :goto_2
    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v3, v3, v0

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private assignRandomRegularMatrix(ILjava/security/SecureRandom;)V
    .locals 7

    const/4 v2, 0x0

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/lit8 v0, p1, 0x1f

    ushr-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    const/16 v1, 0x4c

    invoke-direct {v0, p1, v1, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(ICLjava/security/SecureRandom;)V

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    const/16 v3, 0x55

    invoke-direct {v1, p1, v3, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(ICLjava/security/SecureRandom;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->rightMultiply(Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;)Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    invoke-direct {v1, p1, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;-><init>(ILjava/security/SecureRandom;)V

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->getVector()[I

    move-result-object v3

    move v1, v2

    :goto_0
    if-ge v1, p1, :cond_0

    iget-object v4, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v4, v4, v1

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget v6, v3, v1

    aget-object v5, v5, v6

    iget v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    invoke-static {v4, v2, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private assignRandomUpperTriangularMatrix(ILjava/security/SecureRandom;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v2, 0x0

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/lit8 v0, p1, 0x1f

    ushr-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    and-int/lit8 v0, p1, 0x1f

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    move v1, v2

    :goto_1
    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-ge v1, v3, :cond_3

    ushr-int/lit8 v4, v1, 0x5

    and-int/lit8 v5, v1, 0x1f

    shl-int v6, v8, v5

    move v3, v2

    :goto_2
    if-ge v3, v4, :cond_1

    iget-object v7, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v7, v7, v1

    aput v2, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_0
    shl-int v0, v8, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v3, v3, v1

    invoke-virtual {p2}, Ljava/security/SecureRandom;->nextInt()I

    move-result v7

    shl-int v5, v7, v5

    or-int/2addr v5, v6

    aput v5, v3, v4

    add-int/lit8 v3, v4, 0x1

    :goto_3
    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v4, v4, v1

    invoke-virtual {p2}, Ljava/security/SecureRandom;->nextInt()I

    move-result v5

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v3, v3, v1

    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    add-int/lit8 v4, v4, -0x1

    aget v5, v3, v4

    and-int/2addr v5, v0

    aput v5, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private assignUnitMatrix(I)V
    .locals 5

    const/4 v1, 0x0

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/lit8 v0, p1, 0x1f

    ushr-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    move v0, v1

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-ge v0, v2, :cond_1

    move v2, v1

    :goto_1
    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v3, v3, v0

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-ge v1, v0, :cond_2

    and-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v2, v2, v1

    ushr-int/lit8 v3, v1, 0x5

    const/4 v4, 0x1

    shl-int v0, v4, v0

    aput v0, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private assignZeroMatrix(II)V
    .locals 4

    const/4 v1, 0x0

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iput p2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/lit8 v0, p2, 0x1f

    ushr-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    move v0, v1

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-ge v0, v2, :cond_1

    move v2, v1

    :goto_1
    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v3, v3, v0

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static createRandomRegularMatrixAndItsInverse(ILjava/security/SecureRandom;)[Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;
    .locals 14

    const/4 v0, 0x2

    new-array v4, v0, [Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    add-int/lit8 v0, p0, 0x1f

    shr-int/lit8 v5, v0, 0x5

    new-instance v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    const/16 v0, 0x4c

    invoke-direct {v3, p0, v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(ICLjava/security/SecureRandom;)V

    new-instance v6, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    const/16 v0, 0x55

    invoke-direct {v6, p0, v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(ICLjava/security/SecureRandom;)V

    invoke-virtual {v3, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->rightMultiply(Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;)Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    new-instance v7, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    invoke-direct {v7, p0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;-><init>(ILjava/security/SecureRandom;)V

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->getVector()[I

    move-result-object v8

    filled-new-array {p0, v5}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    iget-object v9, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget v10, v8, v2

    aget-object v9, v9, v10

    const/4 v10, 0x0

    aget-object v11, v1, v2

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-instance v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    invoke-direct {v2, p0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(I[[I)V

    aput-object v2, v4, v0

    new-instance v8, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    const/16 v0, 0x49

    invoke-direct {v8, p0, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(IC)V

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, p0, :cond_3

    and-int/lit8 v0, v2, 0x1f

    ushr-int/lit8 v9, v2, 0x5

    const/4 v1, 0x1

    shl-int v10, v1, v0

    add-int/lit8 v0, v2, 0x1

    move v1, v0

    :goto_2
    if-ge v1, p0, :cond_2

    iget-object v0, v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v0, v0, v1

    aget v0, v0, v9

    and-int/2addr v0, v10

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_3
    if-gt v0, v9, :cond_1

    iget-object v11, v8, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v11, v11, v1

    aget v12, v11, v0

    iget-object v13, v8, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v13, v13, v2

    aget v13, v13, v0

    xor-int/2addr v12, v13

    aput v12, v11, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    new-instance v9, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    const/16 v0, 0x49

    invoke-direct {v9, p0, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(IC)V

    add-int/lit8 v0, p0, -0x1

    move v3, v0

    :goto_4
    if-ltz v3, :cond_6

    and-int/lit8 v0, v3, 0x1f

    ushr-int/lit8 v1, v3, 0x5

    const/4 v2, 0x1

    shl-int v10, v2, v0

    add-int/lit8 v0, v3, -0x1

    move v2, v0

    :goto_5
    if-ltz v2, :cond_5

    iget-object v0, v6, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v0, v0, v2

    aget v0, v0, v1

    and-int/2addr v0, v10

    if-eqz v0, :cond_4

    move v0, v1

    :goto_6
    if-ge v0, v5, :cond_4

    iget-object v11, v9, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v11, v11, v2

    aget v12, v11, v0

    iget-object v13, v9, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v13, v13, v3

    aget v13, v13, v0

    xor-int/2addr v12, v13

    aput v12, v11, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_4
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_5

    :cond_5
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_4

    :cond_6
    const/4 v1, 0x1

    invoke-virtual {v8, v7}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->rightMultiply(Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;)Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;

    move-result-object v0

    invoke-virtual {v9, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->rightMultiply(Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;)Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    aput-object v0, v4, v1

    return-object v4
.end method

.method private static swapRows([[III)V
    .locals 2

    aget-object v0, p0, p1

    aget-object v1, p0, p2

    aput-object v1, p0, p1

    aput-object v0, p0, p2

    return-void
.end method


# virtual methods
.method public computeInverse()Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;
    .locals 10

    const/4 v6, 0x1

    const/4 v3, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Matrix is not invertible."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v2, v2, v1

    invoke-static {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_2

    shr-int/lit8 v4, v2, 0x5

    and-int/lit8 v5, v2, 0x1f

    aget-object v7, v1, v2

    shl-int v5, v6, v5

    aput v5, v7, v4

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_2
    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-ge v2, v4, :cond_8

    shr-int/lit8 v7, v2, 0x5

    and-int/lit8 v4, v2, 0x1f

    shl-int v8, v6, v4

    aget-object v4, v0, v2

    aget v4, v4, v7

    and-int/2addr v4, v8

    if-nez v4, :cond_5

    add-int/lit8 v4, v2, 0x1

    move v5, v3

    :goto_3
    iget v9, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-ge v4, v9, :cond_4

    aget-object v9, v0, v4

    aget v9, v9, v7

    and-int/2addr v9, v8

    if-eqz v9, :cond_3

    invoke-static {v0, v2, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->swapRows([[III)V

    invoke-static {v1, v2, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->swapRows([[III)V

    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    move v5, v6

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    if-nez v5, :cond_5

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Matrix is not invertible."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    add-int/lit8 v4, v4, -0x1

    :goto_4
    if-ltz v4, :cond_7

    if-eq v4, v2, :cond_6

    aget-object v5, v0, v4

    aget v5, v5, v7

    and-int/2addr v5, v8

    if-eqz v5, :cond_6

    aget-object v5, v0, v2

    aget-object v9, v0, v4

    invoke-static {v5, v9, v7}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->addToRow([I[II)V

    aget-object v5, v1, v2

    aget-object v9, v1, v4

    invoke-static {v5, v9, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->addToRow([I[II)V

    :cond_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(I[[I)V

    return-object v0
.end method

.method public computeTranspose()Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;
    .locals 9

    const/4 v8, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    add-int/lit8 v1, v1, 0x1f

    ushr-int/lit8 v1, v1, 0x5

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    move v1, v2

    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-ge v1, v3, :cond_2

    move v3, v2

    :goto_1
    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    if-ge v3, v4, :cond_1

    ushr-int/lit8 v4, v3, 0x5

    and-int/lit8 v5, v3, 0x1f

    iget-object v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v6, v6, v1

    aget v4, v6, v4

    ushr-int/2addr v4, v5

    and-int/lit8 v4, v4, 0x1

    ushr-int/lit8 v5, v1, 0x5

    and-int/lit8 v6, v1, 0x1f

    if-ne v4, v8, :cond_0

    aget-object v4, v0, v3

    aget v7, v4, v5

    shl-int v6, v8, v6

    or-int/2addr v6, v7

    aput v6, v4, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(I[[I)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    check-cast p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iget v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    iget v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    iget v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_1
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v2, v2, v0

    iget-object v3, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v3, v3, v0

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/IntUtils;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public extendLeftCompactForm()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;
    .locals 9

    const/4 v8, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    add-int/2addr v0, v1

    new-instance v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    invoke-direct {v2, v1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(II)V

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/2addr v1, v0

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v3, v3, v0

    iget-object v4, v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v4, v4, v0

    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    invoke-static {v3, v8, v4, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v3, v3, v0

    shr-int/lit8 v4, v1, 0x5

    aget v5, v3, v4

    const/4 v6, 0x1

    and-int/lit8 v7, v1, 0x1f

    shl-int/2addr v6, v7

    or-int/2addr v5, v6

    aput v5, v3, v4

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public extendRightCompactForm()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;
    .locals 12

    const/4 v1, 0x0

    new-instance v6, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/2addr v2, v3

    invoke-direct {v6, v0, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(II)V

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    shr-int/lit8 v3, v0, 0x5

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    and-int/lit8 v7, v0, 0x1f

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    add-int/lit8 v0, v0, -0x1

    move v5, v0

    :goto_0
    if-ltz v5, :cond_3

    iget-object v0, v6, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v0, v0, v5

    shr-int/lit8 v2, v5, 0x5

    aget v4, v0, v2

    const/4 v8, 0x1

    and-int/lit8 v9, v5, 0x1f

    shl-int/2addr v8, v9

    or-int/2addr v4, v8

    aput v4, v0, v2

    if-eqz v7, :cond_2

    move v0, v1

    move v2, v3

    :goto_1
    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v4, v4, v5

    aget v8, v4, v0

    iget-object v4, v6, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v9, v4, v5

    add-int/lit8 v4, v2, 0x1

    aget v10, v9, v2

    shl-int v11, v8, v7

    or-int/2addr v10, v11

    aput v10, v9, v2

    iget-object v2, v6, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v2, v2, v5

    aget v9, v2, v4

    rsub-int/lit8 v10, v7, 0x20

    ushr-int/2addr v8, v10

    or-int/2addr v8, v9

    aput v8, v2, v4

    add-int/lit8 v0, v0, 0x1

    move v2, v4

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v0, v0, v5

    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    add-int/lit8 v4, v4, -0x1

    aget v0, v0, v4

    iget-object v4, v6, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v4, v4, v5

    add-int/lit8 v8, v2, 0x1

    aget v9, v4, v2

    shl-int v10, v0, v7

    or-int/2addr v9, v10

    aput v9, v4, v2

    iget v2, v6, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    if-ge v8, v2, :cond_1

    iget-object v2, v6, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v2, v2, v5

    aget v4, v2, v8

    rsub-int/lit8 v9, v7, 0x20

    ushr-int/2addr v0, v9

    or-int/2addr v0, v4

    aput v0, v2, v8

    :cond_1
    :goto_2
    add-int/lit8 v0, v5, -0x1

    move v5, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v0, v0, v5

    iget-object v2, v6, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v2, v2, v5

    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_3
    return-object v6
.end method

.method public getEncoded()[B
    .locals 9

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/lit8 v0, v0, 0x7

    ushr-int/lit8 v0, v0, 0x3

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    mul-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x8

    new-array v5, v0, [B

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    invoke-static {v0, v5, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/LittleEndianConversions;->I2OSP(I[BI)V

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    const/4 v2, 0x4

    invoke-static {v0, v5, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/LittleEndianConversions;->I2OSP(I[BI)V

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    ushr-int/lit8 v6, v0, 0x5

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    and-int/lit8 v7, v0, 0x1f

    const/16 v0, 0x8

    move v2, v0

    move v0, v1

    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-ge v0, v3, :cond_2

    move v3, v1

    :goto_1
    if-ge v3, v6, :cond_0

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v4, v4, v0

    aget v4, v4, v3

    invoke-static {v4, v5, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/LittleEndianConversions;->I2OSP(I[BI)V

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x4

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_2
    if-ge v3, v7, :cond_1

    add-int/lit8 v4, v2, 0x1

    iget-object v8, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v8, v8, v0

    aget v8, v8, v6

    ushr-int/2addr v8, v3

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v5, v2

    add-int/lit8 v2, v3, 0x8

    move v3, v2

    move v2, v4

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v5
.end method

.method public getHammingWeight()D
    .locals 15

    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    and-int/lit8 v10, v0, 0x1f

    if-nez v10, :cond_0

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    :goto_0
    const/4 v1, 0x0

    :goto_1
    iget v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-ge v1, v6, :cond_4

    const/4 v6, 0x0

    move v14, v6

    move-wide v6, v4

    move-wide v4, v2

    move v3, v14

    :goto_2
    if-ge v3, v0, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v2, v2, v1

    aget v8, v2, v3

    const/4 v2, 0x0

    :goto_3
    const/16 v9, 0x20

    if-ge v2, v9, :cond_1

    ushr-int v9, v8, v2

    and-int/lit8 v9, v9, 0x1

    int-to-double v12, v9

    add-double/2addr v6, v12

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v12

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v2, v2, v1

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    add-int/lit8 v3, v3, -0x1

    aget v11, v2, v3

    const/4 v2, 0x0

    move v14, v2

    move-wide v2, v4

    move-wide v4, v6

    move v6, v14

    :goto_4
    if-ge v6, v10, :cond_3

    ushr-int v7, v11, v6

    and-int/lit8 v7, v7, 0x1

    int-to-double v8, v7

    add-double/2addr v8, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v2

    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move-wide v2, v4

    move-wide v4, v8

    goto :goto_4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    div-double v0, v4, v2

    return-wide v0
.end method

.method public getIntArray()[[I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    return-object v0
.end method

.method public getLeftSubMatrix()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;
    .locals 8

    const/4 v7, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-gt v0, v1, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "empty submatrix"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    add-int/lit8 v0, v0, 0x1f

    shr-int/lit8 v3, v0, 0x5

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    filled-new-array {v0, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    const/4 v1, 0x1

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    and-int/lit8 v2, v2, 0x1f

    shl-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_1

    const/4 v1, -0x1

    :cond_1
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v4, v4, v2

    aget-object v5, v0, v2

    invoke-static {v4, v7, v5, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v4, v0, v2

    add-int/lit8 v5, v3, -0x1

    aget v6, v4, v5

    and-int/2addr v6, v1

    aput v6, v4, v5

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(I[[I)V

    return-object v1
.end method

.method public getLength()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    return v0
.end method

.method public getRightSubMatrix()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;
    .locals 11

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-gt v0, v2, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "empty submatrix"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    shr-int/lit8 v3, v0, 0x5

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    and-int/lit8 v6, v0, 0x1f

    new-instance v7, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    sub-int/2addr v2, v4

    invoke-direct {v7, v0, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(II)V

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    add-int/lit8 v0, v0, -0x1

    move v5, v0

    :goto_0
    if-ltz v5, :cond_4

    if-eqz v6, :cond_3

    move v0, v1

    move v2, v3

    :goto_1
    iget v4, v7, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_1

    iget-object v4, v7, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v8, v4, v5

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v9, v4, v5

    add-int/lit8 v4, v2, 0x1

    aget v2, v9, v2

    ushr-int/2addr v2, v6

    iget-object v9, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v9, v9, v5

    aget v9, v9, v4

    rsub-int/lit8 v10, v6, 0x20

    shl-int/2addr v9, v10

    or-int/2addr v2, v9

    aput v2, v8, v0

    add-int/lit8 v0, v0, 0x1

    move v2, v4

    goto :goto_1

    :cond_1
    iget-object v0, v7, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v0, v0, v5

    iget v4, v7, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    add-int/lit8 v4, v4, -0x1

    iget-object v8, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v8, v8, v5

    add-int/lit8 v9, v2, 0x1

    aget v2, v8, v2

    ushr-int/2addr v2, v6

    aput v2, v0, v4

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    if-ge v9, v0, :cond_2

    iget-object v0, v7, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v0, v0, v5

    iget v2, v7, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    add-int/lit8 v2, v2, -0x1

    aget v4, v0, v2

    iget-object v8, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v8, v8, v5

    aget v8, v8, v9

    rsub-int/lit8 v9, v6, 0x20

    shl-int/2addr v8, v9

    or-int/2addr v4, v8

    aput v4, v0, v2

    :cond_2
    :goto_2
    add-int/lit8 v0, v5, -0x1

    move v5, v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v0, v0, v5

    iget-object v2, v7, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v2, v2, v5

    iget v4, v7, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    invoke-static {v0, v3, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_4
    return-object v7
.end method

.method public getRow(I)[I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v0, v0, p1

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    add-int/2addr v1, v0

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-ge v0, v2, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public isZero()Z
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-ge v0, v2, :cond_2

    move v2, v1

    :goto_1
    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v3, v3, v0

    aget v3, v3, v2

    if-eqz v3, :cond_0

    :goto_2
    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_2
.end method

.method public leftMultiply(Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;)Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;
    .locals 5

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->getVector()[I

    move-result-object v1

    array-length v0, v1

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "length mismatch"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    new-array v2, v0, [[I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget v4, v1, v0

    aget-object v3, v3, v4

    invoke-static {v3}, Lorg/bouncycastle/pqc/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(I[[I)V

    return-object v0
.end method

.method public leftMultiply(Lorg/bouncycastle/pqc/math/linearalgebra/Vector;)Lorg/bouncycastle/pqc/math/linearalgebra/Vector;
    .locals 12

    const/4 v1, 0x1

    const/4 v4, 0x0

    instance-of v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "vector is not defined over GF(2)"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/Vector;->length:I

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-eq v0, v2, :cond_1

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "length mismatch"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->getVecArray()[I

    move-result-object v6

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    new-array v7, v0, [I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    shr-int/lit8 v8, v0, 0x5

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    and-int/lit8 v0, v0, 0x1f

    shl-int v9, v1, v0

    move v5, v4

    move v0, v4

    :goto_0
    if-ge v5, v8, :cond_4

    move v2, v0

    move v0, v1

    :cond_2
    aget v3, v6, v5

    and-int/2addr v3, v0

    if-eqz v3, :cond_3

    move v3, v4

    :goto_1
    iget v10, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    if-ge v3, v10, :cond_3

    aget v10, v7, v3

    iget-object v11, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v11, v11, v2

    aget v11, v11, v3

    xor-int/2addr v10, v11

    aput v10, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    shl-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move v0, v2

    goto :goto_0

    :cond_4
    move v2, v0

    :goto_2
    if-eq v1, v9, :cond_6

    aget v0, v6, v8

    and-int/2addr v0, v1

    if-eqz v0, :cond_5

    move v0, v4

    :goto_3
    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    if-ge v0, v3, :cond_5

    aget v3, v7, v0

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v5, v5, v2

    aget v5, v5, v0

    xor-int/2addr v3, v5

    aput v3, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v2, 0x1

    shl-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_2

    :cond_6
    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    invoke-direct {v0, v7, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;-><init>([II)V

    return-object v0
.end method

.method public leftMultiplyLeftCompactForm(Lorg/bouncycastle/pqc/math/linearalgebra/Vector;)Lorg/bouncycastle/pqc/math/linearalgebra/Vector;
    .locals 11

    const/4 v4, 0x0

    const/4 v1, 0x1

    instance-of v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "vector is not defined over GF(2)"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/Vector;->length:I

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-eq v0, v2, :cond_1

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "length mismatch"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->getVecArray()[I

    move-result-object v6

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1f

    ushr-int/lit8 v0, v0, 0x5

    new-array v7, v0, [I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    ushr-int/lit8 v8, v0, 0x5

    move v5, v4

    move v0, v4

    :goto_0
    if-ge v5, v8, :cond_5

    move v2, v0

    move v0, v1

    :cond_2
    aget v3, v6, v5

    and-int/2addr v3, v0

    if-eqz v3, :cond_4

    move v3, v4

    :goto_1
    iget v9, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    if-ge v3, v9, :cond_3

    aget v9, v7, v3

    iget-object v10, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v10, v10, v2

    aget v10, v10, v3

    xor-int/2addr v9, v10

    aput v9, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/2addr v3, v2

    ushr-int/lit8 v3, v3, 0x5

    iget v9, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/2addr v9, v2

    and-int/lit8 v9, v9, 0x1f

    aget v10, v7, v3

    shl-int v9, v1, v9

    or-int/2addr v9, v10

    aput v9, v7, v3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    shl-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move v0, v2

    goto :goto_0

    :cond_5
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    and-int/lit8 v2, v2, 0x1f

    shl-int v5, v1, v2

    move v2, v1

    move v3, v0

    :goto_2
    if-eq v2, v5, :cond_8

    aget v0, v6, v8

    and-int/2addr v0, v2

    if-eqz v0, :cond_7

    move v0, v4

    :goto_3
    iget v9, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    if-ge v0, v9, :cond_6

    aget v9, v7, v0

    iget-object v10, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v10, v10, v3

    aget v10, v10, v0

    xor-int/2addr v9, v10

    aput v9, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/2addr v0, v3

    ushr-int/lit8 v0, v0, 0x5

    iget v9, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/2addr v9, v3

    and-int/lit8 v9, v9, 0x1f

    aget v10, v7, v0

    shl-int v9, v1, v9

    or-int/2addr v9, v10

    aput v9, v7, v0

    :cond_7
    add-int/lit8 v3, v3, 0x1

    shl-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_8
    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/2addr v1, v2

    invoke-direct {v0, v7, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;-><init>([II)V

    return-object v0
.end method

.method public rightMultiply(Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;)Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;
    .locals 13

    instance-of v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "matrix is not defined over GF(2)"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;->numRows:I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "length mismatch"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    new-instance v7, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iget v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;->numColumns:I

    invoke-direct {v7, v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(II)V

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    and-int/lit8 v8, v1, 0x1f

    if-nez v8, :cond_2

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    :goto_0
    const/4 v2, 0x0

    :goto_1
    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-ge v2, v3, :cond_8

    const/4 v4, 0x0

    const/4 v3, 0x0

    move v6, v3

    :goto_2
    if-ge v6, v1, :cond_5

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v3, v3, v2

    aget v9, v3, v6

    const/4 v3, 0x0

    move v5, v4

    move v4, v3

    :goto_3
    const/16 v3, 0x20

    if-ge v4, v3, :cond_4

    const/4 v3, 0x1

    shl-int/2addr v3, v4

    and-int/2addr v3, v9

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    :goto_4
    iget v10, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    if-ge v3, v10, :cond_3

    iget-object v10, v7, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v10, v10, v2

    aget v11, v10, v3

    iget-object v12, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v12, v12, v5

    aget v12, v12, v3

    xor-int/2addr v11, v12

    aput v11, v10, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_2
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move v4, v5

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v3, v3, v2

    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    add-int/lit8 v5, v5, -0x1

    aget v6, v3, v5

    const/4 v3, 0x0

    move v5, v4

    move v4, v3

    :goto_5
    if-ge v4, v8, :cond_7

    const/4 v3, 0x1

    shl-int/2addr v3, v4

    and-int/2addr v3, v6

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    :goto_6
    iget v9, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    if-ge v3, v9, :cond_6

    iget-object v9, v7, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v9, v9, v2

    aget v10, v9, v3

    iget-object v11, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v11, v11, v5

    aget v11, v11, v3

    xor-int/2addr v10, v11

    aput v10, v9, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_6
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_5

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    return-object v7
.end method

.method public rightMultiply(Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;)Lorg/bouncycastle/pqc/math/linearalgebra/Matrix;
    .locals 11

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->getVector()[I

    move-result-object v2

    array-length v0, v2

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "length mismatch"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    invoke-direct {v3, v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(II)V

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    ushr-int/lit8 v4, v1, 0x5

    and-int/lit8 v5, v1, 0x1f

    aget v0, v2, v1

    ushr-int/lit8 v6, v0, 0x5

    aget v0, v2, v1

    and-int/lit8 v7, v0, 0x1f

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    iget-object v8, v3, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v8, v8, v0

    aget v9, v8, v4

    iget-object v10, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v10, v10, v0

    aget v10, v10, v6

    ushr-int/2addr v10, v7

    and-int/lit8 v10, v10, 0x1

    shl-int/2addr v10, v5

    or-int/2addr v9, v10

    aput v9, v8, v4

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method public rightMultiply(Lorg/bouncycastle/pqc/math/linearalgebra/Vector;)Lorg/bouncycastle/pqc/math/linearalgebra/Vector;
    .locals 9

    const/4 v8, 0x1

    const/4 v1, 0x0

    instance-of v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "vector is not defined over GF(2)"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/Vector;->length:I

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    if-eq v0, v2, :cond_1

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "length mismatch"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->getVecArray()[I

    move-result-object v5

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    add-int/lit8 v0, v0, 0x1f

    ushr-int/lit8 v0, v0, 0x5

    new-array v6, v0, [I

    move v0, v1

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-ge v0, v2, :cond_5

    move v2, v1

    move v3, v1

    :goto_1
    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    if-ge v2, v4, :cond_2

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v4, v4, v0

    aget v4, v4, v2

    aget v7, v5, v2

    and-int/2addr v4, v7

    xor-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v2, v1

    move v4, v1

    :goto_2
    const/16 v7, 0x20

    if-ge v2, v7, :cond_3

    ushr-int v7, v3, v2

    and-int/lit8 v7, v7, 0x1

    xor-int/2addr v4, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    if-ne v4, v8, :cond_4

    ushr-int/lit8 v2, v0, 0x5

    aget v3, v6, v2

    and-int/lit8 v4, v0, 0x1f

    shl-int v4, v8, v4

    or-int/2addr v3, v4

    aput v3, v6, v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    invoke-direct {v0, v6, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;-><init>([II)V

    return-object v0
.end method

.method public rightMultiplyRightCompactForm(Lorg/bouncycastle/pqc/math/linearalgebra/Vector;)Lorg/bouncycastle/pqc/math/linearalgebra/Vector;
    .locals 13

    const/4 v12, 0x1

    const/4 v1, 0x0

    instance-of v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "vector is not defined over GF(2)"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/Vector;->length:I

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    add-int/2addr v2, v3

    if-eq v0, v2, :cond_1

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "length mismatch"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->getVecArray()[I

    move-result-object v7

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    add-int/lit8 v0, v0, 0x1f

    ushr-int/lit8 v0, v0, 0x5

    new-array v8, v0, [I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    shr-int/lit8 v4, v0, 0x5

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    and-int/lit8 v9, v0, 0x1f

    move v0, v1

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-ge v0, v2, :cond_8

    shr-int/lit8 v2, v0, 0x5

    aget v2, v7, v2

    and-int/lit8 v3, v0, 0x1f

    ushr-int/2addr v2, v3

    and-int/lit8 v2, v2, 0x1

    if-eqz v9, :cond_5

    move v3, v4

    move v6, v2

    move v2, v1

    :goto_1
    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_2

    add-int/lit8 v5, v3, 0x1

    aget v3, v7, v3

    ushr-int/2addr v3, v9

    aget v10, v7, v5

    rsub-int/lit8 v11, v9, 0x20

    shl-int/2addr v10, v11

    or-int/2addr v3, v10

    iget-object v10, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v10, v10, v0

    aget v10, v10, v2

    and-int/2addr v3, v10

    xor-int/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    move v6, v3

    move v3, v5

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v3, 0x1

    aget v2, v7, v3

    ushr-int/2addr v2, v9

    array-length v3, v7

    if-ge v5, v3, :cond_3

    aget v3, v7, v5

    rsub-int/lit8 v5, v9, 0x20

    shl-int/2addr v3, v5

    or-int/2addr v2, v3

    :cond_3
    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v3, v3, v0

    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    add-int/lit8 v5, v5, -0x1

    aget v3, v3, v5

    and-int/2addr v2, v3

    xor-int/2addr v6, v2

    :cond_4
    move v2, v1

    move v3, v1

    :goto_2
    const/16 v5, 0x20

    if-ge v2, v5, :cond_6

    and-int/lit8 v5, v6, 0x1

    xor-int/2addr v3, v5

    ushr-int/lit8 v6, v6, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    move v3, v4

    move v6, v2

    move v2, v1

    :goto_3
    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    if-ge v2, v5, :cond_4

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v5, v5, v0

    aget v10, v5, v2

    add-int/lit8 v5, v3, 0x1

    aget v3, v7, v3

    and-int/2addr v3, v10

    xor-int/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    move v6, v3

    move v3, v5

    goto :goto_3

    :cond_6
    if-ne v3, v12, :cond_7

    shr-int/lit8 v2, v0, 0x5

    aget v3, v8, v2

    and-int/lit8 v5, v0, 0x1f

    shl-int v5, v12, v5

    or-int/2addr v3, v5

    aput v3, v8, v2

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    invoke-direct {v0, v8, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;-><init>([II)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    const/16 v11, 0x31

    const/16 v10, 0x30

    const/16 v9, 0x20

    const/4 v2, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numColumns:I

    and-int/lit8 v5, v0, 0x1f

    if-nez v5, :cond_0

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    :goto_0
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    move v1, v2

    :goto_1
    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->numRows:I

    if-ge v1, v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v4, v2

    :goto_2
    if-ge v4, v0, :cond_3

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v3, v3, v1

    aget v7, v3, v4

    move v3, v2

    :goto_3
    if-ge v3, v9, :cond_2

    ushr-int v8, v7, v3

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_1

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_2
    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v3, v3, v1

    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->length:I

    add-int/lit8 v4, v4, -0x1

    aget v4, v3, v4

    move v3, v2

    :goto_5
    if-ge v3, v5, :cond_5

    ushr-int v7, v4, v3

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_4

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_4
    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6

    :cond_5
    const/16 v3, 0xa

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
