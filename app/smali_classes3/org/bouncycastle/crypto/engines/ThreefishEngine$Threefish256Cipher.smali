.class final Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish256Cipher;
.super Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/ThreefishEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Threefish256Cipher"
.end annotation


# static fields
.field private static final ROTATION_0_0:I = 0xe

.field private static final ROTATION_0_1:I = 0x10

.field private static final ROTATION_1_0:I = 0x34

.field private static final ROTATION_1_1:I = 0x39

.field private static final ROTATION_2_0:I = 0x17

.field private static final ROTATION_2_1:I = 0x28

.field private static final ROTATION_3_0:I = 0x5

.field private static final ROTATION_3_1:I = 0x25

.field private static final ROTATION_4_0:I = 0x19

.field private static final ROTATION_4_1:I = 0x21

.field private static final ROTATION_5_0:I = 0x2e

.field private static final ROTATION_5_1:I = 0xc

.field private static final ROTATION_6_0:I = 0x3a

.field private static final ROTATION_6_1:I = 0x16

.field private static final ROTATION_7_0:I = 0x20

.field private static final ROTATION_7_1:I = 0x20


# direct methods
.method public constructor <init>([J[J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;-><init>([J[J)V

    return-void
.end method


# virtual methods
.method decryptBlock([J[J)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish256Cipher;->kw:[J

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish256Cipher;->t:[J

    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$000()[I

    move-result-object v13

    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$100()[I

    move-result-object v14

    array-length v2, v3

    const/16 v4, 0x9

    if-eq v2, v4, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_0
    array-length v2, v12

    const/4 v4, 0x5

    if-eq v2, v4, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_1
    const/4 v2, 0x0

    aget-wide v10, p1, v2

    const/4 v2, 0x1

    aget-wide v8, p1, v2

    const/4 v2, 0x2

    aget-wide v6, p1, v2

    const/4 v2, 0x3

    aget-wide v4, p1, v2

    const/16 v2, 0x11

    :goto_0
    const/4 v15, 0x1

    if-lt v2, v15, :cond_2

    aget v15, v13, v2

    aget v16, v14, v2

    add-int/lit8 v17, v15, 0x1

    aget-wide v18, v3, v17

    sub-long v10, v10, v18

    add-int/lit8 v17, v15, 0x2

    aget-wide v18, v3, v17

    add-int/lit8 v17, v16, 0x1

    aget-wide v20, v12, v17

    add-long v18, v18, v20

    sub-long v8, v8, v18

    add-int/lit8 v17, v15, 0x3

    aget-wide v18, v3, v17

    add-int/lit8 v17, v16, 0x2

    aget-wide v20, v12, v17

    add-long v18, v18, v20

    sub-long v6, v6, v18

    add-int/lit8 v17, v15, 0x4

    aget-wide v18, v3, v17

    int-to-long v0, v2

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    const-wide/16 v20, 0x1

    add-long v18, v18, v20

    sub-long v4, v4, v18

    const/16 v17, 0x20

    move/from16 v0, v17

    invoke-static {v4, v5, v0, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v10, v4

    const/16 v17, 0x20

    move/from16 v0, v17

    invoke-static {v8, v9, v0, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const/16 v17, 0x3a

    move/from16 v0, v17

    invoke-static {v8, v9, v0, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    sub-long/2addr v10, v8

    const/16 v17, 0x16

    move/from16 v0, v17

    invoke-static {v4, v5, v0, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v6, v4

    const/16 v17, 0x2e

    move/from16 v0, v17

    invoke-static {v4, v5, v0, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v10, v4

    const/16 v17, 0xc

    move/from16 v0, v17

    invoke-static {v8, v9, v0, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const/16 v17, 0x19

    move/from16 v0, v17

    invoke-static {v8, v9, v0, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    sub-long/2addr v10, v8

    const/16 v17, 0x21

    move/from16 v0, v17

    invoke-static {v4, v5, v0, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v6, v4

    aget-wide v18, v3, v15

    sub-long v10, v10, v18

    add-int/lit8 v17, v15, 0x1

    aget-wide v18, v3, v17

    aget-wide v20, v12, v16

    add-long v18, v18, v20

    sub-long v8, v8, v18

    add-int/lit8 v17, v15, 0x2

    aget-wide v18, v3, v17

    add-int/lit8 v16, v16, 0x1

    aget-wide v16, v12, v16

    add-long v16, v16, v18

    sub-long v6, v6, v16

    add-int/lit8 v15, v15, 0x3

    aget-wide v16, v3, v15

    int-to-long v0, v2

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    sub-long v4, v4, v16

    const/4 v15, 0x5

    invoke-static {v4, v5, v15, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v10, v4

    const/16 v15, 0x25

    invoke-static {v8, v9, v15, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const/16 v15, 0x17

    invoke-static {v8, v9, v15, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    sub-long/2addr v10, v8

    const/16 v15, 0x28

    invoke-static {v4, v5, v15, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v6, v4

    const/16 v15, 0x34

    invoke-static {v4, v5, v15, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v10, v4

    const/16 v15, 0x39

    invoke-static {v8, v9, v15, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const/16 v15, 0xe

    invoke-static {v8, v9, v15, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    sub-long/2addr v10, v8

    const/16 v15, 0x10

    invoke-static {v4, v5, v15, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v6, v4

    add-int/lit8 v2, v2, -0x2

    goto/16 :goto_0

    :cond_2
    const/4 v2, 0x0

    aget-wide v14, v3, v2

    sub-long/2addr v10, v14

    const/4 v2, 0x1

    aget-wide v14, v3, v2

    const/4 v2, 0x0

    aget-wide v16, v12, v2

    add-long v14, v14, v16

    sub-long/2addr v8, v14

    const/4 v2, 0x2

    aget-wide v14, v3, v2

    const/4 v2, 0x1

    aget-wide v12, v12, v2

    add-long/2addr v12, v14

    sub-long/2addr v6, v12

    const/4 v2, 0x3

    aget-wide v2, v3, v2

    sub-long v2, v4, v2

    const/4 v4, 0x0

    aput-wide v10, p2, v4

    const/4 v4, 0x1

    aput-wide v8, p2, v4

    const/4 v4, 0x2

    aput-wide v6, p2, v4

    const/4 v4, 0x3

    aput-wide v2, p2, v4

    return-void
.end method

.method encryptBlock([J[J)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish256Cipher;->kw:[J

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish256Cipher;->t:[J

    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$000()[I

    move-result-object v13

    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$100()[I

    move-result-object v14

    array-length v2, v3

    const/16 v4, 0x9

    if-eq v2, v4, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_0
    array-length v2, v12

    const/4 v4, 0x5

    if-eq v2, v4, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_1
    const/4 v2, 0x0

    aget-wide v4, p1, v2

    const/4 v2, 0x1

    aget-wide v6, p1, v2

    const/4 v2, 0x2

    aget-wide v16, p1, v2

    const/4 v2, 0x3

    aget-wide v18, p1, v2

    const/4 v2, 0x0

    aget-wide v8, v3, v2

    add-long v10, v4, v8

    const/4 v2, 0x1

    aget-wide v4, v3, v2

    const/4 v2, 0x0

    aget-wide v8, v12, v2

    add-long/2addr v4, v8

    add-long v8, v6, v4

    const/4 v2, 0x2

    aget-wide v4, v3, v2

    const/4 v2, 0x1

    aget-wide v6, v12, v2

    add-long/2addr v4, v6

    add-long v6, v16, v4

    const/4 v2, 0x3

    aget-wide v4, v3, v2

    add-long v4, v4, v18

    const/4 v2, 0x1

    :goto_0
    const/16 v15, 0x12

    if-ge v2, v15, :cond_2

    aget v15, v13, v2

    aget v16, v14, v2

    const/16 v17, 0xe

    add-long/2addr v10, v8

    move/from16 v0, v17

    invoke-static {v8, v9, v0, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    const/16 v17, 0x10

    add-long/2addr v6, v4

    move/from16 v0, v17

    invoke-static {v4, v5, v0, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    const/16 v17, 0x34

    add-long/2addr v10, v4

    move/from16 v0, v17

    invoke-static {v4, v5, v0, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    const/16 v17, 0x39

    add-long/2addr v6, v8

    move/from16 v0, v17

    invoke-static {v8, v9, v0, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    const/16 v17, 0x17

    add-long/2addr v10, v8

    move/from16 v0, v17

    invoke-static {v8, v9, v0, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    const/16 v17, 0x28

    add-long/2addr v6, v4

    move/from16 v0, v17

    invoke-static {v4, v5, v0, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    const/16 v17, 0x5

    add-long/2addr v10, v4

    move/from16 v0, v17

    invoke-static {v4, v5, v0, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    const/16 v17, 0x25

    add-long/2addr v6, v8

    move/from16 v0, v17

    invoke-static {v8, v9, v0, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    aget-wide v18, v3, v15

    add-long v10, v10, v18

    add-int/lit8 v17, v15, 0x1

    aget-wide v18, v3, v17

    aget-wide v20, v12, v16

    add-long v18, v18, v20

    add-long v8, v8, v18

    add-int/lit8 v17, v15, 0x2

    aget-wide v18, v3, v17

    add-int/lit8 v17, v16, 0x1

    aget-wide v20, v12, v17

    add-long v18, v18, v20

    add-long v6, v6, v18

    add-int/lit8 v17, v15, 0x3

    aget-wide v18, v3, v17

    int-to-long v0, v2

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    add-long v4, v4, v18

    const/16 v17, 0x19

    add-long/2addr v10, v8

    move/from16 v0, v17

    invoke-static {v8, v9, v0, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    const/16 v17, 0x21

    add-long/2addr v6, v4

    move/from16 v0, v17

    invoke-static {v4, v5, v0, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    const/16 v17, 0x2e

    add-long/2addr v10, v4

    move/from16 v0, v17

    invoke-static {v4, v5, v0, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    const/16 v17, 0xc

    add-long/2addr v6, v8

    move/from16 v0, v17

    invoke-static {v8, v9, v0, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    const/16 v17, 0x3a

    add-long/2addr v10, v8

    move/from16 v0, v17

    invoke-static {v8, v9, v0, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    const/16 v17, 0x16

    add-long/2addr v6, v4

    move/from16 v0, v17

    invoke-static {v4, v5, v0, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    const/16 v17, 0x20

    add-long/2addr v10, v4

    move/from16 v0, v17

    invoke-static {v4, v5, v0, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    const/16 v17, 0x20

    add-long/2addr v6, v8

    move/from16 v0, v17

    invoke-static {v8, v9, v0, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    add-int/lit8 v17, v15, 0x1

    aget-wide v18, v3, v17

    add-long v10, v10, v18

    add-int/lit8 v17, v15, 0x2

    aget-wide v18, v3, v17

    add-int/lit8 v17, v16, 0x1

    aget-wide v20, v12, v17

    add-long v18, v18, v20

    add-long v8, v8, v18

    add-int/lit8 v17, v15, 0x3

    aget-wide v18, v3, v17

    add-int/lit8 v16, v16, 0x2

    aget-wide v16, v12, v16

    add-long v16, v16, v18

    add-long v6, v6, v16

    add-int/lit8 v15, v15, 0x4

    aget-wide v16, v3, v15

    int-to-long v0, v2

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    const-wide/16 v18, 0x1

    add-long v16, v16, v18

    add-long v4, v4, v16

    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_0

    :cond_2
    const/4 v2, 0x0

    aput-wide v10, p2, v2

    const/4 v2, 0x1

    aput-wide v8, p2, v2

    const/4 v2, 0x2

    aput-wide v6, p2, v2

    const/4 v2, 0x3

    aput-wide v4, p2, v2

    return-void
.end method
