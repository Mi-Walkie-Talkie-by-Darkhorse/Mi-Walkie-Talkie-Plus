.class public Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;
.super Ljava/lang/Object;


# static fields
.field private static final M03:J = 0x7L

.field private static final M44:J = 0xfffffffffffL

.field private static final ROOT_Z:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->ROOT_Z:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x26bc4d789af13523L
        0x26bc4d789af135e2L    # 4.281425911902527E-122
        0x6
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add([J[J[J)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    aget-wide v0, p0, v4

    aget-wide v2, p1, v4

    xor-long/2addr v0, v2

    aput-wide v0, p2, v4

    aget-wide v0, p0, v5

    aget-wide v2, p1, v5

    xor-long/2addr v0, v2

    aput-wide v0, p2, v5

    aget-wide v0, p0, v6

    aget-wide v2, p1, v6

    xor-long/2addr v0, v2

    aput-wide v0, p2, v6

    return-void
.end method

.method public static addExt([J[J[J)V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    aget-wide v0, p0, v4

    aget-wide v2, p1, v4

    xor-long/2addr v0, v2

    aput-wide v0, p2, v4

    aget-wide v0, p0, v5

    aget-wide v2, p1, v5

    xor-long/2addr v0, v2

    aput-wide v0, p2, v5

    aget-wide v0, p0, v6

    aget-wide v2, p1, v6

    xor-long/2addr v0, v2

    aput-wide v0, p2, v6

    aget-wide v0, p0, v7

    aget-wide v2, p1, v7

    xor-long/2addr v0, v2

    aput-wide v0, p2, v7

    aget-wide v0, p0, v8

    aget-wide v2, p1, v8

    xor-long/2addr v0, v2

    aput-wide v0, p2, v8

    return-void
.end method

.method public static addOne([J[J)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    aget-wide v0, p0, v4

    const-wide/16 v2, 0x1

    xor-long/2addr v0, v2

    aput-wide v0, p1, v4

    aget-wide v0, p0, v5

    aput-wide v0, p1, v5

    aget-wide v0, p0, v6

    aput-wide v0, p1, v6

    return-void
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[J
    .locals 2

    invoke-static {p0}, Lorg/bouncycastle/math/raw/Nat192;->fromBigInteger64(Ljava/math/BigInteger;)[J

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->reduce61([JI)V

    return-object v0
.end method

.method protected static implCompactExt([J)V
    .locals 16

    const/4 v0, 0x0

    aget-wide v0, p0, v0

    const/4 v2, 0x1

    aget-wide v2, p0, v2

    const/4 v4, 0x2

    aget-wide v4, p0, v4

    const/4 v6, 0x3

    aget-wide v6, p0, v6

    const/4 v8, 0x4

    aget-wide v8, p0, v8

    const/4 v10, 0x5

    aget-wide v10, p0, v10

    const/4 v12, 0x0

    const/16 v13, 0x2c

    shl-long v14, v2, v13

    xor-long/2addr v0, v14

    aput-wide v0, p0, v12

    const/4 v0, 0x1

    const/16 v1, 0x14

    ushr-long/2addr v2, v1

    const/16 v1, 0x18

    shl-long v12, v4, v1

    xor-long/2addr v2, v12

    aput-wide v2, p0, v0

    const/4 v0, 0x2

    const/16 v1, 0x28

    ushr-long v2, v4, v1

    const/4 v1, 0x4

    shl-long v4, v6, v1

    xor-long/2addr v2, v4

    const/16 v1, 0x30

    shl-long v4, v8, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/4 v0, 0x3

    const/16 v1, 0x3c

    ushr-long v2, v6, v1

    const/16 v1, 0x1c

    shl-long v4, v10, v1

    xor-long/2addr v2, v4

    const/16 v1, 0x10

    ushr-long v4, v8, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/4 v0, 0x4

    const/16 v1, 0x24

    ushr-long v2, v10, v1

    aput-wide v2, p0, v0

    const/4 v0, 0x5

    const-wide/16 v2, 0x0

    aput-wide v2, p0, v0

    return-void
.end method

.method protected static implMultiply([J[J[J)V
    .locals 20

    const/4 v0, 0x0

    aget-wide v0, p0, v0

    const/4 v2, 0x1

    aget-wide v2, p0, v2

    const/4 v4, 0x2

    aget-wide v4, p0, v4

    const/16 v6, 0x18

    ushr-long v6, v2, v6

    const/16 v8, 0x28

    shl-long/2addr v4, v8

    xor-long/2addr v4, v6

    const-wide v6, 0xfffffffffffL

    and-long/2addr v6, v4

    const/16 v4, 0x2c

    ushr-long v4, v0, v4

    const/16 v8, 0x14

    shl-long/2addr v2, v8

    xor-long/2addr v2, v4

    const-wide v4, 0xfffffffffffL

    and-long v16, v2, v4

    const-wide v2, 0xfffffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x0

    aget-wide v2, p1, v2

    const/4 v4, 0x1

    aget-wide v4, p1, v4

    const/4 v8, 0x2

    aget-wide v8, p1, v8

    const/16 v10, 0x18

    ushr-long v10, v4, v10

    const/16 v12, 0x28

    shl-long/2addr v8, v12

    xor-long/2addr v8, v10

    const-wide v10, 0xfffffffffffL

    and-long/2addr v8, v10

    const/16 v10, 0x2c

    ushr-long v10, v2, v10

    const/16 v12, 0x14

    shl-long/2addr v4, v12

    xor-long/2addr v4, v10

    const-wide v10, 0xfffffffffffL

    and-long v18, v4, v10

    const-wide v4, 0xfffffffffffL

    and-long/2addr v2, v4

    const/16 v4, 0xa

    new-array v4, v4, [J

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->implMulw(JJ[JI)V

    const/4 v11, 0x2

    move-object v10, v4

    invoke-static/range {v6 .. v11}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->implMulw(JJ[JI)V

    xor-long v10, v0, v16

    xor-long/2addr v10, v6

    xor-long v12, v2, v18

    xor-long/2addr v12, v8

    const/4 v15, 0x4

    move-object v14, v4

    invoke-static/range {v10 .. v15}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->implMulw(JJ[JI)V

    const/4 v5, 0x1

    shl-long v14, v16, v5

    const/4 v5, 0x2

    shl-long/2addr v6, v5

    xor-long/2addr v6, v14

    const/4 v5, 0x1

    shl-long v14, v18, v5

    const/4 v5, 0x2

    shl-long/2addr v8, v5

    xor-long/2addr v8, v14

    xor-long/2addr v0, v6

    xor-long/2addr v2, v8

    const/4 v5, 0x6

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->implMulw(JJ[JI)V

    xor-long v0, v10, v6

    xor-long v2, v12, v8

    const/16 v5, 0x8

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->implMulw(JJ[JI)V

    const/4 v0, 0x6

    aget-wide v0, v4, v0

    const/16 v2, 0x8

    aget-wide v2, v4, v2

    xor-long/2addr v0, v2

    const/4 v2, 0x7

    aget-wide v2, v4, v2

    const/16 v5, 0x9

    aget-wide v6, v4, v5

    xor-long/2addr v2, v6

    const/4 v5, 0x1

    shl-long v6, v0, v5

    const/4 v5, 0x6

    aget-wide v8, v4, v5

    xor-long/2addr v6, v8

    const/4 v5, 0x1

    shl-long v8, v2, v5

    xor-long/2addr v0, v8

    const/4 v5, 0x7

    aget-wide v8, v4, v5

    xor-long/2addr v0, v8

    const/4 v5, 0x0

    aget-wide v8, v4, v5

    const/4 v5, 0x1

    aget-wide v10, v4, v5

    const/4 v5, 0x0

    aget-wide v12, v4, v5

    xor-long/2addr v10, v12

    const/4 v5, 0x4

    aget-wide v12, v4, v5

    xor-long/2addr v10, v12

    const/4 v5, 0x1

    aget-wide v12, v4, v5

    const/4 v5, 0x5

    aget-wide v14, v4, v5

    xor-long/2addr v12, v14

    xor-long/2addr v6, v8

    const/4 v5, 0x2

    aget-wide v14, v4, v5

    const/4 v5, 0x4

    shl-long/2addr v14, v5

    xor-long/2addr v6, v14

    const/4 v5, 0x2

    aget-wide v14, v4, v5

    const/4 v5, 0x1

    shl-long/2addr v14, v5

    xor-long/2addr v6, v14

    xor-long/2addr v0, v10

    const/4 v5, 0x3

    aget-wide v14, v4, v5

    const/4 v5, 0x4

    shl-long/2addr v14, v5

    xor-long/2addr v0, v14

    const/4 v5, 0x3

    aget-wide v14, v4, v5

    const/4 v5, 0x1

    shl-long/2addr v14, v5

    xor-long/2addr v0, v14

    xor-long/2addr v2, v12

    const/16 v5, 0x2c

    ushr-long v14, v6, v5

    xor-long/2addr v0, v14

    const-wide v14, 0xfffffffffffL

    and-long/2addr v6, v14

    const/16 v5, 0x2c

    ushr-long v14, v0, v5

    xor-long/2addr v2, v14

    const-wide v14, 0xfffffffffffL

    and-long/2addr v0, v14

    const/4 v5, 0x1

    ushr-long/2addr v6, v5

    const-wide/16 v14, 0x1

    and-long/2addr v14, v0

    const/16 v5, 0x2b

    shl-long/2addr v14, v5

    xor-long/2addr v6, v14

    const/4 v5, 0x1

    ushr-long/2addr v0, v5

    const-wide/16 v14, 0x1

    and-long/2addr v14, v2

    const/16 v5, 0x2b

    shl-long/2addr v14, v5

    xor-long/2addr v0, v14

    const/4 v5, 0x1

    ushr-long/2addr v2, v5

    const/4 v5, 0x1

    shl-long v14, v6, v5

    xor-long/2addr v6, v14

    const/4 v5, 0x2

    shl-long v14, v6, v5

    xor-long/2addr v6, v14

    const/4 v5, 0x4

    shl-long v14, v6, v5

    xor-long/2addr v6, v14

    const/16 v5, 0x8

    shl-long v14, v6, v5

    xor-long/2addr v6, v14

    const/16 v5, 0x10

    shl-long v14, v6, v5

    xor-long/2addr v6, v14

    const/16 v5, 0x20

    shl-long v14, v6, v5

    xor-long/2addr v6, v14

    const-wide v14, 0xfffffffffffL

    and-long/2addr v6, v14

    const/16 v5, 0x2b

    ushr-long v14, v6, v5

    xor-long/2addr v0, v14

    const/4 v5, 0x1

    shl-long v14, v0, v5

    xor-long/2addr v0, v14

    const/4 v5, 0x2

    shl-long v14, v0, v5

    xor-long/2addr v0, v14

    const/4 v5, 0x4

    shl-long v14, v0, v5

    xor-long/2addr v0, v14

    const/16 v5, 0x8

    shl-long v14, v0, v5

    xor-long/2addr v0, v14

    const/16 v5, 0x10

    shl-long v14, v0, v5

    xor-long/2addr v0, v14

    const/16 v5, 0x20

    shl-long v14, v0, v5

    xor-long/2addr v0, v14

    const-wide v14, 0xfffffffffffL

    and-long/2addr v0, v14

    const/16 v5, 0x2b

    ushr-long v14, v0, v5

    xor-long/2addr v2, v14

    const/4 v5, 0x1

    shl-long v14, v2, v5

    xor-long/2addr v2, v14

    const/4 v5, 0x2

    shl-long v14, v2, v5

    xor-long/2addr v2, v14

    const/4 v5, 0x4

    shl-long v14, v2, v5

    xor-long/2addr v2, v14

    const/16 v5, 0x8

    shl-long v14, v2, v5

    xor-long/2addr v2, v14

    const/16 v5, 0x10

    shl-long v14, v2, v5

    xor-long/2addr v2, v14

    const/16 v5, 0x20

    shl-long v14, v2, v5

    xor-long/2addr v2, v14

    const/4 v5, 0x0

    aput-wide v8, p2, v5

    const/4 v5, 0x1

    xor-long v8, v10, v6

    const/4 v10, 0x2

    aget-wide v10, v4, v10

    xor-long/2addr v8, v10

    aput-wide v8, p2, v5

    const/4 v5, 0x2

    xor-long v8, v12, v0

    xor-long/2addr v6, v8

    const/4 v8, 0x3

    aget-wide v8, v4, v8

    xor-long/2addr v6, v8

    aput-wide v6, p2, v5

    const/4 v5, 0x3

    xor-long/2addr v0, v2

    aput-wide v0, p2, v5

    const/4 v0, 0x4

    const/4 v1, 0x2

    aget-wide v6, v4, v1

    xor-long/2addr v2, v6

    aput-wide v2, p2, v0

    const/4 v0, 0x5

    const/4 v1, 0x3

    aget-wide v2, v4, v1

    aput-wide v2, p2, v0

    invoke-static/range {p2 .. p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->implCompactExt([J)V

    return-void
.end method

.method protected static implMulw(JJ[JI)V
    .locals 12

    const/16 v0, 0x8

    new-array v1, v0, [J

    const/4 v0, 0x1

    aput-wide p2, v1, v0

    const/4 v0, 0x2

    const/4 v2, 0x1

    aget-wide v2, v1, v2

    const/4 v4, 0x1

    shl-long/2addr v2, v4

    aput-wide v2, v1, v0

    const/4 v0, 0x3

    const/4 v2, 0x2

    aget-wide v2, v1, v2

    xor-long/2addr v2, p2

    aput-wide v2, v1, v0

    const/4 v0, 0x4

    const/4 v2, 0x2

    aget-wide v2, v1, v2

    const/4 v4, 0x1

    shl-long/2addr v2, v4

    aput-wide v2, v1, v0

    const/4 v0, 0x5

    const/4 v2, 0x4

    aget-wide v2, v1, v2

    xor-long/2addr v2, p2

    aput-wide v2, v1, v0

    const/4 v0, 0x6

    const/4 v2, 0x3

    aget-wide v2, v1, v2

    const/4 v4, 0x1

    shl-long/2addr v2, v4

    aput-wide v2, v1, v0

    const/4 v0, 0x7

    const/4 v2, 0x6

    aget-wide v2, v1, v2

    xor-long/2addr v2, p2

    aput-wide v2, v1, v0

    long-to-int v0, p0

    const-wide/16 v4, 0x0

    and-int/lit8 v2, v0, 0x7

    aget-wide v2, v1, v2

    ushr-int/lit8 v6, v0, 0x3

    and-int/lit8 v6, v6, 0x7

    aget-wide v6, v1, v6

    const/4 v8, 0x3

    shl-long/2addr v6, v8

    xor-long/2addr v2, v6

    ushr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x7

    aget-wide v6, v1, v0

    const/4 v0, 0x6

    shl-long/2addr v6, v0

    xor-long/2addr v2, v6

    const/16 v0, 0x21

    :cond_0
    ushr-long v6, p0, v0

    long-to-int v6, v6

    and-int/lit8 v7, v6, 0x7

    aget-wide v8, v1, v7

    ushr-int/lit8 v7, v6, 0x3

    and-int/lit8 v7, v7, 0x7

    aget-wide v10, v1, v7

    const/4 v7, 0x3

    shl-long/2addr v10, v7

    xor-long/2addr v8, v10

    ushr-int/lit8 v7, v6, 0x6

    and-int/lit8 v7, v7, 0x7

    aget-wide v10, v1, v7

    const/4 v7, 0x6

    shl-long/2addr v10, v7

    xor-long/2addr v8, v10

    ushr-int/lit8 v6, v6, 0x9

    and-int/lit8 v6, v6, 0x7

    aget-wide v6, v1, v6

    const/16 v10, 0x9

    shl-long/2addr v6, v10

    xor-long/2addr v6, v8

    shl-long v8, v6, v0

    xor-long/2addr v2, v8

    neg-int v8, v0

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    add-int/lit8 v0, v0, -0xc

    if-gtz v0, :cond_0

    const-wide v0, 0xfffffffffffL

    and-long/2addr v0, v2

    aput-wide v0, p4, p5

    add-int/lit8 v0, p5, 0x1

    const/16 v1, 0x2c

    ushr-long/2addr v2, v1

    const/16 v1, 0x14

    shl-long/2addr v4, v1

    xor-long/2addr v2, v4

    aput-wide v2, p4, v0

    return-void
.end method

.method protected static implSquare([J[J)V
    .locals 6

    const/4 v3, 0x2

    const/4 v2, 0x0

    aget-wide v0, p0, v2

    invoke-static {v0, v1, p1, v2}, Lorg/bouncycastle/math/raw/Interleave;->expand64To128(J[JI)V

    const/4 v0, 0x1

    aget-wide v0, p0, v0

    invoke-static {v0, v1, p1, v3}, Lorg/bouncycastle/math/raw/Interleave;->expand64To128(J[JI)V

    const/4 v0, 0x4

    aget-wide v2, p0, v3

    long-to-int v1, v2

    invoke-static {v1}, Lorg/bouncycastle/math/raw/Interleave;->expand8to16(I)I

    move-result v1

    int-to-long v2, v1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    aput-wide v2, p1, v0

    return-void
.end method

.method public static invert([J[J)V
    .locals 3

    invoke-static {p0}, Lorg/bouncycastle/math/raw/Nat192;->isZero64([J)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat192;->create64()[J

    move-result-object v0

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat192;->create64()[J

    move-result-object v1

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->square([J[J)V

    invoke-static {v0, p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->multiply([J[J[J)V

    const/4 v2, 0x2

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->squareN([JI[J)V

    invoke-static {v1, v0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->multiply([J[J[J)V

    const/4 v2, 0x4

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->squareN([JI[J)V

    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->multiply([J[J[J)V

    const/16 v2, 0x8

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->squareN([JI[J)V

    invoke-static {v1, v0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->multiply([J[J[J)V

    const/16 v2, 0x10

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->squareN([JI[J)V

    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->multiply([J[J[J)V

    const/16 v2, 0x20

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->squareN([JI[J)V

    invoke-static {v1, v0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->multiply([J[J[J)V

    invoke-static {v1, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->square([J[J)V

    invoke-static {v1, p0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->multiply([J[J[J)V

    const/16 v2, 0x41

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->squareN([JI[J)V

    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->multiply([J[J[J)V

    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->square([J[J)V

    return-void
.end method

.method public static multiply([J[J[J)V
    .locals 1

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat192;->createExt64()[J

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->implMultiply([J[J[J)V

    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->reduce([J[J)V

    return-void
.end method

.method public static multiplyAddToExt([J[J[J)V
    .locals 1

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat192;->createExt64()[J

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->implMultiply([J[J[J)V

    invoke-static {p2, v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->addExt([J[J[J)V

    return-void
.end method

.method public static reduce([J[J)V
    .locals 14

    const/4 v0, 0x0

    aget-wide v0, p0, v0

    const/4 v2, 0x1

    aget-wide v2, p0, v2

    const/4 v4, 0x2

    aget-wide v4, p0, v4

    const/4 v6, 0x3

    aget-wide v6, p0, v6

    const/4 v8, 0x4

    aget-wide v8, p0, v8

    const/16 v10, 0x3d

    shl-long v10, v8, v10

    const/16 v12, 0x3f

    shl-long v12, v8, v12

    xor-long/2addr v10, v12

    xor-long/2addr v2, v10

    const/4 v10, 0x3

    ushr-long v10, v8, v10

    const/4 v12, 0x1

    ushr-long v12, v8, v12

    xor-long/2addr v10, v12

    xor-long/2addr v10, v8

    const/4 v12, 0x5

    shl-long v12, v8, v12

    xor-long/2addr v10, v12

    xor-long/2addr v4, v10

    const/16 v10, 0x3b

    ushr-long/2addr v8, v10

    xor-long/2addr v6, v8

    const/16 v8, 0x3d

    shl-long v8, v6, v8

    const/16 v10, 0x3f

    shl-long v10, v6, v10

    xor-long/2addr v8, v10

    xor-long/2addr v0, v8

    const/4 v8, 0x3

    ushr-long v8, v6, v8

    const/4 v10, 0x1

    ushr-long v10, v6, v10

    xor-long/2addr v8, v10

    xor-long/2addr v8, v6

    const/4 v10, 0x5

    shl-long v10, v6, v10

    xor-long/2addr v8, v10

    xor-long/2addr v2, v8

    const/16 v8, 0x3b

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    const/4 v6, 0x3

    ushr-long v6, v4, v6

    const/4 v8, 0x0

    xor-long/2addr v0, v6

    const/4 v9, 0x2

    shl-long v10, v6, v9

    xor-long/2addr v0, v10

    const/4 v9, 0x3

    shl-long v10, v6, v9

    xor-long/2addr v0, v10

    const/16 v9, 0x8

    shl-long v10, v6, v9

    xor-long/2addr v0, v10

    aput-wide v0, p1, v8

    const/4 v0, 0x1

    const/16 v1, 0x38

    ushr-long/2addr v6, v1

    xor-long/2addr v2, v6

    aput-wide v2, p1, v0

    const/4 v0, 0x2

    const-wide/16 v2, 0x7

    and-long/2addr v2, v4

    aput-wide v2, p1, v0

    return-void
.end method

.method public static reduce61([JI)V
    .locals 10

    const/4 v8, 0x3

    add-int/lit8 v0, p1, 0x2

    aget-wide v0, p0, v0

    ushr-long v2, v0, v8

    aget-wide v4, p0, p1

    const/4 v6, 0x2

    shl-long v6, v2, v6

    xor-long/2addr v6, v2

    shl-long v8, v2, v8

    xor-long/2addr v6, v8

    const/16 v8, 0x8

    shl-long v8, v2, v8

    xor-long/2addr v6, v8

    xor-long/2addr v4, v6

    aput-wide v4, p0, p1

    add-int/lit8 v4, p1, 0x1

    aget-wide v6, p0, v4

    const/16 v5, 0x38

    ushr-long/2addr v2, v5

    xor-long/2addr v2, v6

    aput-wide v2, p0, v4

    add-int/lit8 v2, p1, 0x2

    const-wide/16 v4, 0x7

    and-long/2addr v0, v4

    aput-wide v0, p0, v2

    return-void
.end method

.method public static sqrt([J[J)V
    .locals 10

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat192;->create64()[J

    move-result-object v0

    const/4 v1, 0x0

    aget-wide v2, p0, v1

    invoke-static {v2, v3}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v2

    const/4 v1, 0x1

    aget-wide v4, p0, v1

    invoke-static {v4, v5}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v4

    const-wide v6, 0xffffffffL

    and-long/2addr v6, v2

    const/16 v1, 0x20

    shl-long v8, v4, v1

    or-long/2addr v6, v8

    const/4 v1, 0x0

    const/16 v8, 0x20

    ushr-long/2addr v2, v8

    const-wide v8, -0x100000000L

    and-long/2addr v4, v8

    or-long/2addr v2, v4

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    aget-wide v2, p0, v1

    invoke-static {v2, v3}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v2

    const-wide v4, 0xffffffffL

    and-long/2addr v4, v2

    const/4 v1, 0x1

    const/16 v8, 0x20

    ushr-long/2addr v2, v8

    aput-wide v2, v0, v1

    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->ROOT_Z:[J

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->multiply([J[J[J)V

    const/4 v0, 0x0

    aget-wide v2, p1, v0

    xor-long/2addr v2, v6

    aput-wide v2, p1, v0

    const/4 v0, 0x1

    aget-wide v2, p1, v0

    xor-long/2addr v2, v4

    aput-wide v2, p1, v0

    return-void
.end method

.method public static square([J[J)V
    .locals 1

    const/4 v0, 0x5

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat;->create64(I)[J

    move-result-object v0

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->implSquare([J[J)V

    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->reduce([J[J)V

    return-void
.end method

.method public static squareAddToExt([J[J)V
    .locals 1

    const/4 v0, 0x5

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat;->create64(I)[J

    move-result-object v0

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->implSquare([J[J)V

    invoke-static {p1, v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->addExt([J[J[J)V

    return-void
.end method

.method public static squareN([JI[J)V
    .locals 1

    const/4 v0, 0x5

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat;->create64(I)[J

    move-result-object v0

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->implSquare([J[J)V

    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->reduce([J[J)V

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    invoke-static {p2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->implSquare([J[J)V

    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->reduce([J[J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static trace([J)I
    .locals 6

    const/4 v5, 0x1

    const/4 v0, 0x0

    aget-wide v0, p0, v0

    aget-wide v2, p0, v5

    const/16 v4, 0x3b

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/4 v2, 0x2

    aget-wide v2, p0, v2

    ushr-long/2addr v2, v5

    xor-long/2addr v0, v2

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0x1

    return v0
.end method
