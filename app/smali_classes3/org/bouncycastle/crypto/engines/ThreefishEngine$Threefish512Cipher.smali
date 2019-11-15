.class final Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish512Cipher;
.super Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/ThreefishEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Threefish512Cipher"
.end annotation


# static fields
.field private static final ROTATION_0_0:I = 0x2e

.field private static final ROTATION_0_1:I = 0x24

.field private static final ROTATION_0_2:I = 0x13

.field private static final ROTATION_0_3:I = 0x25

.field private static final ROTATION_1_0:I = 0x21

.field private static final ROTATION_1_1:I = 0x1b

.field private static final ROTATION_1_2:I = 0xe

.field private static final ROTATION_1_3:I = 0x2a

.field private static final ROTATION_2_0:I = 0x11

.field private static final ROTATION_2_1:I = 0x31

.field private static final ROTATION_2_2:I = 0x24

.field private static final ROTATION_2_3:I = 0x27

.field private static final ROTATION_3_0:I = 0x2c

.field private static final ROTATION_3_1:I = 0x9

.field private static final ROTATION_3_2:I = 0x36

.field private static final ROTATION_3_3:I = 0x38

.field private static final ROTATION_4_0:I = 0x27

.field private static final ROTATION_4_1:I = 0x1e

.field private static final ROTATION_4_2:I = 0x22

.field private static final ROTATION_4_3:I = 0x18

.field private static final ROTATION_5_0:I = 0xd

.field private static final ROTATION_5_1:I = 0x32

.field private static final ROTATION_5_2:I = 0xa

.field private static final ROTATION_5_3:I = 0x11

.field private static final ROTATION_6_0:I = 0x19

.field private static final ROTATION_6_1:I = 0x1d

.field private static final ROTATION_6_2:I = 0x27

.field private static final ROTATION_6_3:I = 0x2b

.field private static final ROTATION_7_0:I = 0x8

.field private static final ROTATION_7_1:I = 0x23

.field private static final ROTATION_7_2:I = 0x38

.field private static final ROTATION_7_3:I = 0x16


