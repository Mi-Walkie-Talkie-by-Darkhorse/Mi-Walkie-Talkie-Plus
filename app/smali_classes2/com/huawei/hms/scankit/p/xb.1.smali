.class public final Lcom/huawei/hms/scankit/p/xb;
.super Lcom/huawei/hms/scankit/p/Ab;
.source "ITFReader.java"


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:[[I

.field public static final d:[[I


# instance fields
.field private e:I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x5

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lcom/huawei/hms/scankit/p/xb;->a:[I

    const/4 v1, 0x4

    new-array v2, v1, [I

    .line 2
    fill-array-data v2, :array_1

    sput-object v2, Lcom/huawei/hms/scankit/p/xb;->b:[I

    const/4 v2, 0x2

    new-array v3, v2, [[I

    const/4 v4, 0x3

    new-array v5, v4, [I

    .line 3
    fill-array-data v5, :array_2

    const/4 v6, 0x0

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_3

    const/4 v7, 0x1

    aput-object v5, v3, v7

    sput-object v3, Lcom/huawei/hms/scankit/p/xb;->c:[[I

    const/16 v3, 0x14

    new-array v3, v3, [[I

    new-array v5, v0, [I

    .line 4
    fill-array-data v5, :array_4

    aput-object v5, v3, v6

    new-array v5, v0, [I

    fill-array-data v5, :array_5

    aput-object v5, v3, v7

    new-array v5, v0, [I

    fill-array-data v5, :array_6

    aput-object v5, v3, v2

    new-array v2, v0, [I

    fill-array-data v2, :array_7

    aput-object v2, v3, v4

    new-array v2, v0, [I

    fill-array-data v2, :array_8

    aput-object v2, v3, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_9

    aput-object v1, v3, v0

    new-array v1, v0, [I

    fill-array-data v1, :array_a

    const/4 v2, 0x6

    aput-object v1, v3, v2

    new-array v1, v0, [I

    fill-array-data v1, :array_b

    const/4 v2, 0x7

    aput-object v1, v3, v2

    new-array v1, v0, [I

    fill-array-data v1, :array_c

    const/16 v2, 0x8

    aput-object v1, v3, v2

    new-array v1, v0, [I

    fill-array-data v1, :array_d

    const/16 v2, 0x9

    aput-object v1, v3, v2

    new-array v1, v0, [I

    fill-array-data v1, :array_e

    const/16 v2, 0xa

    aput-object v1, v3, v2

    new-array v1, v0, [I

    fill-array-data v1, :array_f

    const/16 v2, 0xb

    aput-object v1, v3, v2

    new-array v1, v0, [I

    fill-array-data v1, :array_10

    const/16 v2, 0xc

    aput-object v1, v3, v2

    new-array v1, v0, [I

    fill-array-data v1, :array_11

    const/16 v2, 0xd

    aput-object v1, v3, v2

    new-array v1, v0, [I

    fill-array-data v1, :array_12

    const/16 v2, 0xe

    aput-object v1, v3, v2

    new-array v1, v0, [I

    fill-array-data v1, :array_13

    const/16 v2, 0xf

    aput-object v1, v3, v2

    new-array v1, v0, [I

    fill-array-data v1, :array_14

    const/16 v2, 0x10

    aput-object v1, v3, v2

    new-array v1, v0, [I

    fill-array-data v1, :array_15

    const/16 v2, 0x11

    aput-object v1, v3, v2

    new-array v1, v0, [I

    fill-array-data v1, :array_16

    const/16 v2, 0x12

    aput-object v1, v3, v2

    new-array v0, v0, [I

    fill-array-data v0, :array_17

    const/16 v1, 0x13

    aput-object v0, v3, v1

    sput-object v3, Lcom/huawei/hms/scankit/p/xb;->d:[[I

    return-void

    nop

    :array_0
    .array-data 4
        0x6
        0x8
        0xa
        0xc
        0xe
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x1
        0x2
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x1
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x1
        0x2
        0x2
        0x1
    .end array-data

    :array_5
    .array-data 4
        0x2
        0x1
        0x1
        0x1
        0x2
    .end array-data

    :array_6
    .array-data 4
        0x1
        0x2
        0x1
        0x1
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x2
        0x2
        0x1
        0x1
        0x1
    .end array-data

    :array_8
    .array-data 4
        0x1
        0x1
        0x2
        0x1
        0x2
    .end array-data

    :array_9
    .array-data 4
        0x2
        0x1
        0x2
        0x1
        0x1
    .end array-data

    :array_a
    .array-data 4
        0x1
        0x2
        0x2
        0x1
        0x1
    .end array-data

    :array_b
    .array-data 4
        0x1
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_c
    .array-data 4
        0x2
        0x1
        0x1
        0x2
        0x1
    .end array-data

    :array_d
    .array-data 4
        0x1
        0x2
        0x1
        0x2
        0x1
    .end array-data

    :array_e
    .array-data 4
        0x1
        0x1
        0x3
        0x3
        0x1
    .end array-data

    :array_f
    .array-data 4
        0x3
        0x1
        0x1
        0x1
        0x3
    .end array-data

    :array_10
    .array-data 4
        0x1
        0x3
        0x1
        0x1
        0x3
    .end array-data

    :array_11
    .array-data 4
        0x3
        0x3
        0x1
        0x1
        0x1
    .end array-data

    :array_12
    .array-data 4
        0x1
        0x1
        0x3
        0x1
        0x3
    .end array-data

    :array_13
    .array-data 4
        0x3
        0x1
        0x3
        0x1
        0x1
    .end array-data

    :array_14
    .array-data 4
        0x1
        0x3
        0x3
        0x1
        0x1
    .end array-data

    :array_15
    .array-data 4
        0x1
        0x1
        0x1
        0x3
        0x3
    .end array-data

    :array_16
    .array-data 4
        0x3
        0x1
        0x1
        0x3
        0x1
    .end array-data

    :array_17
    .array-data 4
        0x1
        0x3
        0x1
        0x3
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/Ab;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/huawei/hms/scankit/p/xb;->e:I

    .line 3
    iput v0, p0, Lcom/huawei/hms/scankit/p/xb;->f:I

    return-void
.end method

.method private static a(Lcom/huawei/hms/scankit/p/ab;IILjava/lang/StringBuilder;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    const/16 v0, 0xa

    new-array v1, v0, [I

    const/4 v2, 0x5

    new-array v3, v2, [I

    new-array v4, v2, [I

    :cond_0
    if-ge p1, p2, :cond_6

    .line 13
    invoke-static {p0, p1, v1}, Lcom/huawei/hms/scankit/p/Ab;->a(Lcom/huawei/hms/scankit/p/ab;I[I)V

    const/4 v5, -0x1

    const/16 v6, 0x2710

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v0, :cond_3

    .line 14
    aget v9, v1, v8

    if-le v5, v9, :cond_1

    goto :goto_1

    :cond_1
    aget v5, v1, v8

    .line 15
    :goto_1
    aget v9, v1, v8

    if-ge v6, v9, :cond_2

    goto :goto_2

    :cond_2
    aget v6, v1, v8

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 16
    :cond_3
    div-int/2addr v5, v6

    const/16 v6, 0x8

    if-gt v5, v6, :cond_5

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v2, :cond_4

    mul-int/lit8 v6, v5, 0x2

    .line 17
    aget v8, v1, v6

    aput v8, v3, v5

    add-int/lit8 v6, v6, 0x1

    .line 18
    aget v6, v1, v6

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 19
    :cond_4
    invoke-static {v3}, Lcom/huawei/hms/scankit/p/xb;->b([I)I

    move-result v5

    add-int/lit8 v5, v5, 0x30

    int-to-char v5, v5

    .line 20
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    invoke-static {v4}, Lcom/huawei/hms/scankit/p/xb;->b([I)I

    move-result v5

    add-int/lit8 v5, v5, 0x30

    int-to-char v5, v5

    .line 22
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_4
    if-ge v7, v0, :cond_0

    .line 23
    aget v5, v1, v7

    add-int/2addr p1, v5

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 24
    :cond_5
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0

    :cond_6
    if-ne p1, p2, :cond_7

    return-void

    .line 25
    :cond_7
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0
.end method

.method private a(Lcom/huawei/hms/scankit/p/ab;I)Z
    .locals 5

    .line 26
    iget v0, p0, Lcom/huawei/hms/scankit/p/xb;->e:I

    mul-int/lit8 v0, v0, 0xa

    .line 27
    iget v1, p0, Lcom/huawei/hms/scankit/p/xb;->f:I

    int-to-double v1, v1

    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    mul-double v1, v1, v3

    double-to-int v1, v1

    if-ge v0, v1, :cond_0

    move v0, v1

    :cond_0
    const/4 v1, 0x1

    sub-int/2addr p2, v1

    :goto_0
    if-lez v0, :cond_2

    if-ltz p2, :cond_2

    .line 28
    invoke-virtual {p1, p2}, Lcom/huawei/hms/scankit/p/ab;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    const/4 p1, 0x0

    return p1

    :cond_3
    return v1
.end method

.method private a(Lcom/huawei/hms/scankit/p/ab;)[I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 29
    :try_start_0
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/ab;->g()V

    .line 30
    invoke-static {p1}, Lcom/huawei/hms/scankit/p/xb;->c(Lcom/huawei/hms/scankit/p/ab;)I

    move-result v0

    .line 31
    :goto_0
    sget-object v1, Lcom/huawei/hms/scankit/p/xb;->c:[[I

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/huawei/hms/scankit/p/xb;->b(Lcom/huawei/hms/scankit/p/ab;I[I)[I

    move-result-object v0

    .line 32
    aget v1, v0, v2

    invoke-direct {p0, p1, v1}, Lcom/huawei/hms/scankit/p/xb;->a(Lcom/huawei/hms/scankit/p/ab;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    aget v1, v0, v2

    .line 34
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/ab;->d()I

    move-result v3

    const/4 v4, 0x1

    aget v5, v0, v4

    sub-int/2addr v3, v5

    aput v3, v0, v2

    .line 35
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/ab;->d()I

    move-result v2

    sub-int/2addr v2, v1

    aput v2, v0, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/ab;->g()V

    return-object v0

    :cond_0
    const/4 v1, 0x2

    .line 37
    :try_start_1
    aget v0, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 38
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/ab;->g()V

    .line 39
    throw v0
.end method

.method private static b([I)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 23
    sget-object v0, Lcom/huawei/hms/scankit/p/xb;->d:[[I

    array-length v0, v0

    const/4 v1, -0x1

    const v2, 0x3e99999a    # 0.3f

    const/4 v3, 0x0

    const/4 v4, -0x1

    :goto_0
    if-ge v3, v0, :cond_2

    .line 24
    sget-object v5, Lcom/huawei/hms/scankit/p/xb;->d:[[I

    aget-object v5, v5, v3

    const/high16 v6, 0x3f400000    # 0.75f

    .line 25
    invoke-static {p0, v5, v6}, Lcom/huawei/hms/scankit/p/Ab;->a([I[IF)F

    move-result v5

    cmpg-float v6, v5, v2

    if-gez v6, :cond_0

    move v4, v3

    move v2, v5

    goto :goto_1

    :cond_0
    sub-float/2addr v5, v2

    .line 26
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v5, v5

    const-wide v7, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpg-double v9, v5, v7

    if-gez v9, :cond_1

    const/4 v4, -0x1

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-ltz v4, :cond_3

    .line 27
    rem-int/lit8 v4, v4, 0xa

    return v4

    .line 28
    :cond_3
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0
.end method

.method private b(Lcom/huawei/hms/scankit/p/ab;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/huawei/hms/scankit/p/xb;->c(Lcom/huawei/hms/scankit/p/ab;)I

    move-result v0

    .line 2
    :goto_0
    sget-object v1, Lcom/huawei/hms/scankit/p/xb;->b:[I

    invoke-direct {p0, p1, v0, v1}, Lcom/huawei/hms/scankit/p/xb;->c(Lcom/huawei/hms/scankit/p/ab;I[I)[I

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    aget v1, v0, v1

    const/4 v2, 0x0

    aget v3, v0, v2

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/huawei/hms/scankit/p/xb;->e:I

    .line 4
    aget v1, v0, v2

    invoke-direct {p0, p1, v1}, Lcom/huawei/hms/scankit/p/xb;->a(Lcom/huawei/hms/scankit/p/ab;I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x2

    .line 5
    aget v0, v0, v1

    goto :goto_0
.end method

.method private b(Lcom/huawei/hms/scankit/p/ab;I[I)[I
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    move-object/from16 v0, p3

    .line 6
    array-length v0, v0

    .line 7
    new-array v1, v0, [I

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hms/scankit/p/ab;->d()I

    move-result v2

    const/4 v3, 0x0

    move/from16 v4, p2

    move v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v4, v2, :cond_6

    move-object/from16 v8, p1

    .line 9
    invoke-virtual {v8, v4}, Lcom/huawei/hms/scankit/p/ab;->a(I)Z

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v6, :cond_1

    if-ltz v7, :cond_0

    if-ge v7, v0, :cond_0

    .line 10
    aget v9, v1, v7

    add-int/2addr v9, v10

    aput v9, v1, v7

    goto/16 :goto_3

    .line 11
    :cond_0
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object v0

    throw v0

    :cond_1
    add-int/lit8 v9, v0, -0x1

    if-ne v7, v9, :cond_5

    .line 12
    aget v9, v1, v3

    aget v11, v1, v10

    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v9

    if-eqz v9, :cond_4

    aget v9, v1, v3

    aget v11, v1, v10

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    if-eqz v9, :cond_4

    .line 13
    aget v9, v1, v3

    aget v11, v1, v10

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    int-to-float v9, v9

    aget v11, v1, v3

    aget v12, v1, v10

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v9, v11

    const/4 v11, 0x2

    .line 14
    aget v12, v1, v11

    int-to-float v12, v12

    const/high16 v13, 0x40000000    # 2.0f

    mul-float v12, v12, v13

    aget v13, v1, v3

    aget v14, v1, v10

    add-int/2addr v13, v14

    int-to-float v13, v13

    div-float/2addr v12, v13

    const/high16 v13, 0x40400000    # 3.0f

    cmpg-float v9, v9, v13

    if-gtz v9, :cond_2

    float-to-double v13, v12

    const-wide/high16 v15, 0x3ff8000000000000L    # 1.5

    cmpl-double v9, v13, v15

    if-lez v9, :cond_2

    const/high16 v9, 0x40800000    # 4.0f

    cmpg-float v9, v12, v9

    if-gez v9, :cond_2

    const/4 v9, 0x1

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_3

    const/4 v0, 0x3

    new-array v0, v0, [I

    aput v5, v0, v3

    aput v4, v0, v10

    .line 15
    aget v2, v1, v3

    add-int/2addr v5, v2

    aget v1, v1, v10

    add-int/2addr v5, v1

    aput v5, v0, v11

    return-object v0

    .line 16
    :cond_3
    aget v9, v1, v3

    aget v12, v1, v10

    add-int/2addr v9, v12

    add-int/2addr v5, v9

    add-int/lit8 v9, v7, -0x1

    .line 17
    invoke-static {v1, v11, v1, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    aput v3, v1, v9

    .line 19
    aput v3, v1, v7

    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 20
    :cond_4
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object v0

    throw v0

    :cond_5
    add-int/lit8 v7, v7, 0x1

    .line 21
    :goto_2
    aput v10, v1, v7

    xor-int/lit8 v6, v6, 0x1

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 22
    :cond_6
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object v0

    throw v0
.end method

.method private static c(Lcom/huawei/hms/scankit/p/ab;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/ab;->d()I

    move-result v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1}, Lcom/huawei/hms/scankit/p/ab;->b(I)I

    move-result p0

    if-eq p0, v0, :cond_0

    return p0

    .line 3
    :cond_0
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0
.end method

.method private c(Lcom/huawei/hms/scankit/p/ab;I[I)[I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 4
    array-length v2, v2

    .line 5
    new-array v3, v2, [I

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hms/scankit/p/ab;->d()I

    move-result v4

    const/4 v5, 0x0

    move/from16 v6, p2

    move v7, v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v6, v4, :cond_6

    .line 7
    invoke-virtual {v1, v6}, Lcom/huawei/hms/scankit/p/ab;->a(I)Z

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v8, :cond_1

    if-ltz v9, :cond_0

    if-ge v9, v2, :cond_0

    .line 8
    aget v10, v3, v9

    add-int/2addr v10, v11

    aput v10, v3, v9

    move/from16 v16, v4

    const/4 v4, 0x0

    goto/16 :goto_3

    .line 9
    :cond_0
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object v1

    throw v1

    :cond_1
    add-int/lit8 v10, v2, -0x1

    if-ne v9, v10, :cond_5

    .line 10
    invoke-virtual {v3}, [I->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    .line 11
    invoke-static {v10}, Ljava/util/Arrays;->sort([I)V

    .line 12
    aget v12, v10, v5

    aget v13, v10, v11

    add-int/2addr v12, v13

    int-to-double v12, v12

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    mul-double v12, v12, v14

    const/4 v11, 0x2

    .line 13
    aget v16, v10, v11

    const/4 v11, 0x3

    aget v17, v10, v11

    add-int v5, v16, v17

    move/from16 v16, v4

    int-to-double v4, v5

    mul-double v4, v4, v14

    div-double/2addr v4, v12

    const-wide/high16 v12, 0x4010000000000000L    # 4.0

    cmpg-double v14, v4, v12

    if-gez v14, :cond_4

    .line 14
    aget v4, v10, v11

    int-to-double v4, v4

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    mul-double v4, v4, v12

    const/4 v12, 0x0

    aget v10, v10, v12

    int-to-double v12, v10

    div-double/2addr v4, v12

    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    cmpg-double v10, v4, v12

    if-gtz v10, :cond_4

    const/16 v2, 0xa

    new-array v4, v2, [I

    .line 15
    invoke-static {v1, v6, v4}, Lcom/huawei/hms/scankit/p/Ab;->a(Lcom/huawei/hms/scankit/p/ab;I[I)V

    const/4 v1, -0x1

    .line 16
    iput v1, v0, Lcom/huawei/hms/scankit/p/xb;->f:I

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v2, :cond_3

    .line 17
    aget v1, v4, v12

    iget v5, v0, Lcom/huawei/hms/scankit/p/xb;->f:I

    if-le v1, v5, :cond_2

    .line 18
    aget v1, v4, v12

    iput v1, v0, Lcom/huawei/hms/scankit/p/xb;->f:I

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_3
    new-array v1, v11, [I

    const/4 v4, 0x0

    aput v7, v1, v4

    const/4 v5, 0x1

    aput v6, v1, v5

    .line 19
    aget v2, v3, v4

    add-int/2addr v7, v2

    aget v2, v3, v5

    add-int/2addr v7, v2

    const/4 v10, 0x2

    aput v7, v1, v10

    return-object v1

    :cond_4
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v10, 0x2

    .line 20
    aget v11, v3, v4

    aget v12, v3, v5

    add-int/2addr v11, v12

    add-int/2addr v7, v11

    add-int/lit8 v5, v9, -0x1

    .line 21
    invoke-static {v3, v10, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    aput v4, v3, v5

    .line 23
    aput v4, v3, v9

    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    :cond_5
    move/from16 v16, v4

    const/4 v4, 0x0

    add-int/lit8 v9, v9, 0x1

    :goto_2
    const/4 v5, 0x1

    .line 24
    aput v5, v3, v9

    xor-int/lit8 v8, v8, 0x1

    :goto_3
    add-int/lit8 v6, v6, 0x1

    move/from16 v4, v16

    const/4 v5, 0x0

    goto/16 :goto_0

    .line 25
    :cond_6
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public a(ILcom/huawei/hms/scankit/p/ab;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/x;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/huawei/hms/scankit/p/ab;",
            "Ljava/util/Map<",
            "Lcom/huawei/hms/scankit/aiscan/common/d;",
            "*>;)",
            "Lcom/huawei/hms/scankit/aiscan/common/x;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;,
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/huawei/hms/scankit/p/xb;->b(Lcom/huawei/hms/scankit/p/ab;)[I

    move-result-object p3

    .line 2
    invoke-direct {p0, p2}, Lcom/huawei/hms/scankit/p/xb;->a(Lcom/huawei/hms/scankit/p/ab;)[I

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x1

    .line 4
    aget v3, p3, v2

    const/4 v4, 0x0

    .line 5
    aget v5, v0, v4

    .line 6
    invoke-static {p2, v3, v5, v1}, Lcom/huawei/hms/scankit/p/xb;->a(Lcom/huawei/hms/scankit/p/ab;IILjava/lang/StringBuilder;)V

    .line 7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 8
    sget-object v1, Lcom/huawei/hms/scankit/p/xb;->a:[I

    .line 9
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 10
    array-length v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    aget v8, v1, v6

    if-ne v3, v8, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    if-le v8, v7, :cond_1

    move v7, v8

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_3

    if-le v3, v7, :cond_3

    const/4 v1, 0x1

    :cond_3
    if-eqz v1, :cond_4

    .line 11
    new-instance v1, Lcom/huawei/hms/scankit/aiscan/common/x;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/huawei/hms/scankit/aiscan/common/z;

    new-instance v5, Lcom/huawei/hms/scankit/aiscan/common/z;

    aget p3, p3, v4

    int-to-float p3, p3

    int-to-float p1, p1

    invoke-direct {v5, p3, p1}, Lcom/huawei/hms/scankit/aiscan/common/z;-><init>(FF)V

    aput-object v5, v3, v4

    new-instance p3, Lcom/huawei/hms/scankit/aiscan/common/z;

    aget v0, v0, v2

    int-to-float v0, v0

    invoke-direct {p3, v0, p1}, Lcom/huawei/hms/scankit/aiscan/common/z;-><init>(FF)V

    aput-object p3, v3, v2

    sget-object p1, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->i:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    const/4 p3, 0x0

    invoke-direct {v1, p2, p3, v3, p1}, Lcom/huawei/hms/scankit/aiscan/common/x;-><init>(Ljava/lang/String;[B[Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;)V

    return-object v1

    .line 12
    :cond_4
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p1

    throw p1
.end method
