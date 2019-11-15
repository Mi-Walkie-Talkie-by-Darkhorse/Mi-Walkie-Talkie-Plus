.class final Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish1024Cipher;
.super Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/ThreefishEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Threefish1024Cipher"
.end annotation


# static fields
.field private static final ROTATION_0_0:I = 0x18

.field private static final ROTATION_0_1:I = 0xd

.field private static final ROTATION_0_2:I = 0x8

.field private static final ROTATION_0_3:I = 0x2f

.field private static final ROTATION_0_4:I = 0x8

.field private static final ROTATION_0_5:I = 0x11

.field private static final ROTATION_0_6:I = 0x16

.field private static final ROTATION_0_7:I = 0x25

.field private static final ROTATION_1_0:I = 0x26

.field private static final ROTATION_1_1:I = 0x13

.field private static final ROTATION_1_2:I = 0xa

.field private static final ROTATION_1_3:I = 0x37

.field private static final ROTATION_1_4:I = 0x31

.field private static final ROTATION_1_5:I = 0x12

.field private static final ROTATION_1_6:I = 0x17

.field private static final ROTATION_1_7:I = 0x34

.field private static final ROTATION_2_0:I = 0x21

.field private static final ROTATION_2_1:I = 0x4

.field private static final ROTATION_2_2:I = 0x33

.field private static final ROTATION_2_3:I = 0xd

.field private static final ROTATION_2_4:I = 0x22

.field private static final ROTATION_2_5:I = 0x29

.field private static final ROTATION_2_6:I = 0x3b

.field private static final ROTATION_2_7:I = 0x11

.field private static final ROTATION_3_0:I = 0x5

.field private static final ROTATION_3_1:I = 0x14

.field private static final ROTATION_3_2:I = 0x30

.field private static final ROTATION_3_3:I = 0x29

.field private static final ROTATION_3_4:I = 0x2f

.field private static final ROTATION_3_5:I = 0x1c

.field private static final ROTATION_3_6:I = 0x10

.field private static final ROTATION_3_7:I = 0x19

.field private static final ROTATION_4_0:I = 0x29

.field private static final ROTATION_4_1:I = 0x9

.field private static final ROTATION_4_2:I = 0x25

.field private static final ROTATION_4_3:I = 0x1f

.field private static final ROTATION_4_4:I = 0xc

.field private static final ROTATION_4_5:I = 0x2f

.field private static final ROTATION_4_6:I = 0x2c

.field private static final ROTATION_4_7:I = 0x1e

.field private static final ROTATION_5_0:I = 0x10

.field private static final ROTATION_5_1:I = 0x22

.field private static final ROTATION_5_2:I = 0x38

.field private static final ROTATION_5_3:I = 0x33

.field private static final ROTATION_5_4:I = 0x4

.field private static final ROTATION_5_5:I = 0x35

.field private static final ROTATION_5_6:I = 0x2a

.field private static final ROTATION_5_7:I = 0x29

.field private static final ROTATION_6_0:I = 0x1f

.field private static final ROTATION_6_1:I = 0x2c

.field private static final ROTATION_6_2:I = 0x2f

.field private static final ROTATION_6_3:I = 0x2e

.field private static final ROTATION_6_4:I = 0x13

.field private static final ROTATION_6_5:I = 0x2a

.field private static final ROTATION_6_6:I = 0x2c

.field private static final ROTATION_6_7:I = 0x19

.field private static final ROTATION_7_0:I = 0x9

.field private static final ROTATION_7_1:I = 0x30

.field private static final ROTATION_7_2:I = 0x23

.field private static final ROTATION_7_3:I = 0x34

.field private static final ROTATION_7_4:I = 0x17

.field private static final ROTATION_7_5:I = 0x1f

.field private static final ROTATION_7_6:I = 0x25

.field private static final ROTATION_7_7:I = 0x14