# direct methods
.method protected constructor <init>([J[J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;-><init>([J[J)V

    return-void
.end method


# virtual methods
.method public decryptBlock([J[J)V
    .locals 34

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish512Cipher;->kw:[J

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish512Cipher;->t:[J

    move-object/from16 v24, v0

    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$200()[I

    move-result-object v25

    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$100()[I

    move-result-object v26

    array-length v6, v7

    const/16 v8, 0x11

    if-eq v6, v8, :cond_0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    :cond_0
    move-object/from16 v0, v24

    array-length v6, v0

    const/4 v8, 0x5

    if-eq v6, v8, :cond_1

    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    :cond_1
    const/4 v6, 0x0

    aget-wide v22, p1, v6

    const/4 v6, 0x1

    aget-wide v20, p1, v6

    const/4 v6, 0x2

    aget-wide v18, p1, v6

    const/4 v6, 0x3

    aget-wide v16, p1, v6

    const/4 v6, 0x4

    aget-wide v14, p1, v6

    const/4 v6, 0x5

    aget-wide v12, p1, v6

    const/4 v6, 0x6

    aget-wide v10, p1, v6

    const/4 v6, 0x7

    aget-wide v8, p1, v6

    const/16 v6, 0x11

    :goto_0
    const/16 v27, 0x1

    move/from16 v0, v27

    if-lt v6, v0, :cond_2

    aget v27, v25, v6

    aget v28, v26, v6

    add-int/lit8 v29, v27, 0x1

    aget-wide v30, v7, v29

    sub-long v22, v22, v30

    add-int/lit8 v29, v27, 0x2

    aget-wide v30, v7, v29

    sub-long v20, v20, v30

    add-int/lit8 v29, v27, 0x3

    aget-wide v30, v7, v29

    sub-long v18, v18, v30

    add-int/lit8 v29, v27, 0x4

    aget-wide v30, v7, v29

    sub-long v16, v16, v30

    add-int/lit8 v29, v27, 0x5

    aget-wide v30, v7, v29

    sub-long v14, v14, v30

    add-int/lit8 v29, v27, 0x6

    aget-wide v30, v7, v29

    add-int/lit8 v29, v28, 0x1

    aget-wide v32, v24, v29

    add-long v30, v30, v32

    sub-long v12, v12, v30

    add-int/lit8 v29, v27, 0x7

    aget-wide v30, v7, v29

    add-int/lit8 v29, v28, 0x2

    aget-wide v32, v24, v29

    add-long v30, v30, v32

    sub-long v10, v10, v30

    add-int/lit8 v29, v27, 0x8

    aget-wide v30, v7, v29

    int-to-long v0, v6

    move-wide/from16 v32, v0

    add-long v30, v30, v32

    const-wide/16 v32, 0x1

    add-long v30, v30, v32

    sub-long v8, v8, v30

    const/16 v29, 0x8

    move-wide/from16 v0, v20

    move/from16 v2, v29

    invoke-static {v0, v1, v2, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v20

    sub-long v10, v10, v20

    const/16 v29, 0x23

    move/from16 v0, v29

    move-wide/from16 v1, v22

    invoke-static {v8, v9, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    sub-long v22, v22, v8

    const/16 v29, 0x38

    move/from16 v0, v29

    move-wide/from16 v1, v18

    invoke-static {v12, v13, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v12

    sub-long v18, v18, v12

    const/16 v29, 0x16

    move-wide/from16 v0, v16

    move/from16 v2, v29

    invoke-static {v0, v1, v2, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v16

    sub-long v14, v14, v16

    const/16 v29, 0x19

    move-wide/from16 v0, v20

    move/from16 v2, v29

    invoke-static {v0, v1, v2, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v20

    sub-long v14, v14, v20

    const/16 v29, 0x1d

    move-wide/from16 v0, v16

    move/from16 v2, v29

    invoke-static {v0, v1, v2, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v16

    sub-long v10, v10, v16

    const/16 v29, 0x27

    move/from16 v0, v29

    move-wide/from16 v1, v22

    invoke-static {v12, v13, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v12

    sub-long v22, v22, v12

    const/16 v29, 0x2b

    move/from16 v0, v29

    move-wide/from16 v1, v18

    invoke-static {v8, v9, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    sub-long v18, v18, v8

    const/16 v29, 0xd

    move-wide/from16 v0, v20

    move/from16 v2, v29

    move-wide/from16 v3, v18

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v20

    sub-long v18, v18, v20

    const/16 v29, 0x32

    move/from16 v0, v29

    invoke-static {v8, v9, v0, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    sub-long/2addr v14, v8

    const/16 v29, 0xa

    move/from16 v0, v29

    invoke-static {v12, v13, v0, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v12

    sub-long/2addr v10, v12

    const/16 v29, 0x11

    move-wide/from16 v0, v16

    move/from16 v2, v29

    move-wide/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v16

    sub-long v22, v22, v16

    const/16 v29, 0x27

    move-wide/from16 v0, v20

    move/from16 v2, v29

    move-wide/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v20

    sub-long v22, v22, v20

    const/16 v29, 0x1e

    move-wide/from16 v0, v16

    move/from16 v2, v29

    move-wide/from16 v3, v18

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v16

    sub-long v18, v18, v16

    const/16 v29, 0x22

    move/from16 v0, v29

    invoke-static {v12, v13, v0, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v12

    sub-long/2addr v14, v12

    const/16 v29, 0x18

    move/from16 v0, v29

    invoke-static {v8, v9, v0, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    sub-long/2addr v10, v8

    aget-wide v30, v7, v27

    sub-long v22, v22, v30

    add-int/lit8 v29, v27, 0x1

    aget-wide v30, v7, v29

    sub-long v20, v20, v30

    add-int/lit8 v29, v27, 0x2

    aget-wide v30, v7, v29

    sub-long v18, v18, v30

    add-int/lit8 v29, v27, 0x3

    aget-wide v30, v7, v29

    sub-long v16, v16, v30

    add-int/lit8 v29, v27, 0x4

    aget-wide v30, v7, v29

    sub-long v14, v14, v30

    add-int/lit8 v29, v27, 0x5

    aget-wide v30, v7, v29

    aget-wide v32, v24, v28

    add-long v30, v30, v32

    sub-long v12, v12, v30

    add-int/lit8 v29, v27, 0x6

    aget-wide v30, v7, v29

    add-int/lit8 v28, v28, 0x1

    aget-wide v28, v24, v28

    add-long v28, v28, v30

    sub-long v10, v10, v28

    add-int/lit8 v27, v27, 0x7

    aget-wide v28, v7, v27

    int-to-long v0, v6

    move-wide/from16 v30, v0

    add-long v28, v28, v30

    sub-long v8, v8, v28

    const/16 v27, 0x2c

    move-wide/from16 v0, v20

    move/from16 v2, v27

    invoke-static {v0, v1, v2, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v20

    sub-long v10, v10, v20

    const/16 v27, 0x9

    move/from16 v0, v27

    move-wide/from16 v1, v22

    invoke-static {v8, v9, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    sub-long v22, v22, v8

    const/16 v27, 0x36

    move/from16 v0, v27

    move-wide/from16 v1, v18

    invoke-static {v12, v13, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v12

    sub-long v18, v18, v12

    const/16 v27, 0x38

    move-wide/from16 v0, v16

    move/from16 v2, v27

    invoke-static {v0, v1, v2, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v16

    sub-long v14, v14, v16

    const/16 v27, 0x11

    move-wide/from16 v0, v20

    move/from16 v2, v27

    invoke-static {v0, v1, v2, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v20

    sub-long v14, v14, v20

    const/16 v27, 0x31

    move-wide/from16 v0, v16

    move/from16 v2, v27

    invoke-static {v0, v1, v2, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v16

    sub-long v10, v10, v16

    const/16 v27, 0x24

    move/from16 v0, v27

    move-wide/from16 v1, v22

    invoke-static {v12, v13, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v12

    sub-long v22, v22, v12

    const/16 v27, 0x27

    move/from16 v0, v27

    move-wide/from16 v1, v18

    invoke-static {v8, v9, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    sub-long v18, v18, v8

    const/16 v27, 0x21

    move-wide/from16 v0, v20

    move/from16 v2, v27

    move-wide/from16 v3, v18

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v20

    sub-long v18, v18, v20

    const/16 v27, 0x1b

    move/from16 v0, v27

    invoke-static {v8, v9, v0, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    sub-long/2addr v14, v8

    const/16 v27, 0xe

    move/from16 v0, v27

    invoke-static {v12, v13, v0, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v12

    sub-long/2addr v10, v12

    const/16 v27, 0x2a

    move-wide/from16 v0, v16

    move/from16 v2, v27

    move-wide/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v16

    sub-long v22, v22, v16

    const/16 v27, 0x2e

    move-wide/from16 v0, v20

    move/from16 v2, v27

    move-wide/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v20

    sub-long v22, v22, v20

    const/16 v27, 0x24

    move-wide/from16 v0, v16

    move/from16 v2, v27

    move-wide/from16 v3, v18

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v16

    sub-long v18, v18, v16

    const/16 v27, 0x13

    move/from16 v0, v27

    invoke-static {v12, v13, v0, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v12

    sub-long/2addr v14, v12

    const/16 v27, 0x25

    move/from16 v0, v27

    invoke-static {v8, v9, v0, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    sub-long/2addr v10, v8

    add-int/lit8 v6, v6, -0x2

    goto/16 :goto_0

    :cond_2
    const/4 v6, 0x0

    aget-wide v26, v7, v6

    sub-long v22, v22, v26

    const/4 v6, 0x1

    aget-wide v26, v7, v6

    sub-long v20, v20, v26

    const/4 v6, 0x2

    aget-wide v26, v7, v6

    sub-long v18, v18, v26

    const/4 v6, 0x3

    aget-wide v26, v7, v6

    sub-long v16, v16, v26

    const/4 v6, 0x4

    aget-wide v26, v7, v6

    sub-long v14, v14, v26

    const/4 v6, 0x5

    aget-wide v26, v7, v6

    const/4 v6, 0x0

    aget-wide v28, v24, v6

    add-long v26, v26, v28

    sub-long v12, v12, v26

    const/4 v6, 0x6

    aget-wide v26, v7, v6

    const/4 v6, 0x1

    aget-wide v24, v24, v6

    add-long v24, v24, v26

    sub-long v10, v10, v24

    const/4 v6, 0x7

    aget-wide v6, v7, v6

    sub-long v6, v8, v6

    const/4 v8, 0x0

    aput-wide v22, p2, v8

    const/4 v8, 0x1

    aput-wide v20, p2, v8

    const/4 v8, 0x2

    aput-wide v18, p2, v8

    const/4 v8, 0x3

    aput-wide v16, p2, v8

    const/4 v8, 0x4

    aput-wide v14, p2, v8

    const/4 v8, 0x5

    aput-wide v12, p2, v8

    const/4 v8, 0x6

    aput-wide v10, p2, v8

    const/4 v8, 0x7

    aput-wide v6, p2, v8

    return-void
.end method

.method public encryptBlock([J[J)V
    .locals 36

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish512Cipher;->kw:[J

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish512Cipher;->t:[J

    move-object/from16 v24, v0

    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$200()[I

    move-result-object v25

    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$100()[I

    move-result-object v26

    array-length v6, v7

    const/16 v8, 0x11

    if-eq v6, v8, :cond_0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    :cond_0
    move-object/from16 v0, v24

    array-length v6, v0

    const/4 v8, 0x5

    if-eq v6, v8, :cond_1

    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    :cond_1
    const/4 v6, 0x0

    aget-wide v8, p1, v6

    const/4 v6, 0x1

    aget-wide v10, p1, v6

    const/4 v6, 0x2

    aget-wide v12, p1, v6

    const/4 v6, 0x3

    aget-wide v14, p1, v6

    const/4 v6, 0x4

    aget-wide v28, p1, v6

    const/4 v6, 0x5

    aget-wide v30, p1, v6

    const/4 v6, 0x6

    aget-wide v32, p1, v6

    const/4 v6, 0x7

    aget-wide v34, p1, v6

    const/4 v6, 0x0

    aget-wide v16, v7, v6

    add-long v22, v8, v16

    const/4 v6, 0x1

    aget-wide v8, v7, v6

    add-long v20, v10, v8

    const/4 v6, 0x2

    aget-wide v8, v7, v6

    add-long v18, v12, v8

    const/4 v6, 0x3

    aget-wide v8, v7, v6

    add-long v16, v14, v8

    const/4 v6, 0x4

    aget-wide v8, v7, v6

    add-long v14, v28, v8

    const/4 v6, 0x5

    aget-wide v8, v7, v6

    const/4 v6, 0x0

    aget-wide v10, v24, v6

    add-long/2addr v8, v10

    add-long v12, v30, v8

    const/4 v6, 0x6

    aget-wide v8, v7, v6

    const/4 v6, 0x1

    aget-wide v10, v24, v6

    add-long/2addr v8, v10

    add-long v10, v32, v8

    const/4 v6, 0x7

    aget-wide v8, v7, v6

    add-long v8, v8, v34

    const/4 v6, 0x1

    :goto_0
    const/16 v27, 0x12

    move/from16 v0, v27

    if-ge v6, v0, :cond_2

    aget v27, v25, v6

    aget v28, v26, v6

    const/16 v29, 0x2e

    add-long v22, v22, v20

    move-wide/from16 v0, v20

    move/from16 v2, v29

    move-wide/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v20

    const/16 v29, 0x24

    add-long v18, v18, v16

    move-wide/from16 v0, v16

    move/from16 v2, v29

    move-wide/from16 v3, v18

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v16

    const/16 v29, 0x13

    add-long/2addr v14, v12

    move/from16 v0, v29

    invoke-static {v12, v13, v0, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v12

    const/16 v29, 0x25

    add-long/2addr v10, v8

    move/from16 v0, v29

    invoke-static {v8, v9, v0, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    const/16 v29, 0x21

    add-long v18, v18, v20

    move-wide/from16 v0, v20

    move/from16 v2, v29

    move-wide/from16 v3, v18

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v20

    const/16 v29, 0x1b

    add-long/2addr v14, v8

    move/from16 v0, v29

    invoke-static {v8, v9, v0, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    const/16 v29, 0xe

    add-long/2addr v10, v12

    move/from16 v0, v29

    invoke-static {v12, v13, v0, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v12

    const/16 v29, 0x2a

    add-long v22, v22, v16

    move-wide/from16 v0, v16

    move/from16 v2, v29

    move-wide/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v16

    const/16 v29, 0x11

    add-long v14, v14, v20

    move-wide/from16 v0, v20

    move/from16 v2, v29

    invoke-static {v0, v1, v2, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v20

    const/16 v29, 0x31

    add-long v10, v10, v16

    move-wide/from16 v0, v16

    move/from16 v2, v29

    invoke-static {v0, v1, v2, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v16

    const/16 v29, 0x24

    add-long v22, v22, v12

    move/from16 v0, v29

    move-wide/from16 v1, v22

    invoke-static {v12, v13, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v12

    const/16 v29, 0x27

    add-long v18, v18, v8

    move/from16 v0, v29

    move-wide/from16 v1, v18

    invoke-static {v8, v9, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    const/16 v29, 0x2c

    add-long v10, v10, v20

    move-wide/from16 v0, v20

    move/from16 v2, v29

    invoke-static {v0, v1, v2, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v20

    const/16 v29, 0x9

    add-long v22, v22, v8

    move/from16 v0, v29

    move-wide/from16 v1, v22

    invoke-static {v8, v9, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    const/16 v29, 0x36

    add-long v18, v18, v12

    move/from16 v0, v29

    move-wide/from16 v1, v18

    invoke-static {v12, v13, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v12

    const/16 v29, 0x38

    add-long v14, v14, v16

    move-wide/from16 v0, v16

    move/from16 v2, v29

    invoke-static {v0, v1, v2, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v16

    aget-wide v30, v7, v27

    add-long v22, v22, v30

    add-int/lit8 v29, v27, 0x1

    aget-wide v30, v7, v29

    add-long v20, v20, v30

    add-int/lit8 v29, v27, 0x2

    aget-wide v30, v7, v29

    add-long v18, v18, v30

    add-int/lit8 v29, v27, 0x3

    aget-wide v30, v7, v29

    add-long v16, v16, v30

    add-int/lit8 v29, v27, 0x4

    aget-wide v30, v7, v29

    add-long v14, v14, v30

    add-int/lit8 v29, v27, 0x5

    aget-wide v30, v7, v29

    aget-wide v32, v24, v28

    add-long v30, v30, v32

    add-long v12, v12, v30

    add-int/lit8 v29, v27, 0x6

    aget-wide v30, v7, v29

    add-int/lit8 v29, v28, 0x1

    aget-wide v32, v24, v29

    add-long v30, v30, v32

    add-long v10, v10, v30

    add-int/lit8 v29, v27, 0x7

    aget-wide v30, v7, v29

    int-to-long v0, v6

    move-wide/from16 v32, v0

    add-long v30, v30, v32

    add-long v8, v8, v30

    const/16 v29, 0x27

    add-long v22, v22, v20

    move-wide/from16 v0, v20

    move/from16 v2, v29

    move-wide/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v20

    const/16 v29, 0x1e

    add-long v18, v18, v16

    move-wide/from16 v0, v16

    move/from16 v2, v29

    move-wide/from16 v3, v18

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v16

    const/16 v29, 0x22

    add-long/2addr v14, v12

    move/from16 v0, v29

    invoke-static {v12, v13, v0, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v12

    const/16 v29, 0x18

    add-long/2addr v10, v8

    move/from16 v0, v29

    invoke-static {v8, v9, v0, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    const/16 v29, 0xd

    add-long v18, v18, v20

    move-wide/from16 v0, v20

    move/from16 v2, v29

    move-wide/from16 v3, v18

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v20

    const/16 v29, 0x32

    add-long/2addr v14, v8

    move/from16 v0, v29

    invoke-static {v8, v9, v0, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    const/16 v29, 0xa

    add-long/2addr v10, v12

    move/from16 v0, v29

    invoke-static {v12, v13, v0, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v12

    const/16 v29, 0x11

    add-long v22, v22, v16

    move-wide/from16 v0, v16

    move/from16 v2, v29

    move-wide/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v16

    const/16 v29, 0x19

    add-long v14, v14, v20

    move-wide/from16 v0, v20

    move/from16 v2, v29

    invoke-static {v0, v1, v2, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v20

    const/16 v29, 0x1d

    add-long v10, v10, v16

    move-wide/from16 v0, v16

    move/from16 v2, v29

    invoke-static {v0, v1, v2, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v16

    const/16 v29, 0x27

    add-long v22, v22, v12

    move/from16 v0, v29

    move-wide/from16 v1, v22

    invoke-static {v12, v13, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v12

    const/16 v29, 0x2b

    add-long v18, v18, v8

    move/from16 v0, v29

    move-wide/from16 v1, v18

    invoke-static {v8, v9, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    const/16 v29, 0x8

    add-long v10, v10, v20

    move-wide/from16 v0, v20

    move/from16 v2, v29

    invoke-static {v0, v1, v2, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v20

    const/16 v29, 0x23

    add-long v22, v22, v8

    move/from16 v0, v29

    move-wide/from16 v1, v22

    invoke-static {v8, v9, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    const/16 v29, 0x38

    add-long v18, v18, v12

    move/from16 v0, v29

    move-wide/from16 v1, v18

    invoke-static {v12, v13, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v12

    const/16 v29, 0x16

    add-long v14, v14, v16

    move-wide/from16 v0, v16

    move/from16 v2, v29

    invoke-static {v0, v1, v2, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v16

    add-int/lit8 v29, v27, 0x1

    aget-wide v30, v7, v29

    add-long v22, v22, v30

    add-int/lit8 v29, v27, 0x2

    aget-wide v30, v7, v29

    add-long v20, v20, v30

    add-int/lit8 v29, v27, 0x3

    aget-wide v30, v7, v29

    add-long v18, v18, v30

    add-int/lit8 v29, v27, 0x4

    aget-wide v30, v7, v29

    add-long v16, v16, v30

    add-int/lit8 v29, v27, 0x5

    aget-wide v30, v7, v29

    add-long v14, v14, v30

    add-int/lit8 v29, v27, 0x6

    aget-wide v30, v7, v29

    add-int/lit8 v29, v28, 0x1

    aget-wide v32, v24, v29

    add-long v30, v30, v32

    add-long v12, v12, v30

    add-int/lit8 v29, v27, 0x7

    aget-wide v30, v7, v29

    add-int/lit8 v28, v28, 0x2

    aget-wide v28, v24, v28

    add-long v28, v28, v30

    add-long v10, v10, v28

    add-int/lit8 v27, v27, 0x8

    aget-wide v28, v7, v27

    int-to-long v0, v6

    move-wide/from16 v30, v0

    add-long v28, v28, v30

    const-wide/16 v30, 0x1

    add-long v28, v28, v30

    add-long v8, v8, v28

    add-int/lit8 v6, v6, 0x2

    goto/16 :goto_0

    :cond_2
    const/4 v6, 0x0

    aput-wide v22, p2, v6

    const/4 v6, 0x1

    aput-wide v20, p2, v6

    const/4 v6, 0x2

    aput-wide v18, p2, v6

    const/4 v6, 0x3

    aput-wide v16, p2, v6

    const/4 v6, 0x4

    aput-wide v14, p2, v6

    const/4 v6, 0x5

    aput-wide v12, p2, v6

    const/4 v6, 0x6

    aput-wide v10, p2, v6

    const/4 v6, 0x7

    aput-wide v8, p2, v6

    return-void
.end method
