.class public Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;
.super Lorg/bouncycastle/pqc/math/linearalgebra/Vector;


# instance fields
.field private v:[I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/Vector;-><init>()V

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Negative length."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    add-int/lit8 v0, p1, 0x1f

    shr-int/lit8 v0, v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    return-void
.end method

.method public constructor <init>(IILjava/security/SecureRandom;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/Vector;-><init>()V

    if-le p2, p1, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "The hamming weight is greater than the length of vector."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    add-int/lit8 v1, p1, 0x1f

    shr-int/lit8 v1, v1, 0x5

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    new-array v2, p1, [I

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    aput v1, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v0, p2, :cond_2

    invoke-static {p3, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/RandUtils;->nextInt(Ljava/security/SecureRandom;I)I

    move-result v1

    aget v3, v2, v1

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->setBit(I)V

    add-int/lit8 p1, p1, -0x1

    aget v3, v2, p1

    aput v3, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public constructor <init>(ILjava/security/SecureRandom;)V
    .locals 5

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/Vector;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    add-int/lit8 v0, p1, 0x1f

    shr-int/lit8 v1, v0, 0x5

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    invoke-virtual {p2}, Ljava/security/SecureRandom;->nextInt()I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    and-int/lit8 v0, p1, 0x1f

    if-eqz v0, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v2, v1

    const/4 v4, 0x1

    shl-int v0, v4, v0

    add-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v3

    aput v0, v2, v1

    :cond_1
    return-void
.end method

.method public constructor <init>(I[I)V
    .locals 5

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/Vector;-><init>()V

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "negative length"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    add-int/lit8 v0, p1, 0x1f

    shr-int/lit8 v0, v0, 0x5

    array-length v1, p2

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "length mismatch"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p2}, Lorg/bouncycastle/pqc/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    and-int/lit8 v1, p1, 0x1f

    if-eqz v1, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    add-int/lit8 v0, v0, -0x1

    aget v3, v2, v0

    const/4 v4, 0x1

    shl-int v1, v4, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, v3

    aput v1, v2, v0

    :cond_2
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/Vector;-><init>()V

    iget v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    iget-object v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    return-void
.end method

.method protected constructor <init>([II)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/Vector;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    iput p2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    return-void
.end method

.method public static OS2VP(I[B)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;
    .locals 2

    if-gez p0, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "negative length"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/lit8 v0, p0, 0x7

    shr-int/lit8 v0, v0, 0x3

    array-length v1, p1

    if-le v1, v0, :cond_1

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "length mismatch"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    invoke-static {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/LittleEndianConversions;->toIntArray([B)[I

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;-><init>(I[I)V

    return-object v0
.end method


# virtual methods
.method public add(Lorg/bouncycastle/pqc/math/linearalgebra/Vector;)Lorg/bouncycastle/pqc/math/linearalgebra/Vector;
    .locals 4

    instance-of v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "vector is not defined over GF(2)"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    iget v0, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "length mismatch"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    iget-object v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v1

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    aget v2, v1, v0

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    aget v3, v3, v0

    xor-int/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;-><init>(I[I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    iget v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    iget-object v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/IntUtils;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public extractLeftVector(I)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;
    .locals 6

    const/4 v5, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    if-le p1, v0, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "invalid length"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    if-ne p1, v0, :cond_2

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;)V

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    invoke-direct {v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;-><init>(I)V

    shr-int/lit8 v1, p1, 0x5

    and-int/lit8 v2, p1, 0x1f

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    iget-object v4, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    invoke-static {v3, v5, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz v2, :cond_1

    iget-object v3, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    aget v4, v4, v1

    const/4 v5, 0x1

    shl-int v2, v5, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v2, v4

    aput v2, v3, v1

    goto :goto_0
.end method

.method public extractRightVector(I)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;
    .locals 9

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    if-le p1, v0, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "invalid length"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    if-ne p1, v0, :cond_2

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;)V

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    invoke-direct {v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;-><init>(I)V

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    sub-int/2addr v2, p1

    shr-int/lit8 v2, v2, 0x5

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    sub-int/2addr v3, p1

    and-int/lit8 v4, v3, 0x1f

    add-int/lit8 v3, p1, 0x1f

    shr-int/lit8 v5, v3, 0x5

    if-eqz v4, :cond_4

    :goto_1
    add-int/lit8 v3, v5, -0x1

    if-ge v1, v3, :cond_3

    iget-object v6, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    iget-object v7, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    add-int/lit8 v3, v2, 0x1

    aget v2, v7, v2

    ushr-int/2addr v2, v4

    iget-object v7, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    aget v7, v7, v3

    rsub-int/lit8 v8, v4, 0x20

    shl-int/2addr v7, v8

    or-int/2addr v2, v7

    aput v2, v6, v1

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_1

    :cond_3
    iget-object v1, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    add-int/lit8 v3, v5, -0x1

    iget-object v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    add-int/lit8 v7, v2, 0x1

    aget v2, v6, v2

    ushr-int/2addr v2, v4

    aput v2, v1, v3

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    array-length v1, v1

    if-ge v7, v1, :cond_1

    iget-object v1, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    add-int/lit8 v2, v5, -0x1

    aget v3, v1, v2

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    aget v5, v5, v7

    rsub-int/lit8 v4, v4, 0x20

    shl-int v4, v5, v4

    or-int/2addr v3, v4

    aput v3, v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    iget-object v4, v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    invoke-static {v3, v2, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public extractVector([I)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;
    .locals 8

    const/4 v7, 0x1

    array-length v1, p1

    add-int/lit8 v0, v1, -0x1

    aget v0, p1, v0

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    if-le v0, v2, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "invalid index set"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    invoke-direct {v2, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    aget v4, p1, v0

    shr-int/lit8 v4, v4, 0x5

    aget v3, v3, v4

    aget v4, p1, v0

    and-int/lit8 v4, v4, 0x1f

    shl-int v4, v7, v4

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    iget-object v3, v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    shr-int/lit8 v4, v0, 0x5

    aget v5, v3, v4

    and-int/lit8 v6, v0, 0x1f

    shl-int v6, v7, v6

    or-int/2addr v5, v6

    aput v5, v3, v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public getBit(I)I
    .locals 3

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    shr-int/lit8 v0, p1, 0x5

    and-int/lit8 v1, p1, 0x1f

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    aget v0, v2, v0

    const/4 v2, 0x1

    shl-int/2addr v2, v1

    and-int/2addr v0, v2

    ushr-int/2addr v0, v1

    return v0
.end method

.method public getEncoded()[B
    .locals 2

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    invoke-static {v1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/LittleEndianConversions;->toByteArray([II)[B

    move-result-object v0

    return-object v0
.end method

.method public getHammingWeight()I
    .locals 6

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    array-length v3, v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    aget v3, v3, v0

    move v4, v3

    move v3, v1

    :goto_1
    const/16 v5, 0x20

    if-ge v3, v5, :cond_1

    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    ushr-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public getVecArray()[I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isZero()Z
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    aget v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public multiply(Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;)Lorg/bouncycastle/pqc/math/linearalgebra/Vector;
    .locals 8

    const/4 v7, 0x1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->getVector()[I

    move-result-object v1

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    array-length v2, v1

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "length mismatch"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    invoke-direct {v2, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    aget v4, v1, v0

    shr-int/lit8 v4, v4, 0x5

    aget v3, v3, v4

    aget v4, v1, v0

    and-int/lit8 v4, v4, 0x1f

    shl-int v4, v7, v4

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    iget-object v3, v2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    shr-int/lit8 v4, v0, 0x5

    aget v5, v3, v4

    and-int/lit8 v6, v0, 0x1f

    shl-int v6, v7, v6

    or-int/2addr v5, v6

    aput v5, v3, v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public setBit(I)V
    .locals 5

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    shr-int/lit8 v1, p1, 0x5

    aget v2, v0, v1

    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, v0, v1

    return-void
.end method

.method public toExtensionFieldVector(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;
    .locals 8

    const/4 v7, 0x1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->getDegree()I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    rem-int/2addr v1, v0

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "conversion is impossible"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    div-int v0, v1, v0

    new-array v3, v0, [I

    const/4 v1, 0x0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_3

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;->getDegree()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    ushr-int/lit8 v4, v1, 0x5

    and-int/lit8 v5, v1, 0x1f

    iget-object v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    aget v4, v6, v4

    ushr-int/2addr v4, v5

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v7, :cond_1

    aget v4, v3, v2

    shl-int v5, v7, v0

    xor-int/2addr v4, v5

    aput v4, v3, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_3
    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;

    invoke-direct {v0, p1, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mVector;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;[I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    if-ge v0, v2, :cond_2

    if-eqz v0, :cond_0

    and-int/lit8 v2, v0, 0x1f

    if-nez v2, :cond_0

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    shr-int/lit8 v2, v0, 0x5

    and-int/lit8 v3, v0, 0x1f

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    aget v2, v4, v2

    const/4 v4, 0x1

    shl-int v3, v4, v3

    and-int/2addr v2, v3

    if-nez v2, :cond_1

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v2, 0x31

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
