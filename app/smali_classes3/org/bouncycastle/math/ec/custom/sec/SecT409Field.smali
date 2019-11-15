.class public Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;
.super Ljava/lang/Object;


# static fields
.field private static final M25:J = 0x1ffffffL

.field private static final M59:J = 0x7ffffffffffffffL


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add([J[J[J)V
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

    const/4 v0, 0x5

    const/4 v1, 0x5

    aget-wide v2, p0, v1

    const/4 v1, 0x5

    aget-wide v4, p1, v1

    xor-long/2addr v2, v4

    aput-wide v2, p2, v0

    const/4 v0, 0x6

    const/4 v1, 0x6

    aget-wide v2, p0, v1

    const/4 v1, 0x6

    aget-wide v4, p1, v1

    xor-long/2addr v2, v4

    aput-wide v2, p2, v0

    return-void
.end method

.method public static addExt([J[J[J)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xd

    if-ge v0, v1, :cond_0

    aget-wide v2, p0, v0

    aget-wide v4, p1, v0

    xor-long/2addr v2, v4

    aput-wide v2, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static addOne([J[J)V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

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

    aget-wide v0, p0, v7

    aput-wide v0, p1, v7

    aget-wide v0, p0, v8

    aput-wide v0, p1, v8

    const/4 v0, 0x5

    const/4 v1, 0x5

    aget-wide v2, p0, v1

    aput-wide v2, p1, v0

    const/4 v0, 0x6

    const/4 v1, 0x6

    aget-wide v2, p0, v1

    aput-wide v2, p1, v0

    return-void
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[J
    .locals 2

    invoke-static {p0}, Lorg/bouncycastle/math/raw/Nat448;->fromBigInteger64(Ljava/math/BigInteger;)[J

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->reduce39([JI)V

    return-object v0
.end method

.method protected static implCompactExt([J)V
    .locals 32

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

    const/4 v12, 0x6

    aget-wide v12, p0, v12

    const/4 v14, 0x7

    aget-wide v14, p0, v14

    const/16 v16, 0x8

    aget-wide v16, p0, v16

    const/16 v18, 0x9

    aget-wide v18, p0, v18

    const/16 v20, 0xa

    aget-wide v20, p0, v20

    const/16 v22, 0xb

    aget-wide v22, p0, v22

    const/16 v24, 0xc

    aget-wide v24, p0, v24

    const/16 v26, 0xd

    aget-wide v26, p0, v26

    const/16 v28, 0x0

    const/16 v29, 0x3b

    shl-long v30, v2, v29

    xor-long v0, v0, v30

    aput-wide v0, p0, v28

    const/4 v0, 0x1

    const/4 v1, 0x5

    ushr-long/2addr v2, v1

    const/16 v1, 0x36

    shl-long v28, v4, v1

    xor-long v2, v2, v28

    aput-wide v2, p0, v0

    const/4 v0, 0x2

    const/16 v1, 0xa

    ushr-long v2, v4, v1

    const/16 v1, 0x31

    shl-long v4, v6, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/4 v0, 0x3

    const/16 v1, 0xf

    ushr-long v2, v6, v1

    const/16 v1, 0x2c

    shl-long v4, v8, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/4 v0, 0x4

    const/16 v1, 0x14

    ushr-long v2, v8, v1

    const/16 v1, 0x27

    shl-long v4, v10, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/4 v0, 0x5

    const/16 v1, 0x19

    ushr-long v2, v10, v1

    const/16 v1, 0x22

    shl-long v4, v12, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/4 v0, 0x6

    const/16 v1, 0x1e

    ushr-long v2, v12, v1

    const/16 v1, 0x1d

    shl-long v4, v14, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/4 v0, 0x7

    const/16 v1, 0x23

    ushr-long v2, v14, v1

    const/16 v1, 0x18

    shl-long v4, v16, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/16 v0, 0x8

    const/16 v1, 0x28

    ushr-long v2, v16, v1

    const/16 v1, 0x13

    shl-long v4, v18, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/16 v0, 0x9

    const/16 v1, 0x2d

    ushr-long v2, v18, v1

    const/16 v1, 0xe

    shl-long v4, v20, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/16 v0, 0xa

    const/16 v1, 0x32

    ushr-long v2, v20, v1

    const/16 v1, 0x9

    shl-long v4, v22, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/16 v0, 0xb

    const/16 v1, 0x37

    ushr-long v2, v22, v1

    const/4 v1, 0x4

    shl-long v4, v24, v1

    xor-long/2addr v2, v4

    const/16 v1, 0x3f

    shl-long v4, v26, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/16 v0, 0xc

    const/16 v1, 0x3c

    ushr-long v2, v24, v1

    const/4 v1, 0x1

    ushr-long v4, v26, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/16 v0, 0xd

    const-wide/16 v2, 0x0

    aput-wide v2, p0, v0

    return-void
.end method

.method protected static implExpand([J[J)V
    .locals 18

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

    const/4 v12, 0x6

    aget-wide v12, p0, v12

    const/4 v14, 0x0

    const-wide v16, 0x7ffffffffffffffL

    and-long v16, v16, v0

    aput-wide v16, p1, v14

    const/4 v14, 0x1

    const/16 v15, 0x3b

    ushr-long/2addr v0, v15

    const/4 v15, 0x5

    shl-long v16, v2, v15

    xor-long v0, v0, v16

    const-wide v16, 0x7ffffffffffffffL

    and-long v0, v0, v16

    aput-wide v0, p1, v14

    const/4 v0, 0x2

    const/16 v1, 0x36

    ushr-long/2addr v2, v1

    const/16 v1, 0xa

    shl-long v14, v4, v1

    xor-long/2addr v2, v14

    const-wide v14, 0x7ffffffffffffffL

    and-long/2addr v2, v14

    aput-wide v2, p1, v0

    const/4 v0, 0x3

    const/16 v1, 0x31

    ushr-long v2, v4, v1

    const/16 v1, 0xf

    shl-long v4, v6, v1

    xor-long/2addr v2, v4

    const-wide v4, 0x7ffffffffffffffL

    and-long/2addr v2, v4

    aput-wide v2, p1, v0

    const/4 v0, 0x4

    const/16 v1, 0x2c

    ushr-long v2, v6, v1

    const/16 v1, 0x14

    shl-long v4, v8, v1

    xor-long/2addr v2, v4

    const-wide v4, 0x7ffffffffffffffL

    and-long/2addr v2, v4

    aput-wide v2, p1, v0

    const/4 v0, 0x5

    const/16 v1, 0x27

    ushr-long v2, v8, v1

    const/16 v1, 0x19

    shl-long v4, v10, v1

    xor-long/2addr v2, v4

    const-wide v4, 0x7ffffffffffffffL

    and-long/2addr v2, v4

    aput-wide v2, p1, v0

    const/4 v0, 0x6

    const/16 v1, 0x22

    ushr-long v2, v10, v1

    const/16 v1, 0x1e

    shl-long v4, v12, v1

    xor-long/2addr v2, v4

    aput-wide v2, p1, v0

    return-void
.end method

.method protected static implMultiply([J[J[J)V
    .locals 6

    const/4 v3, 0x7

    new-array v1, v3, [J

    new-array v2, v3, [J

    invoke-static {p0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->implExpand([J[J)V

    invoke-static {p1, v2}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->implExpand([J[J)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-wide v4, v2, v0

    invoke-static {v1, v4, v5, p2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->implMulwAcc([JJ[JI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->implCompactExt([J)V

    return-void
.end method

.method protected static implMulwAcc([JJ[JI)V
    .locals 15

    const/16 v0, 0x8

    new-array v6, v0, [J

    const/4 v0, 0x1

    aput-wide p1, v6, v0

    const/4 v0, 0x2

    const/4 v1, 0x1

    aget-wide v2, v6, v1

    const/4 v1, 0x1

    shl-long/2addr v2, v1

    aput-wide v2, v6, v0

    const/4 v0, 0x3

    const/4 v1, 0x2

    aget-wide v2, v6, v1

    xor-long v2, v2, p1

    aput-wide v2, v6, v0

    const/4 v0, 0x4

    const/4 v1, 0x2

    aget-wide v2, v6, v1

    const/4 v1, 0x1

    shl-long/2addr v2, v1

    aput-wide v2, v6, v0

    const/4 v0, 0x5

    const/4 v1, 0x4

    aget-wide v2, v6, v1

    xor-long v2, v2, p1

    aput-wide v2, v6, v0

    const/4 v0, 0x6

    const/4 v1, 0x3

    aget-wide v2, v6, v1

    const/4 v1, 0x1

    shl-long/2addr v2, v1

    aput-wide v2, v6, v0

    const/4 v0, 0x7

    const/4 v1, 0x6

    aget-wide v2, v6, v1

    xor-long v2, v2, p1

    aput-wide v2, v6, v0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v0, 0x7

    if-ge v1, v0, :cond_1

    aget-wide v8, p0, v1

    long-to-int v0, v8

    const-wide/16 v4, 0x0

    and-int/lit8 v2, v0, 0x7

    aget-wide v2, v6, v2

    ushr-int/lit8 v0, v0, 0x3

    and-int/lit8 v0, v0, 0x7

    aget-wide v10, v6, v0

    const/4 v0, 0x3

    shl-long/2addr v10, v0

    xor-long/2addr v2, v10

    const/16 v0, 0x36

    :cond_0
    ushr-long v10, v8, v0

    long-to-int v7, v10

    and-int/lit8 v10, v7, 0x7

    aget-wide v10, v6, v10

    ushr-int/lit8 v7, v7, 0x3

    and-int/lit8 v7, v7, 0x7

    aget-wide v12, v6, v7

    const/4 v7, 0x3

    shl-long/2addr v12, v7

    xor-long/2addr v10, v12

    shl-long v12, v10, v0

    xor-long/2addr v2, v12

    neg-int v7, v0

    ushr-long/2addr v10, v7

    xor-long/2addr v4, v10

    add-int/lit8 v0, v0, -0x6

    if-gtz v0, :cond_0

    add-int v0, p4, v1

    aget-wide v8, p3, v0

    const-wide v10, 0x7ffffffffffffffL

    and-long/2addr v10, v2

    xor-long/2addr v8, v10

    aput-wide v8, p3, v0

    add-int v0, p4, v1

    add-int/lit8 v0, v0, 0x1

    aget-wide v8, p3, v0

    const/16 v7, 0x3b

    ushr-long/2addr v2, v7

    const/4 v7, 0x5

    shl-long/2addr v4, v7

    xor-long/2addr v2, v4

    xor-long/2addr v2, v8

    aput-wide v2, p3, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected static implSquare([J[J)V
    .locals 5

    const/4 v4, 0x6

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    aget-wide v2, p0, v0

    shl-int/lit8 v1, v0, 0x1

    invoke-static {v2, v3, p1, v1}, Lorg/bouncycastle/math/raw/Interleave;->expand64To128(J[JI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0xc

    aget-wide v2, p0, v4

    long-to-int v1, v2

    invoke-static {v1}, Lorg/bouncycastle/math/raw/Interleave;->expand32to64(I)J

    move-result-wide v2

    aput-wide v2, p1, v0

    return-void
.end method

.method public static invert([J[J)V
    .locals 5

    const/16 v4, 0x18

    const/4 v3, 0x1

    invoke-static {p0}, Lorg/bouncycastle/math/raw/Nat448;->isZero64([J)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat448;->create64()[J

    move-result-object v0

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat448;->create64()[J

    move-result-object v1

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat448;->create64()[J

    move-result-object v2

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->square([J[J)V

    invoke-static {v0, v3, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->squareN([JI[J)V

    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->multiply([J[J[J)V

    invoke-static {v1, v3, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->squareN([JI[J)V

    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->multiply([J[J[J)V

    const/4 v3, 0x3

    invoke-static {v0, v3, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->squareN([JI[J)V

    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->multiply([J[J[J)V

    const/4 v3, 0x6

    invoke-static {v0, v3, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->squareN([JI[J)V

    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->multiply([J[J[J)V

    const/16 v3, 0xc

    invoke-static {v0, v3, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->squareN([JI[J)V

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->multiply([J[J[J)V

    invoke-static {v2, v4, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->squareN([JI[J)V

    invoke-static {v0, v4, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->squareN([JI[J)V

    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->multiply([J[J[J)V

    const/16 v3, 0x30

    invoke-static {v0, v3, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->squareN([JI[J)V

    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->multiply([J[J[J)V

    const/16 v3, 0x60

    invoke-static {v0, v3, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->squareN([JI[J)V

    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->multiply([J[J[J)V

    const/16 v3, 0xc0

    invoke-static {v0, v3, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->squareN([JI[J)V

    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->multiply([J[J[J)V

    invoke-static {v0, v2, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->multiply([J[J[J)V

    return-void
.end method

.method public static multiply([J[J[J)V
    .locals 1

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat448;->createExt64()[J

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->implMultiply([J[J[J)V

    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->reduce([J[J)V

    return-void
.end method

.method public static multiplyAddToExt([J[J[J)V
    .locals 1

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat448;->createExt64()[J

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->implMultiply([J[J[J)V

    invoke-static {p2, v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->addExt([J[J[J)V

    return-void
.end method

.method public static reduce([J[J)V
    .locals 22

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

    const/4 v12, 0x6

    aget-wide v12, p0, v12

    const/4 v14, 0x7

    aget-wide v14, p0, v14

    const/16 v16, 0xc

    aget-wide v16, p0, v16

    const/16 v18, 0x27

    shl-long v18, v16, v18

    xor-long v10, v10, v18

    const/16 v18, 0x19

    ushr-long v18, v16, v18

    const/16 v20, 0x3e

    shl-long v20, v16, v20

    xor-long v18, v18, v20

    xor-long v12, v12, v18

    const/16 v18, 0x2

    ushr-long v16, v16, v18

    xor-long v14, v14, v16

    const/16 v16, 0xb

    aget-wide v16, p0, v16

    const/16 v18, 0x27

    shl-long v18, v16, v18

    xor-long v8, v8, v18

    const/16 v18, 0x19

    ushr-long v18, v16, v18

    const/16 v20, 0x3e

    shl-long v20, v16, v20

    xor-long v18, v18, v20

    xor-long v10, v10, v18

    const/16 v18, 0x2

    ushr-long v16, v16, v18

    xor-long v12, v12, v16

    const/16 v16, 0xa

    aget-wide v16, p0, v16

    const/16 v18, 0x27

    shl-long v18, v16, v18

    xor-long v6, v6, v18

    const/16 v18, 0x19

    ushr-long v18, v16, v18

    const/16 v20, 0x3e

    shl-long v20, v16, v20

    xor-long v18, v18, v20

    xor-long v8, v8, v18

    const/16 v18, 0x2

    ushr-long v16, v16, v18

    xor-long v10, v10, v16

    const/16 v16, 0x9

    aget-wide v16, p0, v16

    const/16 v18, 0x27

    shl-long v18, v16, v18

    xor-long v4, v4, v18

    const/16 v18, 0x19

    ushr-long v18, v16, v18

    const/16 v20, 0x3e

    shl-long v20, v16, v20

    xor-long v18, v18, v20

    xor-long v6, v6, v18

    const/16 v18, 0x2

    ushr-long v16, v16, v18

    xor-long v8, v8, v16

    const/16 v16, 0x8

    aget-wide v16, p0, v16

    const/16 v18, 0x27

    shl-long v18, v16, v18

    xor-long v2, v2, v18

    const/16 v18, 0x19

    ushr-long v18, v16, v18

    const/16 v20, 0x3e

    shl-long v20, v16, v20

    xor-long v18, v18, v20

    xor-long v4, v4, v18

    const/16 v18, 0x2

    ushr-long v16, v16, v18

    xor-long v6, v6, v16

    const/16 v16, 0x27

    shl-long v16, v14, v16

    xor-long v0, v0, v16

    const/16 v16, 0x19

    ushr-long v16, v14, v16

    const/16 v18, 0x3e

    shl-long v18, v14, v18

    xor-long v16, v16, v18

    xor-long v2, v2, v16

    const/16 v16, 0x2

    ushr-long v14, v14, v16

    xor-long/2addr v4, v14

    const/16 v14, 0x19

    ushr-long v14, v12, v14

    const/16 v16, 0x0

    xor-long/2addr v0, v14

    aput-wide v0, p1, v16

    const/4 v0, 0x1

    const/16 v1, 0x17

    shl-long/2addr v14, v1

    xor-long/2addr v2, v14

    aput-wide v2, p1, v0

    const/4 v0, 0x2

    aput-wide v4, p1, v0

    const/4 v0, 0x3

    aput-wide v6, p1, v0

    const/4 v0, 0x4

    aput-wide v8, p1, v0

    const/4 v0, 0x5

    aput-wide v10, p1, v0

    const/4 v0, 0x6

    const-wide/32 v2, 0x1ffffff

    and-long/2addr v2, v12

    aput-wide v2, p1, v0

    return-void
.end method

.method public static reduce39([JI)V
    .locals 8

    add-int/lit8 v0, p1, 0x6

    aget-wide v0, p0, v0

    const/16 v2, 0x19

    ushr-long v2, v0, v2

    aget-wide v4, p0, p1

    xor-long/2addr v4, v2

    aput-wide v4, p0, p1

    add-int/lit8 v4, p1, 0x1

    aget-wide v6, p0, v4

    const/16 v5, 0x17

    shl-long/2addr v2, v5

    xor-long/2addr v2, v6

    aput-wide v2, p0, v4

    add-int/lit8 v2, p1, 0x6

    const-wide/32 v4, 0x1ffffff

    and-long/2addr v0, v4

    aput-wide v0, p0, v2

    return-void
.end method

.method public static sqrt([J[J)V
    .locals 20

    const/4 v0, 0x0

    aget-wide v0, p0, v0

    invoke-static {v0, v1}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v0

    const/4 v2, 0x1

    aget-wide v2, p0, v2

    invoke-static {v2, v3}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v2

    const-wide v4, 0xffffffffL

    and-long/2addr v4, v0

    const/16 v6, 0x20

    shl-long v6, v2, v6

    or-long/2addr v4, v6

    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    const-wide v6, -0x100000000L

    and-long/2addr v2, v6

    or-long/2addr v0, v2

    const/4 v2, 0x2

    aget-wide v2, p0, v2

    invoke-static {v2, v3}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v2

    const/4 v6, 0x3

    aget-wide v6, p0, v6

    invoke-static {v6, v7}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v6

    const-wide v8, 0xffffffffL

    and-long/2addr v8, v2

    const/16 v10, 0x20

    shl-long v10, v6, v10

    or-long/2addr v8, v10

    const/16 v10, 0x20

    ushr-long/2addr v2, v10

    const-wide v10, -0x100000000L

    and-long/2addr v6, v10

    or-long/2addr v2, v6

    const/4 v6, 0x4

    aget-wide v6, p0, v6

    invoke-static {v6, v7}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v6

    const/4 v10, 0x5

    aget-wide v10, p0, v10

    invoke-static {v10, v11}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v10

    const-wide v12, 0xffffffffL

    and-long/2addr v12, v6

    const/16 v14, 0x20

    shl-long v14, v10, v14

    or-long/2addr v12, v14

    const/16 v14, 0x20

    ushr-long/2addr v6, v14

    const-wide v14, -0x100000000L

    and-long/2addr v10, v14

    or-long/2addr v6, v10

    const/4 v10, 0x6

    aget-wide v10, p0, v10

    invoke-static {v10, v11}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v10

    const-wide v14, 0xffffffffL

    and-long/2addr v14, v10

    const/16 v16, 0x20

    ushr-long v10, v10, v16

    const/16 v16, 0x0

    const/16 v17, 0x2c

    shl-long v18, v0, v17

    xor-long v4, v4, v18

    aput-wide v4, p1, v16

    const/4 v4, 0x1

    const/16 v5, 0x2c

    shl-long v16, v2, v5

    xor-long v8, v8, v16

    const/16 v5, 0x14

    ushr-long v16, v0, v5

    xor-long v8, v8, v16

    aput-wide v8, p1, v4

    const/4 v4, 0x2

    const/16 v5, 0x2c

    shl-long v8, v6, v5

    xor-long/2addr v8, v12

    const/16 v5, 0x14

    ushr-long v12, v2, v5

    xor-long/2addr v8, v12

    aput-wide v8, p1, v4

    const/4 v4, 0x3

    const/16 v5, 0x2c

    shl-long v8, v10, v5

    xor-long/2addr v8, v14

    const/16 v5, 0x14

    ushr-long v12, v6, v5

    xor-long/2addr v8, v12

    const/16 v5, 0xd

    shl-long v12, v0, v5

    xor-long/2addr v8, v12

    aput-wide v8, p1, v4

    const/4 v4, 0x4

    const/16 v5, 0x14

    ushr-long v8, v10, v5

    const/16 v5, 0xd

    shl-long v12, v2, v5

    xor-long/2addr v8, v12

    const/16 v5, 0x33

    ushr-long/2addr v0, v5

    xor-long/2addr v0, v8

    aput-wide v0, p1, v4

    const/4 v0, 0x5

    const/16 v1, 0xd

    shl-long v4, v6, v1

    const/16 v1, 0x33

    ushr-long/2addr v2, v1

    xor-long/2addr v2, v4

    aput-wide v2, p1, v0

    const/4 v0, 0x6

    const/16 v1, 0xd

    shl-long v2, v10, v1

    const/16 v1, 0x33

    ushr-long v4, v6, v1

    xor-long/2addr v2, v4

    aput-wide v2, p1, v0

    return-void
.end method

.method public static square([J[J)V
    .locals 1

    const/16 v0, 0xd

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat;->create64(I)[J

    move-result-object v0

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->implSquare([J[J)V

    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->reduce([J[J)V

    return-void
.end method

.method public static squareAddToExt([J[J)V
    .locals 1

    const/16 v0, 0xd

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat;->create64(I)[J

    move-result-object v0

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->implSquare([J[J)V

    invoke-static {p1, v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->addExt([J[J[J)V

    return-void
.end method

.method public static squareN([JI[J)V
    .locals 1

    const/16 v0, 0xd

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat;->create64(I)[J

    move-result-object v0

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->implSquare([J[J)V

    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->reduce([J[J)V

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    invoke-static {p2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->implSquare([J[J)V

    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->reduce([J[J)V

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
