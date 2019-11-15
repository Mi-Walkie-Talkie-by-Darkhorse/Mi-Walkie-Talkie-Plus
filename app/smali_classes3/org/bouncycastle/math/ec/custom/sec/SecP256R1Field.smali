.class public Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;
.super Ljava/lang/Object;


# static fields
.field private static final M:J = 0xffffffffL

.field static final P:[I

.field private static final P7:I = -0x1

.field static final PExt:[I

.field private static final PExt15:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->PExt:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        0x0
        0x0
        0x0
        0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
        0x0
        -0x2
        -0x1
        -0x1
        -0x2
        0x1
        -0x2
        0x1
        -0x2
        0x1
        0x1
        -0x2
        0x2
        -0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add([I[I[I)V
    .locals 2

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat256;->add([I[I[I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x7

    aget v0, p2, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {p2, v0}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->addPInvTo([I)V

    :cond_1
    return-void
.end method

.method public static addExt([I[I[I)V
    .locals 3

    const/16 v2, 0x10

    invoke-static {v2, p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xf

    aget v0, p2, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->PExt:[I

    invoke-static {v2, p2, v0}, Lorg/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->PExt:[I

    invoke-static {v2, v0, p2}, Lorg/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    :cond_1
    return-void
.end method

.method public static addOne([I[I)V
    .locals 2

    const/16 v0, 0x8

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/raw/Nat;->inc(I[I[I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x7

    aget v0, p1, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {p1, v0}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->addPInvTo([I)V

    :cond_1
    return-void
.end method

.method private static addPInvTo([I)V
    .locals 10

    const/4 v7, 0x1

    const/4 v3, 0x0

    const-wide/16 v8, 0x1

    const/16 v6, 0x20

    const-wide v4, 0xffffffffL

    aget v0, p0, v3

    int-to-long v0, v0

    and-long/2addr v0, v4

    add-long/2addr v0, v8

    long-to-int v2, v0

    aput v2, p0, v3

    shr-long/2addr v0, v6

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    aget v2, p0, v7

    int-to-long v2, v2

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int v2, v0

    aput v2, p0, v7

    shr-long/2addr v0, v6

    const/4 v2, 0x2

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    const/4 v2, 0x2

    long-to-int v3, v0

    aput v3, p0, v2

    shr-long/2addr v0, v6

    :cond_0
    const/4 v2, 0x3

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    sub-long/2addr v2, v8

    add-long/2addr v0, v2

    const/4 v2, 0x3

    long-to-int v3, v0

    aput v3, p0, v2

    shr-long/2addr v0, v6

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    const/4 v2, 0x4

    long-to-int v3, v0

    aput v3, p0, v2

    shr-long/2addr v0, v6

    const/4 v2, 0x5

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    const/4 v2, 0x5

    long-to-int v3, v0

    aput v3, p0, v2

    shr-long/2addr v0, v6

    :cond_1
    const/4 v2, 0x6

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    sub-long/2addr v2, v8

    add-long/2addr v0, v2

    const/4 v2, 0x6

    long-to-int v3, v0

    aput v3, p0, v2

    shr-long/2addr v0, v6

    const/4 v2, 0x7

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    add-long/2addr v2, v8

    add-long/2addr v0, v2

    const/4 v2, 0x7

    long-to-int v0, v0

    aput v0, p0, v2

    return-void
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[I
    .locals 3

    invoke-static {p0}, Lorg/bouncycastle/math/raw/Nat256;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object v0

    const/4 v1, 0x7

    aget v1, v0, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {v0, v1}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {v1, v0}, Lorg/bouncycastle/math/raw/Nat256;->subFrom([I[I)I

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
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/math/raw/Nat256;->add([I[I[I)I

    move-result v0

    invoke-static {v2, p1, v0}, Lorg/bouncycastle/math/raw/Nat;->shiftDownBit(I[II)I

    goto :goto_0
.end method

.method public static multiply([I[I[I)V
    .locals 1

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/raw/Nat256;->mul([I[I[I)V

    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce([I[I)V

    return-void
.end method

.method public static multiplyAddToExt([I[I[I)V
    .locals 3

    const/16 v2, 0x10

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat256;->mulAddTo([I[I[I)I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xf

    aget v0, p2, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->PExt:[I

    invoke-static {v2, p2, v0}, Lorg/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->PExt:[I

    invoke-static {v2, v0, p2}, Lorg/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    :cond_1
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
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    goto :goto_0
.end method

.method public static reduce([I[I)V
    .locals 30

    const/16 v2, 0x8

    aget v2, p0, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/16 v4, 0x9

    aget v4, p0, v4

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    const/16 v6, 0xa

    aget v6, p0, v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    const/16 v8, 0xb

    aget v8, p0, v8

    int-to-long v8, v8

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    const/16 v10, 0xc

    aget v10, p0, v10

    int-to-long v10, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    const/16 v12, 0xd

    aget v12, p0, v12

    int-to-long v12, v12

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    const/16 v14, 0xe

    aget v14, p0, v14

    int-to-long v14, v14

    const-wide v16, 0xffffffffL

    and-long v14, v14, v16

    const/16 v16, 0xf

    aget v16, p0, v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0xffffffffL

    and-long v16, v16, v18

    const-wide/16 v18, 0x6

    sub-long v2, v2, v18

    add-long v18, v2, v4

    add-long/2addr v4, v6

    add-long/2addr v6, v8

    sub-long v6, v6, v16

    add-long/2addr v8, v10

    add-long/2addr v10, v12

    add-long v20, v12, v14

    add-long v22, v14, v16

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    aget v26, p0, v26

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v26, v26, v28

    add-long v26, v26, v18

    sub-long v26, v26, v8

    sub-long v26, v26, v20

    add-long v24, v24, v26

    const/16 v26, 0x0

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v27, v0

    aput v27, p1, v26

    const/16 v26, 0x20

    shr-long v24, v24, v26

    const/16 v26, 0x1

    aget v26, p0, v26

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v26, v26, v28

    add-long v26, v26, v4

    sub-long v26, v26, v10

    sub-long v26, v26, v22

    add-long v24, v24, v26

    const/16 v26, 0x1

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v27, v0

    aput v27, p1, v26

    const/16 v26, 0x20

    shr-long v24, v24, v26

    const/16 v26, 0x2

    aget v26, p0, v26

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v26, v26, v28

    add-long v26, v26, v6

    sub-long v26, v26, v20

    add-long v24, v24, v26

    const/16 v26, 0x2

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v27, v0

    aput v27, p1, v26

    const/16 v26, 0x20

    shr-long v24, v24, v26

    const/16 v26, 0x3

    aget v26, p0, v26

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v26, v26, v28

    const/16 v28, 0x1

    shl-long v8, v8, v28

    add-long v8, v8, v26

    add-long/2addr v8, v12

    sub-long v8, v8, v16

    sub-long v8, v8, v18

    add-long v8, v8, v24

    const/4 v12, 0x3

    long-to-int v13, v8

    aput v13, p1, v12

    const/16 v12, 0x20

    shr-long/2addr v8, v12

    const/4 v12, 0x4

    aget v12, p0, v12

    int-to-long v12, v12

    const-wide v24, 0xffffffffL

    and-long v12, v12, v24

    const/16 v24, 0x1

    shl-long v24, v10, v24

    add-long v12, v12, v24

    add-long/2addr v12, v14

    sub-long v4, v12, v4

    add-long/2addr v4, v8

    const/4 v8, 0x4

    long-to-int v9, v4

    aput v9, p1, v8

    const/16 v8, 0x20

    shr-long/2addr v4, v8

    const/4 v8, 0x5

    aget v8, p0, v8

    int-to-long v8, v8

    const-wide v12, 0xffffffffL

    and-long/2addr v8, v12

    const/4 v12, 0x1

    shl-long v12, v20, v12

    add-long/2addr v8, v12

    sub-long/2addr v8, v6

    add-long/2addr v4, v8

    const/4 v8, 0x5

    long-to-int v9, v4

    aput v9, p1, v8

    const/16 v8, 0x20

    shr-long/2addr v4, v8

    const/4 v8, 0x6

    aget v8, p0, v8

    int-to-long v8, v8

    const-wide v12, 0xffffffffL

    and-long/2addr v8, v12

    const/4 v12, 0x1

    shl-long v12, v22, v12

    add-long/2addr v8, v12

    add-long v8, v8, v20

    sub-long v8, v8, v18

    add-long/2addr v4, v8

    const/4 v8, 0x6

    long-to-int v9, v4

    aput v9, p1, v8

    const/16 v8, 0x20

    shr-long/2addr v4, v8

    const/4 v8, 0x7

    aget v8, p0, v8

    int-to-long v8, v8

    const-wide v12, 0xffffffffL

    and-long/2addr v8, v12

    const/4 v12, 0x1

    shl-long v12, v16, v12

    add-long/2addr v8, v12

    add-long/2addr v2, v8

    sub-long/2addr v2, v6

    sub-long/2addr v2, v10

    add-long/2addr v2, v4

    const/4 v4, 0x7

    long-to-int v5, v2

    aput v5, p1, v4

    const/16 v4, 0x20

    shr-long/2addr v2, v4

    const-wide/16 v4, 0x6

    add-long/2addr v2, v4

    long-to-int v2, v2

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce32(I[I)V

    return-void
.end method

.method public static reduce32(I[I)V
    .locals 12

    const/4 v7, 0x0

    const/4 v11, 0x7

    const-wide/16 v2, 0x0

    const/16 v10, 0x20

    const-wide v8, 0xffffffffL

    if-eqz p0, :cond_4

    int-to-long v0, p0

    and-long v4, v0, v8

    aget v0, p1, v7

    int-to-long v0, v0

    and-long/2addr v0, v8

    add-long/2addr v0, v4

    add-long/2addr v0, v2

    long-to-int v6, v0

    aput v6, p1, v7

    shr-long/2addr v0, v10

    cmp-long v6, v0, v2

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v8

    add-long/2addr v0, v6

    const/4 v6, 0x1

    long-to-int v7, v0

    aput v7, p1, v6

    shr-long/2addr v0, v10

    const/4 v6, 0x2

    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v8

    add-long/2addr v0, v6

    const/4 v6, 0x2

    long-to-int v7, v0

    aput v7, p1, v6

    shr-long/2addr v0, v10

    :cond_0
    const/4 v6, 0x3

    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v8

    sub-long/2addr v6, v4

    add-long/2addr v0, v6

    const/4 v6, 0x3

    long-to-int v7, v0

    aput v7, p1, v6

    shr-long/2addr v0, v10

    cmp-long v6, v0, v2

    if-eqz v6, :cond_1

    const/4 v6, 0x4

    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v8

    add-long/2addr v0, v6

    const/4 v6, 0x4

    long-to-int v7, v0

    aput v7, p1, v6

    shr-long/2addr v0, v10

    const/4 v6, 0x5

    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v8

    add-long/2addr v0, v6

    const/4 v6, 0x5

    long-to-int v7, v0

    aput v7, p1, v6

    shr-long/2addr v0, v10

    :cond_1
    const/4 v6, 0x6

    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v8

    sub-long/2addr v6, v4

    add-long/2addr v0, v6

    const/4 v6, 0x6

    long-to-int v7, v0

    aput v7, p1, v6

    shr-long/2addr v0, v10

    aget v6, p1, v11

    int-to-long v6, v6

    and-long/2addr v6, v8

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    long-to-int v4, v0

    aput v4, p1, v11

    shr-long/2addr v0, v10

    :goto_0
    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    aget v0, p1, v11

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {p1, v0}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->addPInvTo([I)V

    :cond_3
    return-void

    :cond_4
    move-wide v0, v2

    goto :goto_0
.end method

.method public static square([I[I)V
    .locals 1

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v0

    invoke-static {p0, v0}, Lorg/bouncycastle/math/raw/Nat256;->square([I[I)V

    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce([I[I)V

    return-void
.end method

.method public static squareN([II[I)V
    .locals 1

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v0

    invoke-static {p0, v0}, Lorg/bouncycastle/math/raw/Nat256;->square([I[I)V

    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce([I[I)V

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    invoke-static {p2, v0}, Lorg/bouncycastle/math/raw/Nat256;->square([I[I)V

    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce([I[I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static subPInvFrom([I)V
    .locals 10

    const/4 v7, 0x1

    const/4 v3, 0x0

    const-wide/16 v8, 0x1

    const/16 v6, 0x20

    const-wide v4, 0xffffffffL

    aget v0, p0, v3

    int-to-long v0, v0

    and-long/2addr v0, v4

    sub-long/2addr v0, v8

    long-to-int v2, v0

    aput v2, p0, v3

    shr-long/2addr v0, v6

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    aget v2, p0, v7

    int-to-long v2, v2

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int v2, v0

    aput v2, p0, v7

    shr-long/2addr v0, v6

    const/4 v2, 0x2

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    const/4 v2, 0x2

    long-to-int v3, v0

    aput v3, p0, v2

    shr-long/2addr v0, v6

    :cond_0
    const/4 v2, 0x3

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    add-long/2addr v2, v8

    add-long/2addr v0, v2

    const/4 v2, 0x3

    long-to-int v3, v0

    aput v3, p0, v2

    shr-long/2addr v0, v6

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    const/4 v2, 0x4

    long-to-int v3, v0

    aput v3, p0, v2

    shr-long/2addr v0, v6

    const/4 v2, 0x5

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    const/4 v2, 0x5

    long-to-int v3, v0

    aput v3, p0, v2

    shr-long/2addr v0, v6

    :cond_1
    const/4 v2, 0x6

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    add-long/2addr v2, v8

    add-long/2addr v0, v2

    const/4 v2, 0x6

    long-to-int v3, v0

    aput v3, p0, v2

    shr-long/2addr v0, v6

    const/4 v2, 0x7

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    sub-long/2addr v2, v8

    add-long/2addr v0, v2

    const/4 v2, 0x7

    long-to-int v0, v0

    aput v0, p0, v2

    return-void
.end method

.method public static subtract([I[I[I)V
    .locals 1

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->subPInvFrom([I)V

    :cond_0
    return-void
.end method

.method public static subtractExt([I[I[I)V
    .locals 2

    const/16 v1, 0x10

    invoke-static {v1, p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->PExt:[I

    invoke-static {v1, v0, p2}, Lorg/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    :cond_0
    return-void
.end method

.method public static twice([I[I)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x7

    aget v0, p1, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {p1, v0}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->addPInvTo([I)V

    :cond_1
    return-void
.end method
