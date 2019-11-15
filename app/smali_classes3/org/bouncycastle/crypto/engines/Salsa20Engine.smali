.class public Lorg/bouncycastle/crypto/engines/Salsa20Engine;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/SkippingStreamCipher;


# static fields
.field public static final DEFAULT_ROUNDS:I = 0x14

.field private static final STATE_SIZE:I = 0x10

.field protected static final sigma:[B

.field protected static final tau:[B


# instance fields
.field private cW0:I

.field private cW1:I

.field private cW2:I

.field protected engineState:[I

.field private index:I

.field private initialised:Z

.field private keyStream:[B

.field protected rounds:I

.field protected x:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "expand 32-byte k"

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->sigma:[B

    const-string v0, "expand 16-byte k"

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->tau:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    const/16 v2, 0x10

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    new-array v0, v2, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    new-array v0, v2, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->initialised:Z

    if-lez p1, :cond_0

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'rounds\' must be a positive, even number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rounds:I

    return-void
.end method

.method private limitExceeded()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW0:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW0:I

    if-nez v1, :cond_0

    iget v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW1:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW1:I

    if-nez v1, :cond_0

    iget v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW2:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW2:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private limitExceeded(I)Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW0:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW0:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW0:I

    if-ge v1, p1, :cond_0

    iget v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW0:I

    if-ltz v1, :cond_0

    iget v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW1:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW1:I

    if-nez v1, :cond_0

    iget v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW2:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW2:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private resetLimitCounter()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW0:I

    iput v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW1:I

    iput v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->cW2:I

    return-void
.end method

.method protected static rotl(II)I
    .locals 2

    shl-int v0, p0, p1

    neg-int v1, p1

    ushr-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static salsaCore(I[I[I)V
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

    add-int v17, v16, v4

    const/16 v18, 0x7

    invoke-static/range {v17 .. v18}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v17

    xor-int v12, v12, v17

    add-int v17, v12, v16

    const/16 v18, 0x9

    invoke-static/range {v17 .. v18}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v17

    xor-int v8, v8, v17

    add-int v17, v8, v12

    const/16 v18, 0xd

    invoke-static/range {v17 .. v18}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v17

    xor-int v4, v4, v17

    add-int v17, v4, v8

    const/16 v18, 0x12

    invoke-static/range {v17 .. v18}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v17

    xor-int v16, v16, v17

    add-int v17, v11, v15

    const/16 v18, 0x7

    invoke-static/range {v17 .. v18}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v17

    xor-int v7, v7, v17

    add-int v17, v7, v11

    const/16 v18, 0x9

    invoke-static/range {v17 .. v18}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v17

    xor-int v3, v3, v17

    add-int v17, v3, v7

    const/16 v18, 0xd

    invoke-static/range {v17 .. v18}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v17

    xor-int v15, v15, v17

    add-int v17, v15, v3

    const/16 v18, 0x12

    invoke-static/range {v17 .. v18}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v17

    xor-int v11, v11, v17

    add-int v17, v6, v10

    const/16 v18, 0x7

    invoke-static/range {v17 .. v18}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v17

    xor-int v2, v2, v17

    add-int v17, v2, v6

    const/16 v18, 0x9

    invoke-static/range {v17 .. v18}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v17

    xor-int v14, v14, v17

    add-int v17, v14, v2

    const/16 v18, 0xd

    invoke-static/range {v17 .. v18}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v17

    xor-int v10, v10, v17

    add-int v17, v10, v14

    const/16 v18, 0x12

    invoke-static/range {v17 .. v18}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v17

    xor-int v6, v6, v17

    add-int v17, v1, v5

    const/16 v18, 0x7

    invoke-static/range {v17 .. v18}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v17

    xor-int v13, v13, v17

    add-int v17, v13, v1

    const/16 v18, 0x9

    invoke-static/range {v17 .. v18}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v17

    xor-int v9, v9, v17

    add-int v17, v9, v13

    const/16 v18, 0xd

    invoke-static/range {v17 .. v18}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v17

    xor-int v5, v5, v17

    add-int v17, v5, v9

    const/16 v18, 0x12

    invoke-static/range {v17 .. v18}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v17

    xor-int v1, v1, v17

    add-int v17, v16, v13

    const/16 v18, 0x7

    invoke-static/range {v17 .. v18}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v17

    xor-int v15, v15, v17

    add-int v17, v15, v16

    const/16 v18, 0x9

    invoke-static/range {v17 .. v18}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v17

    xor-int v14, v14, v17

    add-int v17, v14, v15

    const/16 v18, 0xd

    invoke-static/range {v17 .. v18}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v17

    xor-int v13, v13, v17

    add-int v17, v13, v14

    const/16 v18, 0x12

    invoke-static/range {v17 .. v18}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v17

    xor-int v16, v16, v17

    add-int v17, v11, v12

    const/16 v18, 0x7

    invoke-static/range {v17 .. v18}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v17

    xor-int v10, v10, v17

    add-int v17, v10, v11

    const/16 v18, 0x9

    invoke-static/range {v17 .. v18}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v17

    xor-int v9, v9, v17

    add-int v17, v9, v10

    const/16 v18, 0xd

    invoke-static/range {v17 .. v18}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v17

    xor-int v12, v12, v17

    add-int v17, v12, v9

    const/16 v18, 0x12

    invoke-static/range {v17 .. v18}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v17

    xor-int v11, v11, v17

    add-int v17, v6, v7

    const/16 v18, 0x7

    invoke-static/range {v17 .. v18}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v17

    xor-int v5, v5, v17

    add-int v17, v5, v6

    const/16 v18, 0x9

    invoke-static/range {v17 .. v18}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v17

    xor-int v8, v8, v17

    add-int v17, v8, v5

    const/16 v18, 0xd

    invoke-static/range {v17 .. v18}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v17

    xor-int v7, v7, v17

    add-int v17, v7, v8

    const/16 v18, 0x12

    invoke-static/range {v17 .. v18}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v17

    xor-int v6, v6, v17

    add-int v17, v1, v2

    const/16 v18, 0x7

    invoke-static/range {v17 .. v18}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v17

    xor-int v4, v4, v17

    add-int v17, v4, v1

    const/16 v18, 0x9

    invoke-static/range {v17 .. v18}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v17

    xor-int v3, v3, v17

    add-int v17, v3, v4

    const/16 v18, 0xd

    invoke-static/range {v17 .. v18}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v17

    xor-int v2, v2, v17

    add-int v17, v2, v3

    const/16 v18, 0x12

    invoke-static/range {v17 .. v18}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v17

    xor-int v1, v1, v17

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

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v1, 0x8

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    if-nez v2, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v1, 0x9

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    :cond_0
    return-void
.end method

.method protected advanceCounter(J)V
    .locals 7

    const/16 v5, 0x9

    const/16 v4, 0x8

    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v0, v0

    long-to-int v1, p1

    if-lez v0, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    aget v3, v2, v5

    add-int/2addr v0, v3

    aput v0, v2, v5

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    aget v0, v0, v4

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    aget v3, v2, v4

    add-int/2addr v1, v3

    aput v1, v2, v4

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    aget v1, v1, v4

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    aget v1, v0, v5

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v5

    :cond_1
    return-void
.end method

.method protected generateKeyStream([B)V
    .locals 3

    iget v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rounds:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->salsaCore(I[I[I)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I[BI)V

    return-void
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 3

    const-string v0, "Salsa20"

    iget v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rounds:I

    const/16 v2, 0x14

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->rounds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected getCounter()J
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v1, 0x9

    aget v0, v0, v1

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v3, 0x8

    aget v2, v2, v3

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method protected getNonceSize()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public getPosition()J
    .locals 4

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->getCounter()J

    move-result-wide v0

    const-wide/16 v2, 0x40

    mul-long/2addr v0, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 3

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Init parameters must include an IV"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v0, v1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->getNonceSize()I

    move-result v2

    if-eq v0, v2, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires exactly "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->getNonceSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes of IV"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->initialised:Z

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " KeyParameter can not be null for first initialisation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->setKey([B[B)V

    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->reset()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->initialised:Z

    return-void

    :cond_4
    instance-of v2, v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v2, :cond_5

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->setKey([B[B)V

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Init parameters must contain a KeyParameter (or null for re-init)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processBytes([BII[BI)I
    .locals 4

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->initialised:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not initialised"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int v0, p5, p3

    array-length v1, p4

    if-le v0, v1, :cond_2

    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-direct {p0, p3}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->limitExceeded(I)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lorg/bouncycastle/crypto/MaxBytesExceededException;

    const-string v1, "2^70 byte limit per IV would be exceeded; Change IV"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/MaxBytesExceededException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_5

    add-int v1, v0, p5

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    iget v3, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    aget-byte v2, v2, v3

    add-int v3, v0, p2

    aget-byte v3, p1, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    add-int/lit8 v1, v1, 0x1

    and-int/lit8 v1, v1, 0x3f

    iput v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->advanceCounter()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->generateKeyStream([B)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return p3
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->resetLimitCounter()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->resetCounter()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->generateKeyStream([B)V

    return-void
.end method

.method protected resetCounter()V
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v1, 0x8

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v3, 0x9

    const/4 v4, 0x0

    aput v4, v2, v3

    aput v4, v0, v1

    return-void
.end method

.method protected retreatCounter()V
    .locals 4

    const/16 v3, 0x9

    const/16 v2, 0x8

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    aget v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    aget v0, v0, v3

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to reduce counter past zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    aget v1, v0, v2

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, v2

    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, v3

    :cond_1
    return-void
.end method

.method protected retreatCounter(J)V
    .locals 11

    const/16 v7, 0x8

    const-wide v8, 0xffffffffL

    const/16 v6, 0x9

    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v0, v0

    long-to-int v1, p1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    aget v2, v2, v6

    int-to-long v2, v2

    and-long/2addr v2, v8

    int-to-long v4, v0

    and-long/2addr v4, v8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    aget v3, v2, v6

    sub-int v0, v3, v0

    aput v0, v2, v6

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    aget v0, v0, v7

    int-to-long v2, v0

    and-long/2addr v2, v8

    int-to-long v4, v1

    and-long/2addr v4, v8

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

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
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    aget v0, v0, v6

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    aget v2, v0, v6

    add-int/lit8 v2, v2, -0x1

    aput v2, v0, v6

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

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

.method public returnByte(B)B
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->limitExceeded()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/MaxBytesExceededException;

    const-string v1, "2^70 byte limit per IV; Change IV"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/MaxBytesExceededException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    iget v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    aget-byte v0, v0, v1

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    iget v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    add-int/lit8 v1, v1, 0x1

    and-int/lit8 v1, v1, 0x3f

    iput v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->advanceCounter()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->generateKeyStream([B)V

    :cond_1
    return v0
.end method

.method public seekTo(J)J
    .locals 3

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->reset()V

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected setKey([B[B)V
    .locals 9

    const/16 v0, 0x10

    const/16 v8, 0x8

    const/16 v7, 0xc

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

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->getAlgorithmName()Ljava/lang/String;

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
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/4 v3, 0x1

    invoke-static {p1, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, v2, v3

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/4 v3, 0x2

    invoke-static {p1, v6}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, v2, v3

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/4 v3, 0x3

    invoke-static {p1, v8}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, v2, v3

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    invoke-static {p1, v7}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v3

    aput v3, v2, v6

    array-length v2, p1

    const/16 v3, 0x20

    if-ne v2, v3, :cond_2

    sget-object v2, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->sigma:[B

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v4, 0xb

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v5

    aput v5, v3, v4

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    add-int/lit8 v4, v0, 0x4

    invoke-static {p1, v4}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, v3, v7

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v4, 0xd

    add-int/lit8 v5, v0, 0x8

    invoke-static {p1, v5}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v5

    aput v5, v3, v4

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v4, 0xe

    add-int/lit8 v0, v0, 0xc

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v0

    aput v0, v3, v4

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    invoke-static {v2, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v3

    aput v3, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/4 v3, 0x5

    invoke-static {v2, v6}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, v0, v3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v3, 0xa

    invoke-static {v2, v8}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, v0, v3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v3, 0xf

    invoke-static {v2, v7}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v2

    aput v2, v0, v3

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/4 v2, 0x6

    invoke-static {p2, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    aput v1, v0, v2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/4 v1, 0x7

    invoke-static {p2, v6}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v2

    aput v2, v0, v1

    return-void

    :cond_2
    sget-object v0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->tau:[B

    move-object v2, v0

    move v0, v1

    goto :goto_0
.end method

.method public skip(J)J
    .locals 9

    const-wide/16 v2, 0x0

    const-wide/16 v6, 0x40

    cmp-long v0, p1, v2

    if-ltz v0, :cond_1

    cmp-long v0, p1, v6

    if-ltz v0, :cond_4

    div-long v0, p1, v6

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->advanceCounter(J)V

    mul-long/2addr v0, v6

    sub-long v0, p1, v0

    :goto_0
    iget v2, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    long-to-int v0, v0

    add-int/2addr v0, v3

    and-int/lit8 v0, v0, 0x3f

    iput v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    if-ge v0, v2, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->advanceCounter()V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->generateKeyStream([B)V

    return-wide p1

    :cond_1
    neg-long v0, p1

    cmp-long v4, v0, v6

    if-ltz v4, :cond_2

    div-long v4, v0, v6

    invoke-virtual {p0, v4, v5}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->retreatCounter(J)V

    mul-long/2addr v4, v6

    sub-long/2addr v0, v4

    :cond_2
    :goto_1
    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    iget v4, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->retreatCounter()V

    :cond_3
    iget v4, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    add-int/lit8 v4, v4, -0x1

    and-int/lit8 v4, v4, 0x3f

    iput v4, p0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->index:I

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    goto :goto_1

    :cond_4
    move-wide v0, p1

    goto :goto_0
.end method
