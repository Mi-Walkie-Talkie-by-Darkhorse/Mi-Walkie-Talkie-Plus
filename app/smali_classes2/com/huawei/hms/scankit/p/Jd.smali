.class public final Lcom/huawei/hms/scankit/p/Jd;
.super Ljava/lang/Object;
.source "HighLevelEncoder.java"


# direct methods
.method private static a(CI)C
    .locals 0

    mul-int/lit16 p1, p1, 0x95

    .line 1
    rem-int/lit16 p1, p1, 0xfd

    add-int/lit8 p1, p1, 0x1

    add-int/2addr p0, p1

    const/16 p1, 0xfe

    if-gt p0, p1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit16 p0, p0, -0xfe

    :goto_0
    int-to-char p0, p0

    return p0
.end method

.method public static a(Ljava/lang/CharSequence;I)I
    .locals 4

    .line 99
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-ge p1, v0, :cond_1

    .line 100
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 101
    :cond_0
    :goto_0
    invoke-static {v2}, Lcom/huawei/hms/scankit/p/Jd;->b(C)Z

    move-result v3

    if-eqz v3, :cond_1

    if-ge p1, v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p1, p1, 0x1

    if-ge p1, v0, :cond_0

    .line 102
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method static a(Ljava/lang/CharSequence;II)I
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 29
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    return p2

    :cond_0
    const/4 v2, 0x6

    if-nez p2, :cond_1

    new-array v3, v2, [F

    .line 30
    fill-array-data v3, :array_0

    goto :goto_0

    :cond_1
    new-array v3, v2, [F

    .line 31
    fill-array-data v3, :array_1

    const/4 v4, 0x0

    .line 32
    aput v4, v3, p2

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_2
    add-int v6, v1, v5

    .line 33
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const v8, 0x7fffffff

    const/4 v9, 0x5

    const/4 v10, 0x2

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x1

    if-ne v6, v7, :cond_8

    new-array v0, v2, [B

    new-array v1, v2, [I

    .line 34
    invoke-static {v3, v1, v8, v0}, Lcom/huawei/hms/scankit/p/Jd;->a([F[II[B)I

    move-result v2

    .line 35
    invoke-static {v0}, Lcom/huawei/hms/scankit/p/Jd;->a([B)I

    move-result v3

    .line 36
    :try_start_0
    invoke-static {v1, v4}, Lcom/huawei/hms/scankit/util/b;->a([II)Z

    move-result v5

    if-eqz v5, :cond_3

    aget v1, v1, v4

    if-ne v1, v2, :cond_3

    return v4

    :cond_3
    if-ne v3, v13, :cond_4

    .line 37
    invoke-static {v0, v9}, Lcom/huawei/hms/scankit/util/b;->a([BI)Z

    move-result v1

    if-eqz v1, :cond_4

    aget-byte v1, v0, v9

    if-lez v1, :cond_4

    return v9

    :cond_4
    if-ne v3, v13, :cond_5

    .line 38
    invoke-static {v0, v11}, Lcom/huawei/hms/scankit/util/b;->a([BI)Z

    move-result v1

    if-eqz v1, :cond_5

    aget-byte v1, v0, v11

    if-lez v1, :cond_5

    return v11

    :cond_5
    if-ne v3, v13, :cond_6

    .line 39
    invoke-static {v0, v10}, Lcom/huawei/hms/scankit/util/b;->a([BI)Z

    move-result v1

    if-eqz v1, :cond_6

    aget-byte v1, v0, v10

    if-lez v1, :cond_6

    return v10

    :cond_6
    if-ne v3, v13, :cond_7

    .line 40
    invoke-static {v0, v12}, Lcom/huawei/hms/scankit/util/b;->a([BI)Z

    move-result v1

    if-eqz v1, :cond_7

    aget-byte v0, v0, v12
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v0, :cond_7

    return v12

    :cond_7
    return v13

    :catch_0
    move-exception v0

    .line 41
    throw v0

    .line 42
    :cond_8
    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    add-int/lit8 v5, v5, 0x1

    .line 43
    invoke-static {v6}, Lcom/huawei/hms/scankit/p/Jd;->b(C)Z

    move-result v7

    const/high16 v14, 0x3f800000    # 1.0f

    if-eqz v7, :cond_9

    .line 44
    aget v7, v3, v4

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v7, v15

    aput v7, v3, v4

    goto :goto_1

    .line 45
    :cond_9
    invoke-static {v6}, Lcom/huawei/hms/scankit/p/Jd;->c(C)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 46
    aget v7, v3, v4

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-float v7, v7

    aput v7, v3, v4

    .line 47
    aget v7, v3, v4

    const/high16 v8, 0x40000000    # 2.0f

    add-float/2addr v7, v8

    aput v7, v3, v4

    goto :goto_1

    .line 48
    :cond_a
    aget v7, v3, v4

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-float v7, v7

    aput v7, v3, v4

    .line 49
    aget v7, v3, v4

    add-float/2addr v7, v14

    aput v7, v3, v4

    .line 50
    :goto_1
    array-length v7, v3

    const v8, 0x402aaaab

    const v9, 0x3faaaaab

    const v16, 0x3f2aaaab

    if-ge v13, v7, :cond_d

    .line 51
    invoke-static {v6}, Lcom/huawei/hms/scankit/p/Jd;->d(C)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 52
    aget v7, v3, v13

    add-float v7, v7, v16

    aput v7, v3, v13

    goto :goto_2

    .line 53
    :cond_b
    invoke-static {v6}, Lcom/huawei/hms/scankit/p/Jd;->c(C)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 54
    aget v7, v3, v13

    add-float/2addr v7, v8

    aput v7, v3, v13

    goto :goto_2

    .line 55
    :cond_c
    aget v7, v3, v13

    add-float/2addr v7, v9

    aput v7, v3, v13

    .line 56
    :cond_d
    :goto_2
    array-length v7, v3

    if-ge v10, v7, :cond_10

    .line 57
    invoke-static {v6}, Lcom/huawei/hms/scankit/p/Jd;->f(C)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 58
    aget v7, v3, v10

    add-float v7, v7, v16

    aput v7, v3, v10

    goto :goto_3

    .line 59
    :cond_e
    invoke-static {v6}, Lcom/huawei/hms/scankit/p/Jd;->c(C)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 60
    aget v7, v3, v10

    add-float/2addr v7, v8

    aput v7, v3, v10

    goto :goto_3

    .line 61
    :cond_f
    aget v7, v3, v10

    add-float/2addr v7, v9

    aput v7, v3, v10

    .line 62
    :cond_10
    :goto_3
    array-length v7, v3

    if-ge v12, v7, :cond_13

    .line 63
    invoke-static {v6}, Lcom/huawei/hms/scankit/p/Jd;->g(C)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 64
    aget v7, v3, v12

    add-float v7, v7, v16

    aput v7, v3, v12

    goto :goto_4

    .line 65
    :cond_11
    invoke-static {v6}, Lcom/huawei/hms/scankit/p/Jd;->c(C)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 66
    aget v7, v3, v12

    const v8, 0x408aaaab

    add-float/2addr v7, v8

    aput v7, v3, v12

    goto :goto_4

    .line 67
    :cond_12
    aget v7, v3, v12

    const v8, 0x40555555

    add-float/2addr v7, v8

    aput v7, v3, v12

    .line 68
    :cond_13
    :goto_4
    array-length v7, v3

    if-ge v11, v7, :cond_16

    .line 69
    invoke-static {v6}, Lcom/huawei/hms/scankit/p/Jd;->e(C)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 70
    aget v7, v3, v11

    const/high16 v8, 0x3f400000    # 0.75f

    add-float/2addr v7, v8

    aput v7, v3, v11

    goto :goto_5

    .line 71
    :cond_14
    invoke-static {v6}, Lcom/huawei/hms/scankit/p/Jd;->c(C)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 72
    aget v7, v3, v11

    const/high16 v8, 0x40880000    # 4.25f

    add-float/2addr v7, v8

    aput v7, v3, v11

    goto :goto_5

    .line 73
    :cond_15
    aget v7, v3, v11

    const/high16 v8, 0x40500000    # 3.25f

    add-float/2addr v7, v8

    aput v7, v3, v11

    .line 74
    :cond_16
    :goto_5
    array-length v7, v3

    const/4 v8, 0x5

    if-ge v8, v7, :cond_18

    .line 75
    invoke-static {v6}, Lcom/huawei/hms/scankit/p/Jd;->h(C)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 76
    aget v6, v3, v8

    const/high16 v7, 0x40800000    # 4.0f

    add-float/2addr v6, v7

    aput v6, v3, v8

    goto :goto_6

    .line 77
    :cond_17
    aget v6, v3, v8

    add-float/2addr v6, v14

    aput v6, v3, v8

    :cond_18
    :goto_6
    if-lt v5, v11, :cond_2

    new-array v6, v2, [I

    new-array v7, v2, [B

    const v8, 0x7fffffff

    .line 78
    invoke-static {v3, v6, v8, v7}, Lcom/huawei/hms/scankit/p/Jd;->a([F[II[B)I

    .line 79
    invoke-static {v7}, Lcom/huawei/hms/scankit/p/Jd;->a([B)I

    move-result v8

    .line 80
    :try_start_1
    aget v9, v6, v4

    const/4 v14, 0x5

    aget v15, v6, v14

    move v14, v15

    if-ge v9, v14, :cond_19

    aget v9, v6, v4

    aget v14, v6, v13

    if-ge v9, v14, :cond_19

    aget v9, v6, v4

    aget v14, v6, v10

    if-ge v9, v14, :cond_19

    aget v9, v6, v4

    aget v14, v6, v12

    if-ge v9, v14, :cond_19

    aget v9, v6, v4

    aget v14, v6, v11

    if-ge v9, v14, :cond_19

    return v4

    :cond_19
    const/4 v9, 0x5

    .line 81
    aget v14, v6, v9

    aget v9, v6, v4

    if-lt v14, v9, :cond_22

    aget-byte v9, v7, v13

    aget-byte v14, v7, v10

    add-int/2addr v9, v14

    aget-byte v14, v7, v12

    add-int/2addr v9, v14

    aget-byte v14, v7, v11

    add-int/2addr v9, v14

    if-nez v9, :cond_1a

    goto :goto_9

    :cond_1a
    if-ne v8, v13, :cond_1b

    .line 82
    aget-byte v9, v7, v11

    if-lez v9, :cond_1b

    return v11

    :cond_1b
    if-ne v8, v13, :cond_1c

    .line 83
    aget-byte v9, v7, v10

    if-lez v9, :cond_1c

    return v10

    :cond_1c
    if-ne v8, v13, :cond_1d

    .line 84
    aget-byte v7, v7, v12

    if-lez v7, :cond_1d

    return v12

    .line 85
    :cond_1d
    aget v7, v6, v13

    add-int/2addr v7, v13

    aget v8, v6, v4

    if-ge v7, v8, :cond_2

    aget v7, v6, v13

    add-int/2addr v7, v13

    const/4 v8, 0x5

    aget v8, v6, v8

    if-ge v7, v8, :cond_2

    aget v7, v6, v13

    add-int/2addr v7, v13

    aget v8, v6, v11

    if-ge v7, v8, :cond_2

    aget v7, v6, v13

    add-int/2addr v7, v13

    aget v8, v6, v10

    if-ge v7, v8, :cond_2

    .line 86
    aget v7, v6, v13

    aget v8, v6, v12

    if-ge v7, v8, :cond_1e

    return v13

    .line 87
    :cond_1e
    aget v7, v6, v13

    aget v6, v6, v12

    if-ne v7, v6, :cond_2

    add-int/2addr v1, v5

    add-int/2addr v1, v13

    .line 88
    :goto_7
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 89
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 90
    invoke-static {v2}, Lcom/huawei/hms/scankit/p/Jd;->i(C)Z

    move-result v3

    if-eqz v3, :cond_1f

    return v12

    .line 91
    :cond_1f
    invoke-static {v2}, Lcom/huawei/hms/scankit/p/Jd;->g(C)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v2, :cond_20

    goto :goto_8

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_21
    :goto_8
    return v13

    :cond_22
    :goto_9
    const/4 v0, 0x5

    return v0

    :catch_1
    move-exception v0

    .line 92
    throw v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3fa00000    # 1.25f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40100000    # 2.25f
    .end array-data
.end method

.method private static a([B)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    .line 98
    aget-byte v2, p0, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private static a([F[II[B)I
    .locals 4

    const/4 v0, 0x0

    .line 93
    invoke-static {p3, v0}, Ljava/util/Arrays;->fill([BB)V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_2

    .line 94
    aget v2, p0, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    aput v2, p1, v1

    .line 95
    aget v2, p1, v1

    if-le p2, v2, :cond_0

    .line 96
    invoke-static {p3, v0}, Ljava/util/Arrays;->fill([BB)V

    move p2, v2

    :cond_0
    if-ne p2, v2, :cond_1

    .line 97
    aget-byte v2, p3, v1

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return p2
.end method

.method public static a(Ljava/lang/String;Lcom/huawei/hms/scankit/p/Ld;Lcom/huawei/hms/scankit/p/nd;Lcom/huawei/hms/scankit/p/nd;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x6

    new-array v1, v0, [Lcom/huawei/hms/scankit/p/Gd;

    .line 2
    new-instance v2, Lcom/huawei/hms/scankit/p/Ad;

    invoke-direct {v2}, Lcom/huawei/hms/scankit/p/Ad;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/huawei/hms/scankit/p/Cd;

    invoke-direct {v2}, Lcom/huawei/hms/scankit/p/Cd;-><init>()V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Lcom/huawei/hms/scankit/p/Md;

    invoke-direct {v2}, Lcom/huawei/hms/scankit/p/Md;-><init>()V

    const/4 v5, 0x2

    aput-object v2, v1, v5

    new-instance v2, Lcom/huawei/hms/scankit/p/Nd;

    invoke-direct {v2}, Lcom/huawei/hms/scankit/p/Nd;-><init>()V

    const/4 v6, 0x3

    aput-object v2, v1, v6

    new-instance v2, Lcom/huawei/hms/scankit/p/Fd;

    invoke-direct {v2}, Lcom/huawei/hms/scankit/p/Fd;-><init>()V

    const/4 v6, 0x4

    aput-object v2, v1, v6

    new-instance v2, Lcom/huawei/hms/scankit/p/Bd;

    invoke-direct {v2}, Lcom/huawei/hms/scankit/p/Bd;-><init>()V

    const/4 v7, 0x5

    aput-object v2, v1, v7

    .line 3
    new-instance v2, Lcom/huawei/hms/scankit/p/Hd;

    invoke-direct {v2, p0}, Lcom/huawei/hms/scankit/p/Hd;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v2, p1}, Lcom/huawei/hms/scankit/p/Hd;->a(Lcom/huawei/hms/scankit/p/Ld;)V

    .line 5
    invoke-virtual {v2, p2, p3}, Lcom/huawei/hms/scankit/p/Hd;->a(Lcom/huawei/hms/scankit/p/nd;Lcom/huawei/hms/scankit/p/nd;)V

    const-string p1, "[)>\u001e05\u001d"

    .line 6
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const-string p2, "\u001e\u0004"

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p0, 0xec

    .line 7
    invoke-virtual {v2, p0}, Lcom/huawei/hms/scankit/p/Hd;->a(C)V

    .line 8
    invoke-virtual {v2, v5}, Lcom/huawei/hms/scankit/p/Hd;->a(I)V

    .line 9
    iget p0, v2, Lcom/huawei/hms/scankit/p/Hd;->f:I

    add-int/lit8 p0, p0, 0x7

    iput p0, v2, Lcom/huawei/hms/scankit/p/Hd;->f:I

    goto :goto_0

    :cond_0
    const-string p1, "[)>\u001e06\u001d"

    .line 10
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0xed

    .line 11
    invoke-virtual {v2, p0}, Lcom/huawei/hms/scankit/p/Hd;->a(C)V

    .line 12
    invoke-virtual {v2, v5}, Lcom/huawei/hms/scankit/p/Hd;->a(I)V

    .line 13
    iget p0, v2, Lcom/huawei/hms/scankit/p/Hd;->f:I

    add-int/lit8 p0, p0, 0x7

    iput p0, v2, Lcom/huawei/hms/scankit/p/Hd;->f:I

    .line 14
    :cond_1
    :goto_0
    invoke-virtual {v2}, Lcom/huawei/hms/scankit/p/Hd;->h()Z

    move-result p0

    if-eqz p0, :cond_3

    if-ltz v3, :cond_2

    if-ge v3, v0, :cond_2

    .line 15
    aget-object p0, v1, v3

    invoke-interface {p0, v2}, Lcom/huawei/hms/scankit/p/Gd;->a(Lcom/huawei/hms/scankit/p/Hd;)V

    .line 16
    :cond_2
    invoke-virtual {v2}, Lcom/huawei/hms/scankit/p/Hd;->e()I

    move-result p0

    if-ltz p0, :cond_1

    .line 17
    invoke-virtual {v2}, Lcom/huawei/hms/scankit/p/Hd;->e()I

    move-result v3

    .line 18
    invoke-virtual {v2}, Lcom/huawei/hms/scankit/p/Hd;->i()V

    goto :goto_0

    .line 19
    :cond_3
    invoke-virtual {v2}, Lcom/huawei/hms/scankit/p/Hd;->a()I

    move-result p0

    .line 20
    invoke-virtual {v2}, Lcom/huawei/hms/scankit/p/Hd;->k()V

    .line 21
    invoke-virtual {v2}, Lcom/huawei/hms/scankit/p/Hd;->g()Lcom/huawei/hms/scankit/p/Kd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/Kd;->a()I

    move-result p1

    if-ge p0, p1, :cond_4

    if-eqz v3, :cond_4

    if-eq v3, v7, :cond_4

    if-eq v3, v6, :cond_4

    const/16 p0, 0xfe

    .line 22
    invoke-virtual {v2, p0}, Lcom/huawei/hms/scankit/p/Hd;->a(C)V

    .line 23
    :cond_4
    invoke-virtual {v2}, Lcom/huawei/hms/scankit/p/Hd;->b()Ljava/lang/StringBuilder;

    move-result-object p0

    .line 24
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    const/16 p3, 0x81

    if-ge p2, p1, :cond_5

    .line 25
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    :cond_5
    :goto_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-ge p2, p1, :cond_6

    .line 27
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    add-int/2addr p2, v4

    invoke-static {p3, p2}, Lcom/huawei/hms/scankit/p/Jd;->a(CI)C

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 28
    :cond_6
    invoke-virtual {v2}, Lcom/huawei/hms/scankit/p/Hd;->b()Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(C)V
    .locals 5

    .line 103
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x4

    const-string v3, "0000"

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "Illegal character: "

    :try_start_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string p0, " (0x"

    :try_start_2
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 106
    throw p0
.end method

.method static b(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static c(C)Z
    .locals 1

    const/16 v0, 0x80

    if-lt p0, v0, :cond_0

    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static d(C)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static e(C)Z
    .locals 1

    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5e

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static f(C)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static g(C)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/huawei/hms/scankit/p/Jd;->i(C)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x20

    if-eq p0, v0, :cond_2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static h(C)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private static i(C)Z
    .locals 1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3e

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
