.class public Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;
.super Ljava/lang/Object;


# static fields
.field static final P:[I

.field private static final P16:I = 0x1ff


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x1ff
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add([I[I[I)V
    .locals 4

    const/16 v3, 0x1ff

    const/16 v2, 0x10

    invoke-static {v2, p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result v0

    aget v1, p0, v2

    add-int/2addr v0, v1

    aget v1, p1, v2

    add-int/2addr v0, v1

    if-gt v0, v3, :cond_0

    if-ne v0, v3, :cond_1

    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    invoke-static {v2, p2, v1}, Lorg/bouncycastle/math/raw/Nat;->eq(I[I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {v2, p2}, Lorg/bouncycastle/math/raw/Nat;->inc(I[I)I

    move-result v1

    add-int/2addr v0, v1

    and-int/lit16 v0, v0, 0x1ff

    :cond_1
    aput v0, p2, v2

    return-void
.end method

.method public static addOne([I[I)V
    .locals 4

    const/16 v3, 0x1ff

    const/16 v2, 0x10

    invoke-static {v2, p0, p1}, Lorg/bouncycastle/math/raw/Nat;->inc(I[I[I)I

    move-result v0

    aget v1, p0, v2

    add-int/2addr v0, v1

    if-gt v0, v3, :cond_0

    if-ne v0, v3, :cond_1

    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    invoke-static {v2, p1, v1}, Lorg/bouncycastle/math/raw/Nat;->eq(I[I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {v2, p1}, Lorg/bouncycastle/math/raw/Nat;->inc(I[I)I

    move-result v1

    add-int/2addr v0, v1

    and-int/lit16 v0, v0, 0x1ff

    :cond_1
    aput v0, p1, v2

    return-void
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[I
    .locals 3

    const/16 v2, 0x11

    const/16 v0, 0x209

    invoke-static {v0, p0}, Lorg/bouncycastle/math/raw/Nat;->fromBigInteger(ILjava/math/BigInteger;)[I

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/math/raw/Nat;->eq(I[I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v2, v0}, Lorg/bouncycastle/math/raw/Nat;->zero(I[I)V

    :cond_0
    return-object v0
.end method

.method public static half([I[I)V
    .locals 3

    const/16 v2, 0x10

    aget v0, p0, v2

    invoke-static {v2, p0, v0, p1}, Lorg/bouncycastle/math/raw/Nat;->shiftDownBit(I[II[I)I

    move-result v1

    ushr-int/lit8 v0, v0, 0x1

    ushr-int/lit8 v1, v1, 0x17

    or-int/2addr v0, v1

    aput v0, p1, v2

    return-void
.end method

.method protected static implMultiply([I[I[I)V
    .locals 8

    const/16 v0, 0x10

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat512;->mul([I[I[I)V

    aget v1, p0, v0

    aget v3, p1, v0

    const/16 v7, 0x20

    move-object v2, p1

    move-object v4, p0

    move-object v5, p2

    move v6, v0

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/math/raw/Nat;->mul31BothAdd(II[II[I[II)I

    move-result v0

    mul-int/2addr v1, v3

    add-int/2addr v0, v1

    aput v0, p2, v7

    return-void
.end method

.method protected static implSquare([I[I)V
    .locals 8

    const/16 v0, 0x10

    invoke-static {p0, p1}, Lorg/bouncycastle/math/raw/Nat512;->square([I[I)V

    aget v6, p0, v0

    const/16 v7, 0x20

    shl-int/lit8 v1, v6, 0x1

    const/4 v3, 0x0

    move-object v2, p0

    move-object v4, p1

    move v5, v0

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/raw/Nat;->mulWordAddTo(II[II[II)I

    move-result v0

    mul-int v1, v6, v6

    add-int/2addr v0, v1

    aput v0, p1, v7

    return-void
.end method

.method public static multiply([I[I[I)V
    .locals 1

    const/16 v0, 0x21

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->implMultiply([I[I[I)V

    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->reduce([I[I)V

    return-void
.end method

.method public static negate([I[I)V
    .locals 2

    const/16 v1, 0x11

    invoke-static {v1, p0}, Lorg/bouncycastle/math/raw/Nat;->isZero(I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1, p1}, Lorg/bouncycastle/math/raw/Nat;->zero(I[I)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    invoke-static {v1, v0, p0, p1}, Lorg/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    goto :goto_0
.end method

.method public static reduce([I[I)V
    .locals 8

    const/16 v7, 0x1ff

    const/16 v0, 0x10

    const/16 v1, 0x20

    aget v4, p0, v1

    const/16 v3, 0x9

    const/4 v6, 0x0

    move-object v1, p0

    move v2, v0

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/math/raw/Nat;->shiftDownBits(I[IIII[II)I

    move-result v1

    ushr-int/lit8 v1, v1, 0x17

    ushr-int/lit8 v2, v4, 0x9

    add-int/2addr v1, v2

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result v2

    add-int/2addr v1, v2

    if-gt v1, v7, :cond_0

    if-ne v1, v7, :cond_1

    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    invoke-static {v0, p1, v2}, Lorg/bouncycastle/math/raw/Nat;->eq(I[I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {v0, p1}, Lorg/bouncycastle/math/raw/Nat;->inc(I[I)I

    move-result v2

    add-int/2addr v1, v2

    and-int/lit16 v1, v1, 0x1ff

    :cond_1
    aput v1, p1, v0

    return-void
.end method

.method public static reduce23([I)V
    .locals 4

    const/16 v3, 0x1ff

    const/16 v2, 0x10

    aget v0, p0, v2

    ushr-int/lit8 v1, v0, 0x9

    invoke-static {v2, v1, p0}, Lorg/bouncycastle/math/raw/Nat;->addWordTo(II[I)I

    move-result v1

    and-int/lit16 v0, v0, 0x1ff

    add-int/2addr v0, v1

    if-gt v0, v3, :cond_0

    if-ne v0, v3, :cond_1

    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    invoke-static {v2, p0, v1}, Lorg/bouncycastle/math/raw/Nat;->eq(I[I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {v2, p0}, Lorg/bouncycastle/math/raw/Nat;->inc(I[I)I

    move-result v1

    add-int/2addr v0, v1

    and-int/lit16 v0, v0, 0x1ff

    :cond_1
    aput v0, p0, v2

    return-void
.end method

.method public static square([I[I)V
    .locals 1

    const/16 v0, 0x21

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->implSquare([I[I)V

    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->reduce([I[I)V

    return-void
.end method

.method public static squareN([II[I)V
    .locals 1

    const/16 v0, 0x21

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->implSquare([I[I)V

    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->reduce([I[I)V

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    invoke-static {p2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->implSquare([I[I)V

    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->reduce([I[I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static subtract([I[I[I)V
    .locals 3

    const/16 v2, 0x10

    invoke-static {v2, p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result v0

    aget v1, p0, v2

    add-int/2addr v0, v1

    aget v1, p1, v2

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    invoke-static {v2, p2}, Lorg/bouncycastle/math/raw/Nat;->dec(I[I)I

    move-result v1

    add-int/2addr v0, v1

    and-int/lit16 v0, v0, 0x1ff

    :cond_0
    aput v0, p2, v2

    return-void
.end method

.method public static twice([I[I)V
    .locals 3

    const/16 v2, 0x10

    aget v0, p0, v2

    shl-int/lit8 v1, v0, 0x17

    invoke-static {v2, p0, v1, p1}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    move-result v1

    shl-int/lit8 v0, v0, 0x1

    or-int/2addr v0, v1

    and-int/lit16 v0, v0, 0x1ff

    aput v0, p1, v2

    return-void
.end method
