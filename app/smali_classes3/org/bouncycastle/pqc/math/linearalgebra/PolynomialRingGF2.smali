.class public final Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(II)I
    .locals 1

    xor-int v0, p0, p1

    return v0
.end method

.method public static degree(I)I
    .locals 1

    const/4 v0, -0x1

    :goto_0
    if-eqz p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static degree(J)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v1, p0, v2

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    ushr-long/2addr p0, v1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public static gcd(II)I
    .locals 1

    :goto_0
    if-eqz p1, :cond_0

    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2;->remainder(II)I

    move-result v0

    move p0, p1

    move p1, v0

    goto :goto_0

    :cond_0
    return p0
.end method

.method public static getIrreduciblePolynomial(I)I
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-gez p0, :cond_1

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "The Degree is negative"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v2, 0x1f

    if-le p0, v2, :cond_2

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "The Degree is more then 31"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-nez p0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    shl-int v2, v1, p0

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, p0, 0x1

    shl-int v3, v1, v3

    move v1, v2

    :goto_1
    if-ge v1, v3, :cond_0

    invoke-static {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2;->isIrreducible(I)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, 0x2

    goto :goto_1
.end method

.method public static isIrreducible(I)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result v2

    ushr-int/lit8 v4, v2, 0x1

    const/4 v2, 0x2

    move v3, v2

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_2

    invoke-static {v3, v3, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2;->modMultiply(III)I

    move-result v3

    xor-int/lit8 v5, v3, 0x2

    invoke-static {v5, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2;->gcd(II)I

    move-result v5

    if-ne v5, v1, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static modMultiply(III)I
    .locals 6

    const/4 v5, 0x1

    const/4 v0, 0x0

    invoke-static {p0, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2;->remainder(II)I

    move-result v2

    invoke-static {p1, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2;->remainder(II)I

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result v3

    shl-int v4, v5, v3

    move v3, v2

    move v2, v1

    :goto_0
    if-eqz v3, :cond_1

    and-int/lit8 v1, v3, 0x1

    int-to-byte v1, v1

    if-ne v1, v5, :cond_2

    xor-int/2addr v0, v2

    move v1, v0

    :goto_1
    ushr-int/lit8 v3, v3, 0x1

    shl-int/lit8 v0, v2, 0x1

    if-lt v0, v4, :cond_0

    xor-int/2addr v0, p2

    :cond_0
    move v2, v0

    move v0, v1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    move v1, v0

    goto :goto_1
.end method

.method public static multiply(II)J
    .locals 7

    const/4 v6, 0x1

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_1

    int-to-long v2, p1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    :goto_0
    if-eqz p0, :cond_1

    and-int/lit8 v4, p0, 0x1

    int-to-byte v4, v4

    if-ne v4, v6, :cond_0

    xor-long/2addr v0, v2

    :cond_0
    ushr-int/lit8 p0, p0, 0x1

    shl-long/2addr v2, v6

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public static remainder(II)I
    .locals 2

    if-nez p1, :cond_1

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Error: to be divided by 0"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    return p0

    :cond_1
    :goto_0
    invoke-static {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result v0

    invoke-static {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result v0

    invoke-static {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result v1

    sub-int/2addr v0, v1

    shl-int v0, p1, v0

    xor-int/2addr p0, v0

    goto :goto_0
.end method

.method public static rest(JI)I
    .locals 6

    if-nez p2, :cond_1

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Error: to be divided by 0"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    return v0

    :cond_1
    int-to-long v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    :goto_0
    const/16 v2, 0x20

    ushr-long v2, p0, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2;->degree(J)I

    move-result v2

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2;->degree(J)I

    move-result v3

    sub-int/2addr v2, v3

    shl-long v2, v0, v2

    xor-long/2addr p0, v2

    goto :goto_0

    :cond_2
    const-wide/16 v0, -0x1

    and-long/2addr v0, p0

    long-to-int v0, v0

    :goto_1
    invoke-static {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result v1

    invoke-static {p2}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result v2

    if-lt v1, v2, :cond_0

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result v1

    invoke-static {p2}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result v2

    sub-int/2addr v1, v2

    shl-int v1, p2, v1

    xor-int/2addr v0, v1

    goto :goto_1
.end method