# direct methods
.method public constructor <init>([J[J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;-><init>([J[J)V

    return-void
.end method


# virtual methods
.method decryptBlock([J[J)V
    .locals 50

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish1024Cipher;->kw:[J

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish1024Cipher;->t:[J

    move-object/from16 v40, v0

    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$300()[I

    move-result-object v41

    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$100()[I

    move-result-object v42

    array-length v6, v7

    const/16 v8, 0x21

    if-eq v6, v8, :cond_0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    :cond_0
    move-object/from16 v0, v40

    array-length v6, v0

    const/4 v8, 0x5

    if-eq v6, v8, :cond_1

    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    :cond_1
    const/4 v6, 0x0

    aget-wide v38, p1, v6

    const/4 v6, 0x1

    aget-wide v36, p1, v6

    const/4 v6, 0x2

    aget-wide v34, p1, v6

    const/4 v6, 0x3

    aget-wide v32, p1, v6

    const/4 v6, 0x4

    aget-wide v30, p1, v6

    const/4 v6, 0x5

    aget-wide v28, p1, v6

    const/4 v6, 0x6

    aget-wide v26, p1, v6

    const/4 v6, 0x7

    aget-wide v24, p1, v6

    const/16 v6, 0x8

    aget-wide v22, p1, v6

    const/16 v6, 0x9

    aget-wide v20, p1, v6

    const/16 v6, 0xa

    aget-wide v18, p1, v6

    const/16 v6, 0xb

    aget-wide v16, p1, v6

    const/16 v6, 0xc

    aget-wide v14, p1, v6

    const/16 v6, 0xd

    aget-wide v12, p1, v6

    const/16 v6, 0xe

    aget-wide v10, p1, v6

    const/16 v6, 0xf

    aget-wide v8, p1, v6

    const/16 v6, 0x13

    :goto_0
    const/16 v43, 0x1

    move/from16 v0, v43

    if-lt v6, v0, :cond_2

    aget v43, v41, v6

    aget v44, v42, v6

    add-int/lit8 v45, v43, 0x1

    aget-wide v46, v7, v45

    sub-long v38, v38, v46

    add-int/lit8 v45, v43, 0x2

    aget-wide v46, v7, v45

    sub-long v36, v36, v46

    add-int/lit8 v45, v43, 0x3

    aget-wide v46, v7, v45

    sub-long v34, v34, v46

    add-int/lit8 v45, v43, 0x4

    aget-wide v46, v7, v45

    sub-long v32, v32, v46

    add-int/lit8 v45, v43, 0x5

    aget-wide v46, v7, v45

    sub-long v30, v30, v46

    add-int/lit8 v45, v43, 0x6

    aget-wide v46, v7, v45

    sub-long v28, v28, v46

    add-int/lit8 v45, v43, 0x7

    aget-wide v46, v7, v45

    sub-long v26, v26, v46

    add-int/lit8 v45, v43, 0x8

    aget-wide v46, v7, v45

    sub-long v24, v24, v46

    add-int/lit8 v45, v43, 0x9

    aget-wide v46, v7, v45

    sub-long v22, v22, v46

    add-int/lit8 v45, v43, 0xa

    aget-wide v46, v7, v45

    sub-long v20, v20, v46

    add-int/lit8 v45, v43, 0xb

    aget-wide v46, v7, v45

    sub-long v18, v18, v46

    add-int/lit8 v45, v43, 0xc

    aget-wide v46, v7, v45

    sub-long v16, v16, v46

    add-int/lit8 v45, v43, 0xd

    aget-wide v46, v7, v45

    sub-long v14, v14, v46

    add-int/lit8 v45, v43, 0xe

    aget-wide v46, v7, v45

    add-int/lit8 v45, v44, 0x1

    aget-wide v48, v40, v45

    add-long v46, v46, v48

    sub-long v12, v12, v46

    add-int/lit8 v45, v43, 0xf

    aget-wide v46, v7, v45

    add-int/lit8 v45, v44, 0x2

    aget-wide v48, v40, v45

    add-long v46, v46, v48

    sub-long v10, v10, v46

    add-int/lit8 v45, v43, 0x10

    aget-wide v46, v7, v45

    int-to-long v0, v6

    move-wide/from16 v48, v0

    add-long v46, v46, v48

    const-wide/16 v48, 0x1

    add-long v46, v46, v48

    sub-long v8, v8, v46

    const/16 v45, 0x9

    move/from16 v0, v45

    move-wide/from16 v1, v38

    invoke-static {v8, v9, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    sub-long v38, v38, v8

    const/16 v45, 0x30

    move-wide/from16 v0, v16

    move/from16 v2, v45

    move-wide/from16 v3, v34

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v16

    sub-long v34, v34, v16

    const/16 v45, 0x23

    move/from16 v0, v45

    move-wide/from16 v1, v26

    invoke-static {v12, v13, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v12

    sub-long v26, v26, v12

    const/16 v45, 0x34

    move-wide/from16 v0, v20

    move/from16 v2, v45

    move-wide/from16 v3, v30

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v20

    sub-long v30, v30, v20

    const/16 v45, 0x17

    move-wide/from16 v0, v36

    move/from16 v2, v45

    invoke-static {v0, v1, v2, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v36

    sub-long v10, v10, v36

    const/16 v45, 0x1f

    move-wide/from16 v0, v28

    move/from16 v2, v45

    move-wide/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v28

    sub-long v22, v22, v28

    const/16 v45, 0x25

    move-wide/from16 v0, v32

    move/from16 v2, v45

    move-wide/from16 v3, v18

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v32

    sub-long v18, v18, v32

    const/16 v45, 0x14

    move-wide/from16 v0, v24

    move/from16 v2, v45

    invoke-static {v0, v1, v2, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v24

    sub-long v14, v14, v24

    const/16 v45, 0x1f

    move-wide/from16 v0, v24

    move/from16 v2, v45

    move-wide/from16 v3, v38

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v24

    sub-long v38, v38, v24

    const/16 v45, 0x2c

    move-wide/from16 v0, v28

    move/from16 v2, v45

    move-wide/from16 v3, v34

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v28

    sub-long v34, v34, v28

    const/16 v45, 0x2f

    move-wide/from16 v0, v32

    move/from16 v2, v45

    move-wide/from16 v3, v30

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v32

    sub-long v30, v30, v32

    const/16 v45, 0x2e

    move-wide/from16 v0, v36

    move/from16 v2, v45

    move-wide/from16 v3, v26

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v36

    sub-long v26, v26, v36

    const/16 v45, 0x13

    move/from16 v0, v45

    invoke-static {v8, v9, v0, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    sub-long/2addr v14, v8

    const/16 v45, 0x2a

    move/from16 v0, v45

    invoke-static {v12, v13, v0, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v12

    sub-long/2addr v10, v12

    const/16 v45, 0x2c

    move-wide/from16 v0, v16

    move/from16 v2, v45

    move-wide/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v16

    sub-long v22, v22, v16

    const/16 v45, 0x19

    move-wide/from16 v0, v20

    move/from16 v2, v45

    move-wide/from16 v3, v18

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v20

    sub-long v18, v18, v20

    const/16 v45, 0x10

    move-wide/from16 v0, v20

    move/from16 v2, v45

    move-wide/from16 v3, v38

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v20

    sub-long v38, v38, v20

    const/16 v45, 0x22

    move/from16 v0, v45

    move-wide/from16 v1, v34

    invoke-static {v12, v13, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v12

    sub-long v34, v34, v12

    const/16 v45, 0x38

    move-wide/from16 v0, v16

    move/from16 v2, v45

    move-wide/from16 v3, v26

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v16

    sub-long v26, v26, v16

    const/16 v45, 0x33

    move/from16 v0, v45

    move-wide/from16 v1, v30

    invoke-static {v8, v9, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    sub-long v30, v30, v8

    const/16 v45, 0x4

    move-wide/from16 v0, v24

    move/from16 v2, v45

    move-wide/from16 v3, v18

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v24

    sub-long v18, v18, v24

    const/16 v45, 0x35

    move-wide/from16 v0, v32

    move/from16 v2, v45

    invoke-static {v0, v1, v2, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v32

    sub-long v14, v14, v32

    const/16 v45, 0x2a

    move-wide/from16 v0, v28

    move/from16 v2, v45

    invoke-static {v0, v1, v2, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v28

    sub-long v10, v10, v28

    const/16 v45, 0x29

    move-wide/from16 v0, v36

    move/from16 v2, v45

    move-wide/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v36

    sub-long v22, v22, v36

    const/16 v45, 0x29

    move-wide/from16 v0, v36

    move/from16 v2, v45

    move-wide/from16 v3, v38

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v36

    sub-long v38, v38, v36

    const/16 v45, 0x9

    move-wide/from16 v0, v32

    move/from16 v2, v45

    move-wide/from16 v3, v34

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v32

    sub-long v34, v34, v32

    const/16 v45, 0x25

    move-wide/from16 v0, v28

    move/from16 v2, v45

    move-wide/from16 v3, v30

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v28

    sub-long v30, v30, v28

    const/16 v45, 0x1f

    move-wide/from16 v0, v24

    move/from16 v2, v45

    move-wide/from16 v3, v26

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v24

    sub-long v26, v26, v24

    const/16 v45, 0xc

    move-wide/from16 v0, v20

    move/from16 v2, v45

    move-wide/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v20

    sub-long v22, v22, v20

    const/16 v45, 0x2f

    move-wide/from16 v0, v16

    move/from16 v2, v45

    move-wide/from16 v3, v18

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v16

    sub-long v18, v18, v16

    const/16 v45, 0x2c

    move/from16 v0, v45

    invoke-static {v12, v13, v0, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v12

    sub-long/2addr v14, v12

    const/16 v45, 0x1e

    move/from16 v0, v45

    invoke-static {v8, v9, v0, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    sub-long/2addr v10, v8

    aget-wide v46, v7, v43

    sub-long v38, v38, v46

    add-int/lit8 v45, v43, 0x1

    aget-wide v46, v7, v45

    sub-long v36, v36, v46

    add-int/lit8 v45, v43, 0x2

    aget-wide v46, v7, v45

    sub-long v34, v34, v46

    add-int/lit8 v45, v43, 0x3

    aget-wide v46, v7, v45

    sub-long v32, v32, v46

    add-int/lit8 v45, v43, 0x4

    aget-wide v46, v7, v45

    sub-long v30, v30, v46

    add-int/lit8 v45, v43, 0x5

    aget-wide v46, v7, v45

    sub-long v28, v28, v46

    add-int/lit8 v45, v43, 0x6

    aget-wide v46, v7, v45

    sub-long v26, v26, v46

    add-int/lit8 v45, v43, 0x7

    aget-wide v46, v7, v45

    sub-long v24, v24, v46

    add-int/lit8 v45, v43, 0x8

    aget-wide v46, v7, v45

    sub-long v22, v22, v46

    add-int/lit8 v45, v43, 0x9

    aget-wide v46, v7, v45

    sub-long v20, v20, v46

    add-int/lit8 v45, v43, 0xa

    aget-wide v46, v7, v45

    sub-long v18, v18, v46

    add-int/lit8 v45, v43, 0xb

    aget-wide v46, v7, v45

    sub-long v16, v16, v46

    add-int/lit8 v45, v43, 0xc

    aget-wide v46, v7, v45

    sub-long v14, v14, v46

    add-int/lit8 v45, v43, 0xd

    aget-wide v46, v7, v45

    aget-wide v48, v40, v44

    add-long v46, v46, v48

    sub-long v12, v12, v46

    add-int/lit8 v45, v43, 0xe

    aget-wide v46, v7, v45

    add-int/lit8 v44, v44, 0x1

    aget-wide v44, v40, v44

    add-long v44, v44, v46

    sub-long v10, v10, v44

    add-int/lit8 v43, v43, 0xf

    aget-wide v44, v7, v43

    int-to-long v0, v6

    move-wide/from16 v46, v0

    add-long v44, v44, v46

    sub-long v8, v8, v44

    const/16 v43, 0x5

    move/from16 v0, v43

    move-wide/from16 v1, v38

    invoke-static {v8, v9, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    sub-long v38, v38, v8

    const/16 v43, 0x14

    move-wide/from16 v0, v16

    move/from16 v2, v43

    move-wide/from16 v3, v34

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v16

    sub-long v34, v34, v16

    const/16 v43, 0x30

    move/from16 v0, v43

    move-wide/from16 v1, v26

    invoke-static {v12, v13, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v12

    sub-long v26, v26, v12

    const/16 v43, 0x29

    move-wide/from16 v0, v20

    move/from16 v2, v43

    move-wide/from16 v3, v30

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v20

    sub-long v30, v30, v20

    const/16 v43, 0x2f

    move-wide/from16 v0, v36

    move/from16 v2, v43

    invoke-static {v0, v1, v2, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v36

    sub-long v10, v10, v36

    const/16 v43, 0x1c

    move-wide/from16 v0, v28

    move/from16 v2, v43

    move-wide/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v28

    sub-long v22, v22, v28

    const/16 v43, 0x10

    move-wide/from16 v0, v32

    move/from16 v2, v43

    move-wide/from16 v3, v18

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v32

    sub-long v18, v18, v32

    const/16 v43, 0x19

    move-wide/from16 v0, v24

    move/from16 v2, v43

    invoke-static {v0, v1, v2, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v24

    sub-long v14, v14, v24

    const/16 v43, 0x21

    move-wide/from16 v0, v24

    move/from16 v2, v43

    move-wide/from16 v3, v38

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v24

    sub-long v38, v38, v24

    const/16 v43, 0x4

    move-wide/from16 v0, v28

    move/from16 v2, v43

    move-wide/from16 v3, v34

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v28

    sub-long v34, v34, v28

    const/16 v43, 0x33

    move-wide/from16 v0, v32

    move/from16 v2, v43

    move-wide/from16 v3, v30

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v32

    sub-long v30, v30, v32

    const/16 v43, 0xd

    move-wide/from16 v0, v36

    move/from16 v2, v43

    move-wide/from16 v3, v26

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v36

    sub-long v26, v26, v36

    const/16 v43, 0x22

    move/from16 v0, v43

    invoke-static {v8, v9, v0, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    sub-long/2addr v14, v8

    const/16 v43, 0x29

    move/from16 v0, v43

    invoke-static {v12, v13, v0, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v12

    sub-long/2addr v10, v12

    const/16 v43, 0x3b

    move-wide/from16 v0, v16

    move/from16 v2, v43

    move-wide/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v16

    sub-long v22, v22, v16

    const/16 v43, 0x11

    move-wide/from16 v0, v20

    move/from16 v2, v43

    move-wide/from16 v3, v18

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v20

    sub-long v18, v18, v20

    const/16 v43, 0x26

    move-wide/from16 v0, v20

    move/from16 v2, v43

    move-wide/from16 v3, v38

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v20

    sub-long v38, v38, v20

    const/16 v43, 0x13

    move/from16 v0, v43

    move-wide/from16 v1, v34

    invoke-static {v12, v13, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v12

    sub-long v34, v34, v12

    const/16 v43, 0xa

    move-wide/from16 v0, v16

    move/from16 v2, v43

    move-wide/from16 v3, v26

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v16

    sub-long v26, v26, v16

    const/16 v43, 0x37

    move/from16 v0, v43

    move-wide/from16 v1, v30

    invoke-static {v8, v9, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    sub-long v30, v30, v8

    const/16 v43, 0x31

    move-wide/from16 v0, v24

    move/from16 v2, v43

    move-wide/from16 v3, v18

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v24

    sub-long v18, v18, v24

    const/16 v43, 0x12

    move-wide/from16 v0, v32

    move/from16 v2, v43

    invoke-static {v0, v1, v2, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v32

    sub-long v14, v14, v32

    const/16 v43, 0x17

    move-wide/from16 v0, v28

    move/from16 v2, v43

    invoke-static {v0, v1, v2, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v28

    sub-long v10, v10, v28

    const/16 v43, 0x34

    move-wide/from16 v0, v36

    move/from16 v2, v43

    move-wide/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v36

    sub-long v22, v22, v36

    const/16 v43, 0x18

    move-wide/from16 v0, v36

    move/from16 v2, v43

    move-wide/from16 v3, v38

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v36

    sub-long v38, v38, v36

    const/16 v43, 0xd

    move-wide/from16 v0, v32

    move/from16 v2, v43

    move-wide/from16 v3, v34

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v32

    sub-long v34, v34, v32

    const/16 v43, 0x8

    move-wide/from16 v0, v28

    move/from16 v2, v43

    move-wide/from16 v3, v30

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v28

    sub-long v30, v30, v28

    const/16 v43, 0x2f

    move-wide/from16 v0, v24

    move/from16 v2, v43

    move-wide/from16 v3, v26

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v24

    sub-long v26, v26, v24

    const/16 v43, 0x8

    move-wide/from16 v0, v20

    move/from16 v2, v43

    move-wide/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v20

    sub-long v22, v22, v20

    const/16 v43, 0x11

    move-wide/from16 v0, v16

    move/from16 v2, v43

    move-wide/from16 v3, v18

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v16

    sub-long v18, v18, v16

    const/16 v43, 0x16

    move/from16 v0, v43

    invoke-static {v12, v13, v0, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v12

    sub-long/2addr v14, v12

    const/16 v43, 0x25

    move/from16 v0, v43

    invoke-static {v8, v9, v0, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    sub-long/2addr v10, v8

    add-int/lit8 v6, v6, -0x2

    goto/16 :goto_0

    :cond_2
    const/4 v6, 0x0

    aget-wide v42, v7, v6

    sub-long v38, v38, v42

    const/4 v6, 0x1

    aget-wide v42, v7, v6

    sub-long v36, v36, v42

    const/4 v6, 0x2

    aget-wide v42, v7, v6

    sub-long v34, v34, v42

    const/4 v6, 0x3

    aget-wide v42, v7, v6

    sub-long v32, v32, v42

    const/4 v6, 0x4

    aget-wide v42, v7, v6

    sub-long v30, v30, v42

    const/4 v6, 0x5

    aget-wide v42, v7, v6

    sub-long v28, v28, v42

    const/4 v6, 0x6

    aget-wide v42, v7, v6

    sub-long v26, v26, v42

    const/4 v6, 0x7

    aget-wide v42, v7, v6

    sub-long v24, v24, v42

    const/16 v6, 0x8

    aget-wide v42, v7, v6

    sub-long v22, v22, v42

    const/16 v6, 0x9

    aget-wide v42, v7, v6

    sub-long v20, v20, v42

    const/16 v6, 0xa

    aget-wide v42, v7, v6

    sub-long v18, v18, v42

    const/16 v6, 0xb

    aget-wide v42, v7, v6

    sub-long v16, v16, v42

    const/16 v6, 0xc

    aget-wide v42, v7, v6

    sub-long v14, v14, v42

    const/16 v6, 0xd

    aget-wide v42, v7, v6

    const/4 v6, 0x0

    aget-wide v44, v40, v6

    add-long v42, v42, v44

    sub-long v12, v12, v42

    const/16 v6, 0xe

    aget-wide v42, v7, v6

    const/4 v6, 0x1

    aget-wide v40, v40, v6

    add-long v40, v40, v42

    sub-long v10, v10, v40

    const/16 v6, 0xf

    aget-wide v6, v7, v6

    sub-long v6, v8, v6

    const/4 v8, 0x0

    aput-wide v38, p2, v8

    const/4 v8, 0x1

    aput-wide v36, p2, v8

    const/4 v8, 0x2

    aput-wide v34, p2, v8

    const/4 v8, 0x3

    aput-wide v32, p2, v8

    const/4 v8, 0x4

    aput-wide v30, p2, v8

    const/4 v8, 0x5

    aput-wide v28, p2, v8

    const/4 v8, 0x6

    aput-wide v26, p2, v8

    const/4 v8, 0x7

    aput-wide v24, p2, v8

    const/16 v8, 0x8

    aput-wide v22, p2, v8

    const/16 v8, 0x9

    aput-wide v20, p2, v8

    const/16 v8, 0xa

    aput-wide v18, p2, v8

    const/16 v8, 0xb

    aput-wide v16, p2, v8

    const/16 v8, 0xc

    aput-wide v14, p2, v8

    const/16 v8, 0xd

    aput-wide v12, p2, v8

    const/16 v8, 0xe

    aput-wide v10, p2, v8

    const/16 v8, 0xf

    aput-wide v6, p2, v8

    return-void
.end method

.method encryptBlock([J[J)V
    .locals 60

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish1024Cipher;->kw:[J

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish1024Cipher;->t:[J

    move-object/from16 v40, v0

    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$300()[I

    move-result-object v41

    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$100()[I

    move-result-object v42

    array-length v6, v7

    const/16 v8, 0x21

    if-eq v6, v8, :cond_0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    :cond_0
    move-object/from16 v0, v40

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

    aget-wide v16, p1, v6

    const/4 v6, 0x5

    aget-wide v18, p1, v6

    const/4 v6, 0x6

    aget-wide v20, p1, v6

    const/4 v6, 0x7

    aget-wide v22, p1, v6

    const/16 v6, 0x8

    aget-wide v44, p1, v6

    const/16 v6, 0x9

    aget-wide v46, p1, v6

    const/16 v6, 0xa

    aget-wide v48, p1, v6

    const/16 v6, 0xb

    aget-wide v50, p1, v6

    const/16 v6, 0xc

    aget-wide v52, p1, v6

    const/16 v6, 0xd

    aget-wide v54, p1, v6

    const/16 v6, 0xe

    aget-wide v56, p1, v6

    const/16 v6, 0xf

    aget-wide v58, p1, v6

    const/4 v6, 0x0

    aget-wide v24, v7, v6

    add-long v38, v8, v24

    const/4 v6, 0x1

    aget-wide v8, v7, v6

    add-long v36, v10, v8

    const/4 v6, 0x2

    aget-wide v8, v7, v6

    add-long v34, v12, v8

    const/4 v6, 0x3

    aget-wide v8, v7, v6

    add-long v32, v14, v8

    const/4 v6, 0x4

    aget-wide v8, v7, v6

    add-long v30, v16, v8

    const/4 v6, 0x5

    aget-wide v8, v7, v6

    add-long v28, v18, v8

    const/4 v6, 0x6

    aget-wide v8, v7, v6

    add-long v26, v20, v8

    const/4 v6, 0x7

    aget-wide v8, v7, v6

    add-long v24, v22, v8

    const/16 v6, 0x8

    aget-wide v8, v7, v6

    add-long v22, v44, v8

    const/16 v6, 0x9

    aget-wide v8, v7, v6

    add-long v20, v46, v8

    const/16 v6, 0xa

    aget-wide v8, v7, v6

    add-long v18, v48, v8

    const/16 v6, 0xb

    aget-wide v8, v7, v6

    add-long v16, v50, v8

    const/16 v6, 0xc

    aget-wide v8, v7, v6

    add-long v14, v52, v8

    const/16 v6, 0xd

    aget-wide v8, v7, v6

    const/4 v6, 0x0

    aget-wide v10, v40, v6

    add-long/2addr v8, v10

    add-long v12, v54, v8

    const/16 v6, 0xe

    aget-wide v8, v7, v6

    const/4 v6, 0x1

    aget-wide v10, v40, v6

    add-long/2addr v8, v10

    add-long v10, v56, v8

    const/16 v6, 0xf

    aget-wide v8, v7, v6

    add-long v8, v8, v58

    const/4 v6, 0x1

    :goto_0
    const/16 v43, 0x14

    move/from16 v0, v43

    if-ge v6, v0, :cond_2

    aget v43, v41, v6

    aget v44, v42, v6

    const/16 v45, 0x18

    add-long v38, v38, v36

    move-wide/from16 v0, v36

    move/from16 v2, v45

    move-wide/from16 v3, v38

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v36

    const/16 v45, 0xd

    add-long v34, v34, v32

    move-wide/from16 v0, v32

    move/from16 v2, v45

    move-wide/from16 v3, v34

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v32

    const/16 v45, 0x8

    add-long v30, v30, v28

    move-wide/from16 v0, v28

    move/from16 v2, v45

    move-wide/from16 v3, v30

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v28

    const/16 v45, 0x2f

    add-long v26, v26, v24

    move-wide/from16 v0, v24

    move/from16 v2, v45

    move-wide/from16 v3, v26

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v24

    const/16 v45, 0x8

    add-long v22, v22, v20

    move-wide/from16 v0, v20

    move/from16 v2, v45

    move-wide/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v20

    const/16 v45, 0x11

    add-long v18, v18, v16

    move-wide/from16 v0, v16

    move/from16 v2, v45

    move-wide/from16 v3, v18

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v16

    const/16 v45, 0x16

    add-long/2addr v14, v12

    move/from16 v0, v45

    invoke-static {v12, v13, v0, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v12

    const/16 v45, 0x25

    add-long/2addr v10, v8

    move/from16 v0, v45

    invoke-static {v8, v9, v0, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    const/16 v45, 0x26

    add-long v38, v38, v20

    move-wide/from16 v0, v20

    move/from16 v2, v45

    move-wide/from16 v3, v38

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v20

    const/16 v45, 0x13

    add-long v34, v34, v12

    move/from16 v0, v45

    move-wide/from16 v1, v34

    invoke-static {v12, v13, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v12

    const/16 v45, 0xa

    add-long v26, v26, v16

    move-wide/from16 v0, v16

    move/from16 v2, v45

    move-wide/from16 v3, v26

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v16

    const/16 v45, 0x37

    add-long v30, v30, v8

    move/from16 v0, v45

    move-wide/from16 v1, v30

    invoke-static {v8, v9, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    const/16 v45, 0x31

    add-long v18, v18, v24

    move-wide/from16 v0, v24

    move/from16 v2, v45

    move-wide/from16 v3, v18

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v24

    const/16 v45, 0x12

    add-long v14, v14, v32

    move-wide/from16 v0, v32

    move/from16 v2, v45

    invoke-static {v0, v1, v2, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v32

    const/16 v45, 0x17

    add-long v10, v10, v28

    move-wide/from16 v0, v28

    move/from16 v2, v45

    invoke-static {v0, v1, v2, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v28

    const/16 v45, 0x34

    add-long v22, v22, v36

    move-wide/from16 v0, v36

    move/from16 v2, v45

    move-wide/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v36

    const/16 v45, 0x21

    add-long v38, v38, v24

    move-wide/from16 v0, v24

    move/from16 v2, v45

    move-wide/from16 v3, v38

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v24

    const/16 v45, 0x4

    add-long v34, v34, v28

    move-wide/from16 v0, v28

    move/from16 v2, v45

    move-wide/from16 v3, v34

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v28

    const/16 v45, 0x33

    add-long v30, v30, v32

    move-wide/from16 v0, v32

    move/from16 v2, v45

    move-wide/from16 v3, v30

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v32

    const/16 v45, 0xd

    add-long v26, v26, v36

    move-wide/from16 v0, v36

    move/from16 v2, v45

    move-wide/from16 v3, v26

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v36

    const/16 v45, 0x22

    add-long/2addr v14, v8

    move/from16 v0, v45

    invoke-static {v8, v9, v0, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    const/16 v45, 0x29

    add-long/2addr v10, v12

    move/from16 v0, v45

    invoke-static {v12, v13, v0, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v12

    const/16 v45, 0x3b

    add-long v22, v22, v16

    move-wide/from16 v0, v16

    move/from16 v2, v45

    move-wide/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v16

    const/16 v45, 0x11

    add-long v18, v18, v20

    move-wide/from16 v0, v20

    move/from16 v2, v45

    move-wide/from16 v3, v18

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v20

    const/16 v45, 0x5

    add-long v38, v38, v8

    move/from16 v0, v45

    move-wide/from16 v1, v38

    invoke-static {v8, v9, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    const/16 v45, 0x14

    add-long v34, v34, v16

    move-wide/from16 v0, v16

    move/from16 v2, v45

    move-wide/from16 v3, v34

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v16

    const/16 v45, 0x30

    add-long v26, v26, v12

    move/from16 v0, v45

    move-wide/from16 v1, v26

    invoke-static {v12, v13, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v12

    const/16 v45, 0x29

    add-long v30, v30, v20

    move-wide/from16 v0, v20

    move/from16 v2, v45

    move-wide/from16 v3, v30

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v20

    const/16 v45, 0x2f

    add-long v10, v10, v36

    move-wide/from16 v0, v36

    move/from16 v2, v45

    invoke-static {v0, v1, v2, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v36

    const/16 v45, 0x1c

    add-long v22, v22, v28

    move-wide/from16 v0, v28

    move/from16 v2, v45

    move-wide/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v28

    const/16 v45, 0x10

    add-long v18, v18, v32

    move-wide/from16 v0, v32

    move/from16 v2, v45

    move-wide/from16 v3, v18

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v32

    const/16 v45, 0x19

    add-long v14, v14, v24

    move-wide/from16 v0, v24

    move/from16 v2, v45

    invoke-static {v0, v1, v2, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v24

    aget-wide v46, v7, v43

    add-long v38, v38, v46

    add-int/lit8 v45, v43, 0x1

    aget-wide v46, v7, v45

    add-long v36, v36, v46

    add-int/lit8 v45, v43, 0x2

    aget-wide v46, v7, v45

    add-long v34, v34, v46

    add-int/lit8 v45, v43, 0x3

    aget-wide v46, v7, v45

    add-long v32, v32, v46

    add-int/lit8 v45, v43, 0x4

    aget-wide v46, v7, v45

    add-long v30, v30, v46

    add-int/lit8 v45, v43, 0x5

    aget-wide v46, v7, v45

    add-long v28, v28, v46

    add-int/lit8 v45, v43, 0x6

    aget-wide v46, v7, v45

    add-long v26, v26, v46

    add-int/lit8 v45, v43, 0x7

    aget-wide v46, v7, v45

    add-long v24, v24, v46

    add-int/lit8 v45, v43, 0x8

    aget-wide v46, v7, v45

    add-long v22, v22, v46

    add-int/lit8 v45, v43, 0x9

    aget-wide v46, v7, v45

    add-long v20, v20, v46

    add-int/lit8 v45, v43, 0xa

    aget-wide v46, v7, v45

    add-long v18, v18, v46

    add-int/lit8 v45, v43, 0xb

    aget-wide v46, v7, v45

    add-long v16, v16, v46

    add-int/lit8 v45, v43, 0xc

    aget-wide v46, v7, v45

    add-long v14, v14, v46

    add-int/lit8 v45, v43, 0xd

    aget-wide v46, v7, v45

    aget-wide v48, v40, v44

    add-long v46, v46, v48

    add-long v12, v12, v46

    add-int/lit8 v45, v43, 0xe

    aget-wide v46, v7, v45

    add-int/lit8 v45, v44, 0x1

    aget-wide v48, v40, v45

    add-long v46, v46, v48

    add-long v10, v10, v46

    add-int/lit8 v45, v43, 0xf

    aget-wide v46, v7, v45

    int-to-long v0, v6

    move-wide/from16 v48, v0

    add-long v46, v46, v48

    add-long v8, v8, v46

    const/16 v45, 0x29

    add-long v38, v38, v36

    move-wide/from16 v0, v36

    move/from16 v2, v45

    move-wide/from16 v3, v38

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v36

    const/16 v45, 0x9

    add-long v34, v34, v32

    move-wide/from16 v0, v32

    move/from16 v2, v45

    move-wide/from16 v3, v34

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v32

    const/16 v45, 0x25

    add-long v30, v30, v28

    move-wide/from16 v0, v28

    move/from16 v2, v45

    move-wide/from16 v3, v30

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v28

    const/16 v45, 0x1f

    add-long v26, v26, v24

    move-wide/from16 v0, v24

    move/from16 v2, v45

    move-wide/from16 v3, v26

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v24

    const/16 v45, 0xc

    add-long v22, v22, v20

    move-wide/from16 v0, v20

    move/from16 v2, v45

    move-wide/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v20

    const/16 v45, 0x2f

    add-long v18, v18, v16

    move-wide/from16 v0, v16

    move/from16 v2, v45

    move-wide/from16 v3, v18

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v16

    const/16 v45, 0x2c

    add-long/2addr v14, v12

    move/from16 v0, v45

    invoke-static {v12, v13, v0, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v12

    const/16 v45, 0x1e

    add-long/2addr v10, v8

    move/from16 v0, v45

    invoke-static {v8, v9, v0, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    const/16 v45, 0x10

    add-long v38, v38, v20

    move-wide/from16 v0, v20

    move/from16 v2, v45

    move-wide/from16 v3, v38

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v20

    const/16 v45, 0x22

    add-long v34, v34, v12

    move/from16 v0, v45

    move-wide/from16 v1, v34

    invoke-static {v12, v13, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v12

    const/16 v45, 0x38

    add-long v26, v26, v16

    move-wide/from16 v0, v16

    move/from16 v2, v45

    move-wide/from16 v3, v26

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v16

    const/16 v45, 0x33

    add-long v30, v30, v8

    move/from16 v0, v45

    move-wide/from16 v1, v30

    invoke-static {v8, v9, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    const/16 v45, 0x4

    add-long v18, v18, v24

    move-wide/from16 v0, v24

    move/from16 v2, v45

    move-wide/from16 v3, v18

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v24

    const/16 v45, 0x35

    add-long v14, v14, v32

    move-wide/from16 v0, v32

    move/from16 v2, v45

    invoke-static {v0, v1, v2, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v32

    const/16 v45, 0x2a

    add-long v10, v10, v28

    move-wide/from16 v0, v28

    move/from16 v2, v45

    invoke-static {v0, v1, v2, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v28

    const/16 v45, 0x29

    add-long v22, v22, v36

    move-wide/from16 v0, v36

    move/from16 v2, v45

    move-wide/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v36

    const/16 v45, 0x1f

    add-long v38, v38, v24

    move-wide/from16 v0, v24

    move/from16 v2, v45

    move-wide/from16 v3, v38

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v24

    const/16 v45, 0x2c

    add-long v34, v34, v28

    move-wide/from16 v0, v28

    move/from16 v2, v45

    move-wide/from16 v3, v34

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v28

    const/16 v45, 0x2f

    add-long v30, v30, v32

    move-wide/from16 v0, v32

    move/from16 v2, v45

    move-wide/from16 v3, v30

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v32

    const/16 v45, 0x2e

    add-long v26, v26, v36

    move-wide/from16 v0, v36

    move/from16 v2, v45

    move-wide/from16 v3, v26

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v36

    const/16 v45, 0x13

    add-long/2addr v14, v8

    move/from16 v0, v45

    invoke-static {v8, v9, v0, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    const/16 v45, 0x2a

    add-long/2addr v10, v12

    move/from16 v0, v45

    invoke-static {v12, v13, v0, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v12

    const/16 v45, 0x2c

    add-long v22, v22, v16

    move-wide/from16 v0, v16

    move/from16 v2, v45

    move-wide/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v16

    const/16 v45, 0x19

    add-long v18, v18, v20

    move-wide/from16 v0, v20

    move/from16 v2, v45

    move-wide/from16 v3, v18

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v20

    const/16 v45, 0x9

    add-long v38, v38, v8

    move/from16 v0, v45

    move-wide/from16 v1, v38

    invoke-static {v8, v9, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    const/16 v45, 0x30

    add-long v34, v34, v16

    move-wide/from16 v0, v16

    move/from16 v2, v45

    move-wide/from16 v3, v34

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v16

    const/16 v45, 0x23

    add-long v26, v26, v12

    move/from16 v0, v45

    move-wide/from16 v1, v26

    invoke-static {v12, v13, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v12

    const/16 v45, 0x34

    add-long v30, v30, v20

    move-wide/from16 v0, v20

    move/from16 v2, v45

    move-wide/from16 v3, v30

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v20

    const/16 v45, 0x17

    add-long v10, v10, v36

    move-wide/from16 v0, v36

    move/from16 v2, v45

    invoke-static {v0, v1, v2, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v36

    const/16 v45, 0x1f

    add-long v22, v22, v28

    move-wide/from16 v0, v28

    move/from16 v2, v45

    move-wide/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v28

    const/16 v45, 0x25

    add-long v18, v18, v32

    move-wide/from16 v0, v32

    move/from16 v2, v45

    move-wide/from16 v3, v18

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v32

    const/16 v45, 0x14

    add-long v14, v14, v24

    move-wide/from16 v0, v24

    move/from16 v2, v45

    invoke-static {v0, v1, v2, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v24

    add-int/lit8 v45, v43, 0x1

    aget-wide v46, v7, v45

    add-long v38, v38, v46

    add-int/lit8 v45, v43, 0x2

    aget-wide v46, v7, v45

    add-long v36, v36, v46

    add-int/lit8 v45, v43, 0x3

    aget-wide v46, v7, v45

    add-long v34, v34, v46

    add-int/lit8 v45, v43, 0x4

    aget-wide v46, v7, v45

    add-long v32, v32, v46

    add-int/lit8 v45, v43, 0x5

    aget-wide v46, v7, v45

    add-long v30, v30, v46

    add-int/lit8 v45, v43, 0x6

    aget-wide v46, v7, v45

    add-long v28, v28, v46

    add-int/lit8 v45, v43, 0x7

    aget-wide v46, v7, v45

    add-long v26, v26, v46

    add-int/lit8 v45, v43, 0x8

    aget-wide v46, v7, v45

    add-long v24, v24, v46

    add-int/lit8 v45, v43, 0x9

    aget-wide v46, v7, v45

    add-long v22, v22, v46

    add-int/lit8 v45, v43, 0xa

    aget-wide v46, v7, v45

    add-long v20, v20, v46

    add-int/lit8 v45, v43, 0xb

    aget-wide v46, v7, v45

    add-long v18, v18, v46

    add-int/lit8 v45, v43, 0xc

    aget-wide v46, v7, v45

    add-long v16, v16, v46

    add-int/lit8 v45, v43, 0xd

    aget-wide v46, v7, v45

    add-long v14, v14, v46

    add-int/lit8 v45, v43, 0xe

    aget-wide v46, v7, v45

    add-int/lit8 v45, v44, 0x1

    aget-wide v48, v40, v45

    add-long v46, v46, v48

    add-long v12, v12, v46

    add-int/lit8 v45, v43, 0xf

    aget-wide v46, v7, v45

    add-int/lit8 v44, v44, 0x2

    aget-wide v44, v40, v44

    add-long v44, v44, v46

    add-long v10, v10, v44

    add-int/lit8 v43, v43, 0x10

    aget-wide v44, v7, v43

    int-to-long v0, v6

    move-wide/from16 v46, v0

    add-long v44, v44, v46

    const-wide/16 v46, 0x1

    add-long v44, v44, v46

    add-long v8, v8, v44

    add-int/lit8 v6, v6, 0x2

    goto/16 :goto_0

    :cond_2
    const/4 v6, 0x0

    aput-wide v38, p2, v6

    const/4 v6, 0x1

    aput-wide v36, p2, v6

    const/4 v6, 0x2

    aput-wide v34, p2, v6

    const/4 v6, 0x3

    aput-wide v32, p2, v6

    const/4 v6, 0x4

    aput-wide v30, p2, v6

    const/4 v6, 0x5

    aput-wide v28, p2, v6

    const/4 v6, 0x6

    aput-wide v26, p2, v6

    const/4 v6, 0x7

    aput-wide v24, p2, v6

    const/16 v6, 0x8

    aput-wide v22, p2, v6

    const/16 v6, 0x9

    aput-wide v20, p2, v6

    const/16 v6, 0xa

    aput-wide v18, p2, v6

    const/16 v6, 0xb

    aput-wide v16, p2, v6

    const/16 v6, 0xc

    aput-wide v14, p2, v6

    const/16 v6, 0xd

    aput-wide v12, p2, v6

    const/16 v6, 0xe

    aput-wide v10, p2, v6

    const/16 v6, 0xf

    aput-wide v8, p2, v6

    return-void
.end method
