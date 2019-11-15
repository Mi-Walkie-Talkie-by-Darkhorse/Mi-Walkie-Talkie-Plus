.class public Lorg/bouncycastle/crypto/engines/ChaChaEngine;
.super Lorg/bouncycastle/crypto/engines/Salsa20Engine;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;-><init>(I)V

    return-void
.end method

.method public static chachaCore(I[I[I)V
    .locals 19

    move-object/from16 v0, p1

    array-length v1, v0

    const/16 v2, 0x10

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_0
    move-object/from16 v0, p2

    array-length v1, v0

    const/16 v2, 0x10

    if-eq v1, v2, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_1
    rem-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Number of rounds must be even"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const/4 v1, 0x0

    aget v16, p1, v1

    const/4 v1, 0x1

    aget v15, p1, v1

    const/4 v1, 0x2

    aget v14, p1, v1

    const/4 v1, 0x3

    aget v13, p1, v1

    const/4 v1, 0x4

    aget v12, p1, v1

    const/4 v1, 0x5

    aget v11, p1, v1

    const/4 v1, 0x6

    aget v10, p1, v1

    const/4 v1, 0x7

    aget v9, p1, v1

    const/16 v1, 0x8

    aget v8, p1, v1

    const/16 v1, 0x9

    aget v7, p1, v1

    const/16 v1, 0xa

    aget v6, p1, v1

    const/16 v1, 0xb

    aget v5, p1, v1

    const/16 v1, 0xc

    aget v4, p1, v1

    const/16 v1, 0xd

    aget v3, p1, v1

    const/16 v1, 0xe

    aget v2, p1, v1

    const/16 v1, 0xf

    aget v1, p1, v1

    :goto_0
    if-lez p0, :cond_3

    add-int v16, v16, v12

    xor-int v4, v4, v16

    const/16 v17, 0x10

    move/from16 v0, v17

    invoke-static {v4, v0}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v4

    add-int/2addr v8, v4

    xor-int/2addr v12, v8

    const/16 v17, 0xc

    move/from16 v0, v17

    invoke-static {v12, v0}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v12

    add-int v16, v16, v12

    xor-int v4, v4, v16

    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-static {v4, v0}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v4

    add-int/2addr v8, v4

    xor-int/2addr v12, v8

    const/16 v17, 0x7

    move/from16 v0, v17

    invoke-static {v12, v0}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v12

    add-int/2addr v15, v11

    xor-int/2addr v3, v15

    const/16 v17, 0x10

    move/from16 v0, v17

    invoke-static {v3, v0}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v3

    add-int/2addr v7, v3

    xor-int/2addr v11, v7

    const/16 v17, 0xc

    move/from16 v0, v17

    invoke-static {v11, v0}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v11

    add-int/2addr v15, v11

    xor-int/2addr v3, v15

    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-static {v3, v0}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v3

    add-int/2addr v7, v3

    xor-int/2addr v11, v7

    const/16 v17, 0x7

    move/from16 v0, v17

    invoke-static {v11, v0}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v11

    add-int/2addr v14, v10

    xor-int/2addr v2, v14

    const/16 v17, 0x10

    move/from16 v0, v17

    invoke-static {v2, v0}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v2

    add-int/2addr v6, v2

    xor-int/2addr v10, v6

    const/16 v17, 0xc

    move/from16 v0, v17

    invoke-static {v10, v0}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v10

    add-int/2addr v14, v10

    xor-int/2addr v2, v14

    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-static {v2, v0}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v2

    add-int/2addr v6, v2

    xor-int/2addr v10, v6

    const/16 v17, 0x7

    move/from16 v0, v17

    invoke-static {v10, v0}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v10

    add-int/2addr v13, v9

    xor-int/2addr v1, v13

    const/16 v17, 0x10

    move/from16 v0, v17

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v1

    add-int/2addr v5, v1

    xor-int/2addr v9, v5

    const/16 v17, 0xc

    move/from16 v0, v17

    invoke-static {v9, v0}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v9

    add-int/2addr v13, v9

    xor-int/2addr v1, v13

    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v1

    add-int/2addr v5, v1

    xor-int/2addr v9, v5

    const/16 v17, 0x7

    move/from16 v0, v17

    invoke-static {v9, v0}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v9

    add-int v16, v16, v11

    xor-int v1, v1, v16

    const/16 v17, 0x10

    move/from16 v0, v17

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v1

    add-int/2addr v6, v1

    xor-int/2addr v11, v6

    const/16 v17, 0xc

    move/from16 v0, v17

    invoke-static {v11, v0}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v11

    add-int v16, v16, v11

    xor-int v1, v1, v16

    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v1

    add-int/2addr v6, v1

    xor-int/2addr v11, v6

    const/16 v17, 0x7

    move/from16 v0, v17

    invoke-static {v11, v0}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v11

    add-int/2addr v15, v10

    xor-int/2addr v4, v15

    const/16 v17, 0x10

    move/from16 v0, v17

    invoke-static {v4, v0}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v4

    add-int/2addr v5, v4

    xor-int/2addr v10, v5

    const/16 v17, 0xc

    move/from16 v0, v17

    invoke-static {v10, v0}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v10

    add-int/2addr v15, v10

    xor-int/2addr v4, v15

    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-static {v4, v0}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v4

    add-int/2addr v5, v4

    xor-int/2addr v10, v5

    const/16 v17, 0x7

    move/from16 v0, v17

    invoke-static {v10, v0}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v10

    add-int/2addr v14, v9

    xor-int/2addr v3, v14

    const/16 v17, 0x10

    move/from16 v0, v17

    invoke-static {v3, v0}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v3

    add-int/2addr v8, v3

    xor-int/2addr v9, v8

    const/16 v17, 0xc

    move/from16 v0, v17

    invoke-static {v9, v0}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v9

    add-int/2addr v14, v9

    xor-int/2addr v3, v14

    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-static {v3, v0}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v3

    add-int/2addr v8, v3

    xor-int/2addr v9, v8

    const/16 v17, 0x7

    move/from16 v0, v17

    invoke-static {v9, v0}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v9

    add-int/2addr v13, v12

    xor-int/2addr v2, v13

    const/16 v17, 0x10

    move/from16 v0, v17

    invoke-static {v2, v0}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v2

    add-int/2addr v7, v2

    xor-int/2addr v12, v7

    const/16 v17, 0xc

    move/from16 v0, v17

    invoke-static {v12, v0}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v12

    add-int/2addr v13, v12

    xor-int/2addr v2, v13

    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-static {v2, v0}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v2

    add-int/2addr v7, v2

    xor-int/2addr v12, v7

    const/16 v17, 0x7

    move/from16 v0, v17

    invoke-static {v12, v0}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rotl(II)I

    move-result v12

    add-int/lit8 p0, p0, -0x2

    goto/16 :goto_0

    :cond_3
    const/16 v17, 0x0

    const/16 v18, 0x0

    aget v18, p1, v18

    add-int v16, v16, v18

    aput v16, p2, v17

    const/16 v16, 0x1

    const/16 v17, 0x1

    aget v17, p1, v17

    add-int v15, v15, v17

    aput v15, p2, v16

    const/4 v15, 0x2

    const/16 v16, 0x2

    aget v16, p1, v16

    add-int v14, v14, v16

    aput v14, p2, v15

    const/4 v14, 0x3

    const/4 v15, 0x3

    aget v15, p1, v15

    add-int/2addr v13, v15

    aput v13, p2, v14

    const/4 v13, 0x4

    const/4 v14, 0x4

    aget v14, p1, v14

    add-int/2addr v12, v14

    aput v12, p2, v13

    const/4 v12, 0x5

    const/4 v13, 0x5

    aget v13, p1, v13

    add-int/2addr v11, v13

    aput v11, p2, v12

    const/4 v11, 0x6

    const/4 v12, 0x6

    aget v12, p1, v12

    add-int/2addr v10, v12

    aput v10, p2, v11

    const/4 v10, 0x7

    const/4 v11, 0x7

    aget v11, p1, v11

    add-int/2addr v9, v11

    aput v9, p2, v10

    const/16 v9, 0x8

    const/16 v10, 0x8

    aget v10, p1, v10

    add-int/2addr v8, v10

    aput v8, p2, v9

    const/16 v8, 0x9

    const/16 v9, 0x9

    aget v9, p1, v9

    add-int/2addr v7, v9

    aput v7, p2, v8

    const/16 v7, 0xa

    const/16 v8, 0xa

    aget v8, p1, v8

    add-int/2addr v6, v8

    aput v6, p2, v7

    const/16 v6, 0xb

    const/16 v7, 0xb

    aget v7, p1, v7

    add-int/2addr v5, v7

    aput v5, p2, v6

    const/16 v5, 0xc

    const/16 v6, 0xc

    aget v6, p1, v6

    add-int/2addr v4, v6

    aput v4, p2, v5

    const/16 v4, 0xd

    const/16 v5, 0xd

    aget v5, p1, v5

    add-int/2addr v3, v5

    aput v3, p2, v4

    const/16 v3, 0xe

    const/16 v4, 0xe

    aget v4, p1, v4

    add-int/2addr v2, v4

    aput v2, p2, v3

    const/16 v2, 0xf

    const/16 v3, 0xf

    aget v3, p1, v3

    add-int/2addr v1, v3

    aput v1, p2, v2

    return-void
.end method


# virtual methods
.method protected advanceCounter()V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    const/16 v1, 0xc

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    if-nez v2, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    const/16 v1, 0xd

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    :cond_0
    return-void
.end method

.method protected advanceCounter(J)V
    .locals 7

    const/16 v5, 0xd

    const/16 v4, 0xc

    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v0, v0

    long-to-int v1, p1

    if-lez v0, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    aget v3, v2, v5

    add-int/2addr v0, v3

    aput v0, v2, v5

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    aget v0, v0, v4

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    aget v3, v2, v4

    add-int/2addr v1, v3

    aput v1, v2, v4

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    aget v1, v1, v4

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    aget v1, v0, v5

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v5

    :cond_1
    return-void
.end method

.method protected generateKeyStream([B)V
    .locals 3

    iget v0, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rounds:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->x:[I

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->chachaCore(I[I[I)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->x:[I

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I[BI)V

    return-void
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChaCha"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->rounds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCounter()J
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    const/16 v1, 0xd

    aget v0, v0, v1

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    const/16 v3, 0xc

    aget v2, v2, v3

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method protected resetCounter()V
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    const/16 v1, 0xc

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    const/16 v3, 0xd

    const/4 v4, 0x0

    aput v4, v2, v3

    aput v4, v0, v1

    return-void
.end method

.method protected retreatCounter()V
    .locals 4

    const/16 v3, 0xd

    const/16 v2, 0xc

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    aget v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    aget v0, v0, v3

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to reduce counter past zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    aget v1, v0, v2

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, v2

    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, v3

    :cond_1
    return-void
.end method

.method protected retreatCounter(J)V
    .locals 11

    const/16 v7, 0xc

    const-wide v8, 0xffffffffL

    const/16 v6, 0xd

    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v0, v0

    long-to-int v1, p1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    aget v2, v2, v6

    int-to-long v2, v2

    and-long/2addr v2, v8

    int-to-long v4, v0

    and-long/2addr v4, v8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    aget v3, v2, v6

    sub-int v0, v3, v0

    aput v0, v2, v6

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    aget v0, v0, v7

    int-to-long v2, v0

    and-long/2addr v2, v8

    int-to-long v4, v1

    and-long/2addr v4, v8

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    aget v2, v0, v7

    sub-int v1, v2, v1

    aput v1, v0, v7

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to reduce counter past zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    aget v0, v0, v6

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    aget v2, v0, v6

    add-int/lit8 v2, v2, -0x1

    aput v2, v0, v6

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    aget v2, v0, v7

    sub-int v1, v2, v1

    aput v1, v0, v7

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to reduce counter past zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setKey([B[B)V
    .locals 9

    const/16 v0, 0x10

    const/16 v8, 0xc

    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    array-length v2, p1

    if-eq v2, v0, :cond_0

    array-length v2, p1

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires 128 bit or 256 bit key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    invoke-static {p1, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v3

    aput v3, v2, v6

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    const/4 v3, 0x5

    invoke-static {p1, v6}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, v2, v3

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    const/4 v3, 0x6

    invoke-static {p1, v7}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, v2, v3

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    const/4 v3, 0x7

    invoke-static {p1, v8}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, v2, v3

    array-length v2, p1

    const/16 v3, 0x20

    if-ne v2, v3, :cond_2

    sget-object v2, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->sigma:[B

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, v3, v7

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    const/16 v4, 0x9

    add-int/lit8 v5, v0, 0x4

    invoke-static {p1, v5}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v5

    aput v5, v3, v4

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    const/16 v4, 0xa

    add-int/lit8 v5, v0, 0x8

    invoke-static {p1, v5}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v5

    aput v5, v3, v4

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    const/16 v4, 0xb

    add-int/lit8 v0, v0, 0xc

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v0

    aput v0, v3, v4

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    invoke-static {v2, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v3

    aput v3, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    const/4 v3, 0x1

    invoke-static {v2, v6}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, v0, v3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    const/4 v3, 0x2

    invoke-static {v2, v7}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, v0, v3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    const/4 v3, 0x3

    invoke-static {v2, v8}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v2

    aput v2, v0, v3

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    const/16 v2, 0xe

    invoke-static {p2, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    aput v1, v0, v2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->engineState:[I

    const/16 v1, 0xf

    invoke-static {p2, v6}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v2

    aput v2, v0, v1

    return-void

    :cond_2
    sget-object v0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->tau:[B

    move-object v2, v0

    move v0, v1

    goto :goto_0
.end method
