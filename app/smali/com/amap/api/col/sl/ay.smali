.class public final Lcom/amap/api/col/sl/ay;
.super Ljava/lang/Object;
.source "XXTEA.java"


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    sput v0, Lcom/amap/api/col/sl/ay;->a:I

    return-void
.end method

.method public static a([B[B)[B
    .locals 13

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    return-object p0

    :cond_1
    array-length v0, p0

    sget v1, Lcom/amap/api/col/sl/ay;->a:I

    sget v2, Lcom/amap/api/col/sl/ay;->a:I

    rem-int v2, v0, v2

    sub-int/2addr v1, v2

    sget v2, Lcom/amap/api/col/sl/ay;->a:I

    div-int v2, v0, v2

    add-int/lit8 v2, v2, 0x1

    sget v3, Lcom/amap/api/col/sl/ay;->a:I

    mul-int/2addr v2, v3

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v5, p0

    invoke-static {p0, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    int-to-byte v3, v1

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lcom/amap/api/col/sl/ay;->a([B)[I

    move-result-object v5

    invoke-static {p1}, Lcom/amap/api/col/sl/ay;->a([B)[I

    move-result-object v1

    array-length v0, v5

    add-int/lit8 v6, v0, -0x1

    if-lez v6, :cond_4

    array-length v0, v1

    const/4 v2, 0x4

    if-ge v0, v2, :cond_5

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    aget v3, v5, v6

    const/4 v2, 0x0

    const/16 v1, 0x34

    add-int/lit8 v4, v6, 0x1

    div-int/2addr v1, v4

    add-int/lit8 v1, v1, 0x6

    move v4, v2

    move v2, v3

    :goto_2
    add-int/lit8 v3, v1, -0x1

    if-lez v1, :cond_4

    const v1, -0x61c88647

    add-int/2addr v4, v1

    ushr-int/lit8 v1, v4, 0x2

    and-int/lit8 v7, v1, 0x3

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v6, :cond_3

    add-int/lit8 v8, v1, 0x1

    aget v8, v5, v8

    aget v9, v5, v1

    ushr-int/lit8 v10, v2, 0x5

    shl-int/lit8 v11, v8, 0x2

    xor-int/2addr v10, v11

    ushr-int/lit8 v11, v8, 0x3

    shl-int/lit8 v12, v2, 0x4

    xor-int/2addr v11, v12

    add-int/2addr v10, v11

    xor-int/2addr v8, v4

    and-int/lit8 v11, v1, 0x3

    xor-int/2addr v11, v7

    aget v11, v0, v11

    xor-int/2addr v2, v11

    add-int/2addr v2, v8

    xor-int/2addr v2, v10

    add-int/2addr v2, v9

    aput v2, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    aget v8, v5, v8

    aget v9, v5, v6

    ushr-int/lit8 v10, v2, 0x5

    shl-int/lit8 v11, v8, 0x2

    xor-int/2addr v10, v11

    ushr-int/lit8 v11, v8, 0x3

    shl-int/lit8 v12, v2, 0x4

    xor-int/2addr v11, v12

    add-int/2addr v10, v11

    xor-int/2addr v8, v4

    and-int/lit8 v1, v1, 0x3

    xor-int/2addr v1, v7

    aget v1, v0, v1

    xor-int/2addr v1, v2

    add-int/2addr v1, v8

    xor-int/2addr v1, v10

    add-int v2, v9, v1

    aput v2, v5, v6

    move v1, v3

    goto :goto_2

    :cond_4
    array-length v0, v5

    shl-int/lit8 v1, v0, 0x2

    new-array p0, v1, [B

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v1, :cond_0

    ushr-int/lit8 v2, v0, 0x2

    aget v2, v5, v2

    and-int/lit8 v3, v0, 0x3

    shl-int/lit8 v3, v3, 0x3

    ushr-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method private static a([B)[I
    .locals 7

    array-length v0, p0

    ushr-int/lit8 v0, v0, 0x2

    new-array v1, v0, [I

    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    ushr-int/lit8 v3, v0, 0x2

    aget v4, v1, v3

    aget-byte v5, p0, v0

    and-int/lit16 v5, v5, 0xff

    and-int/lit8 v6, v0, 0x3

    shl-int/lit8 v6, v6, 0x3

    shl-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
