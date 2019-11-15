.class public Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;
.super Ljava/lang/Object;


# static fields
.field private static final M:J = 0xffffffffL

.field static final P:[I

.field private static final P7:I = 0x7fffffff

.field private static final PExt:[I

.field private static final PInv:I = 0x13


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->P:[I

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->PExt:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x13
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x7fffffff
    .end array-data

    :array_1
    .array-data 4
        0x169
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x13
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3fffffff    # 1.9999999f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add([I[I[I)V
    .locals 1

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat256;->add([I[I[I)I

    sget-object v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->P:[I

    invoke-static {p2, v0}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->subPFrom([I)I

    :cond_0
    return-void
.end method

.method public static addExt([I[I[I)V
    .locals 2

    const/16 v1, 0x10

    invoke-static {v1, p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    sget-object v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->PExt:[I

    invoke-static {v1, p2, v0}, Lorg/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->subPExtFrom([I)I

    :cond_0
    return-void
.end method

.method public static addOne([I[I)V
    .locals 1

    const/16 v0, 0x8

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/raw/Nat;->inc(I[I[I)I

    sget-object v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->P:[I

    invoke-static {p1, v0}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->subPFrom([I)I

    :cond_0
    return-void
.end method

.method private static addPExtTo([I)I
    .locals 11

    const/16 v10, 0x20

    const/16 v9, 0x8

    const/4 v4, 0x0

    const/16 v8, 0xf

    const-wide v6, 0xffffffffL

    aget v0, p0, v4

    int-to-long v0, v0

    and-long/2addr v0, v6

    sget-object v2, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->PExt:[I

    aget v2, v2, v4

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-long/2addr v0, v2

    long-to-int v2, v0

    aput v2, p0, v4

    shr-long/2addr v0, v10

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    invoke-static {v9, p0, v0}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v0

    int-to-long v0, v0

    :cond_0
    aget v2, p0, v9

    int-to-long v2, v2

    and-long/2addr v2, v6

    const-wide/16 v4, 0x13

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int v2, v0

    aput v2, p0, v9

    shr-long/2addr v0, v10

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    const/16 v0, 0x9

    invoke-static {v8, p0, v0}, Lorg/bouncycastle/math/raw/Nat;->decAt(I[II)I

    move-result v0

    int-to-long v0, v0

    :cond_1
    aget v2, p0, v8

    int-to-long v2, v2

    and-long/2addr v2, v6

    sget-object v4, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->PExt:[I

    aget v4, v4, v8

    add-int/lit8 v4, v4, 0x1

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int v2, v0

    aput v2, p0, v8

    shr-long/2addr v0, v10

    long-to-int v0, v0

    return v0
.end method

.method private static addPTo([I)I
    .locals 10

    const-wide v8, 0xffffffffL

    const/16 v7, 0x20

    const/4 v4, 0x0

    const/4 v6, 0x7

    aget v0, p0, v4

    int-to-long v0, v0

    and-long/2addr v0, v8

    const-wide/16 v2, 0x13

    sub-long/2addr v0, v2

    long-to-int v2, v0

    aput v2, p0, v4

    shr-long/2addr v0, v7

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    invoke-static {v6, p0, v0}, Lorg/bouncycastle/math/raw/Nat;->decAt(I[II)I

    move-result v0

    int-to-long v0, v0

    :cond_0
    aget v2, p0, v6

    int-to-long v2, v2

    and-long/2addr v2, v8

    const-wide v4, 0x80000000L

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int v2, v0

    aput v2, p0, v6

    shr-long/2addr v0, v7

    long-to-int v0, v0

    return v0
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[I
    .locals 2

    invoke-static {p0}, Lorg/bouncycastle/math/raw/Nat256;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object v0

    :goto_0
    sget-object v1, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->P:[I

    invoke-static {v0, v1}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->P:[I

    invoke-static {v1, v0}, Lorg/bouncycastle/math/raw/Nat256;->subFrom([I[I)I

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static half([I[I)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    aget v0, p0, v1

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    invoke-static {v2, p0, v1, p1}, Lorg/bouncycastle/math/raw/Nat;->shiftDownBit(I[II[I)I

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->P:[I

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/math/raw/Nat256;->add([I[I[I)I

    invoke-static {v2, p1, v1}, Lorg/bouncycastle/math/raw/Nat;->shiftDownBit(I[II)I

    goto :goto_0
.end method

.method public static multiply([I[I[I)V
    .locals 1

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/raw/Nat256;->mul([I[I[I)V

    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->reduce([I[I)V

    return-void
.end method

.method public static multiplyAddToExt([I[I[I)V
    .locals 2

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat256;->mulAddTo([I[I[I)I

    const/16 v0, 0x10

    sget-object v1, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->PExt:[I

    invoke-static {v0, p2, v1}, Lorg/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->subPExtFrom([I)I

    :cond_0
    return-void
.end method

.method public static negate([I[I)V
    .locals 1

    invoke-static {p0}, Lorg/bouncycastle/math/raw/Nat256;->isZero([I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/math/raw/Nat256;->zero([I)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->P:[I

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    goto :goto_0
.end method

.method public static reduce([I[I)V
    .locals 7

    const/16 v0, 0x8

    const/4 v6, 0x7

    aget v3, p0, v6

    const/4 v5, 0x0

    move-object v1, p0

    move v2, v0

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBit(I[III[II)I

    const/16 v0, 0x13

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/raw/Nat256;->mulByWordAddTo(I[I[I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    aget v1, p1, v6

    ushr-int/lit8 v2, v1, 0x1f

    ushr-int/lit8 v3, v3, 0x1f

    sub-int/2addr v2, v3

    add-int/2addr v0, v2

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    mul-int/lit8 v0, v0, 0x13

    invoke-static {v6, v0, p1}, Lorg/bouncycastle/math/raw/Nat;->addWordTo(II[I)I

    move-result v0

    add-int/2addr v0, v1

    aput v0, p1, v6

    sget-object v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->P:[I

    invoke-static {p1, v0}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->subPFrom([I)I

    :cond_0
    return-void
.end method

.method public static reduce27(I[I)V
    .locals 4

    const/4 v3, 0x7

    aget v0, p1, v3

    shl-int/lit8 v1, p0, 0x1

    ushr-int/lit8 v2, v0, 0x1f

    or-int/2addr v1, v2

    const v2, 0x7fffffff

    and-int/2addr v0, v2

    mul-int/lit8 v1, v1, 0x13

    invoke-static {v3, v1, p1}, Lorg/bouncycastle/math/raw/Nat;->addWordTo(II[I)I

    move-result v1

    add-int/2addr v0, v1

    aput v0, p1, v3

    sget-object v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->P:[I

    invoke-static {p1, v0}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->subPFrom([I)I

    :cond_0
    return-void
.end method

.method public static square([I[I)V
    .locals 1

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v0

    invoke-static {p0, v0}, Lorg/bouncycastle/math/raw/Nat256;->square([I[I)V

    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->reduce([I[I)V

    return-void
.end method

.method public static squareN([II[I)V
    .locals 1

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v0

    invoke-static {p0, v0}, Lorg/bouncycastle/math/raw/Nat256;->square([I[I)V

    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->reduce([I[I)V

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    invoke-static {p2, v0}, Lorg/bouncycastle/math/raw/Nat256;->square([I[I)V

    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->reduce([I[I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static subPExtFrom([I)I
    .locals 11

    const/16 v10, 0x20

    const/16 v9, 0x8

    const/4 v4, 0x0

    const/16 v8, 0xf

    const-wide v6, 0xffffffffL

    aget v0, p0, v4

    int-to-long v0, v0

    and-long/2addr v0, v6

    sget-object v2, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->PExt:[I

    aget v2, v2, v4

    int-to-long v2, v2

    and-long/2addr v2, v6

    sub-long/2addr v0, v2

    long-to-int v2, v0

    aput v2, p0, v4

    shr-long/2addr v0, v10

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    invoke-static {v9, p0, v0}, Lorg/bouncycastle/math/raw/Nat;->decAt(I[II)I

    move-result v0

    int-to-long v0, v0

    :cond_0
    aget v2, p0, v9

    int-to-long v2, v2

    and-long/2addr v2, v6

    const-wide/16 v4, 0x13

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int v2, v0

    aput v2, p0, v9

    shr-long/2addr v0, v10

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    const/16 v0, 0x9

    invoke-static {v8, p0, v0}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v0

    int-to-long v0, v0

    :cond_1
    aget v2, p0, v8

    int-to-long v2, v2

    and-long/2addr v2, v6

    sget-object v4, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->PExt:[I

    aget v4, v4, v8

    add-int/lit8 v4, v4, 0x1

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int v2, v0

    aput v2, p0, v8

    shr-long/2addr v0, v10

    long-to-int v0, v0

    return v0
.end method

.method private static subPFrom([I)I
    .locals 10

    const-wide v8, 0xffffffffL

    const/16 v7, 0x20

    const/4 v4, 0x0

    const/4 v6, 0x7

    aget v0, p0, v4

    int-to-long v0, v0

    and-long/2addr v0, v8

    const-wide/16 v2, 0x13

    add-long/2addr v0, v2

    long-to-int v2, v0

    aput v2, p0, v4

    shr-long/2addr v0, v7

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    invoke-static {v6, p0, v0}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v0

    int-to-long v0, v0

    :cond_0
    aget v2, p0, v6

    int-to-long v2, v2

    and-long/2addr v2, v8

    const-wide v4, 0x80000000L

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int v2, v0

    aput v2, p0, v6

    shr-long/2addr v0, v7

    long-to-int v0, v0

    return v0
.end method

.method public static subtract([I[I[I)V
    .locals 1

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->addPTo([I)I

    :cond_0
    return-void
.end method

.method public static subtractExt([I[I[I)V
    .locals 1

    const/16 v0, 0x10

    invoke-static {v0, p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->addPExtTo([I)I

    :cond_0
    return-void
.end method

.method public static twice([I[I)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    sget-object v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->P:[I

    invoke-static {p1, v0}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->subPFrom([I)I

    :cond_0
    return-void
.end method
