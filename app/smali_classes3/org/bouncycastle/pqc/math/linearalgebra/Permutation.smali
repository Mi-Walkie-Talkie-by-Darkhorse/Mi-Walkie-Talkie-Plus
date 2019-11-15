.class public Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;
.super Ljava/lang/Object;


# instance fields
.field private perm:[I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->perm:[I

    add-int/lit8 v0, p1, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->perm:[I

    aput v0, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>(ILjava/security/SecureRandom;)V
    .locals 6

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-array v1, p1, [I

    iput-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->perm:[I

    new-array v2, p1, [I

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    aput v1, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, p1

    :goto_1
    if-ge v0, p1, :cond_2

    invoke-static {p2, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/RandUtils;->nextInt(Ljava/security/SecureRandom;I)I

    move-result v3

    add-int/lit8 v1, v1, -0x1

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->perm:[I

    aget v5, v2, v3

    aput v5, v4, v0

    aget v4, v2, v1

    aput v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public constructor <init>([B)V
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v1, p1

    const/4 v2, 0x4

    if-gt v1, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid encoding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/LittleEndianConversions;->OS2IP([BI)I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    invoke-static {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ceilLog256(I)I

    move-result v2

    array-length v3, p1

    mul-int v4, v1, v2

    add-int/lit8 v4, v4, 0x4

    if-eq v3, v4, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid encoding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-array v3, v1, [I

    iput-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->perm:[I

    :goto_0
    if-ge v0, v1, :cond_2

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->perm:[I

    mul-int v4, v0, v2

    add-int/lit8 v4, v4, 0x4

    invoke-static {p1, v4, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/LittleEndianConversions;->OS2IP([BII)I

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->perm:[I

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->isPermutation([I)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid encoding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method

.method public constructor <init>([I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->isPermutation([I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "array is not a permutation vector"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->perm:[I

    return-void
.end method

.method private isPermutation([I)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    array-length v3, p1

    new-array v4, v3, [Z

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_2

    aget v5, p1, v2

    if-ltz v5, :cond_0

    aget v5, p1, v2

    if-ge v5, v3, :cond_0

    aget v5, p1, v2

    aget-boolean v5, v4, v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_1
    return v0

    :cond_1
    aget v5, p1, v2

    aput-boolean v1, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public computeInverse()Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;
    .locals 4

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->perm:[I

    array-length v0, v0

    invoke-direct {v1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;-><init>(I)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->perm:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v2, v1, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->perm:[I

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->perm:[I

    aget v3, v3, v0

    aput v0, v2, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    check-cast p1, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->perm:[I

    iget-object v1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->perm:[I

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/IntUtils;->equals([I[I)Z

    move-result v0

    goto :goto_0
.end method

.method public getEncoded()[B
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->perm:[I

    array-length v1, v1

    add-int/lit8 v2, v1, -0x1

    invoke-static {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ceilLog256(I)I

    move-result v2

    mul-int v3, v1, v2

    add-int/lit8 v3, v3, 0x4

    new-array v3, v3, [B

    invoke-static {v1, v3, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/LittleEndianConversions;->I2OSP(I[BI)V

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->perm:[I

    aget v4, v4, v0

    mul-int v5, v0, v2

    add-int/lit8 v5, v5, 0x4

    invoke-static {v4, v3, v5, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/LittleEndianConversions;->I2OSP(I[BII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method public getVector()[I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->perm:[I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->perm:[I

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public rightMultiply(Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;)Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;
    .locals 5

    iget-object v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->perm:[I

    array-length v0, v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->perm:[I

    array-length v1, v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length mismatch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->perm:[I

    array-length v0, v0

    invoke-direct {v1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;-><init>(I)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->perm:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, v1, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->perm:[I

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->perm:[I

    iget-object v4, p1, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->perm:[I

    aget v4, v4, v0

    aget v3, v3, v4

    aput v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->perm:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->perm:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;->perm:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
