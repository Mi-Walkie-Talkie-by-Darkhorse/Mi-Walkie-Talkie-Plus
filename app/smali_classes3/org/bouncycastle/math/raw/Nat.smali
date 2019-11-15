.class public abstract Lorg/bouncycastle/math/raw/Nat;
.super Ljava/lang/Object;


# static fields
.field private static final M:J = 0xffffffffL


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(I[I[I[I)I
    .locals 10

    const-wide v8, 0xffffffffL

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    aget v1, p1, v0

    int-to-long v4, v1

    and-long/2addr v4, v8

    aget v1, p2, v0

    int-to-long v6, v1

    and-long/2addr v6, v8

    add-long/2addr v4, v6

    add-long/2addr v2, v4

    long-to-int v1, v2

    aput v1, p3, v0

    const/16 v1, 0x20

    ushr-long/2addr v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    long-to-int v0, v2

    return v0
.end method

.method public static add33At(II[II)I
    .locals 7

    const/16 v6, 0x20

    const-wide v4, 0xffffffffL

    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    and-long/2addr v0, v4

    int-to-long v2, p1

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p3, 0x0

    long-to-int v3, v0

    aput v3, p2, v2

    ushr-long/2addr v0, v6

    add-int/lit8 v2, p3, 0x1

    aget v2, p2, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p3, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    ushr-long/2addr v0, v6

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p3, 0x2

    invoke-static {p0, p2, v0}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v0

    goto :goto_0
.end method

.method public static add33At(II[III)I
    .locals 7

    const/16 v6, 0x20

    const-wide v4, 0xffffffffL

    add-int v0, p3, p4

    aget v0, p2, v0

    int-to-long v0, v0

    and-long/2addr v0, v4

    int-to-long v2, p1

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int v2, p3, p4

    long-to-int v3, v0

    aput v3, p2, v2

    ushr-long/2addr v0, v6

    add-int v2, p3, p4

    add-int/lit8 v2, v2, 0x1

    aget v2, p2, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int v2, p3, p4

    add-int/lit8 v2, v2, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    ushr-long/2addr v0, v6

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p4, 0x2

    invoke-static {p0, p2, p3, v0}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v0

    goto :goto_0
.end method

.method public static add33To(II[I)I
    .locals 10

    const/16 v9, 0x20

    const/4 v8, 0x1

    const-wide v6, 0xffffffffL

    const/4 v0, 0x0

    aget v1, p2, v0

    int-to-long v2, v1

    and-long/2addr v2, v6

    int-to-long v4, p1

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    long-to-int v1, v2

    aput v1, p2, v0

    ushr-long/2addr v2, v9

    aget v1, p2, v8

    int-to-long v4, v1

    and-long/2addr v4, v6

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    add-long/2addr v2, v4

    long-to-int v1, v2

    aput v1, p2, v8

    ushr-long/2addr v2, v9

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    invoke-static {p0, p2, v0}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v0

    goto :goto_0
.end method

.method public static add33To(II[II)I
    .locals 7

    const/16 v6, 0x20

    const-wide v4, 0xffffffffL

    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    and-long/2addr v0, v4

    int-to-long v2, p1

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p3, 0x0

    long-to-int v3, v0

    aput v3, p2, v2

    ushr-long/2addr v0, v6

    add-int/lit8 v2, p3, 0x1

    aget v2, p2, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p3, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    ushr-long/2addr v0, v6

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    invoke-static {p0, p2, p3, v0}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v0

    goto :goto_0
.end method

.method public static addBothTo(I[II[II[II)I
    .locals 10

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    add-int v1, p2, v0

    aget v1, p1, v1

    int-to-long v4, v1

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    add-int v1, p4, v0

    aget v1, p3, v1

    int-to-long v6, v1

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    add-long/2addr v4, v6

    add-int v1, p6, v0

    aget v1, p5, v1

    int-to-long v6, v1

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    add-long/2addr v4, v6

    add-long/2addr v2, v4

    add-int v1, p6, v0

    long-to-int v4, v2

    aput v4, p5, v1

    const/16 v1, 0x20

    ushr-long/2addr v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    long-to-int v0, v2

    return v0
.end method

.method public static addBothTo(I[I[I[I)I
    .locals 10

    const-wide v8, 0xffffffffL

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    aget v1, p1, v0

    int-to-long v4, v1

    and-long/2addr v4, v8

    aget v1, p2, v0

    int-to-long v6, v1

    and-long/2addr v6, v8

    add-long/2addr v4, v6

    aget v1, p3, v0

    int-to-long v6, v1

    and-long/2addr v6, v8

    add-long/2addr v4, v6

    add-long/2addr v2, v4

    long-to-int v1, v2

    aput v1, p3, v0

    const/16 v1, 0x20

    ushr-long/2addr v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    long-to-int v0, v2

    return v0
.end method

.method public static addDWordAt(IJ[II)I
    .locals 7

    const-wide v4, 0xffffffffL

    const/16 v6, 0x20

    add-int/lit8 v0, p4, 0x0

    aget v0, p3, v0

    int-to-long v0, v0

    and-long/2addr v0, v4

    and-long v2, p1, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p4, 0x0

    long-to-int v3, v0

    aput v3, p3, v2

    ushr-long/2addr v0, v6

    add-int/lit8 v2, p4, 0x1

    aget v2, p3, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    ushr-long v4, p1, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p4, 0x1

    long-to-int v3, v0

    aput v3, p3, v2

    ushr-long/2addr v0, v6

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p4, 0x2

    invoke-static {p0, p3, v0}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v0

    goto :goto_0
.end method

.method public static addDWordAt(IJ[III)I
    .locals 7

    const-wide v4, 0xffffffffL

    const/16 v6, 0x20

    add-int v0, p4, p5

    aget v0, p3, v0

    int-to-long v0, v0

    and-long/2addr v0, v4

    and-long v2, p1, v4

    add-long/2addr v0, v2

    add-int v2, p4, p5

    long-to-int v3, v0

    aput v3, p3, v2

    ushr-long/2addr v0, v6

    add-int v2, p4, p5

    add-int/lit8 v2, v2, 0x1

    aget v2, p3, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    ushr-long v4, p1, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int v2, p4, p5

    add-int/lit8 v2, v2, 0x1

    long-to-int v3, v0

    aput v3, p3, v2

    ushr-long/2addr v0, v6

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p5, 0x2

    invoke-static {p0, p3, p4, v0}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v0

    goto :goto_0
.end method

.method public static addDWordTo(IJ[I)I
    .locals 11

    const/4 v9, 0x1

    const-wide v6, 0xffffffffL

    const/16 v8, 0x20

    const/4 v0, 0x0

    aget v1, p3, v0

    int-to-long v2, v1

    and-long/2addr v2, v6

    and-long v4, p1, v6

    add-long/2addr v2, v4

    long-to-int v1, v2

    aput v1, p3, v0

    ushr-long/2addr v2, v8

    aget v1, p3, v9

    int-to-long v4, v1

    and-long/2addr v4, v6

    ushr-long v6, p1, v8

    add-long/2addr v4, v6

    add-long/2addr v2, v4

    long-to-int v1, v2

    aput v1, p3, v9

    ushr-long/2addr v2, v8

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    invoke-static {p0, p3, v0}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v0

    goto :goto_0
.end method

.method public static addDWordTo(IJ[II)I
    .locals 7

    const-wide v4, 0xffffffffL

    const/16 v6, 0x20

    add-int/lit8 v0, p4, 0x0

    aget v0, p3, v0

    int-to-long v0, v0

    and-long/2addr v0, v4

    and-long v2, p1, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p4, 0x0

    long-to-int v3, v0

    aput v3, p3, v2

    ushr-long/2addr v0, v6

    add-int/lit8 v2, p4, 0x1

    aget v2, p3, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    ushr-long v4, p1, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p4, 0x1

    long-to-int v3, v0

    aput v3, p3, v2

    ushr-long/2addr v0, v6

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    invoke-static {p0, p3, p4, v0}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v0

    goto :goto_0
.end method

.method public static addTo(I[II[II)I
    .locals 10

    const-wide v8, 0xffffffffL

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    add-int v1, p2, v0

    aget v1, p1, v1

    int-to-long v4, v1

    and-long/2addr v4, v8

    add-int v1, p4, v0

    aget v1, p3, v1

    int-to-long v6, v1

    and-long/2addr v6, v8

    add-long/2addr v4, v6

    add-long/2addr v2, v4

    add-int v1, p4, v0

    long-to-int v4, v2

    aput v4, p3, v1

    const/16 v1, 0x20

    ushr-long/2addr v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    long-to-int v0, v2

    return v0
.end method

.method public static addTo(I[I[I)I
    .locals 10

    const-wide v8, 0xffffffffL

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    aget v1, p1, v0

    int-to-long v4, v1

    and-long/2addr v4, v8

    aget v1, p2, v0

    int-to-long v6, v1

    and-long/2addr v6, v8

    add-long/2addr v4, v6

    add-long/2addr v2, v4

    long-to-int v1, v2

    aput v1, p2, v0

    const/16 v1, 0x20

    ushr-long/2addr v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    long-to-int v0, v2

    return v0
.end method

.method public static addWordAt(II[II)I
    .locals 6

    const-wide v4, 0xffffffffL

    int-to-long v0, p1

    and-long/2addr v0, v4

    aget v2, p2, p3

    int-to-long v2, v2

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int v2, v0

    aput v2, p2, p3

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p3, 0x1

    invoke-static {p0, p2, v0}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v0

    goto :goto_0
.end method

.method public static addWordAt(II[III)I
    .locals 6

    const-wide v4, 0xffffffffL

    int-to-long v0, p1

    and-long/2addr v0, v4

    add-int v2, p3, p4

    aget v2, p2, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int v2, p3, p4

    long-to-int v3, v0

    aput v3, p2, v2

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p4, 0x1

    invoke-static {p0, p2, p3, v0}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v0

    goto :goto_0
.end method

.method public static addWordTo(II[I)I
    .locals 8

    const-wide v6, 0xffffffffL

    const/4 v0, 0x0

    int-to-long v2, p1

    and-long/2addr v2, v6

    aget v1, p2, v0

    int-to-long v4, v1

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    long-to-int v1, v2

    aput v1, p2, v0

    const/16 v1, 0x20

    ushr-long/2addr v2, v1

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, p2, v0}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v0

    goto :goto_0
.end method

.method public static addWordTo(II[II)I
    .locals 6

    const-wide v4, 0xffffffffL

    int-to-long v0, p1

    and-long/2addr v0, v4

    aget v2, p2, p3

    int-to-long v2, v2

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int v2, v0

    aput v2, p2, p3

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, p2, p3, v0}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v0

    goto :goto_0
.end method

.method public static copy(I[I[I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0, p2, v0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static copy(I[I)[I
    .locals 2

    const/4 v1, 0x0

    new-array v0, p0, [I

    invoke-static {p1, v1, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static create(I)[I
    .locals 1

    new-array v0, p0, [I

    return-object v0
.end method

.method public static create64(I)[J
    .locals 1

    new-array v0, p0, [J

    return-object v0
.end method

.method public static dec(I[I)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    move v2, v0

    :goto_0
    if-ge v2, p0, :cond_1

    aget v3, p1, v2

    add-int/lit8 v3, v3, -0x1

    aput v3, p1, v2

    if-eq v3, v1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static dec(I[I[I)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    move v2, v0

    :cond_0
    if-ge v2, p0, :cond_1

    aget v3, p1, v2

    add-int/lit8 v3, v3, -0x1

    aput v3, p2, v2

    add-int/lit8 v2, v2, 0x1

    if-eq v3, v1, :cond_0

    move v1, v2

    :goto_0
    if-ge v1, p0, :cond_2

    aget v2, p1, v1

    aput v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :cond_2
    return v0
.end method

.method public static decAt(I[II)I
    .locals 2

    const/4 v0, -0x1

    :goto_0
    if-ge p2, p0, :cond_0

    aget v1, p1, p2

    add-int/lit8 v1, v1, -0x1

    aput v1, p1, p2

    if-eq v1, v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    return v0

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public static decAt(I[III)I
    .locals 3

    const/4 v0, -0x1

    :goto_0
    if-ge p3, p0, :cond_0

    add-int v1, p2, p3

    aget v2, p1, v1

    add-int/lit8 v2, v2, -0x1

    aput v2, p1, v1

    if-eq v2, v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    return v0

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0
.end method

.method public static eq(I[I[I)Z
    .locals 3

    add-int/lit8 v0, p0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    aget v1, p1, v0

    aget v2, p2, v0

    if-eq v1, v2, :cond_0

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

.method public static fromBigInteger(ILjava/math/BigInteger;)[I
    .locals 4

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-le v0, p0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    add-int/lit8 v0, p0, 0x1f

    shr-int/lit8 v0, v0, 0x5

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    aput v3, v2, v0

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    move v0, v1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public static getBit([II)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    aget v0, p0, v0

    and-int/lit8 v0, v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    shr-int/lit8 v1, p1, 0x5

    if-ltz v1, :cond_0

    array-length v2, p0

    if-ge v1, v2, :cond_0

    and-int/lit8 v0, p1, 0x1f

    aget v1, p0, v1

    ushr-int v0, v1, v0

    and-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static gte(I[I[I)Z
    .locals 5

    const/4 v0, 0x1

    const/high16 v4, -0x80000000

    add-int/lit8 v1, p0, -0x1

    :goto_0
    if-ltz v1, :cond_0

    aget v2, p1, v1

    xor-int/2addr v2, v4

    aget v3, p2, v1

    xor-int/2addr v3, v4

    if-ge v2, v3, :cond_1

    const/4 v0, 0x0

    :cond_0
    return v0

    :cond_1
    if-gt v2, v3, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public static inc(I[I)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    aget v2, p1, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, p1, v1

    if-eqz v2, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static inc(I[I[I)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    if-ge v1, p0, :cond_1

    aget v2, p1, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    if-eqz v2, :cond_0

    :goto_0
    if-ge v1, p0, :cond_2

    aget v2, p1, v1

    aput v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static incAt(I[II)I
    .locals 1

    :goto_0
    if-ge p2, p0, :cond_1

    aget v0, p1, p2

    add-int/lit8 v0, v0, 0x1

    aput v0, p1, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static incAt(I[III)I
    .locals 2

    :goto_0
    if-ge p3, p0, :cond_1

    add-int v0, p2, p3

    aget v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v0

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static isOne(I[I)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    aget v2, p1, v0

    if-eq v2, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v2, v1

    :goto_1
    if-ge v2, p0, :cond_2

    aget v3, p1, v2

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static isZero(I[I)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    aget v2, p1, v1

    if-eqz v2, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static mul(I[II[II[II)V
    .locals 8

    add-int v6, p6, p0

    aget v1, p1, p2

    move v0, p0

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/raw/Nat;->mulWord(II[II[II)I

    move-result v0

    aput v0, p5, v6

    const/4 v0, 0x1

    move v6, v0

    :goto_0
    if-ge v6, p0, :cond_0

    add-int v0, p6, v6

    add-int v7, v0, p0

    add-int v0, p2, v6

    aget v1, p1, v0

    add-int v5, p6, v6

    move v0, p0

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/raw/Nat;->mulWordAddTo(II[II[II)I

    move-result v0

    aput v0, p5, v7

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static mul(I[I[I[I)V
    .locals 7

    const/4 v3, 0x0

    aget v0, p1, v3

    invoke-static {p0, v0, p2, p3}, Lorg/bouncycastle/math/raw/Nat;->mulWord(II[I[I)I

    move-result v0

    aput v0, p3, p0

    const/4 v5, 0x1

    :goto_0
    if-ge v5, p0, :cond_0

    add-int v6, v5, p0

    aget v1, p1, v5

    move v0, p0

    move-object v2, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/raw/Nat;->mulWordAddTo(II[II[II)I

    move-result v0

    aput v0, p3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static mul31BothAdd(II[II[I[II)I
    .locals 16

    const-wide/16 v4, 0x0

    move/from16 v0, p1

    int-to-long v2, v0

    const-wide v6, 0xffffffffL

    and-long/2addr v6, v2

    move/from16 v0, p3

    int-to-long v2, v0

    const-wide v8, 0xffffffffL

    and-long/2addr v8, v2

    const/4 v2, 0x0

    :cond_0
    aget v3, p2, v2

    int-to-long v10, v3

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    mul-long/2addr v10, v6

    aget v3, p4, v2

    int-to-long v12, v3

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    mul-long/2addr v12, v8

    add-long/2addr v10, v12

    add-int v3, p6, v2

    aget v3, p5, v3

    int-to-long v12, v3

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    add-long/2addr v10, v12

    add-long/2addr v4, v10

    add-int v3, p6, v2

    long-to-int v10, v4

    aput v10, p5, v3

    const/16 v3, 0x20

    ushr-long/2addr v4, v3

    add-int/lit8 v2, v2, 0x1

    move/from16 v0, p0

    if-lt v2, v0, :cond_0

    long-to-int v2, v4

    return v2
.end method

.method public static mulAddTo(I[II[II[II)I
    .locals 12

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    move v6, v0

    move-wide v8, v2

    move/from16 v5, p6

    :goto_0
    if-ge v6, p0, :cond_0

    add-int v0, p2, v6

    aget v1, p1, v0

    move v0, p0

    move-object v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/raw/Nat;->mulWordAddTo(II[II[II)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int v2, v5, p0

    aget v2, p5, v2

    int-to-long v2, v2

    const-wide v10, 0xffffffffL

    and-long/2addr v2, v10

    add-long/2addr v2, v8

    add-long/2addr v0, v2

    add-int v2, v5, p0

    long-to-int v3, v0

    aput v3, p5, v2

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move-wide v8, v2

    goto :goto_0

    :cond_0
    long-to-int v0, v8

    return v0
.end method

.method public static mulAddTo(I[I[I[I)I
    .locals 12

    const-wide v10, 0xffffffffL

    const/4 v3, 0x0

    const-wide/16 v0, 0x0

    move v5, v3

    move-wide v6, v0

    :goto_0
    if-ge v5, p0, :cond_0

    aget v1, p1, v5

    move v0, p0

    move-object v2, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/raw/Nat;->mulWordAddTo(II[II[II)I

    move-result v0

    int-to-long v0, v0

    and-long/2addr v0, v10

    add-int v2, v5, p0

    aget v2, p3, v2

    int-to-long v8, v2

    and-long/2addr v8, v10

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    add-int v2, v5, p0

    long-to-int v4, v0

    aput v4, p3, v2

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    add-int/lit8 v5, v5, 0x1

    move-wide v6, v0

    goto :goto_0

    :cond_0
    long-to-int v0, v6

    return v0
.end method

.method public static mulWord(II[II[II)I
    .locals 10

    const-wide v8, 0xffffffffL

    const-wide/16 v2, 0x0

    int-to-long v0, p1

    and-long v4, v0, v8

    const/4 v0, 0x0

    :cond_0
    add-int v1, p3, v0

    aget v1, p2, v1

    int-to-long v6, v1

    and-long/2addr v6, v8

    mul-long/2addr v6, v4

    add-long/2addr v2, v6

    add-int v1, p5, v0

    long-to-int v6, v2

    aput v6, p4, v1

    const/16 v1, 0x20

    ushr-long/2addr v2, v1

    add-int/lit8 v0, v0, 0x1

    if-lt v0, p0, :cond_0

    long-to-int v0, v2

    return v0
.end method

.method public static mulWord(II[I[I)I
    .locals 10

    const-wide v8, 0xffffffffL

    const-wide/16 v2, 0x0

    int-to-long v0, p1

    and-long v4, v0, v8

    const/4 v0, 0x0

    :cond_0
    aget v1, p2, v0

    int-to-long v6, v1

    and-long/2addr v6, v8

    mul-long/2addr v6, v4

    add-long/2addr v2, v6

    long-to-int v1, v2

    aput v1, p3, v0

    const/16 v1, 0x20

    ushr-long/2addr v2, v1

    add-int/lit8 v0, v0, 0x1

    if-lt v0, p0, :cond_0

    long-to-int v0, v2

    return v0
.end method

.method public static mulWordAddTo(II[II[II)I
    .locals 12

    const-wide/16 v2, 0x0

    int-to-long v0, p1

    const-wide v4, 0xffffffffL

    and-long/2addr v4, v0

    const/4 v0, 0x0

    :cond_0
    add-int v1, p3, v0

    aget v1, p2, v1

    int-to-long v6, v1

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    mul-long/2addr v6, v4

    add-int v1, p5, v0

    aget v1, p4, v1

    int-to-long v8, v1

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    add-long/2addr v6, v8

    add-long/2addr v2, v6

    add-int v1, p5, v0

    long-to-int v6, v2

    aput v6, p4, v1

    const/16 v1, 0x20

    ushr-long/2addr v2, v1

    add-int/lit8 v0, v0, 0x1

    if-lt v0, p0, :cond_0

    long-to-int v0, v2

    return v0
.end method

.method public static mulWordDwordAddAt(IIJ[II)I
    .locals 10

    const-wide/16 v0, 0x0

    int-to-long v2, p1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const-wide v4, 0xffffffffL

    and-long/2addr v4, p2

    mul-long/2addr v4, v2

    add-int/lit8 v6, p5, 0x0

    aget v6, p4, v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    add-int/lit8 v4, p5, 0x0

    long-to-int v5, v0

    aput v5, p4, v4

    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    const/16 v4, 0x20

    ushr-long v4, p2, v4

    mul-long/2addr v2, v4

    add-int/lit8 v4, p5, 0x1

    aget v4, p4, v4

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p5, 0x1

    long-to-int v3, v0

    aput v3, p4, v2

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    add-int/lit8 v2, p5, 0x2

    aget v2, p4, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p5, 0x2

    long-to-int v3, v0

    aput v3, p4, v2

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p5, 0x3

    invoke-static {p0, p4, v0}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v0

    goto :goto_0
.end method

.method public static shiftDownBit(I[II)I
    .locals 3

    :goto_0
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_0

    aget v0, p1, p0

    ushr-int/lit8 v1, v0, 0x1

    shl-int/lit8 v2, p2, 0x1f

    or-int/2addr v1, v2

    aput v1, p1, p0

    move p2, v0

    goto :goto_0

    :cond_0
    shl-int/lit8 v0, p2, 0x1f

    return v0
.end method

.method public static shiftDownBit(I[III)I
    .locals 4

    :goto_0
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_0

    add-int v0, p2, p0

    aget v0, p1, v0

    add-int v1, p2, p0

    ushr-int/lit8 v2, v0, 0x1

    shl-int/lit8 v3, p3, 0x1f

    or-int/2addr v2, v3

    aput v2, p1, v1

    move p3, v0

    goto :goto_0

    :cond_0
    shl-int/lit8 v0, p3, 0x1f

    return v0
.end method

.method public static shiftDownBit(I[III[II)I
    .locals 4

    :goto_0
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_0

    add-int v0, p2, p0

    aget v0, p1, v0

    add-int v1, p5, p0

    ushr-int/lit8 v2, v0, 0x1

    shl-int/lit8 v3, p3, 0x1f

    or-int/2addr v2, v3

    aput v2, p4, v1

    move p3, v0

    goto :goto_0

    :cond_0
    shl-int/lit8 v0, p3, 0x1f

    return v0
.end method

.method public static shiftDownBit(I[II[I)I
    .locals 3

    :goto_0
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_0

    aget v0, p1, p0

    ushr-int/lit8 v1, v0, 0x1

    shl-int/lit8 v2, p2, 0x1f

    or-int/2addr v1, v2

    aput v1, p3, p0

    move p2, v0

    goto :goto_0

    :cond_0
    shl-int/lit8 v0, p2, 0x1f

    return v0
.end method

.method public static shiftDownBits(I[III)I
    .locals 3

    :goto_0
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_0

    aget v0, p1, p0

    ushr-int v1, v0, p2

    neg-int v2, p2

    shl-int v2, p3, v2

    or-int/2addr v1, v2

    aput v1, p1, p0

    move p3, v0

    goto :goto_0

    :cond_0
    neg-int v0, p2

    shl-int v0, p3, v0

    return v0
.end method

.method public static shiftDownBits(I[IIII)I
    .locals 4

    :goto_0
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_0

    add-int v0, p2, p0

    aget v0, p1, v0

    add-int v1, p2, p0

    ushr-int v2, v0, p3

    neg-int v3, p3

    shl-int v3, p4, v3

    or-int/2addr v2, v3

    aput v2, p1, v1

    move p4, v0

    goto :goto_0

    :cond_0
    neg-int v0, p3

    shl-int v0, p4, v0

    return v0
.end method

.method public static shiftDownBits(I[IIII[II)I
    .locals 4

    :goto_0
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_0

    add-int v0, p2, p0

    aget v0, p1, v0

    add-int v1, p6, p0

    ushr-int v2, v0, p3

    neg-int v3, p3

    shl-int v3, p4, v3

    or-int/2addr v2, v3

    aput v2, p5, v1

    move p4, v0

    goto :goto_0

    :cond_0
    neg-int v0, p3

    shl-int v0, p4, v0

    return v0
.end method

.method public static shiftDownBits(I[III[I)I
    .locals 3

    :goto_0
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_0

    aget v0, p1, p0

    ushr-int v1, v0, p2

    neg-int v2, p2

    shl-int v2, p3, v2

    or-int/2addr v1, v2

    aput v1, p4, p0

    move p3, v0

    goto :goto_0

    :cond_0
    neg-int v0, p2

    shl-int v0, p3, v0

    return v0
.end method

.method public static shiftDownWord(I[II)I
    .locals 1

    :goto_0
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_0

    aget v0, p1, p0

    aput p2, p1, p0

    move p2, v0

    goto :goto_0

    :cond_0
    return p2
.end method

.method public static shiftUpBit(I[II)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    aget v1, p1, v0

    shl-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v3, p2, 0x1f

    or-int/2addr v2, v3

    aput v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    move p2, v1

    goto :goto_0

    :cond_0
    ushr-int/lit8 v0, p2, 0x1f

    return v0
.end method

.method public static shiftUpBit(I[III)I
    .locals 5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    add-int v1, p2, v0

    aget v1, p1, v1

    add-int v2, p2, v0

    shl-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v4, p3, 0x1f

    or-int/2addr v3, v4

    aput v3, p1, v2

    add-int/lit8 v0, v0, 0x1

    move p3, v1

    goto :goto_0

    :cond_0
    ushr-int/lit8 v0, p3, 0x1f

    return v0
.end method

.method public static shiftUpBit(I[III[II)I
    .locals 5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    add-int v1, p2, v0

    aget v1, p1, v1

    add-int v2, p5, v0

    shl-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v4, p3, 0x1f

    or-int/2addr v3, v4

    aput v3, p4, v2

    add-int/lit8 v0, v0, 0x1

    move p3, v1

    goto :goto_0

    :cond_0
    ushr-int/lit8 v0, p3, 0x1f

    return v0
.end method

.method public static shiftUpBit(I[II[I)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    aget v1, p1, v0

    shl-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v3, p2, 0x1f

    or-int/2addr v2, v3

    aput v2, p3, v0

    add-int/lit8 v0, v0, 0x1

    move p2, v1

    goto :goto_0

    :cond_0
    ushr-int/lit8 v0, p2, 0x1f

    return v0
.end method

.method public static shiftUpBit64(I[JIJ[JI)J
    .locals 9

    const/16 v8, 0x3f

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    add-int v1, p2, v0

    aget-wide v2, p1, v1

    add-int v1, p6, v0

    const/4 v4, 0x1

    shl-long v4, v2, v4

    ushr-long v6, p3, v8

    or-long/2addr v4, v6

    aput-wide v4, p5, v1

    add-int/lit8 v0, v0, 0x1

    move-wide p3, v2

    goto :goto_0

    :cond_0
    ushr-long v0, p3, v8

    return-wide v0
.end method

.method public static shiftUpBits(I[III)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    aget v1, p1, v0

    shl-int v2, v1, p2

    neg-int v3, p2

    ushr-int v3, p3, v3

    or-int/2addr v2, v3

    aput v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    move p3, v1

    goto :goto_0

    :cond_0
    neg-int v0, p2

    ushr-int v0, p3, v0

    return v0
.end method

.method public static shiftUpBits(I[IIII)I
    .locals 5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    add-int v1, p2, v0

    aget v1, p1, v1

    add-int v2, p2, v0

    shl-int v3, v1, p3

    neg-int v4, p3

    ushr-int v4, p4, v4

    or-int/2addr v3, v4

    aput v3, p1, v2

    add-int/lit8 v0, v0, 0x1

    move p4, v1

    goto :goto_0

    :cond_0
    neg-int v0, p3

    ushr-int v0, p4, v0

    return v0
.end method

.method public static shiftUpBits(I[IIII[II)I
    .locals 5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    add-int v1, p2, v0

    aget v1, p1, v1

    add-int v2, p6, v0

    shl-int v3, v1, p3

    neg-int v4, p3

    ushr-int v4, p4, v4

    or-int/2addr v3, v4

    aput v3, p5, v2

    add-int/lit8 v0, v0, 0x1

    move p4, v1

    goto :goto_0

    :cond_0
    neg-int v0, p3

    ushr-int v0, p4, v0

    return v0
.end method

.method public static shiftUpBits(I[III[I)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    aget v1, p1, v0

    shl-int v2, v1, p2

    neg-int v3, p2

    ushr-int v3, p3, v3

    or-int/2addr v2, v3

    aput v2, p4, v0

    add-int/lit8 v0, v0, 0x1

    move p3, v1

    goto :goto_0

    :cond_0
    neg-int v0, p2

    ushr-int v0, p3, v0

    return v0
.end method

.method public static shiftUpBits64(I[JIIJ)J
    .locals 8

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    add-int v1, p2, v0

    aget-wide v2, p1, v1

    add-int v1, p2, v0

    shl-long v4, v2, p3

    neg-int v6, p3

    ushr-long v6, p4, v6

    or-long/2addr v4, v6

    aput-wide v4, p1, v1

    add-int/lit8 v0, v0, 0x1

    move-wide p4, v2

    goto :goto_0

    :cond_0
    neg-int v0, p3

    ushr-long v0, p4, v0

    return-wide v0
.end method

.method public static shiftUpBits64(I[JIIJ[JI)J
    .locals 8

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    add-int v1, p2, v0

    aget-wide v2, p1, v1

    add-int v1, p7, v0

    shl-long v4, v2, p3

    neg-int v6, p3

    ushr-long v6, p4, v6

    or-long/2addr v4, v6

    aput-wide v4, p6, v1

    add-int/lit8 v0, v0, 0x1

    move-wide p4, v2

    goto :goto_0

    :cond_0
    neg-int v0, p3

    ushr-long v0, p4, v0

    return-wide v0
.end method

.method public static square(I[II[II)V
    .locals 10

    const/4 v4, 0x1

    shl-int/lit8 v1, p0, 0x1

    const/4 v0, 0x0

    move v2, p0

    move v3, v0

    move v0, v1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    add-int v5, p2, v2

    aget v5, p1, v5

    int-to-long v6, v5

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    mul-long/2addr v6, v6

    add-int/lit8 v0, v0, -0x1

    add-int v5, p4, v0

    shl-int/lit8 v3, v3, 0x1f

    const/16 v8, 0x21

    ushr-long v8, v6, v8

    long-to-int v8, v8

    or-int/2addr v3, v8

    aput v3, p3, v5

    add-int/lit8 v0, v0, -0x1

    add-int v3, p4, v0

    ushr-long v8, v6, v4

    long-to-int v5, v8

    aput v5, p3, v3

    long-to-int v3, v6

    if-gtz v2, :cond_0

    move v0, v4

    :goto_0
    if-ge v0, p0, :cond_1

    invoke-static {p1, p2, v0, p3, p4}, Lorg/bouncycastle/math/raw/Nat;->squareWordAdd([III[II)I

    move-result v2

    shl-int/lit8 v3, v0, 0x1

    invoke-static {v1, v2, p3, p4, v3}, Lorg/bouncycastle/math/raw/Nat;->addWordAt(II[III)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    aget v0, p1, p2

    shl-int/lit8 v0, v0, 0x1f

    invoke-static {v1, p3, p4, v0}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBit(I[III)I

    return-void
.end method

.method public static square(I[I[I)V
    .locals 10

    const/4 v5, 0x1

    const/4 v4, 0x0

    shl-int/lit8 v1, p0, 0x1

    move v0, v1

    move v2, p0

    move v3, v4

    :cond_0
    add-int/lit8 v2, v2, -0x1

    aget v6, p1, v2

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    mul-long/2addr v6, v6

    add-int/lit8 v0, v0, -0x1

    shl-int/lit8 v3, v3, 0x1f

    const/16 v8, 0x21

    ushr-long v8, v6, v8

    long-to-int v8, v8

    or-int/2addr v3, v8

    aput v3, p2, v0

    add-int/lit8 v0, v0, -0x1

    ushr-long v8, v6, v5

    long-to-int v3, v8

    aput v3, p2, v0

    long-to-int v3, v6

    if-gtz v2, :cond_0

    move v0, v5

    :goto_0
    if-ge v0, p0, :cond_1

    invoke-static {p1, v0, p2}, Lorg/bouncycastle/math/raw/Nat;->squareWordAdd([II[I)I

    move-result v2

    shl-int/lit8 v3, v0, 0x1

    invoke-static {v1, v2, p2, v3}, Lorg/bouncycastle/math/raw/Nat;->addWordAt(II[II)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    aget v0, p1, v4

    shl-int/lit8 v0, v0, 0x1f

    invoke-static {v1, p2, v0}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBit(I[II)I

    return-void
.end method

.method public static squareWordAdd([III[II)I
    .locals 12

    const-wide/16 v2, 0x0

    add-int v0, p1, p2

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v4, 0xffffffffL

    and-long/2addr v4, v0

    const/4 v0, 0x0

    :cond_0
    add-int v1, p1, v0

    aget v1, p0, v1

    int-to-long v6, v1

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    mul-long/2addr v6, v4

    add-int v1, p2, p4

    aget v1, p3, v1

    int-to-long v8, v1

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    add-long/2addr v6, v8

    add-long/2addr v2, v6

    add-int v1, p2, p4

    long-to-int v6, v2

    aput v6, p3, v1

    const/16 v1, 0x20

    ushr-long/2addr v2, v1

    add-int/lit8 p4, p4, 0x1

    add-int/lit8 v0, v0, 0x1

    if-lt v0, p2, :cond_0

    long-to-int v0, v2

    return v0
.end method

.method public static squareWordAdd([II[I)I
    .locals 12

    const-wide v10, 0xffffffffL

    const-wide/16 v2, 0x0

    aget v0, p0, p1

    int-to-long v0, v0

    and-long v4, v0, v10

    const/4 v0, 0x0

    :cond_0
    aget v1, p0, v0

    int-to-long v6, v1

    and-long/2addr v6, v10

    mul-long/2addr v6, v4

    add-int v1, p1, v0

    aget v1, p2, v1

    int-to-long v8, v1

    and-long/2addr v8, v10

    add-long/2addr v6, v8

    add-long/2addr v2, v6

    add-int v1, p1, v0

    long-to-int v6, v2

    aput v6, p2, v1

    const/16 v1, 0x20

    ushr-long/2addr v2, v1

    add-int/lit8 v0, v0, 0x1

    if-lt v0, p1, :cond_0

    long-to-int v0, v2

    return v0
.end method

.method public static sub(I[II[II[II)I
    .locals 10

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    add-int v1, p2, v0

    aget v1, p1, v1

    int-to-long v4, v1

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    add-int v1, p4, v0

    aget v1, p3, v1

    int-to-long v6, v1

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    add-int v1, p6, v0

    long-to-int v4, v2

    aput v4, p5, v1

    const/16 v1, 0x20

    shr-long/2addr v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    long-to-int v0, v2

    return v0
.end method

.method public static sub(I[I[I[I)I
    .locals 10

    const-wide v8, 0xffffffffL

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    aget v1, p1, v0

    int-to-long v4, v1

    and-long/2addr v4, v8

    aget v1, p2, v0

    int-to-long v6, v1

    and-long/2addr v6, v8

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    long-to-int v1, v2

    aput v1, p3, v0

    const/16 v1, 0x20

    shr-long/2addr v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    long-to-int v0, v2

    return v0
.end method

.method public static sub33At(II[II)I
    .locals 7

    const/16 v6, 0x20

    const-wide v4, 0xffffffffL

    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    and-long/2addr v0, v4

    int-to-long v2, p1

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    add-int/lit8 v2, p3, 0x0

    long-to-int v3, v0

    aput v3, p2, v2

    shr-long/2addr v0, v6

    add-int/lit8 v2, p3, 0x1

    aget v2, p2, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p3, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    shr-long/2addr v0, v6

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p3, 0x2

    invoke-static {p0, p2, v0}, Lorg/bouncycastle/math/raw/Nat;->decAt(I[II)I

    move-result v0

    goto :goto_0
.end method

.method public static sub33At(II[III)I
    .locals 7

    const/16 v6, 0x20

    const-wide v4, 0xffffffffL

    add-int v0, p3, p4

    aget v0, p2, v0

    int-to-long v0, v0

    and-long/2addr v0, v4

    int-to-long v2, p1

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    add-int v2, p3, p4

    long-to-int v3, v0

    aput v3, p2, v2

    shr-long/2addr v0, v6

    add-int v2, p3, p4

    add-int/lit8 v2, v2, 0x1

    aget v2, p2, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int v2, p3, p4

    add-int/lit8 v2, v2, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    shr-long/2addr v0, v6

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p4, 0x2

    invoke-static {p0, p2, p3, v0}, Lorg/bouncycastle/math/raw/Nat;->decAt(I[III)I

    move-result v0

    goto :goto_0
.end method

.method public static sub33From(II[I)I
    .locals 10

    const/16 v9, 0x20

    const/4 v8, 0x1

    const-wide v6, 0xffffffffL

    const/4 v0, 0x0

    aget v1, p2, v0

    int-to-long v2, v1

    and-long/2addr v2, v6

    int-to-long v4, p1

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    long-to-int v1, v2

    aput v1, p2, v0

    shr-long/2addr v2, v9

    aget v1, p2, v8

    int-to-long v4, v1

    and-long/2addr v4, v6

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    long-to-int v1, v2

    aput v1, p2, v8

    shr-long/2addr v2, v9

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    invoke-static {p0, p2, v0}, Lorg/bouncycastle/math/raw/Nat;->decAt(I[II)I

    move-result v0

    goto :goto_0
.end method

.method public static sub33From(II[II)I
    .locals 7

    const/16 v6, 0x20

    const-wide v4, 0xffffffffL

    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    and-long/2addr v0, v4

    int-to-long v2, p1

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    add-int/lit8 v2, p3, 0x0

    long-to-int v3, v0

    aput v3, p2, v2

    shr-long/2addr v0, v6

    add-int/lit8 v2, p3, 0x1

    aget v2, p2, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p3, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    shr-long/2addr v0, v6

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    invoke-static {p0, p2, p3, v0}, Lorg/bouncycastle/math/raw/Nat;->decAt(I[III)I

    move-result v0

    goto :goto_0
.end method

.method public static subBothFrom(I[II[II[II)I
    .locals 10

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    add-int v1, p6, v0

    aget v1, p5, v1

    int-to-long v4, v1

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    add-int v1, p2, v0

    aget v1, p1, v1

    int-to-long v6, v1

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    sub-long/2addr v4, v6

    add-int v1, p4, v0

    aget v1, p3, v1

    int-to-long v6, v1

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    add-int v1, p6, v0

    long-to-int v4, v2

    aput v4, p5, v1

    const/16 v1, 0x20

    shr-long/2addr v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    long-to-int v0, v2

    return v0
.end method

.method public static subBothFrom(I[I[I[I)I
    .locals 10

    const-wide v8, 0xffffffffL

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    aget v1, p3, v0

    int-to-long v4, v1

    and-long/2addr v4, v8

    aget v1, p1, v0

    int-to-long v6, v1

    and-long/2addr v6, v8

    sub-long/2addr v4, v6

    aget v1, p2, v0

    int-to-long v6, v1

    and-long/2addr v6, v8

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    long-to-int v1, v2

    aput v1, p3, v0

    const/16 v1, 0x20

    shr-long/2addr v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    long-to-int v0, v2

    return v0
.end method

.method public static subDWordAt(IJ[II)I
    .locals 7

    const-wide v4, 0xffffffffL

    const/16 v6, 0x20

    add-int/lit8 v0, p4, 0x0

    aget v0, p3, v0

    int-to-long v0, v0

    and-long/2addr v0, v4

    and-long v2, p1, v4

    sub-long/2addr v0, v2

    add-int/lit8 v2, p4, 0x0

    long-to-int v3, v0

    aput v3, p3, v2

    shr-long/2addr v0, v6

    add-int/lit8 v2, p4, 0x1

    aget v2, p3, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    ushr-long v4, p1, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p4, 0x1

    long-to-int v3, v0

    aput v3, p3, v2

    shr-long/2addr v0, v6

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p4, 0x2

    invoke-static {p0, p3, v0}, Lorg/bouncycastle/math/raw/Nat;->decAt(I[II)I

    move-result v0

    goto :goto_0
.end method

.method public static subDWordAt(IJ[III)I
    .locals 7

    const-wide v4, 0xffffffffL

    const/16 v6, 0x20

    add-int v0, p4, p5

    aget v0, p3, v0

    int-to-long v0, v0

    and-long/2addr v0, v4

    and-long v2, p1, v4

    sub-long/2addr v0, v2

    add-int v2, p4, p5

    long-to-int v3, v0

    aput v3, p3, v2

    shr-long/2addr v0, v6

    add-int v2, p4, p5

    add-int/lit8 v2, v2, 0x1

    aget v2, p3, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    ushr-long v4, p1, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int v2, p4, p5

    add-int/lit8 v2, v2, 0x1

    long-to-int v3, v0

    aput v3, p3, v2

    shr-long/2addr v0, v6

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p5, 0x2

    invoke-static {p0, p3, p4, v0}, Lorg/bouncycastle/math/raw/Nat;->decAt(I[III)I

    move-result v0

    goto :goto_0
.end method

.method public static subDWordFrom(IJ[I)I
    .locals 11

    const/4 v9, 0x1

    const-wide v6, 0xffffffffL

    const/16 v8, 0x20

    const/4 v0, 0x0

    aget v1, p3, v0

    int-to-long v2, v1

    and-long/2addr v2, v6

    and-long v4, p1, v6

    sub-long/2addr v2, v4

    long-to-int v1, v2

    aput v1, p3, v0

    shr-long/2addr v2, v8

    aget v1, p3, v9

    int-to-long v4, v1

    and-long/2addr v4, v6

    ushr-long v6, p1, v8

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    long-to-int v1, v2

    aput v1, p3, v9

    shr-long/2addr v2, v8

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    invoke-static {p0, p3, v0}, Lorg/bouncycastle/math/raw/Nat;->decAt(I[II)I

    move-result v0

    goto :goto_0
.end method

.method public static subDWordFrom(IJ[II)I
    .locals 7

    const-wide v4, 0xffffffffL

    const/16 v6, 0x20

    add-int/lit8 v0, p4, 0x0

    aget v0, p3, v0

    int-to-long v0, v0

    and-long/2addr v0, v4

    and-long v2, p1, v4

    sub-long/2addr v0, v2

    add-int/lit8 v2, p4, 0x0

    long-to-int v3, v0

    aput v3, p3, v2

    shr-long/2addr v0, v6

    add-int/lit8 v2, p4, 0x1

    aget v2, p3, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    ushr-long v4, p1, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p4, 0x1

    long-to-int v3, v0

    aput v3, p3, v2

    shr-long/2addr v0, v6

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    invoke-static {p0, p3, p4, v0}, Lorg/bouncycastle/math/raw/Nat;->decAt(I[III)I

    move-result v0

    goto :goto_0
.end method

.method public static subFrom(I[II[II)I
    .locals 10

    const-wide v8, 0xffffffffL

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    add-int v1, p4, v0

    aget v1, p3, v1

    int-to-long v4, v1

    and-long/2addr v4, v8

    add-int v1, p2, v0

    aget v1, p1, v1

    int-to-long v6, v1

    and-long/2addr v6, v8

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    add-int v1, p4, v0

    long-to-int v4, v2

    aput v4, p3, v1

    const/16 v1, 0x20

    shr-long/2addr v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    long-to-int v0, v2

    return v0
.end method

.method public static subFrom(I[I[I)I
    .locals 10

    const-wide v8, 0xffffffffL

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    aget v1, p2, v0

    int-to-long v4, v1

    and-long/2addr v4, v8

    aget v1, p1, v0

    int-to-long v6, v1

    and-long/2addr v6, v8

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    long-to-int v1, v2

    aput v1, p2, v0

    const/16 v1, 0x20

    shr-long/2addr v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    long-to-int v0, v2

    return v0
.end method

.method public static subWordAt(II[II)I
    .locals 6

    const-wide v4, 0xffffffffL

    aget v0, p2, p3

    int-to-long v0, v0

    and-long/2addr v0, v4

    int-to-long v2, p1

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    long-to-int v2, v0

    aput v2, p2, p3

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p3, 0x1

    invoke-static {p0, p2, v0}, Lorg/bouncycastle/math/raw/Nat;->decAt(I[II)I

    move-result v0

    goto :goto_0
.end method

.method public static subWordAt(II[III)I
    .locals 6

    const-wide v4, 0xffffffffL

    add-int v0, p3, p4

    aget v0, p2, v0

    int-to-long v0, v0

    and-long/2addr v0, v4

    int-to-long v2, p1

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    add-int v2, p3, p4

    long-to-int v3, v0

    aput v3, p2, v2

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p4, 0x1

    invoke-static {p0, p2, p3, v0}, Lorg/bouncycastle/math/raw/Nat;->decAt(I[III)I

    move-result v0

    goto :goto_0
.end method

.method public static subWordFrom(II[I)I
    .locals 8

    const-wide v6, 0xffffffffL

    const/4 v0, 0x0

    aget v1, p2, v0

    int-to-long v2, v1

    and-long/2addr v2, v6

    int-to-long v4, p1

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    long-to-int v1, v2

    aput v1, p2, v0

    const/16 v1, 0x20

    shr-long/2addr v2, v1

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, p2, v0}, Lorg/bouncycastle/math/raw/Nat;->decAt(I[II)I

    move-result v0

    goto :goto_0
.end method

.method public static subWordFrom(II[II)I
    .locals 6

    const-wide v4, 0xffffffffL

    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    and-long/2addr v0, v4

    int-to-long v2, p1

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    add-int/lit8 v2, p3, 0x0

    long-to-int v3, v0

    aput v3, p2, v2

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, p2, p3, v0}, Lorg/bouncycastle/math/raw/Nat;->decAt(I[III)I

    move-result v0

    goto :goto_0
.end method

.method public static toBigInteger(I[I)Ljava/math/BigInteger;
    .locals 4

    shl-int/lit8 v0, p0, 0x2

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    aget v2, p1, v0

    if-eqz v2, :cond_0

    add-int/lit8 v3, p0, -0x1

    sub-int/2addr v3, v0

    shl-int/lit8 v3, v3, 0x2

    invoke-static {v2, v1, v3}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static zero(I[I)V
    .locals 2

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    if-ge v0, p0, :cond_0

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
