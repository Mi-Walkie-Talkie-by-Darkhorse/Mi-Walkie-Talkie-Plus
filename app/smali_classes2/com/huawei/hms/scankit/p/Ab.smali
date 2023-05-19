.class public abstract Lcom/huawei/hms/scankit/p/Ab;
.super Ljava/lang/Object;
.source "OneDReader.java"

# interfaces
.implements Lcom/huawei/hms/scankit/aiscan/common/t;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a([I[IF)F
    .locals 9

    .line 45
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 46
    aget v5, p0, v2

    add-int/2addr v3, v5

    .line 47
    aget v5, p1, v2

    add-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    if-ge v3, v4, :cond_1

    return v2

    :cond_1
    int-to-float v3, v3

    int-to-float v4, v4

    div-float v4, v3, v4

    mul-float p2, p2, v4

    const/4 v5, 0x0

    :goto_1
    if-ge v1, v0, :cond_4

    .line 48
    aget v6, p0, v1

    .line 49
    aget v7, p1, v1

    int-to-float v7, v7

    mul-float v7, v7, v4

    int-to-float v6, v6

    cmpl-float v8, v6, v7

    if-lez v8, :cond_2

    sub-float/2addr v6, v7

    goto :goto_2

    :cond_2
    sub-float v6, v7, v6

    :goto_2
    cmpl-float v7, v6, p2

    if-lez v7, :cond_3

    return v2

    :cond_3
    add-float/2addr v5, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    div-float/2addr v5, v3

    return v5
.end method

.method private a(Lcom/huawei/hms/scankit/p/_a;Lcom/huawei/hms/scankit/p/ab;Ljava/util/Map;II)Lcom/huawei/hms/scankit/aiscan/common/x;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/scankit/p/_a;",
            "Lcom/huawei/hms/scankit/p/ab;",
            "Ljava/util/Map<",
            "Lcom/huawei/hms/scankit/aiscan/common/d;",
            "*>;II)",
            "Lcom/huawei/hms/scankit/aiscan/common/x;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_7

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p1, p4, p2}, Lcom/huawei/hms/scankit/p/_a;->a(ILcom/huawei/hms/scankit/p/ab;)Lcom/huawei/hms/scankit/p/ab;

    move-result-object p2
    :try_end_0
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_0
    if-ne v0, v2, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/_a;->b()Lcom/huawei/hms/scankit/p/bb;

    move-result-object v1

    invoke-virtual {v1, p4, p2}, Lcom/huawei/hms/scankit/p/bb;->a(ILcom/huawei/hms/scankit/p/ab;)Lcom/huawei/hms/scankit/p/ab;

    move-result-object p2

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 4
    sget-boolean v3, Lcom/huawei/hms/scankit/p/Bc;->o:Z

    if-nez v3, :cond_2

    goto :goto_3

    .line 5
    :cond_2
    invoke-virtual {p1, p4, v2}, Lcom/huawei/hms/scankit/p/_a;->a(II)Lcom/huawei/hms/scankit/p/ab;

    move-result-object p2

    .line 6
    :cond_3
    :goto_1
    invoke-virtual {p2}, Lcom/huawei/hms/scankit/p/ab;->c()[I

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/hms/scankit/p/Ab;->a([I)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_3

    .line 7
    :cond_4
    sget-boolean v3, Lcom/huawei/hms/scankit/p/Bc;->c:Z

    if-nez v3, :cond_5

    const/4 v5, 0x1

    goto :goto_2

    :cond_5
    move v5, v1

    :goto_2
    move-object v3, p0

    move-object v4, p2

    move-object v6, p3

    move v7, p4

    move v8, p5

    .line 8
    invoke-direct/range {v3 .. v8}, Lcom/huawei/hms/scankit/p/Ab;->a(Lcom/huawei/hms/scankit/p/ab;ILjava/util/Map;II)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 9
    invoke-virtual {v1}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    return-object v1

    :catch_0
    :cond_6
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Lcom/huawei/hms/scankit/p/ab;ILjava/util/Map;II)Lcom/huawei/hms/scankit/aiscan/common/x;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/scankit/p/ab;",
            "I",
            "Ljava/util/Map<",
            "Lcom/huawei/hms/scankit/aiscan/common/d;",
            "*>;II)",
            "Lcom/huawei/hms/scankit/aiscan/common/x;"
        }
    .end annotation

    move/from16 v0, p5

    const/4 v1, 0x0

    move/from16 v3, p2

    move-object/from16 v2, p3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_8

    if-nez v4, :cond_0

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hms/scankit/p/ab;->b()V

    :cond_0
    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hms/scankit/p/ab;->h()V

    :cond_1
    const/4 v6, 0x2

    if-ne v4, v6, :cond_2

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hms/scankit/p/ab;->f()V

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hms/scankit/p/ab;->i()V

    :cond_2
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_7

    if-ne v7, v5, :cond_3

    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hms/scankit/p/ab;->g()V

    if-eqz v2, :cond_3

    .line 15
    sget-object v8, Lcom/huawei/hms/scankit/aiscan/common/d;->h:Lcom/huawei/hms/scankit/aiscan/common/d;

    invoke-interface {v2, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 16
    new-instance v9, Ljava/util/EnumMap;

    const-class v10, Lcom/huawei/hms/scankit/aiscan/common/d;

    invoke-direct {v9, v10}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 17
    invoke-interface {v9, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 18
    invoke-interface {v9, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v8, p0

    move/from16 v10, p4

    move-object v2, v9

    move-object/from16 v9, p1

    goto :goto_2

    :cond_3
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p4

    .line 19
    :goto_2
    :try_start_0
    invoke-virtual {v8, v10, v9, v2}, Lcom/huawei/hms/scankit/p/Ab;->a(ILcom/huawei/hms/scankit/p/ab;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object v11

    if-ne v7, v5, :cond_4

    .line 20
    invoke-virtual {v11}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 21
    new-instance v13, Lcom/huawei/hms/scankit/aiscan/common/z;

    int-to-float v14, v0

    aget-object v15, v12, v1

    invoke-virtual {v15}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v15

    sub-float v15, v14, v15

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v15, v15, v16

    aget-object v17, v12, v1

    invoke-virtual/range {v17 .. v17}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v6

    invoke-direct {v13, v15, v6}, Lcom/huawei/hms/scankit/aiscan/common/z;-><init>(FF)V

    aput-object v13, v12, v1

    .line 22
    new-instance v6, Lcom/huawei/hms/scankit/aiscan/common/z;

    aget-object v13, v12, v5

    invoke-virtual {v13}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v13

    sub-float/2addr v14, v13

    sub-float v14, v14, v16

    aget-object v13, v12, v5

    invoke-virtual {v13}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v13

    invoke-direct {v6, v14, v13}, Lcom/huawei/hms/scankit/aiscan/common/z;-><init>(FF)V

    aput-object v6, v12, v5

    .line 23
    :cond_4
    invoke-static {v11, v0}, Lcom/huawei/hms/scankit/p/Ab;->a(Lcom/huawei/hms/scankit/aiscan/common/x;I)Z

    move-result v6
    :try_end_0
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v6, :cond_5

    goto :goto_3

    :cond_5
    return-object v11

    :catch_0
    nop

    if-ne v7, v5, :cond_6

    .line 24
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hms/scankit/p/ab;->g()V

    :cond_6
    :goto_3
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x2

    goto :goto_1

    :cond_7
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p4

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_8
    move-object/from16 v8, p0

    const/4 v0, 0x0

    return-object v0
.end method

.method protected static a(Lcom/huawei/hms/scankit/p/ab;I[I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 32
    array-length v0, p2

    const/4 v1, 0x0

    .line 33
    invoke-static {p2, v1, v0, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 34
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/ab;->d()I

    move-result v2

    if-ge p1, v2, :cond_8

    .line 35
    invoke-virtual {p0, p1}, Lcom/huawei/hms/scankit/p/ab;->a(I)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    const/4 v5, 0x0

    :goto_0
    if-ge p1, v2, :cond_5

    .line 36
    invoke-virtual {p0, p1}, Lcom/huawei/hms/scankit/p/ab;->a(I)Z

    move-result v6

    if-eq v6, v3, :cond_1

    if-ltz v5, :cond_0

    .line 37
    array-length v6, p2

    if-ge v5, v6, :cond_0

    .line 38
    aget v6, p2, v5

    add-int/2addr v6, v4

    aput v6, p2, v5

    goto :goto_1

    .line 39
    :cond_0
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0

    :cond_1
    add-int/lit8 v5, v5, 0x1

    if-ne v5, v0, :cond_2

    goto :goto_2

    :cond_2
    if-ltz v5, :cond_4

    .line 40
    array-length v6, p2

    if-ge v5, v6, :cond_4

    .line 41
    aput v4, p2, v5

    if-nez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 42
    :cond_4
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0

    :cond_5
    :goto_2
    if-eq v5, v0, :cond_7

    sub-int/2addr v0, v4

    if-ne v5, v0, :cond_6

    if-ne p1, v2, :cond_6

    goto :goto_3

    .line 43
    :cond_6
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0

    :cond_7
    :goto_3
    return-void

    .line 44
    :cond_8
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0
.end method

.method private static a(Lcom/huawei/hms/scankit/aiscan/common/x;I)Z
    .locals 6

    .line 28
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object p0

    const/4 v0, 0x0

    .line 29
    aget-object v1, p0, v0

    invoke-virtual {v1}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v1

    float-to-double v1, v1

    const/4 v3, 0x1

    .line 30
    aget-object p0, p0, v3

    invoke-virtual {p0}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result p0

    float-to-double v4, p0

    sub-double/2addr v4, v1

    .line 31
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    int-to-double p0, p1

    div-double/2addr v1, p0

    const-wide p0, 0x3fd999999999999aL    # 0.4

    cmpl-double v4, v1, p0

    if-lez v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static a([I)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 25
    :goto_0
    array-length v4, p0

    const/16 v5, 0x14

    const/4 v6, 0x1

    if-ge v1, v4, :cond_0

    if-ge v2, v5, :cond_0

    .line 26
    aget v4, p0, v1

    shl-int/2addr v4, v6

    or-int/2addr v3, v4

    aget v4, p0, v1

    xor-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 27
    aget v3, p0, v1

    shr-int/lit8 v3, v3, 0x1f

    and-int/2addr v3, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-lt v2, v5, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private b(Lcom/huawei/hms/scankit/p/_a;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/x;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/scankit/p/_a;",
            "Ljava/util/Map<",
            "Lcom/huawei/hms/scankit/aiscan/common/d;",
            "*>;)",
            "Lcom/huawei/hms/scankit/aiscan/common/x;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    move-object/from16 v6, p2

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hms/scankit/p/_a;->e()I

    move-result v7

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hms/scankit/p/_a;->c()I

    move-result v8

    .line 3
    new-instance v9, Lcom/huawei/hms/scankit/p/ab;

    invoke-direct {v9, v7}, Lcom/huawei/hms/scankit/p/ab;-><init>(I)V

    shr-int/lit8 v0, v8, 0x5

    const/4 v10, 0x1

    .line 4
    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 5
    div-int/lit8 v0, v8, 0x2

    if-eqz v6, :cond_0

    .line 6
    sget-object v1, Lcom/huawei/hms/scankit/aiscan/common/d;->d:Lcom/huawei/hms/scankit/aiscan/common/d;

    invoke-interface {v6, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 8
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int v1, v1, v11

    div-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    :cond_0
    move v12, v0

    const/4 v13, 0x0

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xf

    if-ge v0, v1, :cond_4

    add-int/lit8 v14, v0, 0x1

    .line 9
    div-int/lit8 v1, v14, 0x2

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    neg-int v1, v1

    :goto_2
    mul-int v1, v1, v11

    add-int v4, v12, v1

    if-ltz v4, :cond_4

    if-ge v4, v8, :cond_4

    move-object v0, p0

    move-object/from16 v1, p1

    move-object v2, v9

    move-object/from16 v3, p2

    move v5, v7

    .line 10
    invoke-direct/range {v0 .. v5}, Lcom/huawei/hms/scankit/p/Ab;->a(Lcom/huawei/hms/scankit/p/_a;Lcom/huawei/hms/scankit/p/ab;Ljava/util/Map;II)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    return-object v0

    :cond_3
    move v0, v14

    goto :goto_0

    .line 12
    :cond_4
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public abstract a(ILcom/huawei/hms/scankit/p/ab;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/x;
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
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation
.end method

.method public a(Lcom/huawei/hms/scankit/p/_a;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/x;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/scankit/p/_a;",
            "Ljava/util/Map<",
            "Lcom/huawei/hms/scankit/aiscan/common/d;",
            "*>;)",
            "Lcom/huawei/hms/scankit/aiscan/common/x;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/scankit/p/Ab;->b(Lcom/huawei/hms/scankit/p/_a;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object p1

    return-object p1
.end method
