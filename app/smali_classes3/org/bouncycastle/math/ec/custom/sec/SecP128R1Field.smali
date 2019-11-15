.class public Lorg/bouncycastle/math/ec/custom/sec/SecP128R1Field;
.super Ljava/lang/Object;


# static fields
.field private static final M:J = 0xffffffffL

.field static final P:[I

.field private static final P3:I = -0x3

.field static final PExt:[I

.field private static final PExt7:I = -0x4

.field private static final PExtInv:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x8

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP128R1Field;->P:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP128R1Field;->PExt:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP128R1Field;->PExtInv:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x3
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
        0x0
        0x4
        -0x2
        -0x1
        0x3
        -0x4
    .end array-data

    :array_2
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x5
        0x1
        0x0
        -0x4
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add([I[I[I)V
    .locals 2

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat128;->add([I[I[I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    aget v0, p2, v0

    const/4 v1, -0x3

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP128R1Field;->P:[I

    invoke-static {p2, v0}, Lorg/bouncycastle/math/raw/Nat128;->gte([I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP128R1Field;->addPInvTo([I)V

    :cond_1
    return-void
.end method

.method public static addExt([I[I[I)V
    .locals 2

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat256;->add([I[I[I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x7

    aget v0, p2, v0

    const/4 v1, -0x4

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP128R1Field;->PExt:[I

    invoke-static {p2, v0}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP128R1Field;->PExtInv:[I

    array-length v0, v0

    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP128R1Field;->PExtInv:[I

    invoke-static {v0, v1, p2}, Lorg/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    :cond_1
    return-void
.end method

.method public static addOne([I[I)V
    .locals 2

    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/raw/Nat;->inc(I[I[I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    aget v0, p1, v0

    const/4 v1, -0x3

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP128R1Field;->P:[I

    invoke-static {p1, v0}, Lorg/bouncycastle/math/raw/Nat128;->gte([I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP128R1Field;->addPInvTo([I)V

    :cond_1
    return-void
.end method

.method private static addPInvTo([I)V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x20

    const-wide v4, 0xffffffffL

    aget v0, p0, v7

    int-to-long v0, v0

    and-long/2addr v0, v4

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    long-to-int v2, v0

    aput v2, p0, v7

    shr-long/2addr v0, v6

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    aget v2, p0, v8

    int-to-long v2, v2

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int v2, v0

    aput v2, p0, v8

    shr-long/2addr v0, v6

    aget v2, p0, v9

    int-to-long v2, v2

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int v2, v0

    aput v2, p0, v9

    shr-long/2addr v0, v6

    :cond_0
    const/4 v2, 0x3

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    const-wide/16 v4, 0x2

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    const/4 v2, 0x3

    long-to-int v0, v0

    aput v0, p0, v2

    return-void
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[I
    .locals 3

    invoke-static {p0}, Lorg/bouncycastle/math/raw/Nat128;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object v0

    const/4 v1, 0x3

    aget v1, v0, v1

    const/4 v2, -0x3

    if-ne v1, v2, :cond_0

    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP128R1Field;->P:[I

    invoke-static {v0, v1}, Lorg/bouncycastle/math/raw/Nat128;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP128R1Field;->P:[I

    invoke-static {v1, v0}, Lorg/bouncycastle/math/raw/Nat128;->subFrom([I[I)I

    :cond_0
    return-object v0
.end method

.method public static half([I[I)V
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x0

    aget v0, p0, v1

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    invoke-static {v2, p0, v1, p1}, Lorg/bouncycastle/math/raw/Nat;->shiftDownBit(I[II[I)I

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP128R1Field;->P:[I

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/math/raw/Nat128;->add([I[I[I)I

    move-result v0

    invoke-static {v2, p1, v0}, Lorg/bouncycastle/math/raw/Nat;->shiftDownBit(I[II)I

    goto :goto_0
.end method

.method public static multiply([I[I[I)V
    .locals 1

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat128;->createExt()[I

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/raw/Nat128;->mul([I[I[I)V

    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP128R1Field;->reduce([I[I)V

    return-void
.end method

.method public static multiplyAddToExt([I[I[I)V
    .locals 2

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat128;->mulAddTo([I[I[I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x7

    aget v0, p2, v0

    const/4 v1, -0x4

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP128R1Field;->PExt:[I

    invoke-static {p2, v0}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP128R1Field;->PExtInv:[I

    array-length v0, v0

    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP128R1Field;->PExtInv:[I

    invoke-static {v0, v1, p2}, Lorg/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    :cond_1
    return-void
.end method

.method public static negate([I[I)V
    .locals 1

    invoke-static {p0}, Lorg/bouncycastle/math/raw/Nat128;->isZero([I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/math/raw/Nat128;->zero([I)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP128R1Field;->P:[I

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/raw/Nat128;->sub([I[I[I)I

    goto :goto_0
.end method

.method public static reduce([I[I)V
    .locals 20

    const/4 v2, 0x0

    aget v2, p0, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/4 v4, 0x1

    aget v4, p0, v4

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    const/4 v6, 0x2

    aget v6, p0, v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    const/4 v8, 0x3

    aget v8, p0, v8

    int-to-long v8, v8

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    const/4 v10, 0x4

    aget v10, p0, v10

    int-to-long v10, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    const/4 v12, 0x5

    aget v12, p0, v12

    int-to-long v12, v12

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    const/4 v14, 0x6

    aget v14, p0, v14

    int-to-long v14, v14

    const-wide v16, 0xffffffffL

    and-long v14, v14, v16

    const/16 v16, 0x7

    aget v16, p0, v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0xffffffffL

    and-long v16, v16, v18

    add-long v8, v8, v16

    const/16 v18, 0x1

    shl-long v16, v16, v18

    add-long v14, v14, v16

    add-long/2addr v6, v14

    const/16 v16, 0x1

    shl-long v14, v14, v16

    add-long/2addr v12, v14

    add-long/2addr v4, v12

    const/4 v14, 0x1

    shl-long/2addr v12, v14

    add-long/2addr v10, v12

    add-long/2addr v2, v10

    const/4 v12, 0x1

    shl-long/2addr v10, v12

    add-long/2addr v8, v10

    const/4 v10, 0x0

    long-to-int v11, v2

    aput v11, p1, v10

    const/16 v10, 0x20

    ushr-long/2addr v2, v10

    add-long/2addr v2, v4

    const/4 v4, 0x1

    long-to-int v5, v2

    aput v5, p1, v4

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    add-long/2addr v2, v6

    const/4 v4, 0x2

    long-to-int v5, v2

    aput v5, p1, v4

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    add-long/2addr v2, v8

    const/4 v4, 0x3

    long-to-int v5, v2

    aput v5, p1, v4

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    long-to-int v2, v2

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP128R1Field;->reduce32(I[I)V

    return-void
.end method

.method public static reduce32(I[I)V
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/16 v8, 0x20

    const-wide v6, 0xffffffffL

    :goto_0
    if-eqz p0, :cond_1

    int-to-long v0, p0

    and-long v2, v0, v6

    aget v0, p1, v10

    int-to-long v0, v0

    and-long/2addr v0, v6

    add-long/2addr v0, v2

    long-to-int v4, v0

    aput v4, p1, v10

    shr-long/2addr v0, v8

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    aget v4, p1, v9

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v0, v4

    long-to-int v4, v0

    aput v4, p1, v9

    shr-long/2addr v0, v8

    aget v4, p1, v11

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v0, v4

    long-to-int v4, v0

    aput v4, p1, v11

    shr-long/2addr v0, v8

    :cond_0
    const/4 v4, 0x3

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    shl-long/2addr v2, v9

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    const/4 v2, 0x3

    long-to-int v3, v0

    aput v3, p1, v2

    shr-long/2addr v0, v8

    long-to-int p0, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static square([I[I)V
    .locals 1

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat128;->createExt()[I

    move-result-object v0

    invoke-static {p0, v0}, Lorg/bouncycastle/math/raw/Nat128;->square([I[I)V

    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP128R1Field;->reduce([I[I)V

    return-void
.end method

.method public static squareN([II[I)V
    .locals 1

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat128;->createExt()[I

    move-result-object v0

    invoke-static {p0, v0}, Lorg/bouncycastle/math/raw/Nat128;->square([I[I)V

    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP128R1Field;->reduce([I[I)V

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    invoke-static {p2, v0}, Lorg/bouncycastle/math/raw/Nat128;->square([I[I)V

    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP128R1Field;->reduce([I[I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static subPInvFrom([I)V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x20

    const-wide v4, 0xffffffffL

    aget v0, p0, v7

    int-to-long v0, v0

    and-long/2addr v0, v4

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    long-to-int v2, v0

    aput v2, p0, v7

    shr-long/2addr v0, v6

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    aget v2, p0, v8

    int-to-long v2, v2

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int v2, v0

    aput v2, p0, v8

    shr-long/2addr v0, v6

    aget v2, p0, v9

    int-to-long v2, v2

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int v2, v0

    aput v2, p0, v9

    shr-long/2addr v0, v6

    :cond_0
    const/4 v2, 0x3

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    const-wide/16 v4, 0x2

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    const/4 v2, 0x3

    long-to-int v0, v0

    aput v0, p0, v2

    return-void
.end method

.method public static subtract([I[I[I)V
    .locals 1

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat128;->sub([I[I[I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP128R1Field;->subPInvFrom([I)V

    :cond_0
    return-void
.end method

.method public static subtractExt([I[I[I)V
    .locals 2

    const/16 v0, 0xa

    invoke-static {v0, p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP128R1Field;->PExtInv:[I

    array-length v0, v0

    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP128R1Field;->PExtInv:[I

    invoke-static {v0, v1, p2}, Lorg/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    :cond_0
    return-void
.end method

.method public static twice([I[I)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    aget v0, p1, v0

    const/4 v1, -0x3

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP128R1Field;->P:[I

    invoke-static {p1, v0}, Lorg/bouncycastle/math/raw/Nat128;->gte([I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP128R1Field;->addPInvTo([I)V

    :cond_1
    return-void
.end method
