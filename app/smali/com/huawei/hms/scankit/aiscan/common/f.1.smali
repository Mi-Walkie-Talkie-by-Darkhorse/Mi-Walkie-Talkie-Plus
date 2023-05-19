.class public final Lcom/huawei/hms/scankit/aiscan/common/f;
.super Lcom/huawei/hms/scankit/aiscan/common/j;
.source "DefaultGridSampler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/huawei/hms/scankit/aiscan/common/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/huawei/hms/scankit/p/bb;IIFFFFFFFFFFFFFFFF)Lcom/huawei/hms/scankit/p/bb;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 1
    invoke-static/range {p4 .. p19}, Lcom/huawei/hms/scankit/aiscan/common/q;->a(FFFFFFFFFFFFFFFF)Lcom/huawei/hms/scankit/aiscan/common/q;

    move-result-object v0

    const/4 v1, 0x0

    move-object p4, p0

    move-object p5, p1

    move p6, p2

    move p7, p3

    move-object p8, v0

    move p9, v1

    .line 2
    invoke-virtual/range {p4 .. p9}, Lcom/huawei/hms/scankit/aiscan/common/f;->a(Lcom/huawei/hms/scankit/p/bb;IILcom/huawei/hms/scankit/aiscan/common/q;Z)Lcom/huawei/hms/scankit/p/bb;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/huawei/hms/scankit/p/bb;IILcom/huawei/hms/scankit/aiscan/common/q;)Lcom/huawei/hms/scankit/p/bb;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p4

    if-lez v0, :cond_8

    if-lez v1, :cond_8

    .line 6
    new-instance v3, Lcom/huawei/hms/scankit/p/bb;

    invoke-direct {v3, v0, v1}, Lcom/huawei/hms/scankit/p/bb;-><init>(II)V

    const/16 v4, 0xa

    new-array v4, v4, [F

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v1, :cond_7

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v0, :cond_6

    int-to-float v9, v8

    const v10, 0x3e4ccccd    # 0.2f

    sub-float v11, v9, v10

    add-float/2addr v11, v5

    aput v11, v4, v6

    int-to-float v11, v7

    add-float v12, v11, v5

    const/4 v13, 0x1

    aput v12, v4, v13

    add-float v13, v9, v10

    add-float/2addr v13, v5

    const/4 v14, 0x2

    aput v13, v4, v14

    const/4 v13, 0x3

    aput v12, v4, v13

    add-float/2addr v9, v5

    const/4 v14, 0x4

    aput v9, v4, v14

    sub-float v14, v11, v10

    add-float/2addr v14, v5

    const/4 v15, 0x5

    aput v14, v4, v15

    const/4 v14, 0x6

    aput v9, v4, v14

    add-float/2addr v11, v10

    add-float/2addr v11, v5

    const/4 v10, 0x7

    aput v11, v4, v10

    const/16 v10, 0x8

    aput v9, v4, v10

    const/16 v9, 0x9

    aput v12, v4, v9

    .line 7
    sget-boolean v9, Lcom/huawei/hms/scankit/p/Bc;->k:Z

    if-eqz v9, :cond_0

    sget-boolean v9, Lcom/huawei/hms/scankit/p/Bc;->h:Z

    if-eqz v9, :cond_0

    .line 8
    invoke-virtual {v2, v4}, Lcom/huawei/hms/scankit/aiscan/common/q;->b([F)V

    goto :goto_2

    .line 9
    :cond_0
    invoke-virtual {v2, v4}, Lcom/huawei/hms/scankit/aiscan/common/q;->a([F)V

    .line 10
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hms/scankit/p/bb;->d()I

    move-result v9

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hms/scankit/p/bb;->b()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_3
    if-ge v11, v15, :cond_4

    mul-int/lit8 v14, v11, 0x2

    .line 12
    :try_start_0
    aget v5, v4, v14

    float-to-int v5, v5

    add-int/lit8 v14, v14, 0x1

    .line 13
    aget v14, v4, v14

    float-to-int v14, v14

    const/4 v6, -0x1

    if-lt v5, v6, :cond_2

    if-gt v5, v9, :cond_2

    if-lt v14, v6, :cond_2

    if-le v14, v10, :cond_1

    goto :goto_4

    :cond_1
    move-object/from16 v6, p1

    .line 14
    invoke-virtual {v6, v5, v14}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_2
    :goto_4
    move-object/from16 v6, p1

    :cond_3
    :goto_5
    add-int/lit8 v11, v11, 0x1

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    goto :goto_3

    :cond_4
    move-object/from16 v6, p1

    if-lt v12, v13, :cond_5

    .line 15
    invoke-virtual {v3, v8, v7}, Lcom/huawei/hms/scankit/p/bb;->c(II)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 16
    :catch_0
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object v0

    throw v0

    :cond_5
    :goto_6
    add-int/lit8 v8, v8, 0x1

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_6
    move-object/from16 v6, p1

    add-int/lit8 v7, v7, 0x1

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_7
    return-object v3

    .line 17
    :cond_8
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object v0

    throw v0
.end method

.method public a(Lcom/huawei/hms/scankit/p/bb;IILcom/huawei/hms/scankit/aiscan/common/q;Z)Lcom/huawei/hms/scankit/p/bb;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 3
    sget-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->i:Z

    if-eqz v0, :cond_0

    if-nez p5, :cond_2

    :cond_0
    if-nez v0, :cond_1

    if-eqz p5, :cond_2

    :cond_1
    sget-boolean p5, Lcom/huawei/hms/scankit/p/Bc;->p:Z

    if-eqz p5, :cond_3

    :cond_2
    const/4 p5, 0x1

    goto :goto_0

    :cond_3
    const/4 p5, 0x0

    :goto_0
    if-eqz p5, :cond_4

    .line 4
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/huawei/hms/scankit/aiscan/common/f;->b(Lcom/huawei/hms/scankit/p/bb;IILcom/huawei/hms/scankit/aiscan/common/q;)Lcom/huawei/hms/scankit/p/bb;

    move-result-object p1

    return-object p1

    .line 5
    :cond_4
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/huawei/hms/scankit/aiscan/common/f;->a(Lcom/huawei/hms/scankit/p/bb;IILcom/huawei/hms/scankit/aiscan/common/q;)Lcom/huawei/hms/scankit/p/bb;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/huawei/hms/scankit/p/bb;IILcom/huawei/hms/scankit/aiscan/common/q;)Lcom/huawei/hms/scankit/p/bb;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    if-lez p2, :cond_7

    if-lez p3, :cond_7

    .line 1
    new-instance v0, Lcom/huawei/hms/scankit/p/bb;

    invoke-direct {v0, p2, p3}, Lcom/huawei/hms/scankit/p/bb;-><init>(II)V

    mul-int/lit8 p2, p2, 0x2

    .line 2
    new-array v1, p2, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p3, :cond_6

    int-to-float v4, v3

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, p2, :cond_0

    .line 3
    div-int/lit8 v7, v6, 0x2

    int-to-float v7, v7

    add-float/2addr v7, v5

    aput v7, v1, v6

    add-int/lit8 v7, v6, 0x1

    .line 4
    aput v4, v1, v7

    add-int/lit8 v6, v6, 0x2

    goto :goto_1

    .line 5
    :cond_0
    sget-boolean v4, Lcom/huawei/hms/scankit/p/Bc;->k:Z

    if-eqz v4, :cond_1

    sget-boolean v4, Lcom/huawei/hms/scankit/p/Bc;->h:Z

    if-eqz v4, :cond_1

    .line 6
    invoke-virtual {p4, v1}, Lcom/huawei/hms/scankit/aiscan/common/q;->b([F)V

    goto :goto_2

    .line 7
    :cond_1
    invoke-virtual {p4, v1}, Lcom/huawei/hms/scankit/aiscan/common/q;->a([F)V

    .line 8
    :goto_2
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/bb;->d()I

    move-result v4

    .line 9
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/bb;->b()I

    move-result v5

    const/4 v6, 0x0

    :goto_3
    if-ge v6, p2, :cond_5

    .line 10
    :try_start_0
    aget v7, v1, v6

    float-to-int v7, v7

    add-int/lit8 v8, v6, 0x1

    .line 11
    aget v8, v1, v8

    float-to-int v8, v8

    const/4 v9, -0x1

    if-lt v7, v9, :cond_3

    if-gt v7, v4, :cond_3

    if-lt v8, v9, :cond_3

    if-le v8, v5, :cond_2

    goto :goto_4

    .line 12
    :cond_2
    invoke-virtual {p1, v7, v8}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 13
    div-int/lit8 v7, v6, 0x2

    invoke-virtual {v0, v7, v3}, Lcom/huawei/hms/scankit/p/bb;->c(II)V

    goto :goto_5

    .line 14
    :cond_3
    :goto_4
    div-int/lit8 v7, v6, 0x2

    invoke-virtual {v0, v7, v3}, Lcom/huawei/hms/scankit/p/bb;->c(II)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_5
    add-int/lit8 v6, v6, 0x2

    goto :goto_3

    .line 15
    :catch_0
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p1

    throw p1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    return-object v0

    .line 16
    :cond_7
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p1

    throw p1
.end method
