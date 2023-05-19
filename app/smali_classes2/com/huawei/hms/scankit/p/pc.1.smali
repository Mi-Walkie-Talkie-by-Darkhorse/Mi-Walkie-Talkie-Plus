.class public Lcom/huawei/hms/scankit/p/pc;
.super Ljava/lang/Object;
.source "Detector.java"


# instance fields
.field private final a:Lcom/huawei/hms/scankit/p/bb;

.field private b:Lcom/huawei/hms/scankit/aiscan/common/A;


# direct methods
.method public constructor <init>(Lcom/huawei/hms/scankit/p/bb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/huawei/hms/scankit/p/pc;->a:Lcom/huawei/hms/scankit/p/bb;

    return-void
.end method

.method private a(IIII)F
    .locals 17

    sub-int v0, p4, p2

    .line 139
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int v1, p3, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v3, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    move/from16 v4, p1

    move/from16 v1, p2

    move/from16 v6, p3

    move/from16 v5, p4

    goto :goto_1

    :cond_1
    move/from16 v1, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    :goto_1
    sub-int v7, v5, v1

    .line 140
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    sub-int v8, v6, v4

    .line 141
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    neg-int v9, v7

    const/4 v10, 0x2

    .line 142
    div-int/2addr v9, v10

    const/4 v11, -0x1

    if-ge v1, v5, :cond_2

    const/4 v12, 0x1

    goto :goto_2

    :cond_2
    const/4 v12, -0x1

    :goto_2
    if-ge v4, v6, :cond_3

    const/4 v11, 0x1

    :cond_3
    add-int/2addr v5, v12

    move v13, v1

    move v14, v4

    const/4 v15, 0x0

    :goto_3
    if-eq v13, v5, :cond_b

    if-eqz v0, :cond_4

    move v2, v14

    goto :goto_4

    :cond_4
    move v2, v13

    :goto_4
    if-eqz v0, :cond_5

    move v10, v13

    goto :goto_5

    :cond_5
    move v10, v14

    :goto_5
    if-ne v15, v3, :cond_6

    move-object/from16 v3, p0

    move/from16 v16, v0

    move/from16 p2, v5

    const/4 v0, 0x1

    goto :goto_6

    :cond_6
    move-object/from16 v3, p0

    move/from16 v16, v0

    move/from16 p2, v5

    const/4 v0, 0x0

    .line 143
    :goto_6
    iget-object v5, v3, Lcom/huawei/hms/scankit/p/pc;->a:Lcom/huawei/hms/scankit/p/bb;

    invoke-virtual {v5, v2, v10}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v2

    if-ne v0, v2, :cond_8

    const/4 v0, 0x2

    if-ne v15, v0, :cond_7

    .line 144
    invoke-static {v13, v14, v1, v4}, Lcom/huawei/hms/scankit/aiscan/common/n;->a(IIII)F

    move-result v0

    return v0

    :cond_7
    add-int/lit8 v15, v15, 0x1

    :cond_8
    add-int/2addr v9, v8

    if-lez v9, :cond_a

    if-ne v14, v6, :cond_9

    goto :goto_7

    :cond_9
    add-int/2addr v14, v11

    sub-int/2addr v9, v7

    :cond_a
    add-int/2addr v13, v12

    move/from16 v5, p2

    move/from16 v0, v16

    const/4 v3, 0x1

    const/4 v10, 0x2

    goto :goto_3

    :cond_b
    move-object/from16 v3, p0

    move/from16 p2, v5

    :goto_7
    const/4 v0, 0x2

    if-ne v15, v0, :cond_c

    move/from16 v5, p2

    .line 145
    invoke-static {v5, v6, v1, v4}, Lcom/huawei/hms/scankit/aiscan/common/n;->a(IIII)F

    move-result v0

    return v0

    :cond_c
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0
.end method

.method private a(Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;)F
    .locals 4

    .line 127
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v0

    float-to-int v0, v0

    .line 128
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v1

    float-to-int v1, v1

    .line 129
    invoke-virtual {p2}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v2

    float-to-int v2, v2

    .line 130
    invoke-virtual {p2}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v3

    float-to-int v3, v3

    .line 131
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/huawei/hms/scankit/p/pc;->b(IIII)F

    move-result v0

    .line 132
    invoke-virtual {p2}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v1

    float-to-int v1, v1

    .line 133
    invoke-virtual {p2}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result p2

    float-to-int p2, p2

    .line 134
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v2

    float-to-int v2, v2

    .line 135
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result p1

    float-to-int p1, p1

    .line 136
    invoke-direct {p0, v1, p2, v2, p1}, Lcom/huawei/hms/scankit/p/pc;->b(IIII)F

    move-result p1

    .line 137
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p2

    const/high16 v1, 0x40e00000    # 7.0f

    if-eqz p2, :cond_0

    div-float/2addr p1, v1

    return p1

    .line 138
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p2

    if-eqz p2, :cond_1

    div-float/2addr v0, v1

    return v0

    :cond_1
    add-float/2addr v0, p1

    const/high16 p1, 0x41600000    # 14.0f

    div-float/2addr v0, p1

    return v0
.end method

.method private static a(Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;F)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x2

    .line 16
    :try_start_0
    invoke-static {p0, p1}, Lcom/huawei/hms/scankit/aiscan/common/z;->a(Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;)F

    move-result v2

    div-float/2addr v2, p3

    invoke-static {v2}, Lcom/huawei/hms/scankit/aiscan/common/n;->a(F)I

    move-result v2

    .line 17
    invoke-static {p0, p2}, Lcom/huawei/hms/scankit/aiscan/common/z;->a(Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;)F

    move-result v3

    div-float/2addr v3, p3

    invoke-static {v3}, Lcom/huawei/hms/scankit/aiscan/common/n;->a(F)I

    move-result v3

    add-int/2addr v2, v3

    .line 18
    div-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x7

    and-int/lit8 v3, v2, 0x3

    if-eqz v3, :cond_3

    if-eq v3, v1, :cond_2

    if-eq v3, v0, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object v2

    throw v2
    :try_end_0
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    nop

    .line 20
    invoke-static {p0, p1}, Lcom/huawei/hms/scankit/aiscan/common/z;->a(Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;)F

    move-result p1

    div-float/2addr p1, p3

    float-to-int p1, p1

    .line 21
    invoke-static {p0, p2}, Lcom/huawei/hms/scankit/aiscan/common/z;->a(Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;)F

    move-result p0

    div-float/2addr p0, p3

    float-to-int p0, p0

    add-int/2addr p1, p0

    .line 22
    div-int/2addr p1, v1

    add-int/lit8 v2, p1, 0x7

    and-int/lit8 p0, v2, 0x3

    if-eqz p0, :cond_3

    if-eq p0, v1, :cond_2

    if-eq p0, v0, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    :goto_0
    return v2
.end method

.method private a(Lcom/huawei/hms/scankit/p/rc;Lcom/huawei/hms/scankit/p/rc;Lcom/huawei/hms/scankit/p/rc;FILcom/huawei/hms/scankit/p/zc;[Lcom/huawei/hms/scankit/p/_b;[Lcom/huawei/hms/scankit/p/_b;II[Lcom/huawei/hms/scankit/p/_b;)I
    .locals 19

    move-object/from16 v11, p0

    move/from16 v6, p4

    move/from16 v7, p9

    move/from16 v2, p10

    .line 62
    invoke-virtual/range {p2 .. p2}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual/range {p3 .. p3}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v1

    add-float/2addr v0, v1

    .line 63
    invoke-virtual/range {p2 .. p2}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v3

    sub-float/2addr v1, v3

    invoke-virtual/range {p3 .. p3}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v3

    add-float/2addr v1, v3

    int-to-float v3, v2

    const/high16 v4, 0x40400000    # 3.0f

    div-float v5, v4, v3

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, v5

    .line 64
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v10

    sub-float/2addr v0, v10

    mul-float v0, v0, v8

    add-float/2addr v9, v0

    float-to-int v0, v9

    .line 65
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v10

    sub-float/2addr v1, v10

    mul-float v8, v8, v1

    add-float/2addr v9, v8

    float-to-int v1, v9

    .line 66
    sget-object v8, Lcom/huawei/hms/scankit/p/Bc;->q:[Z

    const/4 v9, 0x0

    aget-boolean v8, v8, v9

    const/4 v10, 0x2

    if-eqz v8, :cond_0

    const/16 v8, 0x16

    if-ne v2, v8, :cond_0

    const/16 v8, 0x8

    const/4 v8, 0x2

    const/16 v12, 0x8

    goto :goto_0

    :cond_0
    const/4 v8, 0x4

    const/16 v12, 0x10

    :goto_0
    move v13, v8

    :goto_1
    if-gt v13, v12, :cond_1

    int-to-float v14, v13

    .line 67
    :try_start_0
    invoke-virtual {v11, v6, v0, v1, v14}, Lcom/huawei/hms/scankit/p/pc;->a(FIIF)Lcom/huawei/hms/scankit/p/_b;

    move-result-object v14

    aput-object v14, p11, v9
    :try_end_0
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    shl-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 68
    :cond_1
    :goto_2
    new-instance v13, Lcom/huawei/hms/scankit/p/_b;

    move/from16 v14, p5

    int-to-float v14, v14

    const/high16 v15, 0x40d00000    # 6.5f

    sub-float/2addr v14, v15

    invoke-virtual/range {p3 .. p3}, Lcom/huawei/hms/scankit/p/rc;->e()F

    move-result v15

    invoke-direct {v13, v14, v14, v15}, Lcom/huawei/hms/scankit/p/_b;-><init>(FFF)V

    const/4 v15, 0x1

    aput-object v13, p11, v15

    .line 69
    aget-object v13, p11, v9

    const/16 v16, 0x0

    const/high16 v17, 0x40800000    # 4.0f

    if-eqz v13, :cond_2

    int-to-float v0, v0

    int-to-float v1, v1

    aget-object v13, p11, v9

    invoke-virtual {v13}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v13

    aget-object v18, p11, v9

    invoke-virtual/range {v18 .. v18}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v4

    invoke-static {v0, v1, v13, v4}, Lcom/huawei/hms/scankit/aiscan/common/n;->a(FFFF)F

    move-result v0

    mul-float v1, v6, v17

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 70
    aput-object v16, p11, v9

    .line 71
    :cond_2
    aget-object v0, p11, v9

    if-nez v0, :cond_4

    if-le v7, v10, :cond_4

    .line 72
    new-instance v0, Lcom/huawei/hms/scankit/p/_b;

    invoke-virtual/range {p6 .. p6}, Lcom/huawei/hms/scankit/p/zc;->b()[I

    move-result-object v1

    add-int/lit8 v4, v7, -0x2

    aget v1, v1, v4

    int-to-float v1, v1

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v1, v10

    invoke-virtual/range {p3 .. p3}, Lcom/huawei/hms/scankit/p/rc;->e()F

    move-result v10

    invoke-direct {v0, v1, v14, v10}, Lcom/huawei/hms/scankit/p/_b;-><init>(FFF)V

    aput-object v0, p11, v15

    .line 73
    invoke-virtual/range {p3 .. p3}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v0

    invoke-virtual/range {p3 .. p3}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v10

    sub-float/2addr v1, v10

    mul-float v5, v5, v1

    sub-float/2addr v0, v5

    float-to-int v0, v0

    .line 74
    invoke-virtual/range {p6 .. p6}, Lcom/huawei/hms/scankit/p/zc;->b()[I

    move-result-object v1

    aget v1, v1, v4

    int-to-float v1, v1

    const/high16 v4, 0x40400000    # 3.0f

    sub-float/2addr v1, v4

    div-float/2addr v1, v3

    invoke-virtual/range {p2 .. p2}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v4

    sub-float/2addr v3, v4

    mul-float v1, v1, v3

    invoke-virtual/range {p3 .. p3}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v3

    add-float/2addr v1, v3

    float-to-int v1, v1

    :goto_3
    if-gt v8, v12, :cond_3

    int-to-float v3, v8

    .line 75
    :try_start_1
    invoke-virtual {v11, v6, v1, v0, v3}, Lcom/huawei/hms/scankit/p/pc;->a(FIIF)Lcom/huawei/hms/scankit/p/_b;

    move-result-object v3

    aput-object v3, p11, v9
    :try_end_1
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    shl-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 76
    :cond_3
    :goto_4
    aget-object v3, p11, v9

    if-eqz v3, :cond_4

    int-to-float v1, v1

    int-to-float v0, v0

    aget-object v3, p11, v9

    invoke-virtual {v3}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v3

    aget-object v4, p11, v9

    .line 77
    invoke-virtual {v4}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v4

    .line 78
    invoke-static {v1, v0, v3, v4}, Lcom/huawei/hms/scankit/aiscan/common/n;->a(FFFF)F

    move-result v0

    mul-float v1, v6, v17

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 79
    aput-object v16, p11, v9

    .line 80
    :cond_4
    sget-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->k:Z

    const/4 v8, 0x0

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->h:Z

    if-eqz v0, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move/from16 v2, p10

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p9

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    .line 81
    invoke-direct/range {v0 .. v10}, Lcom/huawei/hms/scankit/p/pc;->a(Lcom/huawei/hms/scankit/p/zc;ILcom/huawei/hms/scankit/p/rc;Lcom/huawei/hms/scankit/p/rc;Lcom/huawei/hms/scankit/p/rc;FII[Lcom/huawei/hms/scankit/p/_b;[Lcom/huawei/hms/scankit/p/_b;)I

    move-result v8

    :cond_5
    return v8
.end method

.method private a(Lcom/huawei/hms/scankit/p/zc;ILcom/huawei/hms/scankit/p/rc;Lcom/huawei/hms/scankit/p/rc;Lcom/huawei/hms/scankit/p/rc;FII[Lcom/huawei/hms/scankit/p/_b;[Lcom/huawei/hms/scankit/p/_b;)I
    .locals 19

    move/from16 v0, p7

    move/from16 v2, p8

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    const/4 v4, 0x1

    if-nez v3, :cond_0

    add-int/lit8 v5, v0, -0x1

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    move v5, v0

    const/4 v6, 0x0

    :goto_1
    add-int/lit8 v7, v0, -0x1

    if-ne v3, v7, :cond_1

    goto :goto_2

    :cond_1
    move v4, v6

    .line 82
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hms/scankit/p/zc;->b()[I

    move-result-object v6

    aget v6, v6, v3

    int-to-float v6, v6

    const/high16 v7, 0x40400000    # 3.0f

    sub-float/2addr v6, v7

    invoke-virtual/range {p3 .. p3}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v8

    invoke-virtual/range {p4 .. p4}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v9

    sub-float/2addr v8, v9

    mul-float v6, v6, v8

    move/from16 v8, p2

    int-to-float v9, v8

    div-float/2addr v6, v9

    invoke-virtual/range {p4 .. p4}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v10

    add-float/2addr v6, v10

    .line 83
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hms/scankit/p/zc;->b()[I

    move-result-object v10

    aget v10, v10, v3

    int-to-float v10, v10

    sub-float/2addr v10, v7

    invoke-virtual/range {p3 .. p3}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v11

    invoke-virtual/range {p4 .. p4}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v12

    sub-float/2addr v11, v12

    mul-float v10, v10, v11

    div-float/2addr v10, v9

    invoke-virtual/range {p4 .. p4}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v11

    add-float/2addr v10, v11

    :goto_3
    if-ge v4, v5, :cond_3

    .line 84
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hms/scankit/p/zc;->b()[I

    move-result-object v11

    aget v11, v11, v4

    int-to-float v11, v11

    sub-float/2addr v11, v7

    invoke-virtual/range {p4 .. p4}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v12

    invoke-virtual/range {p5 .. p5}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v13

    sub-float/2addr v12, v13

    mul-float v11, v11, v12

    div-float/2addr v11, v9

    sub-float v11, v10, v11

    float-to-int v11, v11

    .line 85
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hms/scankit/p/zc;->b()[I

    move-result-object v12

    aget v12, v12, v4

    int-to-float v12, v12

    sub-float/2addr v12, v7

    invoke-virtual/range {p4 .. p4}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v13

    invoke-virtual/range {p5 .. p5}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v14

    sub-float/2addr v13, v14

    mul-float v12, v12, v13

    div-float/2addr v12, v9

    sub-float v12, v6, v12

    float-to-int v12, v12

    const/4 v13, 0x4

    const/4 v14, 0x4

    :goto_4
    if-gt v14, v13, :cond_2

    mul-int v15, v3, v0

    add-int/2addr v15, v4

    int-to-float v1, v14

    move-object/from16 v7, p0

    move/from16 v13, p6

    .line 86
    :try_start_0
    invoke-virtual {v7, v13, v12, v11, v1}, Lcom/huawei/hms/scankit/p/pc;->a(FIIF)Lcom/huawei/hms/scankit/p/_b;

    move-result-object v1

    aput-object v1, p9, v15

    .line 87
    new-instance v1, Lcom/huawei/hms/scankit/p/_b;

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hms/scankit/p/zc;->b()[I

    move-result-object v16

    aget v0, v16, v3

    int-to-float v0, v0

    const/high16 v16, 0x3f000000    # 0.5f

    add-float v0, v0, v16

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hms/scankit/p/zc;->b()[I

    move-result-object v17
    :try_end_0
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v18, v5

    :try_start_1
    aget v5, v17, v4
    :try_end_1
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_1 .. :try_end_1} :catch_1

    int-to-float v5, v5

    add-float v5, v5, v16

    move/from16 v16, v6

    :try_start_2
    invoke-virtual/range {p5 .. p5}, Lcom/huawei/hms/scankit/p/rc;->e()F

    move-result v6

    invoke-direct {v1, v0, v5, v6}, Lcom/huawei/hms/scankit/p/_b;-><init>(FFF)V

    aput-object v1, p10, v15
    :try_end_2
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_2 .. :try_end_2} :catch_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :catch_0
    move/from16 v18, v5

    :catch_1
    move/from16 v16, v6

    :catch_2
    shl-int/lit8 v14, v14, 0x1

    move/from16 v0, p7

    move/from16 v6, v16

    move/from16 v5, v18

    const/high16 v7, 0x40400000    # 3.0f

    const/4 v13, 0x4

    goto :goto_4

    :cond_2
    move-object/from16 v7, p0

    move/from16 v13, p6

    move/from16 v18, v5

    move/from16 v16, v6

    :goto_5
    add-int/lit8 v4, v4, 0x1

    move/from16 v0, p7

    move/from16 v6, v16

    move/from16 v5, v18

    const/high16 v7, 0x40400000    # 3.0f

    goto/16 :goto_3

    :cond_3
    move-object/from16 v7, p0

    move/from16 v13, p6

    add-int/lit8 v3, v3, 0x1

    move/from16 v0, p7

    goto/16 :goto_0

    :cond_4
    move-object/from16 v7, p0

    return v2
.end method

.method private a(Lcom/huawei/hms/scankit/p/rc;Lcom/huawei/hms/scankit/p/rc;Lcom/huawei/hms/scankit/p/rc;F)Lcom/huawei/hms/scankit/aiscan/common/g;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    move-object/from16 v12, p0

    .line 37
    invoke-static/range {p1 .. p4}, Lcom/huawei/hms/scankit/p/pc;->a(Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;F)I

    move-result v13

    .line 38
    sget-object v0, Lcom/huawei/hms/scankit/p/Bc;->r:Ljava/util/Stack;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-static {v13}, Lcom/huawei/hms/scankit/p/zc;->b(I)Lcom/huawei/hms/scankit/p/zc;

    move-result-object v6

    .line 40
    sget-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->n:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->c:Z

    if-eqz v0, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move v5, v13

    .line 41
    invoke-direct/range {v0 .. v5}, Lcom/huawei/hms/scankit/p/pc;->a(Lcom/huawei/hms/scankit/p/rc;Lcom/huawei/hms/scankit/p/rc;Lcom/huawei/hms/scankit/p/rc;FI)Lcom/huawei/hms/scankit/aiscan/common/g;

    move-result-object v0

    return-object v0

    .line 42
    :cond_0
    invoke-virtual {v6}, Lcom/huawei/hms/scankit/p/zc;->c()I

    move-result v0

    const/4 v14, 0x7

    add-int/lit8 v10, v0, -0x7

    .line 43
    invoke-virtual {v6}, Lcom/huawei/hms/scankit/p/zc;->b()[I

    move-result-object v0

    array-length v15, v0

    mul-int v0, v15, v15

    .line 44
    new-array v11, v0, [Lcom/huawei/hms/scankit/p/_b;

    .line 45
    new-array v9, v0, [Lcom/huawei/hms/scankit/p/_b;

    const/4 v8, 0x2

    new-array v7, v8, [Lcom/huawei/hms/scankit/p/_b;

    .line 46
    invoke-virtual {v6}, Lcom/huawei/hms/scankit/p/zc;->b()[I

    move-result-object v0

    array-length v0, v0

    const/16 v16, 0x0

    if-lez v0, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move v5, v13

    move-object/from16 v17, v7

    move-object v7, v11

    const/16 v18, 0x2

    move-object v8, v9

    move-object/from16 v19, v9

    move v9, v15

    move-object/from16 v20, v11

    move-object/from16 v11, v17

    .line 47
    invoke-direct/range {v0 .. v11}, Lcom/huawei/hms/scankit/p/pc;->a(Lcom/huawei/hms/scankit/p/rc;Lcom/huawei/hms/scankit/p/rc;Lcom/huawei/hms/scankit/p/rc;FILcom/huawei/hms/scankit/p/zc;[Lcom/huawei/hms/scankit/p/_b;[Lcom/huawei/hms/scankit/p/_b;II[Lcom/huawei/hms/scankit/p/_b;)I

    move-result v0

    move v8, v0

    goto :goto_0

    :cond_1
    move-object/from16 v17, v7

    move-object/from16 v19, v9

    move-object/from16 v20, v11

    const/16 v18, 0x2

    const/4 v8, 0x0

    .line 48
    :goto_0
    aget-object v10, v17, v16

    const/4 v11, 0x1

    .line 49
    aget-object v4, v17, v11

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object v3, v10

    move v5, v13

    .line 50
    invoke-static/range {v0 .. v5}, Lcom/huawei/hms/scankit/p/pc;->a(Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;I)Lcom/huawei/hms/scankit/aiscan/common/q;

    move-result-object v9

    .line 51
    sget-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->k:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->h:Z

    if-eqz v0, :cond_2

    move-object/from16 v0, p0

    move-object v1, v9

    move v2, v15

    move v3, v13

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, v20

    move-object v15, v9

    move-object/from16 v9, v19

    .line 52
    invoke-direct/range {v0 .. v9}, Lcom/huawei/hms/scankit/p/pc;->a(Lcom/huawei/hms/scankit/aiscan/common/q;IILcom/huawei/hms/scankit/p/rc;Lcom/huawei/hms/scankit/p/rc;Lcom/huawei/hms/scankit/p/rc;[Lcom/huawei/hms/scankit/p/_b;I[Lcom/huawei/hms/scankit/p/_b;)V

    goto :goto_1

    :cond_2
    move-object v15, v9

    .line 53
    :goto_1
    iget-object v0, v12, Lcom/huawei/hms/scankit/p/pc;->a:Lcom/huawei/hms/scankit/p/bb;

    invoke-static {v0, v15, v13}, Lcom/huawei/hms/scankit/p/pc;->a(Lcom/huawei/hms/scankit/p/bb;Lcom/huawei/hms/scankit/aiscan/common/q;I)Lcom/huawei/hms/scankit/p/bb;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    if-nez v10, :cond_3

    new-array v3, v2, [Lcom/huawei/hms/scankit/aiscan/common/z;

    aput-object p3, v3, v16

    aput-object p1, v3, v11

    aput-object p2, v3, v18

    goto :goto_2

    :cond_3
    new-array v3, v1, [Lcom/huawei/hms/scankit/aiscan/common/z;

    aput-object p3, v3, v16

    aput-object p1, v3, v11

    aput-object p2, v3, v18

    aput-object v10, v3, v2

    :goto_2
    const/16 v4, 0x8

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v5, v4, v16

    aput v5, v4, v11

    int-to-float v6, v13

    aput v6, v4, v18

    aput v5, v4, v2

    aput v6, v4, v1

    const/4 v7, 0x5

    aput v6, v4, v7

    const/4 v8, 0x6

    aput v5, v4, v8

    aput v6, v4, v14

    .line 54
    invoke-virtual {v15, v4}, Lcom/huawei/hms/scankit/aiscan/common/q;->a([F)V

    .line 55
    new-instance v5, Lcom/huawei/hms/scankit/aiscan/common/z;

    aget v6, v4, v16

    aget v9, v4, v11

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hms/scankit/p/rc;->d()Z

    move-result v10

    invoke-direct {v5, v6, v9, v10}, Lcom/huawei/hms/scankit/aiscan/common/z;-><init>(FFZ)V

    .line 56
    new-instance v6, Lcom/huawei/hms/scankit/aiscan/common/z;

    aget v9, v4, v18

    aget v10, v4, v2

    invoke-virtual/range {p2 .. p2}, Lcom/huawei/hms/scankit/p/rc;->d()Z

    move-result v13

    invoke-direct {v6, v9, v10, v13}, Lcom/huawei/hms/scankit/aiscan/common/z;-><init>(FFZ)V

    .line 57
    new-instance v9, Lcom/huawei/hms/scankit/aiscan/common/z;

    aget v10, v4, v1

    aget v7, v4, v7

    invoke-virtual/range {p3 .. p3}, Lcom/huawei/hms/scankit/p/rc;->d()Z

    move-result v13

    invoke-direct {v9, v10, v7, v13}, Lcom/huawei/hms/scankit/aiscan/common/z;-><init>(FFZ)V

    .line 58
    new-instance v7, Lcom/huawei/hms/scankit/aiscan/common/z;

    aget v8, v4, v8

    aget v4, v4, v14

    invoke-direct {v7, v8, v4}, Lcom/huawei/hms/scankit/aiscan/common/z;-><init>(FF)V

    new-array v1, v1, [Lcom/huawei/hms/scankit/aiscan/common/z;

    .line 59
    invoke-direct {v12, v7}, Lcom/huawei/hms/scankit/p/pc;->a(Lcom/huawei/hms/scankit/aiscan/common/z;)Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v4

    aput-object v4, v1, v16

    invoke-direct {v12, v5}, Lcom/huawei/hms/scankit/p/pc;->a(Lcom/huawei/hms/scankit/aiscan/common/z;)Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v4

    aput-object v4, v1, v11

    .line 60
    invoke-direct {v12, v6}, Lcom/huawei/hms/scankit/p/pc;->a(Lcom/huawei/hms/scankit/aiscan/common/z;)Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v4

    aput-object v4, v1, v18

    invoke-direct {v12, v9}, Lcom/huawei/hms/scankit/p/pc;->a(Lcom/huawei/hms/scankit/aiscan/common/z;)Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v4

    aput-object v4, v1, v2

    .line 61
    new-instance v2, Lcom/huawei/hms/scankit/aiscan/common/g;

    move/from16 v4, p4

    invoke-direct {v2, v0, v3, v1, v4}, Lcom/huawei/hms/scankit/aiscan/common/g;-><init>(Lcom/huawei/hms/scankit/p/bb;[Lcom/huawei/hms/scankit/aiscan/common/z;[Lcom/huawei/hms/scankit/aiscan/common/z;F)V

    return-object v2
.end method

.method private a(Lcom/huawei/hms/scankit/p/rc;Lcom/huawei/hms/scankit/p/rc;Lcom/huawei/hms/scankit/p/rc;FI)Lcom/huawei/hms/scankit/aiscan/common/g;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v6, p5

    .line 110
    new-instance v7, Lcom/huawei/hms/scankit/p/bb;

    invoke-direct {v7, v6, v6}, Lcom/huawei/hms/scankit/p/bb;-><init>(II)V

    .line 111
    iget-object v1, v0, Lcom/huawei/hms/scankit/p/pc;->a:Lcom/huawei/hms/scankit/p/bb;

    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/bb;->b()I

    move-result v1

    int-to-float v1, v1

    int-to-float v8, v6

    div-float/2addr v1, v8

    const/4 v9, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v6, :cond_4

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v6, :cond_3

    int-to-float v4, v3

    mul-float v4, v4, v1

    float-to-double v4, v4

    float-to-double v10, v1

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double v10, v10, v12

    add-double/2addr v4, v10

    double-to-int v4, v4

    int-to-float v5, v2

    mul-float v5, v5, v1

    float-to-double v12, v5

    add-double/2addr v12, v10

    double-to-int v5, v12

    const/4 v10, -0x1

    if-lt v4, v10, :cond_1

    .line 112
    iget-object v11, v0, Lcom/huawei/hms/scankit/p/pc;->a:Lcom/huawei/hms/scankit/p/bb;

    invoke-virtual {v11}, Lcom/huawei/hms/scankit/p/bb;->d()I

    move-result v11

    if-gt v4, v11, :cond_1

    if-lt v5, v10, :cond_1

    iget-object v10, v0, Lcom/huawei/hms/scankit/p/pc;->a:Lcom/huawei/hms/scankit/p/bb;

    invoke-virtual {v10}, Lcom/huawei/hms/scankit/p/bb;->b()I

    move-result v10

    if-le v5, v10, :cond_0

    goto :goto_2

    .line 113
    :cond_0
    iget-object v10, v0, Lcom/huawei/hms/scankit/p/pc;->a:Lcom/huawei/hms/scankit/p/bb;

    invoke-virtual {v10, v4, v5}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 114
    invoke-virtual {v7, v3, v2}, Lcom/huawei/hms/scankit/p/bb;->c(II)V

    goto :goto_3

    .line 115
    :cond_1
    :goto_2
    invoke-virtual {v7, v3, v2}, Lcom/huawei/hms/scankit/p/bb;->c(II)V

    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v6, p5

    .line 116
    invoke-static/range {v1 .. v6}, Lcom/huawei/hms/scankit/p/pc;->a(Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;I)Lcom/huawei/hms/scankit/aiscan/common/q;

    move-result-object v1

    const/4 v2, 0x3

    new-array v3, v2, [Lcom/huawei/hms/scankit/aiscan/common/z;

    aput-object p3, v3, v9

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v5, 0x2

    aput-object p2, v3, v5

    const/16 v6, 0x8

    new-array v6, v6, [F

    const/4 v10, 0x0

    aput v10, v6, v9

    aput v10, v6, v4

    aput v8, v6, v5

    aput v10, v6, v2

    const/4 v11, 0x4

    aput v8, v6, v11

    const/4 v12, 0x5

    aput v8, v6, v12

    const/4 v13, 0x6

    aput v10, v6, v13

    const/4 v10, 0x7

    aput v8, v6, v10

    .line 117
    invoke-virtual {v1, v6}, Lcom/huawei/hms/scankit/aiscan/common/q;->a([F)V

    .line 118
    new-instance v1, Lcom/huawei/hms/scankit/aiscan/common/z;

    aget v8, v6, v9

    aget v14, v6, v4

    invoke-direct {v1, v8, v14}, Lcom/huawei/hms/scankit/aiscan/common/z;-><init>(FF)V

    .line 119
    new-instance v8, Lcom/huawei/hms/scankit/aiscan/common/z;

    aget v14, v6, v5

    aget v15, v6, v2

    invoke-direct {v8, v14, v15}, Lcom/huawei/hms/scankit/aiscan/common/z;-><init>(FF)V

    .line 120
    new-instance v14, Lcom/huawei/hms/scankit/aiscan/common/z;

    aget v15, v6, v11

    aget v12, v6, v12

    invoke-direct {v14, v15, v12}, Lcom/huawei/hms/scankit/aiscan/common/z;-><init>(FF)V

    .line 121
    new-instance v12, Lcom/huawei/hms/scankit/aiscan/common/z;

    aget v13, v6, v13

    aget v6, v6, v10

    invoke-direct {v12, v13, v6}, Lcom/huawei/hms/scankit/aiscan/common/z;-><init>(FF)V

    new-array v6, v11, [Lcom/huawei/hms/scankit/aiscan/common/z;

    .line 122
    invoke-direct {v0, v12}, Lcom/huawei/hms/scankit/p/pc;->a(Lcom/huawei/hms/scankit/aiscan/common/z;)Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v10

    aput-object v10, v6, v9

    invoke-direct {v0, v1}, Lcom/huawei/hms/scankit/p/pc;->a(Lcom/huawei/hms/scankit/aiscan/common/z;)Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v1

    aput-object v1, v6, v4

    .line 123
    invoke-direct {v0, v8}, Lcom/huawei/hms/scankit/p/pc;->a(Lcom/huawei/hms/scankit/aiscan/common/z;)Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v1

    aput-object v1, v6, v5

    invoke-direct {v0, v14}, Lcom/huawei/hms/scankit/p/pc;->a(Lcom/huawei/hms/scankit/aiscan/common/z;)Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v1

    aput-object v1, v6, v2

    .line 124
    new-instance v1, Lcom/huawei/hms/scankit/aiscan/common/g;

    move/from16 v2, p4

    invoke-direct {v1, v7, v3, v6, v2}, Lcom/huawei/hms/scankit/aiscan/common/g;-><init>(Lcom/huawei/hms/scankit/p/bb;[Lcom/huawei/hms/scankit/aiscan/common/z;[Lcom/huawei/hms/scankit/aiscan/common/z;F)V

    return-object v1
.end method

.method private static a(Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;I)Lcom/huawei/hms/scankit/aiscan/common/q;
    .locals 18

    move/from16 v0, p5

    int-to-float v0, v0

    const/high16 v1, 0x40600000    # 3.5f

    sub-float v9, v0, v1

    if-eqz p3, :cond_0

    .line 1
    invoke-virtual/range {p3 .. p3}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v0

    .line 2
    invoke-virtual/range {p3 .. p3}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v1

    .line 3
    invoke-virtual/range {p4 .. p4}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v2

    .line 4
    invoke-virtual/range {p4 .. p4}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v3

    move v14, v0

    move v15, v1

    move v6, v2

    move v7, v3

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual/range {p2 .. p2}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v1

    add-float/2addr v0, v1

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual/range {p2 .. p2}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v2

    add-float/2addr v1, v2

    move v14, v0

    move v15, v1

    move v6, v9

    move v7, v6

    .line 7
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v10

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v11

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v12

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v13

    .line 11
    invoke-virtual/range {p2 .. p2}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v16

    .line 12
    invoke-virtual/range {p2 .. p2}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v17

    const/high16 v2, 0x40600000    # 3.5f

    const/high16 v3, 0x40600000    # 3.5f

    const/high16 v5, 0x40600000    # 3.5f

    const/high16 v8, 0x40600000    # 3.5f

    move v4, v9

    .line 13
    invoke-static/range {v2 .. v17}, Lcom/huawei/hms/scankit/aiscan/common/q;->a(FFFFFFFFFFFFFFFF)Lcom/huawei/hms/scankit/aiscan/common/q;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/huawei/hms/scankit/aiscan/common/z;)Lcom/huawei/hms/scankit/aiscan/common/z;
    .locals 6

    .line 154
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v0

    .line 155
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v1

    .line 156
    iget-object v2, p0, Lcom/huawei/hms/scankit/p/pc;->a:Lcom/huawei/hms/scankit/p/bb;

    invoke-virtual {v2}, Lcom/huawei/hms/scankit/p/bb;->d()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 157
    iget-object v3, p0, Lcom/huawei/hms/scankit/p/pc;->a:Lcom/huawei/hms/scankit/p/bb;

    invoke-virtual {v3}, Lcom/huawei/hms/scankit/p/bb;->b()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    cmpg-float v5, v0, v4

    if-gez v5, :cond_0

    const/4 v0, 0x0

    :cond_0
    int-to-float v2, v2

    cmpl-float v5, v0, v2

    if-lez v5, :cond_1

    move v0, v2

    :cond_1
    cmpg-float v2, v1, v4

    if-gez v2, :cond_2

    const/4 v1, 0x0

    :cond_2
    int-to-float v2, v3

    cmpl-float v3, v1, v2

    if-lez v3, :cond_3

    move v1, v2

    .line 158
    :cond_3
    new-instance v2, Lcom/huawei/hms/scankit/aiscan/common/z;

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/z;->d()Z

    move-result p1

    invoke-direct {v2, v0, v1, p1}, Lcom/huawei/hms/scankit/aiscan/common/z;-><init>(FFZ)V

    return-object v2
.end method

.method private static a(Lcom/huawei/hms/scankit/p/bb;Lcom/huawei/hms/scankit/aiscan/common/q;I)Lcom/huawei/hms/scankit/p/bb;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 14
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/j;->a()Lcom/huawei/hms/scankit/aiscan/common/j;

    move-result-object v0

    const/4 v5, 0x1

    move-object v1, p0

    move v2, p2

    move v3, p2

    move-object v4, p1

    .line 15
    invoke-virtual/range {v0 .. v5}, Lcom/huawei/hms/scankit/aiscan/common/j;->a(Lcom/huawei/hms/scankit/p/bb;IILcom/huawei/hms/scankit/aiscan/common/q;Z)Lcom/huawei/hms/scankit/p/bb;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/huawei/hms/scankit/aiscan/common/q;IILcom/huawei/hms/scankit/p/rc;Lcom/huawei/hms/scankit/p/rc;Lcom/huawei/hms/scankit/p/rc;[Lcom/huawei/hms/scankit/p/_b;I[Lcom/huawei/hms/scankit/p/_b;)V
    .locals 25

    const/4 v0, 0x3

    add-int/lit8 v1, p8, 0x3

    mul-int/lit8 v2, v1, 0x2

    .line 88
    new-array v3, v2, [F

    .line 89
    new-array v2, v2, [F

    .line 90
    invoke-virtual/range {p4 .. p4}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v4

    const/4 v5, 0x0

    aput v4, v3, v5

    .line 91
    invoke-virtual/range {p4 .. p4}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v4

    const/4 v6, 0x1

    aput v4, v3, v6

    .line 92
    invoke-virtual/range {p5 .. p5}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v4

    const/4 v7, 0x2

    aput v4, v3, v7

    .line 93
    invoke-virtual/range {p5 .. p5}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v4

    aput v4, v3, v0

    .line 94
    invoke-virtual/range {p6 .. p6}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v4

    const/4 v8, 0x4

    aput v4, v3, v8

    .line 95
    invoke-virtual/range {p6 .. p6}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v4

    const/4 v9, 0x5

    aput v4, v3, v9

    const/high16 v4, 0x40600000    # 3.5f

    .line 96
    aput v4, v2, v5

    .line 97
    aput v4, v2, v6

    move/from16 v10, p3

    int-to-float v10, v10

    sub-float/2addr v10, v4

    .line 98
    aput v10, v2, v7

    .line 99
    aput v4, v2, v0

    .line 100
    aput v4, v2, v8

    .line 101
    aput v10, v2, v9

    const/4 v4, 0x6

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x6

    :goto_0
    mul-int v13, p2, p2

    if-ge v10, v13, :cond_1

    .line 102
    aget-object v13, p7, v10

    if-eqz v13, :cond_0

    add-int/lit8 v13, v11, 0x1

    .line 103
    aget-object v14, p7, v10

    invoke-virtual {v14}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v14

    aput v14, v3, v11

    add-int/lit8 v11, v13, 0x1

    .line 104
    aget-object v14, p7, v10

    invoke-virtual {v14}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v14

    aput v14, v3, v13

    add-int/lit8 v13, v12, 0x1

    .line 105
    aget-object v14, p9, v10

    invoke-virtual {v14}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v14

    aput v14, v2, v12

    add-int/lit8 v12, v13, 0x1

    .line 106
    aget-object v14, p9, v10

    invoke-virtual {v14}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v14

    aput v14, v2, v13

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 107
    :cond_1
    invoke-static {v2, v1, v3}, Lcom/huawei/hms/scankit/util/LoadOpencvJNIUtil;->QuadFitting([FI[F)[F

    move-result-object v1

    .line 108
    array-length v2, v1

    if-eqz v2, :cond_2

    .line 109
    aget v11, v1, v5

    aget v12, v1, v6

    aget v13, v1, v7

    aget v14, v1, v0

    aget v15, v1, v8

    aget v16, v1, v9

    aget v17, v1, v4

    const/4 v0, 0x7

    aget v18, v1, v0

    const/16 v0, 0x8

    aget v19, v1, v0

    const/16 v0, 0x9

    aget v20, v1, v0

    const/16 v0, 0xa

    aget v21, v1, v0

    const/16 v0, 0xb

    aget v22, v1, v0

    const/16 v0, 0xc

    aget v23, v1, v0

    const/16 v0, 0xd

    aget v24, v1, v0

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v24}, Lcom/huawei/hms/scankit/aiscan/common/q;->a(FFFFFFFFFFFFFF)V

    :cond_2
    return-void
.end method

.method private b(IIII)F
    .locals 7

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/huawei/hms/scankit/p/pc;->a(IIII)F

    move-result v0

    sub-int/2addr p3, p1

    sub-int p3, p1, p3

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-gez p3, :cond_0

    int-to-float v3, p1

    sub-int p3, p1, p3

    int-to-float p3, p3

    div-float/2addr v3, p3

    const/4 p3, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v3, p0, Lcom/huawei/hms/scankit/p/pc;->a:Lcom/huawei/hms/scankit/p/bb;

    invoke-virtual {v3}, Lcom/huawei/hms/scankit/p/bb;->d()I

    move-result v3

    if-lt p3, v3, :cond_1

    .line 3
    iget-object v3, p0, Lcom/huawei/hms/scankit/p/pc;->a:Lcom/huawei/hms/scankit/p/bb;

    invoke-virtual {v3}, Lcom/huawei/hms/scankit/p/bb;->d()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, p1

    int-to-float v3, v3

    sub-int/2addr p3, p1

    int-to-float p3, p3

    div-float/2addr v3, p3

    .line 4
    iget-object p3, p0, Lcom/huawei/hms/scankit/p/pc;->a:Lcom/huawei/hms/scankit/p/bb;

    invoke-virtual {p3}, Lcom/huawei/hms/scankit/p/bb;->d()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_0
    int-to-float v4, p2

    sub-int/2addr p4, p2

    int-to-float p4, p4

    mul-float p4, p4, v3

    sub-float p4, v4, p4

    float-to-int p4, p4

    if-gez p4, :cond_2

    sub-int p4, p2, p4

    int-to-float p4, p4

    div-float/2addr v4, p4

    goto :goto_1

    .line 5
    :cond_2
    iget-object v1, p0, Lcom/huawei/hms/scankit/p/pc;->a:Lcom/huawei/hms/scankit/p/bb;

    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/bb;->b()I

    move-result v1

    if-lt p4, v1, :cond_3

    .line 6
    iget-object v1, p0, Lcom/huawei/hms/scankit/p/pc;->a:Lcom/huawei/hms/scankit/p/bb;

    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/bb;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p2

    int-to-float v1, v1

    sub-int/2addr p4, p2

    int-to-float p4, p4

    div-float v4, v1, p4

    .line 7
    iget-object p4, p0, Lcom/huawei/hms/scankit/p/pc;->a:Lcom/huawei/hms/scankit/p/bb;

    invoke-virtual {p4}, Lcom/huawei/hms/scankit/p/bb;->b()I

    move-result p4

    add-int/lit8 v1, p4, -0x1

    goto :goto_1

    :cond_3
    move v1, p4

    const/high16 v4, 0x3f800000    # 1.0f

    :goto_1
    int-to-float p4, p1

    sub-int/2addr p3, p1

    int-to-float p3, p3

    mul-float p3, p3, v4

    add-float/2addr p4, p3

    float-to-int p3, p4

    .line 8
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/huawei/hms/scankit/p/pc;->a(IIII)F

    move-result p1

    .line 9
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p2

    float-to-double p2, p2

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p4

    float-to-double v3, p4

    const-wide/high16 v5, 0x3ff8000000000000L    # 1.5

    mul-double v3, v3, v5

    cmpl-double p4, p2, v3

    if-lez p4, :cond_4

    const/high16 p1, 0x7fc00000    # Float.NaN

    return p1

    :cond_4
    add-float/2addr v0, p1

    sub-float/2addr v0, v2

    return v0
.end method


# virtual methods
.method protected final a(Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;)F
    .locals 0

    .line 125
    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/scankit/p/pc;->a(Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;)F

    move-result p2

    .line 126
    invoke-direct {p0, p1, p3}, Lcom/huawei/hms/scankit/p/pc;->a(Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;)F

    move-result p1

    add-float/2addr p2, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p2, p1

    return p2
.end method

.method protected final a(Lcom/huawei/hms/scankit/p/uc;)Lcom/huawei/hms/scankit/aiscan/common/g;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 28
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/uc;->b()Lcom/huawei/hms/scankit/p/rc;

    move-result-object v0

    .line 29
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/uc;->c()Lcom/huawei/hms/scankit/p/rc;

    move-result-object v1

    .line 30
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/uc;->a()Lcom/huawei/hms/scankit/p/rc;

    move-result-object p1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 31
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Lcom/huawei/hms/scankit/p/pc;->a(Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;)F

    move-result v3

    cmpg-float v4, v3, v2

    if-ltz v4, :cond_0

    .line 32
    invoke-direct {p0, v0, v1, p1, v3}, Lcom/huawei/hms/scankit/p/pc;->a(Lcom/huawei/hms/scankit/p/rc;Lcom/huawei/hms/scankit/p/rc;Lcom/huawei/hms/scankit/p/rc;F)Lcom/huawei/hms/scankit/aiscan/common/g;

    move-result-object p1

    return-object p1

    .line 33
    :cond_0
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object v3

    throw v3
    :try_end_0
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    nop

    .line 34
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/rc;->e()F

    move-result v3

    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/rc;->e()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/rc;->e()F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40400000    # 3.0f

    div-float/2addr v3, v4

    cmpg-float v2, v3, v2

    if-ltz v2, :cond_1

    .line 35
    invoke-direct {p0, v0, v1, p1, v3}, Lcom/huawei/hms/scankit/p/pc;->a(Lcom/huawei/hms/scankit/p/rc;Lcom/huawei/hms/scankit/p/rc;Lcom/huawei/hms/scankit/p/rc;F)Lcom/huawei/hms/scankit/aiscan/common/g;

    move-result-object p1

    return-object p1

    .line 36
    :cond_1
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p1

    throw p1
.end method

.method public final a(Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/huawei/hms/scankit/aiscan/common/d;",
            "*>;)",
            "Lcom/huawei/hms/scankit/aiscan/common/g;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 23
    :cond_0
    sget-object v0, Lcom/huawei/hms/scankit/aiscan/common/d;->h:Lcom/huawei/hms/scankit/aiscan/common/d;

    .line 24
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huawei/hms/scankit/aiscan/common/A;

    :goto_0
    iput-object p1, p0, Lcom/huawei/hms/scankit/p/pc;->b:Lcom/huawei/hms/scankit/aiscan/common/A;

    .line 25
    new-instance p1, Lcom/huawei/hms/scankit/p/tc;

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/pc;->a:Lcom/huawei/hms/scankit/p/bb;

    iget-object v1, p0, Lcom/huawei/hms/scankit/p/pc;->b:Lcom/huawei/hms/scankit/aiscan/common/A;

    invoke-direct {p1, v0, v1}, Lcom/huawei/hms/scankit/p/tc;-><init>(Lcom/huawei/hms/scankit/p/bb;Lcom/huawei/hms/scankit/aiscan/common/A;)V

    .line 26
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/tc;->a()Lcom/huawei/hms/scankit/p/uc;

    move-result-object p1

    .line 27
    invoke-virtual {p0, p1}, Lcom/huawei/hms/scankit/p/pc;->a(Lcom/huawei/hms/scankit/p/uc;)Lcom/huawei/hms/scankit/aiscan/common/g;

    move-result-object p1

    return-object p1
.end method

.method protected final a(FIIF)Lcom/huawei/hms/scankit/p/_b;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    mul-float p4, p4, p1

    float-to-int p4, p4

    sub-int v0, p2, p4

    const/4 v1, 0x0

    .line 146
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 147
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/pc;->a:Lcom/huawei/hms/scankit/p/bb;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/bb;->d()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    add-int/2addr p2, p4

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    sub-int v6, p2, v4

    int-to-float p2, v6

    const/high16 v0, 0x40400000    # 3.0f

    mul-float v0, v0, p1

    cmpg-float p2, p2, v0

    if-ltz p2, :cond_1

    sub-int p2, p3, p4

    .line 148
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 149
    iget-object p2, p0, Lcom/huawei/hms/scankit/p/pc;->a:Lcom/huawei/hms/scankit/p/bb;

    invoke-virtual {p2}, Lcom/huawei/hms/scankit/p/bb;->b()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    add-int/2addr p3, p4

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    sub-int v7, p2, v5

    int-to-float p2, v7

    cmpg-float p2, p2, v0

    if-ltz p2, :cond_0

    .line 150
    new-instance p2, Lcom/huawei/hms/scankit/p/ac;

    iget-object v3, p0, Lcom/huawei/hms/scankit/p/pc;->a:Lcom/huawei/hms/scankit/p/bb;

    iget-object v9, p0, Lcom/huawei/hms/scankit/p/pc;->b:Lcom/huawei/hms/scankit/aiscan/common/A;

    move-object v2, p2

    move v8, p1

    invoke-direct/range {v2 .. v9}, Lcom/huawei/hms/scankit/p/ac;-><init>(Lcom/huawei/hms/scankit/p/bb;IIIIFLcom/huawei/hms/scankit/aiscan/common/A;)V

    .line 151
    invoke-virtual {p2}, Lcom/huawei/hms/scankit/p/ac;->a()Lcom/huawei/hms/scankit/p/_b;

    move-result-object p1

    return-object p1

    .line 152
    :cond_0
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p1

    throw p1

    .line 153
    :cond_1
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p1

    throw p1
.end method
