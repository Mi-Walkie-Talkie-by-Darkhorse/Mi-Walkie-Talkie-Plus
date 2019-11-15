.class public abstract Lorg/bouncycastle/math/raw/Mont256;
.super Ljava/lang/Object;


# static fields
.field private static final M:J = 0xffffffffL


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inverse32(I)I
    .locals 2

    mul-int v0, p0, p0

    rsub-int/lit8 v0, v0, 0x2

    mul-int/2addr v0, p0

    mul-int v1, p0, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int/2addr v0, v1

    mul-int v1, p0, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int/2addr v0, v1

    mul-int v1, p0, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int/2addr v0, v1

    return v0
.end method

.method public static multAdd([I[I[I[II)V
    .locals 26

    const/4 v5, 0x0

    const/4 v4, 0x0

    aget v4, p1, v4

    int-to-long v6, v4

    const-wide v8, 0xffffffffL

    and-long v10, v6, v8

    const/4 v4, 0x0

    move v8, v5

    move v5, v4

    :goto_0
    const/16 v4, 0x8

    if-ge v5, v4, :cond_1

    const/4 v4, 0x0

    aget v4, p2, v4

    int-to-long v6, v4

    const-wide v12, 0xffffffffL

    and-long/2addr v6, v12

    aget v4, p0, v5

    int-to-long v12, v4

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    mul-long v14, v12, v10

    const-wide v16, 0xffffffffL

    and-long v16, v16, v14

    add-long v6, v6, v16

    long-to-int v4, v6

    mul-int v4, v4, p4

    int-to-long v0, v4

    move-wide/from16 v16, v0

    const-wide v18, 0xffffffffL

    and-long v16, v16, v18

    const/4 v4, 0x0

    aget v4, p3, v4

    int-to-long v0, v4

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v18, v18, v20

    mul-long v18, v18, v16

    const-wide v20, 0xffffffffL

    and-long v20, v20, v18

    add-long v6, v6, v20

    const/16 v4, 0x20

    ushr-long/2addr v6, v4

    const/16 v4, 0x20

    ushr-long/2addr v14, v4

    add-long/2addr v6, v14

    const/16 v4, 0x20

    ushr-long v14, v18, v4

    add-long/2addr v6, v14

    const/4 v4, 0x1

    :goto_1
    const/16 v9, 0x8

    if-ge v4, v9, :cond_0

    aget v9, p1, v4

    int-to-long v14, v9

    const-wide v18, 0xffffffffL

    and-long v14, v14, v18

    mul-long/2addr v14, v12

    aget v9, p3, v4

    int-to-long v0, v9

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v18, v18, v20

    mul-long v18, v18, v16

    const-wide v20, 0xffffffffL

    and-long v20, v20, v14

    const-wide v22, 0xffffffffL

    and-long v22, v22, v18

    add-long v20, v20, v22

    aget v9, p2, v4

    int-to-long v0, v9

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v22, v22, v24

    add-long v20, v20, v22

    add-long v6, v6, v20

    add-int/lit8 v9, v4, -0x1

    long-to-int v0, v6

    move/from16 v20, v0

    aput v20, p2, v9

    const/16 v9, 0x20

    ushr-long/2addr v6, v9

    const/16 v9, 0x20

    ushr-long/2addr v14, v9

    add-long/2addr v6, v14

    const/16 v9, 0x20

    ushr-long v14, v18, v9

    add-long/2addr v6, v14

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    int-to-long v8, v8

    const-wide v12, 0xffffffffL

    and-long/2addr v8, v12

    add-long/2addr v6, v8

    const/4 v4, 0x7

    long-to-int v8, v6

    aput v8, p2, v4

    const/16 v4, 0x20

    ushr-long/2addr v6, v4

    long-to-int v6, v6

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v8, v6

    goto/16 :goto_0

    :cond_1
    if-nez v8, :cond_2

    invoke-static/range {p2 .. p3}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    :cond_3
    return-void
.end method

.method public static multAddXF([I[I[I[I)V
    .locals 26

    const/4 v5, 0x0

    const/4 v4, 0x0

    aget v4, p1, v4

    int-to-long v6, v4

    const-wide v8, 0xffffffffL

    and-long v10, v6, v8

    const/4 v4, 0x0

    move v8, v5

    move v5, v4

    :goto_0
    const/16 v4, 0x8

    if-ge v5, v4, :cond_1

    aget v4, p0, v5

    int-to-long v6, v4

    const-wide v12, 0xffffffffL

    and-long/2addr v12, v6

    mul-long v6, v12, v10

    const/4 v4, 0x0

    aget v4, p2, v4

    int-to-long v14, v4

    const-wide v16, 0xffffffffL

    and-long v14, v14, v16

    add-long/2addr v6, v14

    const-wide v14, 0xffffffffL

    and-long/2addr v14, v6

    const/16 v4, 0x20

    ushr-long/2addr v6, v4

    add-long/2addr v6, v14

    const/4 v4, 0x1

    :goto_1
    const/16 v9, 0x8

    if-ge v4, v9, :cond_0

    aget v9, p1, v4

    int-to-long v0, v9

    move-wide/from16 v16, v0

    const-wide v18, 0xffffffffL

    and-long v16, v16, v18

    mul-long v16, v16, v12

    aget v9, p3, v4

    int-to-long v0, v9

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v18, v18, v20

    mul-long v18, v18, v14

    const-wide v20, 0xffffffffL

    and-long v20, v20, v16

    const-wide v22, 0xffffffffL

    and-long v22, v22, v18

    add-long v20, v20, v22

    aget v9, p2, v4

    int-to-long v0, v9

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v22, v22, v24

    add-long v20, v20, v22

    add-long v6, v6, v20

    add-int/lit8 v9, v4, -0x1

    long-to-int v0, v6

    move/from16 v20, v0

    aput v20, p2, v9

    const/16 v9, 0x20

    ushr-long/2addr v6, v9

    const/16 v9, 0x20

    ushr-long v16, v16, v9

    add-long v6, v6, v16

    const/16 v9, 0x20

    ushr-long v16, v18, v9

    add-long v6, v6, v16

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    int-to-long v8, v8

    const-wide v12, 0xffffffffL

    and-long/2addr v8, v12

    add-long/2addr v6, v8

    const/4 v4, 0x7

    long-to-int v8, v6

    aput v8, p2, v4

    const/16 v4, 0x20

    ushr-long/2addr v6, v4

    long-to-int v6, v6

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v8, v6

    goto/16 :goto_0

    :cond_1
    if-nez v8, :cond_2

    invoke-static/range {p2 .. p3}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    :cond_3
    return-void
.end method

.method public static reduce([I[II)V
    .locals 12

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v0, 0x8

    if-ge v1, v0, :cond_1

    const/4 v0, 0x0

    aget v0, p0, v0

    mul-int v2, v0, p2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v4, v2

    const/4 v2, 0x0

    aget v2, p1, v2

    int-to-long v2, v2

    const-wide v6, 0xffffffffL

    and-long/2addr v2, v6

    mul-long/2addr v2, v4

    int-to-long v6, v0

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    add-long/2addr v2, v6

    const/16 v0, 0x20

    ushr-long/2addr v2, v0

    const/4 v0, 0x1

    :goto_1
    const/16 v6, 0x8

    if-ge v0, v6, :cond_0

    aget v6, p1, v0

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    mul-long/2addr v6, v4

    aget v8, p0, v0

    int-to-long v8, v8

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    add-long/2addr v6, v8

    add-long/2addr v2, v6

    add-int/lit8 v6, v0, -0x1

    long-to-int v7, v2

    aput v7, p0, v6

    const/16 v6, 0x20

    ushr-long/2addr v2, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x7

    long-to-int v2, v2

    aput v2, p0, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0, p1, p0}, Lorg/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    :cond_2
    return-void
.end method

.method public static reduceXF([I[I)V
    .locals 12

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v0, 0x8

    if-ge v1, v0, :cond_1

    const/4 v0, 0x0

    aget v0, p0, v0

    int-to-long v2, v0

    const-wide v4, 0xffffffffL

    and-long/2addr v4, v2

    const/4 v0, 0x1

    move-wide v2, v4

    :goto_1
    const/16 v6, 0x8

    if-ge v0, v6, :cond_0

    aget v6, p1, v0

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    mul-long/2addr v6, v4

    aget v8, p0, v0

    int-to-long v8, v8

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    add-long/2addr v6, v8

    add-long/2addr v2, v6

    add-int/lit8 v6, v0, -0x1

    long-to-int v7, v2

    aput v7, p0, v6

    const/16 v6, 0x20

    ushr-long/2addr v2, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x7

    long-to-int v2, v2

    aput v2, p0, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0, p1, p0}, Lorg/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    :cond_2
    return-void
.end method
