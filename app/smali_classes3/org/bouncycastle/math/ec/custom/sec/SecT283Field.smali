.class public Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;
.super Ljava/lang/Object;


# static fields
.field private static final M27:J = 0x7ffffffL

.field private static final M57:J = 0x1ffffffffffffffL

.field private static final ROOT_Z:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->ROOT_Z:[J

    return-void

    nop

    :array_0
    .array-data 8
        0xc30c30c30c30808L    # 5.85284437198306E-250
        0x30c30c30c30c30c3L    # 8.42232057182544E-74
        -0x7df7df7df7df7cf4L    # -7.205387683174334E-299
        0x820820820820820L
        0x2082082
    .end array-data
.end method

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

    const/4 v0, 0x7

    const/4 v1, 0x7

    aget-wide v2, p0, v1

    const/4 v1, 0x7

    aget-wide v4, p1, v1

    xor-long/2addr v2, v4

    aput-wide v2, p2, v0

    const/16 v0, 0x8

    const/16 v1, 0x8

    aget-wide v2, p0, v1

    const/16 v1, 0x8

    aget-wide v4, p1, v1

    xor-long/2addr v2, v4

    aput-wide v2, p2, v0

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

    return-void
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[J
    .locals 2

    invoke-static {p0}, Lorg/bouncycastle/math/raw/Nat320;->fromBigInteger64(Ljava/math/BigInteger;)[J

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->reduce37([JI)V

    return-object v0
.end method

.method protected static implCompactExt([J)V
    .locals 24

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

    const/16 v20, 0x0

    const/16 v21, 0x39

    shl-long v22, v2, v21

    xor-long v0, v0, v22

    aput-wide v0, p0, v20

    const/4 v0, 0x1

    const/4 v1, 0x7

    ushr-long/2addr v2, v1

    const/16 v1, 0x32

    shl-long v20, v4, v1

    xor-long v2, v2, v20

    aput-wide v2, p0, v0

    const/4 v0, 0x2

    const/16 v1, 0xe

    ushr-long v2, v4, v1

    const/16 v1, 0x2b

    shl-long v4, v6, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/4 v0, 0x3

    const/16 v1, 0x15

    ushr-long v2, v6, v1

    const/16 v1, 0x24

    shl-long v4, v8, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/4 v0, 0x4

    const/16 v1, 0x1c

    ushr-long v2, v8, v1

    const/16 v1, 0x1d

    shl-long v4, v10, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/4 v0, 0x5

    const/16 v1, 0x23

    ushr-long v2, v10, v1

    const/16 v1, 0x16

    shl-long v4, v12, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/4 v0, 0x6

    const/16 v1, 0x2a

    ushr-long v2, v12, v1

    const/16 v1, 0xf

    shl-long v4, v14, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/4 v0, 0x7

    const/16 v1, 0x31

    ushr-long v2, v14, v1

    const/16 v1, 0x8

    shl-long v4, v16, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/16 v0, 0x8

    const/16 v1, 0x38

    ushr-long v2, v16, v1

    const/4 v1, 0x1

    shl-long v4, v18, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/16 v0, 0x9

    const/16 v1, 0x3f

    ushr-long v2, v18, v1

    aput-wide v2, p0, v0

    return-void
.end method

.method protected static implExpand([J[J)V
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

    const/4 v10, 0x0

    const-wide v12, 0x1ffffffffffffffL    # 4.77830972673648E-299

    and-long/2addr v12, v0

    aput-wide v12, p1, v10

    const/4 v10, 0x1

    const/16 v11, 0x39

    ushr-long/2addr v0, v11

    const/4 v11, 0x7

    shl-long v12, v2, v11

    xor-long/2addr v0, v12

    const-wide v12, 0x1ffffffffffffffL    # 4.77830972673648E-299

    and-long/2addr v0, v12

    aput-wide v0, p1, v10

    const/4 v0, 0x2

    const/16 v1, 0x32

    ushr-long/2addr v2, v1

    const/16 v1, 0xe

    shl-long v10, v4, v1

    xor-long/2addr v2, v10

    const-wide v10, 0x1ffffffffffffffL    # 4.77830972673648E-299

    and-long/2addr v2, v10

    aput-wide v2, p1, v0

    const/4 v0, 0x3

    const/16 v1, 0x2b

    ushr-long v2, v4, v1

    const/16 v1, 0x15

    shl-long v4, v6, v1

    xor-long/2addr v2, v4

    const-wide v4, 0x1ffffffffffffffL    # 4.77830972673648E-299

    and-long/2addr v2, v4

    aput-wide v2, p1, v0

    const/4 v0, 0x4

    const/16 v1, 0x24

    ushr-long v2, v6, v1

    const/16 v1, 0x1c

    shl-long v4, v8, v1

    xor-long/2addr v2, v4

    aput-wide v2, p1, v0

    return-void
.end method

.method protected static implMultiply([J[J[J)V
    .locals 28

    const/4 v2, 0x5

    new-array v8, v2, [J

    const/4 v2, 0x5

    new-array v9, v2, [J

    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->implExpand([J[J)V

    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->implExpand([J[J)V

    const/16 v2, 0x1a

    new-array v6, v2, [J

    const/4 v2, 0x0

    aget-wide v2, v8, v2

    const/4 v4, 0x0

    aget-wide v4, v9, v4

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->implMulw(JJ[JI)V

    const/4 v2, 0x1

    aget-wide v2, v8, v2

    const/4 v4, 0x1

    aget-wide v4, v9, v4

    const/4 v7, 0x2

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->implMulw(JJ[JI)V

    const/4 v2, 0x2

    aget-wide v2, v8, v2

    const/4 v4, 0x2

    aget-wide v4, v9, v4

    const/4 v7, 0x4

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->implMulw(JJ[JI)V

    const/4 v2, 0x3

    aget-wide v2, v8, v2

    const/4 v4, 0x3

    aget-wide v4, v9, v4

    const/4 v7, 0x6

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->implMulw(JJ[JI)V

    const/4 v2, 0x4

    aget-wide v2, v8, v2

    const/4 v4, 0x4

    aget-wide v4, v9, v4

    const/16 v7, 0x8

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->implMulw(JJ[JI)V

    const/4 v2, 0x0

    aget-wide v2, v8, v2

    const/4 v4, 0x1

    aget-wide v4, v8, v4

    xor-long v10, v2, v4

    const/4 v2, 0x0

    aget-wide v2, v9, v2

    const/4 v4, 0x1

    aget-wide v4, v9, v4

    xor-long v12, v2, v4

    const/4 v2, 0x0

    aget-wide v2, v8, v2

    const/4 v4, 0x2

    aget-wide v4, v8, v4

    xor-long v14, v2, v4

    const/4 v2, 0x0

    aget-wide v2, v9, v2

    const/4 v4, 0x2

    aget-wide v4, v9, v4

    xor-long v16, v2, v4

    const/4 v2, 0x2

    aget-wide v2, v8, v2

    const/4 v4, 0x4

    aget-wide v4, v8, v4

    xor-long v18, v2, v4

    const/4 v2, 0x2

    aget-wide v2, v9, v2

    const/4 v4, 0x4

    aget-wide v4, v9, v4

    xor-long v20, v2, v4

    const/4 v2, 0x3

    aget-wide v2, v8, v2

    const/4 v4, 0x4

    aget-wide v4, v8, v4

    xor-long v22, v2, v4

    const/4 v2, 0x3

    aget-wide v2, v9, v2

    const/4 v4, 0x4

    aget-wide v4, v9, v4

    xor-long v24, v2, v4

    const/4 v2, 0x3

    aget-wide v2, v8, v2

    xor-long/2addr v2, v14

    const/4 v4, 0x3

    aget-wide v4, v9, v4

    xor-long v4, v4, v16

    const/16 v7, 0x12

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->implMulw(JJ[JI)V

    const/4 v2, 0x1

    aget-wide v2, v8, v2

    xor-long v2, v2, v18

    const/4 v4, 0x1

    aget-wide v4, v9, v4

    xor-long v4, v4, v20

    const/16 v7, 0x14

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->implMulw(JJ[JI)V

    xor-long v2, v10, v22

    xor-long v4, v12, v24

    const/4 v7, 0x2

    aget-wide v26, v8, v7

    xor-long v26, v26, v2

    const/4 v7, 0x2

    aget-wide v8, v9, v7

    xor-long/2addr v8, v4

    const/16 v7, 0x16

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->implMulw(JJ[JI)V

    const/16 v7, 0x18

    move-wide/from16 v2, v26

    move-wide v4, v8

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->implMulw(JJ[JI)V

    const/16 v7, 0xa

    move-wide v2, v10

    move-wide v4, v12

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->implMulw(JJ[JI)V

    const/16 v7, 0xc

    move-wide v2, v14

    move-wide/from16 v4, v16

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->implMulw(JJ[JI)V

    const/16 v7, 0xe

    move-wide/from16 v2, v18

    move-wide/from16 v4, v20

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->implMulw(JJ[JI)V

    const/16 v7, 0x10

    move-wide/from16 v2, v22

    move-wide/from16 v4, v24

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->implMulw(JJ[JI)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-wide v4, v6, v3

    aput-wide v4, p2, v2

    const/16 v2, 0x9

    const/16 v3, 0x9

    aget-wide v4, v6, v3

    aput-wide v4, p2, v2

    const/4 v2, 0x0

    aget-wide v2, v6, v2

    const/4 v4, 0x1

    aget-wide v4, v6, v4

    xor-long/2addr v2, v4

    const/4 v4, 0x2

    aget-wide v4, v6, v4

    xor-long/2addr v4, v2

    const/16 v7, 0xa

    aget-wide v8, v6, v7

    xor-long/2addr v8, v4

    const/4 v7, 0x1

    aput-wide v8, p2, v7

    const/4 v7, 0x3

    aget-wide v10, v6, v7

    const/4 v7, 0x4

    aget-wide v12, v6, v7

    xor-long/2addr v10, v12

    const/16 v7, 0xb

    aget-wide v12, v6, v7

    const/16 v7, 0xc

    aget-wide v14, v6, v7

    xor-long/2addr v12, v14

    xor-long/2addr v12, v10

    xor-long/2addr v4, v12

    const/4 v7, 0x2

    aput-wide v4, p2, v7

    xor-long/2addr v2, v10

    const/4 v7, 0x5

    aget-wide v10, v6, v7

    const/4 v7, 0x6

    aget-wide v12, v6, v7

    xor-long/2addr v10, v12

    xor-long/2addr v2, v10

    const/16 v7, 0x8

    aget-wide v12, v6, v7

    xor-long/2addr v2, v12

    const/16 v7, 0xd

    aget-wide v12, v6, v7

    const/16 v7, 0xe

    aget-wide v14, v6, v7

    xor-long/2addr v12, v14

    xor-long v14, v2, v12

    const/16 v7, 0x12

    aget-wide v16, v6, v7

    const/16 v7, 0x16

    aget-wide v18, v6, v7

    xor-long v16, v16, v18

    const/16 v7, 0x18

    aget-wide v18, v6, v7

    xor-long v16, v16, v18

    xor-long v14, v14, v16

    const/4 v7, 0x3

    aput-wide v14, p2, v7

    const/4 v7, 0x7

    aget-wide v14, v6, v7

    const/16 v7, 0x8

    aget-wide v16, v6, v7

    xor-long v14, v14, v16

    const/16 v7, 0x9

    aget-wide v16, v6, v7

    xor-long v14, v14, v16

    const/16 v7, 0x11

    aget-wide v16, v6, v7

    xor-long v16, v16, v14

    const/16 v7, 0x8

    aput-wide v16, p2, v7

    xor-long/2addr v10, v14

    const/16 v7, 0xf

    aget-wide v14, v6, v7

    const/16 v7, 0x10

    aget-wide v18, v6, v7

    xor-long v14, v14, v18

    xor-long/2addr v10, v14

    const/4 v7, 0x7

    aput-wide v10, p2, v7

    xor-long/2addr v8, v10

    const/16 v7, 0x13

    aget-wide v10, v6, v7

    const/16 v7, 0x14

    aget-wide v14, v6, v7

    xor-long/2addr v10, v14

    const/16 v7, 0x19

    aget-wide v14, v6, v7

    const/16 v7, 0x18

    aget-wide v18, v6, v7

    xor-long v14, v14, v18

    const/16 v7, 0x12

    aget-wide v18, v6, v7

    const/16 v7, 0x17

    aget-wide v20, v6, v7

    xor-long v18, v18, v20

    xor-long/2addr v10, v14

    xor-long v14, v10, v18

    xor-long/2addr v8, v14

    const/4 v7, 0x4

    aput-wide v8, p2, v7

    xor-long v4, v4, v16

    xor-long/2addr v4, v10

    const/16 v7, 0x15

    aget-wide v8, v6, v7

    const/16 v7, 0x16

    aget-wide v10, v6, v7

    xor-long/2addr v8, v10

    xor-long/2addr v4, v8

    const/4 v7, 0x5

    aput-wide v4, p2, v7

    const/4 v4, 0x0

    aget-wide v4, v6, v4

    xor-long/2addr v2, v4

    const/16 v4, 0x9

    aget-wide v4, v6, v4

    xor-long/2addr v2, v4

    xor-long/2addr v2, v12

    const/16 v4, 0x15

    aget-wide v4, v6, v4

    xor-long/2addr v2, v4

    const/16 v4, 0x17

    aget-wide v4, v6, v4

    xor-long/2addr v2, v4

    const/16 v4, 0x19

    aget-wide v4, v6, v4

    xor-long/2addr v2, v4

    const/4 v4, 0x6

    aput-wide v2, p2, v4

    invoke-static/range {p2 .. p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->implCompactExt([J)V

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
    .locals 5

    const/4 v4, 0x4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    aget-wide v2, p0, v0

    shl-int/lit8 v1, v0, 0x1

    invoke-static {v2, v3, p1, v1}, Lorg/bouncycastle/math/raw/Interleave;->expand64To128(J[JI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    aget-wide v2, p0, v4

    long-to-int v1, v2

    invoke-static {v1}, Lorg/bouncycastle/math/raw/Interleave;->expand32to64(I)J

    move-result-wide v2

    aput-wide v2, p1, v0

    return-void
.end method

.method public static invert([J[J)V
    .locals 3

    invoke-static {p0}, Lorg/bouncycastle/math/raw/Nat320;->isZero64([J)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat320;->create64()[J

    move-result-object v0

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat320;->create64()[J

    move-result-object v1

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->square([J[J)V

    invoke-static {v0, p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->multiply([J[J[J)V

    const/4 v2, 0x2

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->squareN([JI[J)V

    invoke-static {v1, v0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->multiply([J[J[J)V

    const/4 v2, 0x4

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->squareN([JI[J)V

    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->multiply([J[J[J)V

    const/16 v2, 0x8

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->squareN([JI[J)V

    invoke-static {v1, v0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->multiply([J[J[J)V

    invoke-static {v1, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->square([J[J)V

    invoke-static {v1, p0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->multiply([J[J[J)V

    const/16 v2, 0x11

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->squareN([JI[J)V

    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->multiply([J[J[J)V

    invoke-static {v0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->square([J[J)V

    invoke-static {v0, p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->multiply([J[J[J)V

    const/16 v2, 0x23

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->squareN([JI[J)V

    invoke-static {v1, v0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->multiply([J[J[J)V

    const/16 v2, 0x46

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->squareN([JI[J)V

    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->multiply([J[J[J)V

    invoke-static {v0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->square([J[J)V

    invoke-static {v0, p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->multiply([J[J[J)V

    const/16 v2, 0x8d

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->squareN([JI[J)V

    invoke-static {v1, v0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->multiply([J[J[J)V

    invoke-static {v1, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->square([J[J)V

    return-void
.end method

.method public static multiply([J[J[J)V
    .locals 1

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat320;->createExt64()[J

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->implMultiply([J[J[J)V

    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->reduce([J[J)V

    return-void
.end method

.method public static multiplyAddToExt([J[J[J)V
    .locals 1

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat320;->createExt64()[J

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->implMultiply([J[J[J)V

    invoke-static {p2, v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->addExt([J[J[J)V

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

    const/16 v16, 0x8

    aget-wide v16, p0, v16

    const/16 v18, 0x25

    shl-long v18, v16, v18

    const/16 v20, 0x2a

    shl-long v20, v16, v20

    xor-long v18, v18, v20

    const/16 v20, 0x2c

    shl-long v20, v16, v20

    xor-long v18, v18, v20

    const/16 v20, 0x31

    shl-long v20, v16, v20

    xor-long v18, v18, v20

    xor-long v6, v6, v18

    const/16 v18, 0x1b

    ushr-long v18, v16, v18

    const/16 v20, 0x16

    ushr-long v20, v16, v20

    xor-long v18, v18, v20

    const/16 v20, 0x14

    ushr-long v20, v16, v20

    xor-long v18, v18, v20

    const/16 v20, 0xf

    ushr-long v16, v16, v20

    xor-long v16, v16, v18

    xor-long v8, v8, v16

    const/16 v16, 0x25

    shl-long v16, v14, v16

    const/16 v18, 0x2a

    shl-long v18, v14, v18

    xor-long v16, v16, v18

    const/16 v18, 0x2c

    shl-long v18, v14, v18

    xor-long v16, v16, v18

    const/16 v18, 0x31

    shl-long v18, v14, v18

    xor-long v16, v16, v18

    xor-long v4, v4, v16

    const/16 v16, 0x1b

    ushr-long v16, v14, v16

    const/16 v18, 0x16

    ushr-long v18, v14, v18

    xor-long v16, v16, v18

    const/16 v18, 0x14

    ushr-long v18, v14, v18

    xor-long v16, v16, v18

    const/16 v18, 0xf

    ushr-long v14, v14, v18

    xor-long v14, v14, v16

    xor-long/2addr v6, v14

    const/16 v14, 0x25

    shl-long v14, v12, v14

    const/16 v16, 0x2a

    shl-long v16, v12, v16

    xor-long v14, v14, v16

    const/16 v16, 0x2c

    shl-long v16, v12, v16

    xor-long v14, v14, v16

    const/16 v16, 0x31

    shl-long v16, v12, v16

    xor-long v14, v14, v16

    xor-long/2addr v2, v14

    const/16 v14, 0x1b

    ushr-long v14, v12, v14

    const/16 v16, 0x16

    ushr-long v16, v12, v16

    xor-long v14, v14, v16

    const/16 v16, 0x14

    ushr-long v16, v12, v16

    xor-long v14, v14, v16

    const/16 v16, 0xf

    ushr-long v12, v12, v16

    xor-long/2addr v12, v14

    xor-long/2addr v4, v12

    const/16 v12, 0x25

    shl-long v12, v10, v12

    const/16 v14, 0x2a

    shl-long v14, v10, v14

    xor-long/2addr v12, v14

    const/16 v14, 0x2c

    shl-long v14, v10, v14

    xor-long/2addr v12, v14

    const/16 v14, 0x31

    shl-long v14, v10, v14

    xor-long/2addr v12, v14

    xor-long/2addr v0, v12

    const/16 v12, 0x1b

    ushr-long v12, v10, v12

    const/16 v14, 0x16

    ushr-long v14, v10, v14

    xor-long/2addr v12, v14

    const/16 v14, 0x14

    ushr-long v14, v10, v14

    xor-long/2addr v12, v14

    const/16 v14, 0xf

    ushr-long/2addr v10, v14

    xor-long/2addr v10, v12

    xor-long/2addr v2, v10

    const/16 v10, 0x1b

    ushr-long v10, v8, v10

    const/4 v12, 0x0

    xor-long/2addr v0, v10

    const/4 v13, 0x5

    shl-long v14, v10, v13

    xor-long/2addr v0, v14

    const/4 v13, 0x7

    shl-long v14, v10, v13

    xor-long/2addr v0, v14

    const/16 v13, 0xc

    shl-long/2addr v10, v13

    xor-long/2addr v0, v10

    aput-wide v0, p1, v12

    const/4 v0, 0x1

    aput-wide v2, p1, v0

    const/4 v0, 0x2

    aput-wide v4, p1, v0

    const/4 v0, 0x3

    aput-wide v6, p1, v0

    const/4 v0, 0x4

    const-wide/32 v2, 0x7ffffff

    and-long/2addr v2, v8

    aput-wide v2, p1, v0

    return-void
.end method

.method public static reduce37([JI)V
    .locals 10

    add-int/lit8 v0, p1, 0x4

    aget-wide v0, p0, v0

    const/16 v2, 0x1b

    ushr-long v2, v0, v2

    aget-wide v4, p0, p1

    const/4 v6, 0x5

    shl-long v6, v2, v6

    xor-long/2addr v6, v2

    const/4 v8, 0x7

    shl-long v8, v2, v8

    xor-long/2addr v6, v8

    const/16 v8, 0xc

    shl-long/2addr v2, v8

    xor-long/2addr v2, v6

    xor-long/2addr v2, v4

    aput-wide v2, p0, p1

    add-int/lit8 v2, p1, 0x4

    const-wide/32 v4, 0x7ffffff

    and-long/2addr v0, v4

    aput-wide v0, p0, v2

    return-void
.end method

.method public static sqrt([J[J)V
    .locals 12

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat320;->create64()[J

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

    const/4 v1, 0x3

    aget-wide v4, p0, v1

    invoke-static {v4, v5}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v4

    const-wide v8, 0xffffffffL

    and-long/2addr v8, v2

    const/16 v1, 0x20

    shl-long v10, v4, v1

    or-long/2addr v8, v10

    const/4 v1, 0x1

    const/16 v10, 0x20

    ushr-long/2addr v2, v10

    const-wide v10, -0x100000000L

    and-long/2addr v4, v10

    or-long/2addr v2, v4

    aput-wide v2, v0, v1

    const/4 v1, 0x4

    aget-wide v2, p0, v1

    invoke-static {v2, v3}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v2

    const-wide v4, 0xffffffffL

    and-long/2addr v4, v2

    const/4 v1, 0x2

    const/16 v10, 0x20

    ushr-long/2addr v2, v10

    aput-wide v2, v0, v1

    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->ROOT_Z:[J

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->multiply([J[J[J)V

    const/4 v0, 0x0

    aget-wide v2, p1, v0

    xor-long/2addr v2, v6

    aput-wide v2, p1, v0

    const/4 v0, 0x1

    aget-wide v2, p1, v0

    xor-long/2addr v2, v8

    aput-wide v2, p1, v0

    const/4 v0, 0x2

    aget-wide v2, p1, v0

    xor-long/2addr v2, v4

    aput-wide v2, p1, v0

    return-void
.end method

.method public static square([J[J)V
    .locals 1

    const/16 v0, 0x9

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat;->create64(I)[J

    move-result-object v0

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->implSquare([J[J)V

    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->reduce([J[J)V

    return-void
.end method

.method public static squareAddToExt([J[J)V
    .locals 1

    const/16 v0, 0x9

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat;->create64(I)[J

    move-result-object v0

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->implSquare([J[J)V

    invoke-static {p1, v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->addExt([J[J[J)V

    return-void
.end method

.method public static squareN([JI[J)V
    .locals 1

    const/16 v0, 0x9

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat;->create64(I)[J

    move-result-object v0

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->implSquare([J[J)V

    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->reduce([J[J)V

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    invoke-static {p2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->implSquare([J[J)V

    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->reduce([J[J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static trace([J)I
    .locals 5

    const/4 v0, 0x0

    aget-wide v0, p0, v0

    const/4 v2, 0x4

    aget-wide v2, p0, v2

    const/16 v4, 0xf

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0x1

    return v0
.end method
