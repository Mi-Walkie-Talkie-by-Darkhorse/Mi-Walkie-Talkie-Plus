.class public Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;
.super Ljava/lang/Object;


# static fields
.field private static final M:J = 0xffffffffL

.field static final P:[I

.field private static final P4:I = -0x1

.field static final PExt:[I

.field private static final PExt9:I = -0x1

.field private static final PExtInv:[I

.field private static final PInv:I = -0x7fffffff


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->P:[I

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->PExt:[I

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->PExtInv:[I

    return-void

    :array_0
    .array-data 4
        0x7fffffff
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x40000001    # 2.0000002f
        0x0
        0x0
        0x0
        -0x2
        -0x2
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        -0x1
        -0x40000002    # -1.9999998f
        -0x1
        -0x1
        -0x1
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add([I[I[I)V
    .locals 2

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat160;->add([I[I[I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    aget v0, p2, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->P:[I

    invoke-static {p2, v0}, Lorg/bouncycastle/math/raw/Nat160;->gte([I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x5

    const v1, -0x7fffffff

    invoke-static {v0, v1, p2}, Lorg/bouncycastle/math/raw/Nat;->addWordTo(II[I)I

    :cond_1
    return-void
.end method

.method public static addExt([I[I[I)V
    .locals 3

    const/16 v2, 0xa

    invoke-static {v2, p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x9

    aget v0, p2, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->PExt:[I

    invoke-static {v2, p2, v0}, Lorg/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->PExtInv:[I

    array-length v0, v0

    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->PExtInv:[I

    invoke-static {v0, v1, p2}, Lorg/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->PExtInv:[I

    array-length v0, v0

    invoke-static {v2, p2, v0}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[II)I

    :cond_1
    return-void
.end method

.method public static addOne([I[I)V
    .locals 3

    const/4 v2, 0x5

    invoke-static {v2, p0, p1}, Lorg/bouncycastle/math/raw/Nat;->inc(I[I[I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    aget v0, p1, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->P:[I

    invoke-static {p1, v0}, Lorg/bouncycastle/math/raw/Nat160;->gte([I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const v0, -0x7fffffff

    invoke-static {v2, v0, p1}, Lorg/bouncycastle/math/raw/Nat;->addWordTo(II[I)I

    :cond_1
    return-void
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[I
    .locals 3

    invoke-static {p0}, Lorg/bouncycastle/math/raw/Nat160;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object v0

    const/4 v1, 0x4

    aget v1, v0, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->P:[I

    invoke-static {v0, v1}, Lorg/bouncycastle/math/raw/Nat160;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->P:[I

    invoke-static {v1, v0}, Lorg/bouncycastle/math/raw/Nat160;->subFrom([I[I)I

    :cond_0
    return-object v0
.end method

.method public static half([I[I)V
    .locals 3

    const/4 v2, 0x5

    const/4 v1, 0x0

    aget v0, p0, v1

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    invoke-static {v2, p0, v1, p1}, Lorg/bouncycastle/math/raw/Nat;->shiftDownBit(I[II[I)I

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->P:[I

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/math/raw/Nat160;->add([I[I[I)I

    move-result v0

    invoke-static {v2, p1, v0}, Lorg/bouncycastle/math/raw/Nat;->shiftDownBit(I[II)I

    goto :goto_0
.end method

.method public static multiply([I[I[I)V
    .locals 1

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat160;->createExt()[I

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/raw/Nat160;->mul([I[I[I)V

    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->reduce([I[I)V

    return-void
.end method

.method public static multiplyAddToExt([I[I[I)V
    .locals 3

    const/16 v2, 0xa

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat160;->mulAddTo([I[I[I)I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x9

    aget v0, p2, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->PExt:[I

    invoke-static {v2, p2, v0}, Lorg/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->PExtInv:[I

    array-length v0, v0

    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->PExtInv:[I

    invoke-static {v0, v1, p2}, Lorg/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->PExtInv:[I

    array-length v0, v0

    invoke-static {v2, p2, v0}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[II)I

    :cond_1
    return-void
.end method

.method public static negate([I[I)V
    .locals 1

    invoke-static {p0}, Lorg/bouncycastle/math/raw/Nat160;->isZero([I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/math/raw/Nat160;->zero([I)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->P:[I

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/raw/Nat160;->sub([I[I[I)I

    goto :goto_0
.end method

.method public static reduce([I[I)V
    .locals 18

    const/4 v2, 0x5

    aget v2, p0, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/4 v4, 0x6

    aget v4, p0, v4

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    const/4 v6, 0x7

    aget v6, p0, v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    const/16 v8, 0x8

    aget v8, p0, v8

    int-to-long v8, v8

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    const/16 v10, 0x9

    aget v10, p0, v10

    int-to-long v10, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    aget v14, p0, v14

    int-to-long v14, v14

    const-wide v16, 0xffffffffL

    and-long v14, v14, v16

    add-long/2addr v14, v2

    const/16 v16, 0x1f

    shl-long v2, v2, v16

    add-long/2addr v2, v14

    add-long/2addr v2, v12

    const/4 v12, 0x0

    long-to-int v13, v2

    aput v13, p1, v12

    const/16 v12, 0x20

    ushr-long/2addr v2, v12

    const/4 v12, 0x1

    aget v12, p0, v12

    int-to-long v12, v12

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    add-long/2addr v12, v4

    const/16 v14, 0x1f

    shl-long/2addr v4, v14

    add-long/2addr v4, v12

    add-long/2addr v2, v4

    const/4 v4, 0x1

    long-to-int v5, v2

    aput v5, p1, v4

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    const/4 v4, 0x2

    aget v4, p0, v4

    int-to-long v4, v4

    const-wide v12, 0xffffffffL

    and-long/2addr v4, v12

    add-long/2addr v4, v6

    const/16 v12, 0x1f

    shl-long/2addr v6, v12

    add-long/2addr v4, v6

    add-long/2addr v2, v4

    const/4 v4, 0x2

    long-to-int v5, v2

    aput v5, p1, v4

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    const/4 v4, 0x3

    aget v4, p0, v4

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    add-long/2addr v4, v8

    const/16 v6, 0x1f

    shl-long v6, v8, v6

    add-long/2addr v4, v6

    add-long/2addr v2, v4

    const/4 v4, 0x3

    long-to-int v5, v2

    aput v5, p1, v4

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    const/4 v4, 0x4

    aget v4, p0, v4

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    add-long/2addr v4, v10

    const/16 v6, 0x1f

    shl-long v6, v10, v6

    add-long/2addr v4, v6

    add-long/2addr v2, v4

    const/4 v4, 0x4

    long-to-int v5, v2

    aput v5, p1, v4

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    long-to-int v2, v2

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->reduce32(I[I)V

    return-void
.end method

.method public static reduce32(I[I)V
    .locals 3

    const v2, -0x7fffffff

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-static {v2, p0, p1, v0}, Lorg/bouncycastle/math/raw/Nat160;->mulWordsAdd(II[II)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x4

    aget v0, p1, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->P:[I

    invoke-static {p1, v0}, Lorg/bouncycastle/math/raw/Nat160;->gte([I[I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x5

    invoke-static {v0, v2, p1}, Lorg/bouncycastle/math/raw/Nat;->addWordTo(II[I)I

    :cond_2
    return-void
.end method

.method public static square([I[I)V
    .locals 1

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat160;->createExt()[I

    move-result-object v0

    invoke-static {p0, v0}, Lorg/bouncycastle/math/raw/Nat160;->square([I[I)V

    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->reduce([I[I)V

    return-void
.end method

.method public static squareN([II[I)V
    .locals 1

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat160;->createExt()[I

    move-result-object v0

    invoke-static {p0, v0}, Lorg/bouncycastle/math/raw/Nat160;->square([I[I)V

    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->reduce([I[I)V

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    invoke-static {p2, v0}, Lorg/bouncycastle/math/raw/Nat160;->square([I[I)V

    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->reduce([I[I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static subtract([I[I[I)V
    .locals 2

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat160;->sub([I[I[I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    const v1, -0x7fffffff

    invoke-static {v0, v1, p2}, Lorg/bouncycastle/math/raw/Nat;->subWordFrom(II[I)I

    :cond_0
    return-void
.end method

.method public static subtractExt([I[I[I)V
    .locals 3

    const/16 v2, 0xa

    invoke-static {v2, p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->PExtInv:[I

    array-length v0, v0

    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->PExtInv:[I

    invoke-static {v0, v1, p2}, Lorg/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->PExtInv:[I

    array-length v0, v0

    invoke-static {v2, p2, v0}, Lorg/bouncycastle/math/raw/Nat;->decAt(I[II)I

    :cond_0
    return-void
.end method

.method public static twice([I[I)V
    .locals 3

    const/4 v2, 0x5

    const/4 v0, 0x0

    invoke-static {v2, p0, v0, p1}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    aget v0, p1, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->P:[I

    invoke-static {p1, v0}, Lorg/bouncycastle/math/raw/Nat160;->gte([I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const v0, -0x7fffffff

    invoke-static {v2, v0, p1}, Lorg/bouncycastle/math/raw/Nat;->addWordTo(II[I)I

    :cond_1
    return-void
.end method
