.class public abstract Lorg/bouncycastle/math/raw/Mod;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add([I[I[I[I)V
    .locals 2

    array-length v0, p0

    invoke-static {v0, p1, p2, p3}, Lorg/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0, p0, p3}, Lorg/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    :cond_0
    return-void
.end method

.method private static getTrailingZeroes(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v1, p0, 0x1

    if-nez v1, :cond_0

    ushr-int/lit8 p0, p0, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static inverse32(I)I
    .locals 2

    mul-int v0, p0, p0

    rsub-int/lit8 v0, v0, 0x2

    mul-int/2addr v0, p0

    mul-int v1, p0, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int/2addr v0, v1

    mul-int v1, p0, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int/2addr v0, v1

    mul-int v1, p0, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int/2addr v0, v1

    return v0
.end method

.method private static inversionResult([II[I[I)V
    .locals 2

    const/4 v1, 0x0

    if-gez p1, :cond_0

    array-length v0, p0

    invoke-static {v0, p2, p0, p3}, Lorg/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    :goto_0
    return-void

    :cond_0
    array-length v0, p0

    invoke-static {p2, v1, p3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private static inversionStep([I[II[II)I
    .locals 6

    const/4 v1, 0x0

    array-length v4, p0

    move v0, v1

    :goto_0
    aget v2, p1, v1

    if-nez v2, :cond_0

    invoke-static {p2, p1, v1}, Lorg/bouncycastle/math/raw/Nat;->shiftDownWord(I[II)I

    add-int/lit8 v0, v0, 0x20

    goto :goto_0

    :cond_0
    aget v2, p1, v1

    invoke-static {v2}, Lorg/bouncycastle/math/raw/Mod;->getTrailingZeroes(I)I

    move-result v2

    if-lez v2, :cond_1

    invoke-static {p2, p1, v2, v1}, Lorg/bouncycastle/math/raw/Nat;->shiftDownBits(I[III)I

    add-int/2addr v0, v2

    :cond_1
    move v3, v1

    move v2, p4

    :goto_1
    if-ge v3, v0, :cond_4

    aget v5, p3, v1

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    if-gez v2, :cond_3

    invoke-static {v4, p0, p3}, Lorg/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result v5

    add-int/2addr v2, v5

    :cond_2
    :goto_2
    invoke-static {v4, p3, v2}, Lorg/bouncycastle/math/raw/Nat;->shiftDownBit(I[II)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-static {v4, p0, p3}, Lorg/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_2

    :cond_4
    return v2
.end method

.method public static invert([I[I[I)V
    .locals 9

    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {v2, p1}, Lorg/bouncycastle/math/raw/Nat;->isZero(I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'x\' cannot be 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {v2, p1}, Lorg/bouncycastle/math/raw/Nat;->isOne(I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1, v1, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-void

    :cond_1
    invoke-static {v2, p1}, Lorg/bouncycastle/math/raw/Nat;->copy(I[I)[I

    move-result-object v4

    invoke-static {v2}, Lorg/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v5

    const/4 v0, 0x1

    aput v0, v5, v1

    aget v0, v4, v1

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_6

    invoke-static {p0, v4, v2, v5, v1}, Lorg/bouncycastle/math/raw/Mod;->inversionStep([I[II[II)I

    move-result v0

    :goto_1
    invoke-static {v2, v4}, Lorg/bouncycastle/math/raw/Nat;->isOne(I[I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p0, v0, v5, p2}, Lorg/bouncycastle/math/raw/Mod;->inversionResult([II[I[I)V

    goto :goto_0

    :cond_2
    invoke-static {v2, p0}, Lorg/bouncycastle/math/raw/Nat;->copy(I[I)[I

    move-result-object v6

    invoke-static {v2}, Lorg/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v7

    move v3, v0

    move v0, v2

    :cond_3
    :goto_2
    add-int/lit8 v8, v0, -0x1

    aget v8, v4, v8

    if-nez v8, :cond_4

    add-int/lit8 v8, v0, -0x1

    aget v8, v6, v8

    if-nez v8, :cond_4

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    invoke-static {v0, v4, v6}, Lorg/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {v0, v6, v4}, Lorg/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    invoke-static {v2, v7, v5}, Lorg/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    move-result v8

    sub-int/2addr v8, v1

    add-int/2addr v3, v8

    invoke-static {p0, v4, v0, v5, v3}, Lorg/bouncycastle/math/raw/Mod;->inversionStep([I[II[II)I

    move-result v3

    invoke-static {v0, v4}, Lorg/bouncycastle/math/raw/Nat;->isOne(I[I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {p0, v3, v5, p2}, Lorg/bouncycastle/math/raw/Mod;->inversionResult([II[I[I)V

    goto :goto_0

    :cond_5
    invoke-static {v0, v4, v6}, Lorg/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    invoke-static {v2, v5, v7}, Lorg/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    move-result v8

    sub-int/2addr v8, v3

    add-int/2addr v1, v8

    invoke-static {p0, v6, v0, v7, v1}, Lorg/bouncycastle/math/raw/Mod;->inversionStep([I[II[II)I

    move-result v1

    invoke-static {v0, v6}, Lorg/bouncycastle/math/raw/Nat;->isOne(I[I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {p0, v1, v7, p2}, Lorg/bouncycastle/math/raw/Mod;->inversionResult([II[I[I)V

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method public static random([I)[I
    .locals 6

    array-length v1, p0

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-static {v1}, Lorg/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v3

    add-int/lit8 v0, v1, -0x1

    aget v0, p0, v0

    ushr-int/lit8 v4, v0, 0x1

    or-int/2addr v0, v4

    ushr-int/lit8 v4, v0, 0x2

    or-int/2addr v0, v4

    ushr-int/lit8 v4, v0, 0x4

    or-int/2addr v0, v4

    ushr-int/lit8 v4, v0, 0x8

    or-int/2addr v0, v4

    ushr-int/lit8 v4, v0, 0x10

    or-int/2addr v4, v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eq v0, v1, :cond_1

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v5

    aput v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v1, -0x1

    aget v5, v3, v0

    and-int/2addr v5, v4

    aput v5, v3, v0

    invoke-static {v1, v3, p0}, Lorg/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object v3
.end method

.method public static subtract([I[I[I[I)V
    .locals 2

    array-length v0, p0

    invoke-static {v0, p1, p2, p3}, Lorg/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0, p0, p3}, Lorg/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    :cond_0
    return-void
.end method
