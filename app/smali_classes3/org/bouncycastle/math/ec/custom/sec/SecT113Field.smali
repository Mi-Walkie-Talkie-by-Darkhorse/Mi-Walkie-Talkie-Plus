.class public Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;
.super Ljava/lang/Object;


# static fields
.field private static final M49:J = 0x1ffffffffffffL

.field private static final M57:J = 0x1ffffffffffffffL


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add([J[J[J)V
    .locals 6

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

    return-void
.end method

.method public static addExt([J[J[J)V
    .locals 8

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

    return-void
.end method

.method public static addOne([J[J)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    aget-wide v0, p0, v4

    const-wide/16 v2, 0x1

    xor-long/2addr v0, v2

    aput-wide v0, p1, v4

    aget-wide v0, p0, v5

    aput-wide v0, p1, v5

    return-void
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[J
    .locals 2

    invoke-static {p0}, Lorg/bouncycastle/math/raw/Nat128;->fromBigInteger64(Ljava/math/BigInteger;)[J

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->reduce15([JI)V

    return-object v0
.end method

.method protected static implMultiply([J[J[J)V
    .locals 12

    const/4 v0, 0x0

    aget-wide v0, p0, v0

    const/4 v2, 0x1

    aget-wide v2, p0, v2

    const/16 v4, 0x39

    ushr-long v4, v0, v4

    const/4 v6, 0x7

    shl-long/2addr v2, v6

    xor-long/2addr v2, v4

    const-wide v4, 0x1ffffffffffffffL    # 4.77830972673648E-299

    and-long v6, v2, v4

    const-wide v2, 0x1ffffffffffffffL    # 4.77830972673648E-299

    and-long/2addr v0, v2

    const/4 v2, 0x0

    aget-wide v2, p1, v2

    const/4 v4, 0x1

    aget-wide v4, p1, v4

    const/16 v8, 0x39

    ushr-long v8, v2, v8

    const/4 v10, 0x7

    shl-long/2addr v4, v10

    xor-long/2addr v4, v8

    const-wide v8, 0x1ffffffffffffffL    # 4.77830972673648E-299

    and-long/2addr v8, v4

    const-wide v4, 0x1ffffffffffffffL    # 4.77830972673648E-299

    and-long/2addr v2, v4

    const/4 v4, 0x6

    new-array v4, v4, [J

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->implMulw(JJ[JI)V

    const/4 v11, 0x2

    move-object v10, v4

    invoke-static/range {v6 .. v11}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->implMulw(JJ[JI)V

    xor-long/2addr v0, v6

    xor-long/2addr v2, v8

    const/4 v5, 0x4

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->implMulw(JJ[JI)V

    const/4 v0, 0x1

    aget-wide v0, v4, v0

    const/4 v2, 0x2

    aget-wide v2, v4, v2

    xor-long/2addr v0, v2

    const/4 v2, 0x0

    aget-wide v2, v4, v2

    const/4 v5, 0x3

    aget-wide v6, v4, v5

    const/4 v5, 0x4

    aget-wide v8, v4, v5

    xor-long/2addr v8, v2

    xor-long/2addr v8, v0

    const/4 v5, 0x5

    aget-wide v4, v4, v5

    xor-long/2addr v4, v6

    xor-long/2addr v0, v4

    const/4 v4, 0x0

    const/16 v5, 0x39

    shl-long v10, v8, v5

    xor-long/2addr v2, v10

    aput-wide v2, p2, v4

    const/4 v2, 0x1

    const/4 v3, 0x7

    ushr-long v4, v8, v3

    const/16 v3, 0x32

    shl-long v8, v0, v3

    xor-long/2addr v4, v8

    aput-wide v4, p2, v2

    const/4 v2, 0x2

    const/16 v3, 0xe

    ushr-long/2addr v0, v3

    const/16 v3, 0x2b

    shl-long v4, v6, v3

    xor-long/2addr v0, v4

    aput-wide v0, p2, v2

    const/4 v0, 0x3

    const/16 v1, 0x15

    ushr-long v2, v6, v1

    aput-wide v2, p2, v0

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

    and-int/lit8 v0, v0, 0x7

    aget-wide v2, v1, v0

    const/16 v0, 0x30

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

    ushr-int/lit8 v6, v6, 0x6

    and-int/lit8 v6, v6, 0x7

    aget-wide v6, v1, v6

    const/4 v10, 0x6

    shl-long/2addr v6, v10

    xor-long/2addr v6, v8

    shl-long v8, v6, v0

    xor-long/2addr v2, v8

    neg-int v8, v0

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    add-int/lit8 v0, v0, -0x9

    if-gtz v0, :cond_0

    const-wide v0, 0x100804020100800L

    and-long/2addr v0, p0

    const/4 v6, 0x7

    shl-long v6, p2, v6

    const/16 v8, 0x3f

    shr-long/2addr v6, v8

    and-long/2addr v0, v6

    const/16 v6, 0x8

    ushr-long/2addr v0, v6

    xor-long/2addr v0, v4

    const-wide v4, 0x1ffffffffffffffL    # 4.77830972673648E-299

    and-long/2addr v4, v2

    aput-wide v4, p4, p5

    add-int/lit8 v4, p5, 0x1

    const/16 v5, 0x39

    ushr-long/2addr v2, v5

    const/4 v5, 0x7

    shl-long/2addr v0, v5

    xor-long/2addr v0, v2

    aput-wide v0, p4, v4

    return-void
.end method

.method protected static implSquare([J[J)V
    .locals 3

    const/4 v2, 0x0

    aget-wide v0, p0, v2

    invoke-static {v0, v1, p1, v2}, Lorg/bouncycastle/math/raw/Interleave;->expand64To128(J[JI)V

    const/4 v0, 0x1

    aget-wide v0, p0, v0

    const/4 v2, 0x2

    invoke-static {v0, v1, p1, v2}, Lorg/bouncycastle/math/raw/Interleave;->expand64To128(J[JI)V

    return-void
.end method

.method public static invert([J[J)V
    .locals 3

    invoke-static {p0}, Lorg/bouncycastle/math/raw/Nat128;->isZero64([J)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat128;->create64()[J

    move-result-object v0

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat128;->create64()[J

    move-result-object v1

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->square([J[J)V

    invoke-static {v0, p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->multiply([J[J[J)V

    invoke-static {v0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->square([J[J)V

    invoke-static {v0, p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->multiply([J[J[J)V

    const/4 v2, 0x3

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->squareN([JI[J)V

    invoke-static {v1, v0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->multiply([J[J[J)V

    invoke-static {v1, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->square([J[J)V

    invoke-static {v1, p0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->multiply([J[J[J)V

    const/4 v2, 0x7

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->squareN([JI[J)V

    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->multiply([J[J[J)V

    const/16 v2, 0xe

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->squareN([JI[J)V

    invoke-static {v1, v0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->multiply([J[J[J)V

    const/16 v2, 0x1c

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->squareN([JI[J)V

    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->multiply([J[J[J)V

    const/16 v2, 0x38

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->squareN([JI[J)V

    invoke-static {v1, v0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->multiply([J[J[J)V

    invoke-static {v1, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->square([J[J)V

    return-void
.end method

.method public static multiply([J[J[J)V
    .locals 1

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat128;->createExt64()[J

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->implMultiply([J[J[J)V

    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->reduce([J[J)V

    return-void
.end method

.method public static multiplyAddToExt([J[J[J)V
    .locals 1

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat128;->createExt64()[J

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->implMultiply([J[J[J)V

    invoke-static {p2, v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->addExt([J[J[J)V

    return-void
.end method

.method public static reduce([J[J)V
    .locals 12

    const/4 v0, 0x0

    aget-wide v0, p0, v0

    const/4 v2, 0x1

    aget-wide v2, p0, v2

    const/4 v4, 0x2

    aget-wide v4, p0, v4

    const/4 v6, 0x3

    aget-wide v6, p0, v6

    const/16 v8, 0xf

    shl-long v8, v6, v8

    const/16 v10, 0x18

    shl-long v10, v6, v10

    xor-long/2addr v8, v10

    xor-long/2addr v2, v8

    const/16 v8, 0x31

    ushr-long v8, v6, v8

    const/16 v10, 0x28

    ushr-long/2addr v6, v10

    xor-long/2addr v6, v8

    xor-long/2addr v4, v6

    const/16 v6, 0xf

    shl-long v6, v4, v6

    const/16 v8, 0x18

    shl-long v8, v4, v8

    xor-long/2addr v6, v8

    xor-long/2addr v0, v6

    const/16 v6, 0x31

    ushr-long v6, v4, v6

    const/16 v8, 0x28

    ushr-long/2addr v4, v8

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x31

    ushr-long v4, v2, v4

    const/4 v6, 0x0

    xor-long/2addr v0, v4

    const/16 v7, 0x9

    shl-long/2addr v4, v7

    xor-long/2addr v0, v4

    aput-wide v0, p1, v6

    const/4 v0, 0x1

    const-wide v4, 0x1ffffffffffffL

    and-long/2addr v2, v4

    aput-wide v2, p1, v0

    return-void
.end method

.method public static reduce15([JI)V
    .locals 8

    add-int/lit8 v0, p1, 0x1

    aget-wide v0, p0, v0

    const/16 v2, 0x31

    ushr-long v2, v0, v2

    aget-wide v4, p0, p1

    const/16 v6, 0x9

    shl-long v6, v2, v6

    xor-long/2addr v2, v6

    xor-long/2addr v2, v4

    aput-wide v2, p0, p1

    add-int/lit8 v2, p1, 0x1

    const-wide v4, 0x1ffffffffffffL

    and-long/2addr v0, v4

    aput-wide v0, p0, v2

    return-void
.end method

.method public static sqrt([J[J)V
    .locals 11

    const/16 v10, 0x20

    const/4 v9, 0x1

    const/4 v8, 0x0

    aget-wide v0, p0, v8

    invoke-static {v0, v1}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v0

    aget-wide v2, p0, v9

    invoke-static {v2, v3}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v2

    const-wide v4, 0xffffffffL

    and-long/2addr v4, v0

    shl-long v6, v2, v10

    or-long/2addr v4, v6

    ushr-long/2addr v0, v10

    const-wide v6, -0x100000000L

    and-long/2addr v2, v6

    or-long/2addr v0, v2

    const/16 v2, 0x39

    shl-long v2, v0, v2

    xor-long/2addr v2, v4

    const/4 v4, 0x5

    shl-long v4, v0, v4

    xor-long/2addr v2, v4

    aput-wide v2, p1, v8

    const/4 v2, 0x7

    ushr-long v2, v0, v2

    const/16 v4, 0x3b

    ushr-long/2addr v0, v4

    xor-long/2addr v0, v2

    aput-wide v0, p1, v9

    return-void
.end method

.method public static square([J[J)V
    .locals 1

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat128;->createExt64()[J

    move-result-object v0

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->implSquare([J[J)V

    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->reduce([J[J)V

    return-void
.end method

.method public static squareAddToExt([J[J)V
    .locals 1

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat128;->createExt64()[J

    move-result-object v0

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->implSquare([J[J)V

    invoke-static {p1, v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->addExt([J[J[J)V

    return-void
.end method

.method public static squareN([JI[J)V
    .locals 1

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat128;->createExt64()[J

    move-result-object v0

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->implSquare([J[J)V

    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->reduce([J[J)V

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    invoke-static {p2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->implSquare([J[J)V

    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->reduce([J[J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static trace([J)I
    .locals 2

    const/4 v0, 0x0

    aget-wide v0, p0, v0

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0x1

    return v0
.end method
