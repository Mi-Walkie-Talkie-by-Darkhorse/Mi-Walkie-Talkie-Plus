.class public final Lcom/huawei/hms/scankit/p/Qb;
.super Ljava/lang/Object;
.source "Detector.java"


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:[I

.field private static final d:[I

.field private static e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lcom/huawei/hms/scankit/p/Qb;->a:[I

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lcom/huawei/hms/scankit/p/Qb;->b:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_2

    sput-object v0, Lcom/huawei/hms/scankit/p/Qb;->c:[I

    const/16 v0, 0x9

    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_3

    sput-object v0, Lcom/huawei/hms/scankit/p/Qb;->d:[I

    const/4 v0, 0x0

    .line 5
    sput-boolean v0, Lcom/huawei/hms/scankit/p/Qb;->e:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x4
        0x1
        0x5
    .end array-data

    :array_1
    .array-data 4
        0x6
        0x2
        0x7
        0x3
    .end array-data

    :array_2
    .array-data 4
        0x8
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x7
        0x1
        0x1
        0x3
        0x1
        0x1
        0x1
        0x2
        0x1
    .end array-data
.end method

.method private static a([I[IF)F
    .locals 9

    .line 59
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 60
    aget v5, p0, v2

    add-int/2addr v3, v5

    .line 61
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

    .line 62
    aget v6, p0, v1

    .line 63
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

.method public static a(Lcom/huawei/hms/scankit/p/_a;Ljava/util/Map;Z)Lcom/huawei/hms/scankit/p/Wb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/scankit/p/_a;",
            "Ljava/util/Map<",
            "Lcom/huawei/hms/scankit/aiscan/common/d;",
            "*>;Z)",
            "Lcom/huawei/hms/scankit/p/Wb;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/_a;->b()Lcom/huawei/hms/scankit/p/bb;

    move-result-object p0

    const/4 p1, 0x0

    .line 2
    invoke-static {p1}, Lcom/huawei/hms/scankit/p/Qb;->a(Z)V

    .line 3
    invoke-static {p2, p0}, Lcom/huawei/hms/scankit/p/Qb;->a(ZLcom/huawei/hms/scankit/p/bb;)Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/bb;->clone()Lcom/huawei/hms/scankit/p/bb;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/bb;->e()V

    .line 7
    invoke-static {p2, p0}, Lcom/huawei/hms/scankit/p/Qb;->a(ZLcom/huawei/hms/scankit/p/bb;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x1

    .line 8
    invoke-static {p2}, Lcom/huawei/hms/scankit/p/Qb;->a(Z)V

    .line 9
    :cond_0
    new-instance p2, Lcom/huawei/hms/scankit/p/Wb;

    invoke-direct {p2, p0, p1}, Lcom/huawei/hms/scankit/p/Wb;-><init>(Lcom/huawei/hms/scankit/p/bb;Ljava/util/List;)V

    return-object p2
.end method

.method private static a(ZLcom/huawei/hms/scankit/p/bb;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/huawei/hms/scankit/p/bb;",
            ")",
            "Ljava/util/List<",
            "[",
            "Lcom/huawei/hms/scankit/aiscan/common/z;",
            ">;"
        }
    .end annotation

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 11
    :goto_1
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/bb;->b()I

    move-result v6

    if-ge v3, v6, :cond_7

    .line 12
    invoke-static {p1, v3, v4}, Lcom/huawei/hms/scankit/p/Qb;->a(Lcom/huawei/hms/scankit/p/bb;II)[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v4

    .line 13
    aget-object v6, v4, v2

    if-nez v6, :cond_4

    const/4 v6, 0x3

    aget-object v7, v4, v6

    if-nez v7, :cond_4

    if-nez v5, :cond_0

    goto :goto_4

    .line 14
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/huawei/hms/scankit/aiscan/common/z;

    .line 15
    aget-object v7, v5, v1

    if-eqz v7, :cond_2

    int-to-float v3, v3

    .line 16
    aget-object v7, v5, v1

    invoke-virtual {v7}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-int v3, v3

    .line 17
    :cond_2
    aget-object v7, v5, v6

    if-eqz v7, :cond_1

    .line 18
    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v5

    float-to-int v5, v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x5

    goto :goto_0

    .line 19
    :cond_4
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p0, :cond_5

    goto :goto_4

    :cond_5
    const/4 v3, 0x2

    .line 20
    aget-object v5, v4, v3

    if-eqz v5, :cond_6

    .line 21
    aget-object v5, v4, v3

    invoke-virtual {v5}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v5

    float-to-int v5, v5

    .line 22
    aget-object v3, v4, v3

    invoke-virtual {v3}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v3

    goto :goto_3

    :cond_6
    const/4 v3, 0x4

    .line 23
    aget-object v5, v4, v3

    invoke-virtual {v5}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v5

    float-to-int v5, v5

    .line 24
    aget-object v3, v4, v3

    invoke-virtual {v3}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v3

    :goto_3
    float-to-int v3, v3

    move v4, v5

    const/4 v5, 0x1

    goto :goto_1

    :cond_7
    :goto_4
    return-object v0
.end method

.method public static a(Z)V
    .locals 0

    .line 64
    sput-boolean p0, Lcom/huawei/hms/scankit/p/Qb;->e:Z

    return-void
.end method

.method private static a([Lcom/huawei/hms/scankit/aiscan/common/z;[Lcom/huawei/hms/scankit/aiscan/common/z;[I)V
    .locals 3

    const/4 v0, 0x0

    .line 32
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 33
    aget v1, p2, v0

    aget-object v2, p1, v0

    aput-object v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a()Z
    .locals 1

    .line 65
    sget-boolean v0, Lcom/huawei/hms/scankit/p/Qb;->e:Z

    return v0
.end method

.method private static a(Lcom/huawei/hms/scankit/p/bb;IIIZ[I[I)[I
    .locals 9

    .line 47
    array-length v0, p6

    const/4 v1, 0x0

    invoke-static {p6, v1, v0, v1}, Ljava/util/Arrays;->fill([IIII)V

    const/4 v0, 0x0

    .line 48
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v2

    if-eqz v2, :cond_0

    if-lez p1, :cond_0

    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x3

    if-ge v0, v3, :cond_0

    add-int/lit8 p1, p1, -0x1

    move v0, v2

    goto :goto_0

    .line 49
    :cond_0
    array-length v0, p5

    move v2, p4

    const/4 v3, 0x0

    move p4, p1

    :goto_1
    const v4, 0x3ed70a3d    # 0.42f

    const v5, 0x3f4ccccd    # 0.8f

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ge p1, p3, :cond_5

    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v8

    if-eq v8, v2, :cond_1

    .line 51
    aget v4, p6, v3

    add-int/2addr v4, v7

    aput v4, p6, v3

    goto :goto_3

    :cond_1
    add-int/lit8 v8, v0, -0x1

    if-ne v3, v8, :cond_3

    .line 52
    invoke-static {p6, p5, v5}, Lcom/huawei/hms/scankit/p/Qb;->a([I[IF)F

    move-result v5

    cmpg-float v4, v5, v4

    if-gez v4, :cond_2

    new-array p0, v6, [I

    aput p4, p0, v1

    aput p1, p0, v7

    return-object p0

    .line 53
    :cond_2
    aget v4, p6, v1

    aget v5, p6, v7

    add-int/2addr v4, v5

    add-int/2addr p4, v4

    add-int/lit8 v4, v3, -0x1

    .line 54
    invoke-static {p6, v6, p6, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    aput v1, p6, v4

    .line 56
    aput v1, p6, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 57
    :goto_2
    aput v7, p6, v3

    if-nez v2, :cond_4

    const/4 v2, 0x1

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_5
    sub-int/2addr v0, v7

    if-ne v3, v0, :cond_6

    .line 58
    invoke-static {p6, p5, v5}, Lcom/huawei/hms/scankit/p/Qb;->a([I[IF)F

    move-result p0

    cmpg-float p0, p0, v4

    if-gez p0, :cond_6

    new-array p0, v6, [I

    aput p4, p0, v1

    sub-int/2addr p1, v7

    aput p1, p0, v7

    return-object p0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Lcom/huawei/hms/scankit/p/bb;II)[Lcom/huawei/hms/scankit/aiscan/common/z;
    .locals 9

    .line 25
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/bb;->b()I

    move-result v6

    .line 26
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/bb;->d()I

    move-result v7

    const/16 v0, 0x8

    new-array v8, v0, [Lcom/huawei/hms/scankit/aiscan/common/z;

    .line 27
    sget-object v5, Lcom/huawei/hms/scankit/p/Qb;->c:[I

    move-object v0, p0

    move v1, v6

    move v2, v7

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/huawei/hms/scankit/p/Qb;->a(Lcom/huawei/hms/scankit/p/bb;IIII[I)[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v0

    sget-object v1, Lcom/huawei/hms/scankit/p/Qb;->a:[I

    invoke-static {v8, v0, v1}, Lcom/huawei/hms/scankit/p/Qb;->a([Lcom/huawei/hms/scankit/aiscan/common/z;[Lcom/huawei/hms/scankit/aiscan/common/z;[I)V

    const/4 v0, 0x4

    .line 28
    aget-object v1, v8, v0

    if-eqz v1, :cond_0

    .line 29
    aget-object p1, v8, v0

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result p1

    float-to-int p2, p1

    .line 30
    aget-object p1, v8, v0

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result p1

    float-to-int p1, p1

    :cond_0
    move v3, p1

    move v4, p2

    .line 31
    sget-object v5, Lcom/huawei/hms/scankit/p/Qb;->d:[I

    move-object v0, p0

    move v1, v6

    move v2, v7

    invoke-static/range {v0 .. v5}, Lcom/huawei/hms/scankit/p/Qb;->a(Lcom/huawei/hms/scankit/p/bb;IIII[I)[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object p0

    sget-object p1, Lcom/huawei/hms/scankit/p/Qb;->b:[I

    invoke-static {v8, p0, p1}, Lcom/huawei/hms/scankit/p/Qb;->a([Lcom/huawei/hms/scankit/aiscan/common/z;[Lcom/huawei/hms/scankit/aiscan/common/z;[I)V

    return-object v8
.end method

.method private static a(Lcom/huawei/hms/scankit/p/bb;IIII[I)[Lcom/huawei/hms/scankit/aiscan/common/z;
    .locals 18

    move/from16 v0, p1

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/huawei/hms/scankit/aiscan/common/z;

    move-object/from16 v9, p5

    .line 34
    array-length v2, v9

    new-array v10, v2, [I

    move/from16 v11, p3

    :goto_0
    const/4 v12, 0x0

    const/4 v13, 0x1

    if-ge v11, v0, :cond_3

    const/4 v6, 0x0

    move-object/from16 v2, p0

    move/from16 v3, p4

    move v4, v11

    move/from16 v5, p2

    move-object/from16 v7, p5

    move-object v8, v10

    .line 35
    invoke-static/range {v2 .. v8}, Lcom/huawei/hms/scankit/p/Qb;->a(Lcom/huawei/hms/scankit/p/bb;IIIZ[I[I)[I

    move-result-object v2

    if-eqz v2, :cond_2

    move/from16 v17, v11

    move-object v11, v2

    move/from16 v2, v17

    :goto_1
    if-lez v2, :cond_1

    add-int/lit8 v14, v2, -0x1

    const/4 v6, 0x0

    move-object/from16 v2, p0

    move/from16 v3, p4

    move v4, v14

    move/from16 v5, p2

    move-object/from16 v7, p5

    move-object v8, v10

    .line 36
    invoke-static/range {v2 .. v8}, Lcom/huawei/hms/scankit/p/Qb;->a(Lcom/huawei/hms/scankit/p/bb;IIIZ[I[I)[I

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v11, v2

    move v2, v14

    goto :goto_1

    :cond_0
    add-int/2addr v14, v13

    goto :goto_2

    :cond_1
    move v14, v2

    .line 37
    :goto_2
    new-instance v2, Lcom/huawei/hms/scankit/aiscan/common/z;

    aget v3, v11, v12

    int-to-float v3, v3

    int-to-float v4, v14

    invoke-direct {v2, v3, v4}, Lcom/huawei/hms/scankit/aiscan/common/z;-><init>(FF)V

    aput-object v2, v1, v12

    .line 38
    new-instance v2, Lcom/huawei/hms/scankit/aiscan/common/z;

    aget v3, v11, v13

    int-to-float v3, v3

    invoke-direct {v2, v3, v4}, Lcom/huawei/hms/scankit/aiscan/common/z;-><init>(FF)V

    aput-object v2, v1, v13

    move v11, v14

    const/4 v2, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v11, v11, 0x5

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/lit8 v3, v11, 0x1

    if-eqz v2, :cond_7

    const/4 v14, 0x2

    new-array v2, v14, [I

    .line 39
    aget-object v4, v1, v12

    invoke-virtual {v4}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v4

    float-to-int v4, v4

    aput v4, v2, v12

    aget-object v4, v1, v13

    invoke-virtual {v4}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v4

    float-to-int v4, v4

    aput v4, v2, v13

    move-object v15, v2

    move v8, v3

    const/4 v7, 0x0

    :goto_4
    if-ge v8, v0, :cond_6

    .line 40
    aget v3, v15, v12

    const/4 v6, 0x0

    move-object/from16 v2, p0

    move v4, v8

    move/from16 v5, p2

    move v14, v7

    move-object/from16 v7, p5

    move/from16 v16, v8

    move-object v8, v10

    invoke-static/range {v2 .. v8}, Lcom/huawei/hms/scankit/p/Qb;->a(Lcom/huawei/hms/scankit/p/bb;IIIZ[I[I)[I

    move-result-object v2

    if-eqz v2, :cond_4

    .line 41
    aget v3, v15, v12

    aget v4, v2, v12

    sub-int/2addr v3, v4

    .line 42
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x5

    if-ge v3, v4, :cond_4

    aget v3, v15, v13

    aget v5, v2, v13

    sub-int/2addr v3, v5

    .line 43
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v4, :cond_4

    move-object v15, v2

    const/4 v7, 0x0

    goto :goto_5

    :cond_4
    const/16 v2, 0x19

    if-le v14, v2, :cond_5

    goto :goto_6

    :cond_5
    add-int/lit8 v7, v14, 0x1

    :goto_5
    add-int/lit8 v8, v16, 0x1

    const/4 v14, 0x2

    goto :goto_4

    :cond_6
    move v14, v7

    move/from16 v16, v8

    :goto_6
    add-int/lit8 v7, v14, 0x1

    sub-int v3, v16, v7

    .line 44
    new-instance v0, Lcom/huawei/hms/scankit/aiscan/common/z;

    aget v2, v15, v12

    int-to-float v2, v2

    int-to-float v4, v3

    invoke-direct {v0, v2, v4}, Lcom/huawei/hms/scankit/aiscan/common/z;-><init>(FF)V

    const/4 v2, 0x2

    aput-object v0, v1, v2

    .line 45
    new-instance v0, Lcom/huawei/hms/scankit/aiscan/common/z;

    aget v2, v15, v13

    int-to-float v2, v2

    invoke-direct {v0, v2, v4}, Lcom/huawei/hms/scankit/aiscan/common/z;-><init>(FF)V

    const/4 v2, 0x3

    aput-object v0, v1, v2

    :cond_7
    sub-int/2addr v3, v11

    const/16 v0, 0xa

    if-ge v3, v0, :cond_8

    const/4 v0, 0x0

    .line 46
    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    return-object v1
.end method
