.class public final Lorg/bouncycastle/pqc/math/linearalgebra/CharUtils;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clone([C)[C
    .locals 3

    const/4 v2, 0x0

    array-length v0, p0

    new-array v0, v0, [C

    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static equals([C[C)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    array-length v0, p0

    array-length v3, p1

    if-eq v0, v3, :cond_0

    :goto_0
    return v2

    :cond_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    move v3, v1

    :goto_1
    if-ltz v4, :cond_2

    aget-char v0, p0, v4

    aget-char v5, p1, v4

    if-ne v0, v5, :cond_1

    move v0, v1

    :goto_2
    and-int/2addr v3, v0

    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_2

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method public static toByteArray([C)[B
    .locals 3

    array-length v0, p0

    new-array v1, v0, [B

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    aget-char v2, p0, v0

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static toByteArrayForPBE([C)[B
    .locals 7

    const/4 v1, 0x0

    array-length v0, p0

    new-array v2, v0, [B

    move v0, v1

    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    aget-char v3, p0, v0

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    array-length v0, v2

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v0, v3, 0x2

    new-array v4, v0, [B

    move v0, v1

    :goto_1
    array-length v5, v2

    if-ge v0, v5, :cond_1

    mul-int/lit8 v5, v0, 0x2

    aput-byte v1, v4, v5

    add-int/lit8 v5, v5, 0x1

    aget-byte v6, v2, v0

    aput-byte v6, v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    aput-byte v1, v4, v3

    add-int/lit8 v0, v3, 0x1

    aput-byte v1, v4, v0

    return-object v4
.end method
