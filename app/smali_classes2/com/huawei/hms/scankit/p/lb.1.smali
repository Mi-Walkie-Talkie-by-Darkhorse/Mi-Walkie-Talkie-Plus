.class public final Lcom/huawei/hms/scankit/p/lb;
.super Ljava/lang/Object;
.source "Detector.java"


# instance fields
.field private final a:Lcom/huawei/hms/scankit/p/bb;

.field private final b:Lcom/huawei/hms/scankit/aiscan/common/F;


# direct methods
.method public constructor <init>(Lcom/huawei/hms/scankit/p/bb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/huawei/hms/scankit/p/lb;->a:Lcom/huawei/hms/scankit/p/bb;

    .line 3
    new-instance v0, Lcom/huawei/hms/scankit/aiscan/common/F;

    invoke-direct {v0, p1}, Lcom/huawei/hms/scankit/aiscan/common/F;-><init>(Lcom/huawei/hms/scankit/p/bb;)V

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/lb;->b:Lcom/huawei/hms/scankit/aiscan/common/F;

    return-void
.end method

.method private a(Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;)I
    .locals 23

    move-object/from16 v0, p0

    .line 55
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v1

    float-to-int v1, v1

    .line 56
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v2

    float-to-int v2, v2

    .line 57
    invoke-virtual/range {p2 .. p2}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v3

    float-to-int v3, v3

    .line 58
    invoke-virtual/range {p2 .. p2}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v4

    float-to-int v4, v4

    sub-int v5, v4, v2

    .line 59
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    sub-int v6, v3, v1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v5, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move/from16 v21, v2

    move v2, v1

    move/from16 v1, v21

    move/from16 v22, v4

    move v4, v3

    move/from16 v3, v22

    :goto_1
    sub-int v6, v4, v2

    .line 60
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    sub-int v9, v3, v1

    .line 61
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    neg-int v10, v6

    .line 62
    div-int/lit8 v10, v10, 0x2

    const/4 v11, -0x1

    if-ge v1, v3, :cond_2

    const/4 v12, 0x1

    goto :goto_2

    :cond_2
    const/4 v12, -0x1

    :goto_2
    if-ge v2, v4, :cond_3

    const/4 v11, 0x1

    .line 63
    :cond_3
    iget-object v13, v0, Lcom/huawei/hms/scankit/p/lb;->a:Lcom/huawei/hms/scankit/p/bb;

    if-eqz v5, :cond_4

    move v14, v1

    goto :goto_3

    :cond_4
    move v14, v2

    :goto_3
    if-eqz v5, :cond_5

    move v15, v2

    goto :goto_4

    :cond_5
    move v15, v1

    :goto_4
    invoke-virtual {v13, v14, v15}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_5
    if-eq v2, v4, :cond_c

    .line 64
    iget-object v8, v0, Lcom/huawei/hms/scankit/p/lb;->a:Lcom/huawei/hms/scankit/p/bb;

    if-eqz v5, :cond_6

    move v7, v1

    goto :goto_6

    :cond_6
    move v7, v2

    :goto_6
    if-eqz v5, :cond_7

    move v0, v2

    goto :goto_7

    :cond_7
    move v0, v1

    :goto_7
    invoke-virtual {v8, v7, v0}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v0

    const/4 v7, 0x1

    add-int/2addr v14, v7

    if-eq v0, v13, :cond_8

    int-to-double v7, v14

    move/from16 v18, v4

    move/from16 v17, v5

    int-to-double v4, v15

    const-wide/high16 v19, 0x3ff8000000000000L    # 1.5

    div-double v4, v4, v19

    .line 65
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    cmpl-double v19, v7, v4

    if-lez v19, :cond_9

    add-int/lit8 v16, v16, 0x1

    sub-int v4, v15, v14

    .line 66
    div-int v4, v4, v16

    sub-int/2addr v15, v4

    move v13, v0

    const/4 v14, 0x0

    goto :goto_8

    :cond_8
    move/from16 v18, v4

    move/from16 v17, v5

    :cond_9
    :goto_8
    add-int/2addr v10, v9

    if-lez v10, :cond_b

    if-ne v1, v3, :cond_a

    goto :goto_9

    :cond_a
    add-int/2addr v1, v12

    sub-int/2addr v10, v6

    :cond_b
    add-int/2addr v2, v11

    move-object/from16 v0, p0

    move/from16 v5, v17

    move/from16 v4, v18

    goto :goto_5

    :cond_c
    :goto_9
    return v16
.end method

.method private static a(Lcom/huawei/hms/scankit/aiscan/common/z;FF)Lcom/huawei/hms/scankit/aiscan/common/z;
    .locals 2

    .line 20
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v0

    .line 21
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result p0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float p1, v0, p1

    if-gez p1, :cond_0

    sub-float/2addr v0, v1

    goto :goto_0

    :cond_0
    add-float/2addr v0, v1

    :goto_0
    cmpg-float p1, p0, p2

    if-gez p1, :cond_1

    sub-float/2addr p0, v1

    goto :goto_1

    :cond_1
    add-float/2addr p0, v1

    .line 22
    :goto_1
    new-instance p1, Lcom/huawei/hms/scankit/aiscan/common/z;

    invoke-direct {p1, v0, p0}, Lcom/huawei/hms/scankit/aiscan/common/z;-><init>(FF)V

    return-object p1
.end method

.method private static a(Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;I)Lcom/huawei/hms/scankit/aiscan/common/z;
    .locals 2

    .line 17
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v0

    invoke-virtual {p0}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v1

    sub-float/2addr v0, v1

    add-int/lit8 p2, p2, 0x1

    int-to-float p2, p2

    div-float/2addr v0, p2

    .line 18
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result p1

    invoke-virtual {p0}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v1

    sub-float/2addr p1, v1

    div-float/2addr p1, p2

    .line 19
    new-instance p2, Lcom/huawei/hms/scankit/aiscan/common/z;

    invoke-virtual {p0}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v1

    add-float/2addr v1, v0

    invoke-virtual {p0}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result p0

    add-float/2addr p0, p1

    invoke-direct {p2, v1, p0}, Lcom/huawei/hms/scankit/aiscan/common/z;-><init>(FF)V

    return-object p2
.end method

.method private a([Lcom/huawei/hms/scankit/aiscan/common/z;)Lcom/huawei/hms/scankit/aiscan/common/z;
    .locals 12

    const/4 v0, 0x0

    .line 23
    aget-object v0, p1, v0

    const/4 v1, 0x1

    .line 24
    aget-object v2, p1, v1

    const/4 v3, 0x2

    .line 25
    aget-object v3, p1, v3

    const/4 v4, 0x3

    .line 26
    aget-object p1, p1, v4

    .line 27
    invoke-direct {p0, v0, p1}, Lcom/huawei/hms/scankit/p/lb;->a(Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;)I

    move-result v4

    .line 28
    invoke-direct {p0, v2, p1}, Lcom/huawei/hms/scankit/p/lb;->a(Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;)I

    move-result v5

    add-int/2addr v5, v1

    mul-int/lit8 v5, v5, 0x4

    .line 29
    invoke-static {v0, v2, v5}, Lcom/huawei/hms/scankit/p/lb;->a(Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;I)Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v5

    add-int/2addr v4, v1

    mul-int/lit8 v4, v4, 0x4

    .line 30
    invoke-static {v3, v2, v4}, Lcom/huawei/hms/scankit/p/lb;->a(Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;I)Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v4

    .line 31
    invoke-direct {p0, v5, p1}, Lcom/huawei/hms/scankit/p/lb;->a(Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;)I

    move-result v6

    .line 32
    invoke-direct {p0, v4, p1}, Lcom/huawei/hms/scankit/p/lb;->a(Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;)I

    move-result v7

    .line 33
    new-instance v8, Lcom/huawei/hms/scankit/aiscan/common/z;

    .line 34
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v9

    invoke-virtual {v3}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v10

    invoke-virtual {v2}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v11

    sub-float/2addr v10, v11

    add-int/2addr v6, v1

    int-to-float v6, v6

    div-float/2addr v10, v6

    add-float/2addr v9, v10

    .line 35
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v10

    invoke-virtual {v3}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v3

    invoke-virtual {v2}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v11

    sub-float/2addr v3, v11

    div-float/2addr v3, v6

    add-float/2addr v10, v3

    invoke-direct {v8, v9, v10}, Lcom/huawei/hms/scankit/aiscan/common/z;-><init>(FF)V

    .line 36
    new-instance v3, Lcom/huawei/hms/scankit/aiscan/common/z;

    .line 37
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v6

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v9

    invoke-virtual {v2}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v10

    sub-float/2addr v9, v10

    add-int/2addr v7, v1

    int-to-float v1, v7

    div-float/2addr v9, v1

    add-float/2addr v6, v9

    .line 38
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result p1

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v0

    invoke-virtual {v2}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v2

    sub-float/2addr v0, v2

    div-float/2addr v0, v1

    add-float/2addr p1, v0

    invoke-direct {v3, v6, p1}, Lcom/huawei/hms/scankit/aiscan/common/z;-><init>(FF)V

    .line 39
    invoke-direct {p0, v8}, Lcom/huawei/hms/scankit/p/lb;->a(Lcom/huawei/hms/scankit/aiscan/common/z;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 40
    invoke-direct {p0, v3}, Lcom/huawei/hms/scankit/p/lb;->a(Lcom/huawei/hms/scankit/aiscan/common/z;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v3

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 41
    :cond_1
    invoke-direct {p0, v3}, Lcom/huawei/hms/scankit/p/lb;->a(Lcom/huawei/hms/scankit/aiscan/common/z;)Z

    move-result p1

    if-nez p1, :cond_2

    return-object v8

    .line 42
    :cond_2
    invoke-direct {p0, v5, v8}, Lcom/huawei/hms/scankit/p/lb;->a(Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;)I

    move-result p1

    invoke-direct {p0, v4, v8}, Lcom/huawei/hms/scankit/p/lb;->a(Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;)I

    move-result v0

    add-int/2addr p1, v0

    .line 43
    invoke-direct {p0, v5, v3}, Lcom/huawei/hms/scankit/p/lb;->a(Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;)I

    move-result v0

    invoke-direct {p0, v4, v3}, Lcom/huawei/hms/scankit/p/lb;->a(Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;)I

    move-result v1

    add-int/2addr v0, v1

    if-le p1, v0, :cond_3

    return-object v8

    :cond_3
    return-object v3
.end method

.method private static a(Lcom/huawei/hms/scankit/p/bb;Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;II)Lcom/huawei/hms/scankit/p/bb;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p5

    move/from16 v3, p6

    .line 45
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/j;->a()Lcom/huawei/hms/scankit/aiscan/common/j;

    move-result-object v0

    move/from16 v4, p5

    int-to-float v4, v4

    const/high16 v5, 0x3f000000    # 0.5f

    sub-float v6, v4, v5

    move v8, v6

    move/from16 v4, p6

    int-to-float v4, v4

    sub-float v11, v4, v5

    move v9, v11

    .line 46
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v12

    .line 47
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v13

    .line 48
    invoke-virtual/range {p4 .. p4}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v14

    .line 49
    invoke-virtual/range {p4 .. p4}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v15

    .line 50
    invoke-virtual/range {p3 .. p3}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v16

    .line 51
    invoke-virtual/range {p3 .. p3}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v17

    .line 52
    invoke-virtual/range {p2 .. p2}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v18

    .line 53
    invoke-virtual/range {p2 .. p2}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v19

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v7, 0x3f000000    # 0.5f

    const/high16 v10, 0x3f000000    # 0.5f

    .line 54
    invoke-virtual/range {v0 .. v19}, Lcom/huawei/hms/scankit/aiscan/common/j;->a(Lcom/huawei/hms/scankit/p/bb;IIFFFFFFFFFFFFFFFF)Lcom/huawei/hms/scankit/p/bb;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/huawei/hms/scankit/aiscan/common/z;)Z
    .locals 3

    .line 44
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v0

    iget-object v2, p0, Lcom/huawei/hms/scankit/p/lb;->a:Lcom/huawei/hms/scankit/p/bb;

    invoke-virtual {v2}, Lcom/huawei/hms/scankit/p/bb;->d()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result p1

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/lb;->a:Lcom/huawei/hms/scankit/p/bb;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/bb;->b()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private b([Lcom/huawei/hms/scankit/aiscan/common/z;)[Lcom/huawei/hms/scankit/aiscan/common/z;
    .locals 12

    const/4 v0, 0x0

    .line 1
    aget-object v1, p1, v0

    const/4 v2, 0x1

    .line 2
    aget-object v3, p1, v2

    const/4 v4, 0x3

    .line 3
    aget-object v5, p1, v4

    const/4 v6, 0x2

    .line 4
    aget-object p1, p1, v6

    .line 5
    invoke-direct {p0, v1, v3}, Lcom/huawei/hms/scankit/p/lb;->a(Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;)I

    move-result v7

    .line 6
    invoke-direct {p0, v3, v5}, Lcom/huawei/hms/scankit/p/lb;->a(Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;)I

    move-result v8

    .line 7
    invoke-direct {p0, v5, p1}, Lcom/huawei/hms/scankit/p/lb;->a(Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;)I

    move-result v9

    .line 8
    invoke-direct {p0, p1, v1}, Lcom/huawei/hms/scankit/p/lb;->a(Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;)I

    move-result v10

    const/4 v11, 0x4

    new-array v11, v11, [Lcom/huawei/hms/scankit/aiscan/common/z;

    aput-object p1, v11, v0

    aput-object v1, v11, v2

    aput-object v3, v11, v6

    aput-object v5, v11, v4

    if-le v7, v8, :cond_0

    aput-object v1, v11, v0

    aput-object v3, v11, v2

    aput-object v5, v11, v6

    aput-object p1, v11, v4

    move v7, v8

    :cond_0
    if-le v7, v9, :cond_1

    aput-object v3, v11, v0

    aput-object v5, v11, v2

    aput-object p1, v11, v6

    aput-object v1, v11, v4

    goto :goto_0

    :cond_1
    move v9, v7

    :goto_0
    if-le v9, v10, :cond_2

    aput-object v5, v11, v0

    aput-object p1, v11, v2

    aput-object v1, v11, v6

    aput-object v3, v11, v4

    :cond_2
    return-object v11
.end method

.method private c([Lcom/huawei/hms/scankit/aiscan/common/z;)[Lcom/huawei/hms/scankit/aiscan/common/z;
    .locals 10

    const/4 v0, 0x0

    .line 1
    aget-object v1, p1, v0

    const/4 v2, 0x1

    .line 2
    aget-object v3, p1, v2

    const/4 v4, 0x2

    .line 3
    aget-object v5, p1, v4

    const/4 v6, 0x3

    .line 4
    aget-object v7, p1, v6

    .line 5
    invoke-direct {p0, v1, v7}, Lcom/huawei/hms/scankit/p/lb;->a(Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;)I

    move-result v8

    add-int/2addr v8, v2

    mul-int/lit8 v8, v8, 0x4

    .line 6
    invoke-static {v3, v5, v8}, Lcom/huawei/hms/scankit/p/lb;->a(Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;I)Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v9

    .line 7
    invoke-static {v5, v3, v8}, Lcom/huawei/hms/scankit/p/lb;->a(Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;I)Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v8

    .line 8
    invoke-direct {p0, v9, v1}, Lcom/huawei/hms/scankit/p/lb;->a(Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;)I

    move-result v9

    .line 9
    invoke-direct {p0, v8, v7}, Lcom/huawei/hms/scankit/p/lb;->a(Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;)I

    move-result v8

    if-ge v9, v8, :cond_0

    .line 10
    aput-object v1, p1, v0

    .line 11
    aput-object v3, p1, v2

    .line 12
    aput-object v5, p1, v4

    .line 13
    aput-object v7, p1, v6

    goto :goto_0

    .line 14
    :cond_0
    aput-object v3, p1, v0

    .line 15
    aput-object v5, p1, v2

    .line 16
    aput-object v7, p1, v4

    .line 17
    aput-object v1, p1, v6

    :goto_0
    return-object p1
.end method

.method private d([Lcom/huawei/hms/scankit/aiscan/common/z;)[Lcom/huawei/hms/scankit/aiscan/common/z;
    .locals 14

    const/4 v0, 0x0

    .line 1
    aget-object v1, p1, v0

    const/4 v2, 0x1

    .line 2
    aget-object v3, p1, v2

    const/4 v4, 0x2

    .line 3
    aget-object v5, p1, v4

    const/4 v6, 0x3

    .line 4
    aget-object p1, p1, v6

    .line 5
    invoke-direct {p0, v1, p1}, Lcom/huawei/hms/scankit/p/lb;->a(Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;)I

    move-result v7

    add-int/2addr v7, v2

    .line 6
    invoke-direct {p0, v5, p1}, Lcom/huawei/hms/scankit/p/lb;->a(Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;)I

    move-result v8

    add-int/2addr v8, v2

    const/4 v9, 0x4

    mul-int/lit8 v8, v8, 0x4

    .line 7
    invoke-static {v1, v3, v8}, Lcom/huawei/hms/scankit/p/lb;->a(Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;I)Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v8

    mul-int/lit8 v7, v7, 0x4

    .line 8
    invoke-static {v5, v3, v7}, Lcom/huawei/hms/scankit/p/lb;->a(Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;I)Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v7

    .line 9
    invoke-direct {p0, v8, p1}, Lcom/huawei/hms/scankit/p/lb;->a(Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;)I

    move-result v8

    add-int/2addr v8, v2

    .line 10
    invoke-direct {p0, v7, p1}, Lcom/huawei/hms/scankit/p/lb;->a(Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;)I

    move-result v7

    add-int/2addr v7, v2

    and-int/lit8 v10, v8, 0x1

    if-ne v10, v2, :cond_0

    add-int/lit8 v8, v8, 0x1

    :cond_0
    and-int/lit8 v10, v7, 0x1

    if-ne v10, v2, :cond_1

    add-int/lit8 v7, v7, 0x1

    .line 11
    :cond_1
    invoke-virtual {v1}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v10

    invoke-virtual {v3}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v11

    add-float/2addr v10, v11

    invoke-virtual {v5}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v11

    add-float/2addr v10, v11

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v11

    add-float/2addr v10, v11

    const/high16 v11, 0x40800000    # 4.0f

    div-float/2addr v10, v11

    .line 12
    invoke-virtual {v1}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v12

    invoke-virtual {v3}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v13

    add-float/2addr v12, v13

    invoke-virtual {v5}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v13

    add-float/2addr v12, v13

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v13

    add-float/2addr v12, v13

    div-float/2addr v12, v11

    .line 13
    invoke-static {v1, v10, v12}, Lcom/huawei/hms/scankit/p/lb;->a(Lcom/huawei/hms/scankit/aiscan/common/z;FF)Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v1

    .line 14
    invoke-static {v3, v10, v12}, Lcom/huawei/hms/scankit/p/lb;->a(Lcom/huawei/hms/scankit/aiscan/common/z;FF)Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v3

    .line 15
    invoke-static {v5, v10, v12}, Lcom/huawei/hms/scankit/p/lb;->a(Lcom/huawei/hms/scankit/aiscan/common/z;FF)Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v5

    .line 16
    invoke-static {p1, v10, v12}, Lcom/huawei/hms/scankit/p/lb;->a(Lcom/huawei/hms/scankit/aiscan/common/z;FF)Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object p1

    mul-int/lit8 v7, v7, 0x4

    .line 17
    invoke-static {v1, v3, v7}, Lcom/huawei/hms/scankit/p/lb;->a(Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;I)Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v10

    mul-int/lit8 v8, v8, 0x4

    .line 18
    invoke-static {v10, p1, v8}, Lcom/huawei/hms/scankit/p/lb;->a(Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;I)Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v10

    .line 19
    invoke-static {v3, v1, v7}, Lcom/huawei/hms/scankit/p/lb;->a(Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;I)Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v11

    .line 20
    invoke-static {v11, v5, v8}, Lcom/huawei/hms/scankit/p/lb;->a(Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;I)Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v11

    .line 21
    invoke-static {v5, p1, v7}, Lcom/huawei/hms/scankit/p/lb;->a(Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;I)Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v12

    .line 22
    invoke-static {v12, v3, v8}, Lcom/huawei/hms/scankit/p/lb;->a(Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;I)Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v3

    .line 23
    invoke-static {p1, v5, v7}, Lcom/huawei/hms/scankit/p/lb;->a(Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;I)Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object p1

    .line 24
    invoke-static {p1, v1, v8}, Lcom/huawei/hms/scankit/p/lb;->a(Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;I)Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object p1

    new-array v1, v9, [Lcom/huawei/hms/scankit/aiscan/common/z;

    aput-object v10, v1, v0

    aput-object v11, v1, v2

    aput-object v3, v1, v4

    aput-object p1, v1, v6

    return-object v1
.end method


# virtual methods
.method public a()Lcom/huawei/hms/scankit/aiscan/common/g;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/lb;->b:Lcom/huawei/hms/scankit/aiscan/common/F;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/aiscan/common/F;->a()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcom/huawei/hms/scankit/p/lb;->b([Lcom/huawei/hms/scankit/aiscan/common/z;)[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v0

    .line 3
    invoke-direct {p0, v0}, Lcom/huawei/hms/scankit/p/lb;->c([Lcom/huawei/hms/scankit/aiscan/common/z;)[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v0

    .line 4
    invoke-direct {p0, v0}, Lcom/huawei/hms/scankit/p/lb;->a([Lcom/huawei/hms/scankit/aiscan/common/z;)Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 5
    aget-object v1, v0, v2

    if-eqz v1, :cond_3

    .line 6
    invoke-direct {p0, v0}, Lcom/huawei/hms/scankit/p/lb;->d([Lcom/huawei/hms/scankit/aiscan/common/z;)[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v0

    const/4 v1, 0x0

    .line 7
    aget-object v10, v0, v1

    const/4 v11, 0x1

    .line 8
    aget-object v12, v0, v11

    const/4 v13, 0x2

    .line 9
    aget-object v14, v0, v13

    .line 10
    aget-object v0, v0, v2

    .line 11
    invoke-direct {p0, v10, v0}, Lcom/huawei/hms/scankit/p/lb;->a(Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;)I

    move-result v3

    add-int/2addr v3, v11

    .line 12
    invoke-direct {p0, v14, v0}, Lcom/huawei/hms/scankit/p/lb;->a(Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;)I

    move-result v4

    add-int/2addr v4, v11

    and-int/lit8 v5, v3, 0x1

    if-ne v5, v11, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    and-int/lit8 v5, v4, 0x1

    if-ne v5, v11, :cond_1

    add-int/lit8 v4, v4, 0x1

    :cond_1
    mul-int/lit8 v5, v3, 0x4

    mul-int/lit8 v6, v4, 0x7

    if-ge v5, v6, :cond_2

    mul-int/lit8 v5, v4, 0x4

    mul-int/lit8 v6, v3, 0x7

    if-ge v5, v6, :cond_2

    .line 13
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v8, v3

    move v9, v8

    goto :goto_0

    :cond_2
    move v8, v3

    move v9, v4

    .line 14
    :goto_0
    iget-object v3, p0, Lcom/huawei/hms/scankit/p/lb;->a:Lcom/huawei/hms/scankit/p/bb;

    move-object v4, v10

    move-object v5, v12

    move-object v6, v14

    move-object v7, v0

    invoke-static/range {v3 .. v9}, Lcom/huawei/hms/scankit/p/lb;->a(Lcom/huawei/hms/scankit/p/bb;Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;II)Lcom/huawei/hms/scankit/p/bb;

    move-result-object v3

    .line 15
    new-instance v4, Lcom/huawei/hms/scankit/aiscan/common/g;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/huawei/hms/scankit/aiscan/common/z;

    aput-object v10, v5, v1

    aput-object v12, v5, v11

    aput-object v14, v5, v13

    aput-object v0, v5, v2

    invoke-direct {v4, v3, v5}, Lcom/huawei/hms/scankit/aiscan/common/g;-><init>(Lcom/huawei/hms/scankit/p/bb;[Lcom/huawei/hms/scankit/aiscan/common/z;)V

    return-object v4

    .line 16
    :cond_3
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object v0

    throw v0
.end method
