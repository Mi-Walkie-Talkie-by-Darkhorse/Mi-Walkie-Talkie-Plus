.class public final Lcom/huawei/hms/scankit/p/Zb;
.super Ljava/lang/Object;
.source "PDF417ScanningDecoder.java"


# static fields
.field private static final a:Lcom/huawei/hms/scankit/p/Rb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/huawei/hms/scankit/p/Rb;

    invoke-direct {v0}, Lcom/huawei/hms/scankit/p/Rb;-><init>()V

    sput-object v0, Lcom/huawei/hms/scankit/p/Zb;->a:Lcom/huawei/hms/scankit/p/Rb;

    return-void
.end method

.method private static a(Lcom/huawei/hms/scankit/p/Nb;IIZ)I
    .locals 6

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    const/4 v1, 0x0

    sub-int v2, p1, v0

    .line 101
    invoke-static {p0, v2}, Lcom/huawei/hms/scankit/p/Zb;->a(Lcom/huawei/hms/scankit/p/Nb;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 102
    invoke-virtual {p0, v2}, Lcom/huawei/hms/scankit/p/Nb;->a(I)Lcom/huawei/hms/scankit/p/Ob;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/huawei/hms/scankit/p/Ob;->a(I)Lcom/huawei/hms/scankit/p/Kb;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_3

    if-eqz p3, :cond_2

    .line 103
    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/Kb;->b()I

    move-result p0

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/Kb;->d()I

    move-result p0

    :goto_1
    return p0

    .line 104
    :cond_3
    invoke-virtual {p0, p1}, Lcom/huawei/hms/scankit/p/Nb;->a(I)Lcom/huawei/hms/scankit/p/Ob;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/huawei/hms/scankit/p/Ob;->b(I)Lcom/huawei/hms/scankit/p/Kb;

    move-result-object v1

    if-eqz v1, :cond_5

    if-eqz p3, :cond_4

    .line 105
    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/Kb;->d()I

    move-result p0

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/Kb;->b()I

    move-result p0

    :goto_2
    return p0

    .line 106
    :cond_5
    invoke-static {p0, v2}, Lcom/huawei/hms/scankit/p/Zb;->a(Lcom/huawei/hms/scankit/p/Nb;I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 107
    invoke-virtual {p0, v2}, Lcom/huawei/hms/scankit/p/Nb;->a(I)Lcom/huawei/hms/scankit/p/Ob;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/huawei/hms/scankit/p/Ob;->b(I)Lcom/huawei/hms/scankit/p/Kb;

    move-result-object v1

    :cond_6
    if-eqz v1, :cond_8

    if-eqz p3, :cond_7

    .line 108
    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/Kb;->b()I

    move-result p0

    goto :goto_3

    :cond_7
    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/Kb;->d()I

    move-result p0

    :goto_3
    return p0

    :cond_8
    const/4 p2, 0x0

    const/4 v1, 0x0

    :goto_4
    sub-int/2addr p1, v0

    .line 109
    invoke-static {p0, p1}, Lcom/huawei/hms/scankit/p/Zb;->a(Lcom/huawei/hms/scankit/p/Nb;I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 110
    invoke-virtual {p0, p1}, Lcom/huawei/hms/scankit/p/Nb;->a(I)Lcom/huawei/hms/scankit/p/Ob;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/hms/scankit/p/Ob;->b()[Lcom/huawei/hms/scankit/p/Kb;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v3, :cond_b

    aget-object v5, v2, v4

    if-eqz v5, :cond_a

    if-eqz p3, :cond_9

    .line 111
    invoke-virtual {v5}, Lcom/huawei/hms/scankit/p/Kb;->b()I

    move-result p0

    goto :goto_6

    :cond_9
    invoke-virtual {v5}, Lcom/huawei/hms/scankit/p/Kb;->d()I

    move-result p0

    :goto_6
    mul-int v0, v0, v1

    .line 112
    invoke-virtual {v5}, Lcom/huawei/hms/scankit/p/Kb;->b()I

    move-result p1

    invoke-virtual {v5}, Lcom/huawei/hms/scankit/p/Kb;->d()I

    move-result p2

    sub-int/2addr p1, p2

    mul-int v0, v0, p1

    add-int/2addr p0, v0

    return p0

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_c
    if-eqz p3, :cond_d

    .line 113
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/Nb;->d()Lcom/huawei/hms/scankit/p/Jb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/Jb;->e()I

    move-result p0

    goto :goto_7

    :cond_d
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/Nb;->d()Lcom/huawei/hms/scankit/p/Jb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/Jb;->c()I

    move-result p0

    :goto_7
    return p0
.end method

.method private static a(Lcom/huawei/hms/scankit/p/bb;IIZII)I
    .locals 5

    if-eqz p3, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x0

    move v2, p4

    :goto_1
    const/4 v3, 0x2

    if-ge v1, v3, :cond_4

    :goto_2
    if-eqz p3, :cond_1

    if-lt v2, p1, :cond_3

    goto :goto_3

    :cond_1
    if-ge v2, p2, :cond_3

    .line 125
    :goto_3
    invoke-virtual {p0, v2, p5}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v4

    if-ne p3, v4, :cond_3

    sub-int v4, p4, v2

    .line 126
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v4, v3, :cond_2

    return p4

    :cond_2
    add-int/2addr v2, v0

    goto :goto_2

    :cond_3
    neg-int v0, v0

    xor-int/lit8 p3, p3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return v2
.end method

.method private static a([I)I
    .locals 2

    const/4 v0, 0x0

    .line 146
    aget v0, p0, v0

    const/4 v1, 0x2

    aget v1, p0, v1

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    aget v1, p0, v1

    add-int/2addr v0, v1

    const/4 v1, 0x6

    aget p0, p0, v1

    sub-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x9

    rem-int/lit8 v0, v0, 0x9

    return v0
.end method

.method private static a([I[II)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 134
    array-length v0, p1

    div-int/lit8 v1, p2, 0x2

    add-int/lit8 v1, v1, 0x3

    if-gt v0, v1, :cond_1

    :cond_0
    if-ltz p2, :cond_1

    const/16 v0, 0x200

    if-gt p2, v0, :cond_1

    .line 135
    sget-object v0, Lcom/huawei/hms/scankit/p/Zb;->a:Lcom/huawei/hms/scankit/p/Rb;

    invoke-virtual {v0, p0, p2, p1}, Lcom/huawei/hms/scankit/p/Rb;->a([II[I)I

    move-result p0

    return p0

    .line 136
    :cond_1
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0
.end method

.method private static a(I[I[I[I[[ILjava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/e;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I[I[I[[I",
            "Ljava/util/Map<",
            "Lcom/huawei/hms/scankit/aiscan/common/d;",
            "*>;)",
            "Lcom/huawei/hms/scankit/aiscan/common/e;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 82
    array-length v0, p3

    new-array v1, v0, [I

    const/16 v2, 0x64

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_5

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_0

    .line 83
    aget v5, p3, v4

    aget-object v6, p4, v4

    aget v7, v1, v4

    aget v6, v6, v7

    aput v6, p1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 84
    :cond_0
    :try_start_0
    invoke-static {p1, p0, p2, p5}, Lcom/huawei/hms/scankit/p/Zb;->a([II[ILjava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/e;

    move-result-object p0
    :try_end_0
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    if-eqz v0, :cond_4

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v0, :cond_3

    .line 85
    aget v5, v1, v4

    aget-object v6, p4, v4

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_1

    .line 86
    aget v2, v1, v4

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v4

    goto :goto_3

    .line 87
    :cond_1
    aput v2, v1, v4

    add-int/lit8 v5, v0, -0x1

    if-eq v4, v5, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 88
    :cond_2
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0

    :cond_3
    :goto_3
    move v2, v3

    goto :goto_0

    .line 89
    :cond_4
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0

    .line 90
    :cond_5
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0
.end method

.method private static a(Lcom/huawei/hms/scankit/p/Nb;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/e;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/scankit/p/Nb;",
            "Ljava/util/Map<",
            "Lcom/huawei/hms/scankit/aiscan/common/d;",
            "*>;)",
            "Lcom/huawei/hms/scankit/aiscan/common/e;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 61
    invoke-static {p0}, Lcom/huawei/hms/scankit/p/Zb;->a(Lcom/huawei/hms/scankit/p/Nb;)[[Lcom/huawei/hms/scankit/p/Ib;

    move-result-object v0

    .line 62
    invoke-static {p0, v0}, Lcom/huawei/hms/scankit/p/Zb;->a(Lcom/huawei/hms/scankit/p/Nb;[[Lcom/huawei/hms/scankit/p/Ib;)V

    .line 63
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 64
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/Nb;->c()I

    move-result v2

    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/Nb;->a()I

    move-result v3

    mul-int v2, v2, v3

    new-array v4, v2, [I

    .line 65
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 66
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 67
    :goto_0
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/Nb;->c()I

    move-result v7

    if-ge v6, v7, :cond_3

    const/4 v7, 0x0

    .line 68
    :goto_1
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/Nb;->a()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 69
    aget-object v8, v0, v6

    add-int/lit8 v9, v7, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/huawei/hms/scankit/p/Ib;->a()[I

    move-result-object v8

    .line 70
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/Nb;->a()I

    move-result v10

    mul-int v10, v10, v6

    add-int/2addr v10, v7

    .line 71
    array-length v7, v8

    if-nez v7, :cond_0

    .line 72
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 73
    :cond_0
    array-length v7, v8

    const/4 v11, 0x1

    if-ne v7, v11, :cond_1

    .line 74
    aget v7, v8, v5

    aput v7, v4, v10

    goto :goto_2

    .line 75
    :cond_1
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    move v7, v9

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 77
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v7, v0, [[I

    :goto_3
    if-ge v5, v0, :cond_4

    .line 78
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    aput-object v6, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 79
    :cond_4
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/Nb;->b()I

    move-result p0

    .line 80
    invoke-static {v1}, Lcom/huawei/hms/scankit/p/Vb;->a(Ljava/util/Collection;)[I

    move-result-object v5

    invoke-static {v3}, Lcom/huawei/hms/scankit/p/Vb;->a(Ljava/util/Collection;)[I

    move-result-object v6

    move v3, p0

    move-object v8, p1

    .line 81
    invoke-static/range {v3 .. v8}, Lcom/huawei/hms/scankit/p/Zb;->a(I[I[I[I[[ILjava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/e;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/huawei/hms/scankit/p/bb;Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;IILjava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/e;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/scankit/p/bb;",
            "Lcom/huawei/hms/scankit/aiscan/common/z;",
            "Lcom/huawei/hms/scankit/aiscan/common/z;",
            "Lcom/huawei/hms/scankit/aiscan/common/z;",
            "Lcom/huawei/hms/scankit/aiscan/common/z;",
            "II",
            "Ljava/util/Map<",
            "Lcom/huawei/hms/scankit/aiscan/common/d;",
            "*>;)",
            "Lcom/huawei/hms/scankit/aiscan/common/e;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/huawei/hms/scankit/p/Jb;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/huawei/hms/scankit/p/Jb;-><init>(Lcom/huawei/hms/scankit/p/bb;Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object v3, v2

    move-object v10, v6

    const/4 v11, 0x1

    :goto_0
    if-eqz p1, :cond_0

    const/4 v7, 0x1

    move-object v4, p0

    move-object v5, v10

    move-object v6, p1

    move/from16 v8, p5

    move/from16 v9, p6

    .line 2
    invoke-static/range {v4 .. v9}, Lcom/huawei/hms/scankit/p/Zb;->a(Lcom/huawei/hms/scankit/p/bb;Lcom/huawei/hms/scankit/p/Jb;Lcom/huawei/hms/scankit/aiscan/common/z;ZII)Lcom/huawei/hms/scankit/p/Pb;

    move-result-object v2

    :cond_0
    if-eqz p3, :cond_1

    const/4 v7, 0x0

    move-object v4, p0

    move-object v5, v10

    move-object/from16 v6, p3

    move/from16 v8, p5

    move/from16 v9, p6

    .line 3
    invoke-static/range {v4 .. v9}, Lcom/huawei/hms/scankit/p/Zb;->a(Lcom/huawei/hms/scankit/p/bb;Lcom/huawei/hms/scankit/p/Jb;Lcom/huawei/hms/scankit/aiscan/common/z;ZII)Lcom/huawei/hms/scankit/p/Pb;

    move-result-object v3

    .line 4
    :cond_1
    invoke-static {v2, v3}, Lcom/huawei/hms/scankit/p/Zb;->b(Lcom/huawei/hms/scankit/p/Pb;Lcom/huawei/hms/scankit/p/Pb;)Lcom/huawei/hms/scankit/p/Nb;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 5
    invoke-virtual {v12}, Lcom/huawei/hms/scankit/p/Nb;->d()Lcom/huawei/hms/scankit/p/Jb;

    move-result-object v6

    if-eqz v11, :cond_3

    if-eqz v6, :cond_3

    .line 6
    invoke-virtual {v6}, Lcom/huawei/hms/scankit/p/Jb;->f()I

    move-result v4

    invoke-virtual {v10}, Lcom/huawei/hms/scankit/p/Jb;->f()I

    move-result v5

    if-lt v4, v5, :cond_2

    invoke-virtual {v6}, Lcom/huawei/hms/scankit/p/Jb;->d()I

    move-result v4

    invoke-virtual {v10}, Lcom/huawei/hms/scankit/p/Jb;->d()I

    move-result v5

    if-le v4, v5, :cond_3

    :cond_2
    move-object v10, v6

    const/4 v11, 0x0

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {v12, v10}, Lcom/huawei/hms/scankit/p/Nb;->a(Lcom/huawei/hms/scankit/p/Jb;)V

    .line 8
    invoke-virtual {v12}, Lcom/huawei/hms/scankit/p/Nb;->a()I

    move-result v4

    add-int/lit8 v7, v4, 0x1

    .line 9
    invoke-virtual {v12, v0, v2}, Lcom/huawei/hms/scankit/p/Nb;->a(ILcom/huawei/hms/scankit/p/Ob;)V

    .line 10
    invoke-virtual {v12, v7, v3}, Lcom/huawei/hms/scankit/p/Nb;->a(ILcom/huawei/hms/scankit/p/Ob;)V

    move-object v4, v12

    move-object v5, v2

    move-object v6, v10

    move-object v8, p0

    move/from16 v9, p5

    move/from16 v10, p6

    .line 11
    invoke-static/range {v4 .. v10}, Lcom/huawei/hms/scankit/p/Zb;->a(Lcom/huawei/hms/scankit/p/Nb;Lcom/huawei/hms/scankit/p/Pb;Lcom/huawei/hms/scankit/p/Jb;ILcom/huawei/hms/scankit/p/bb;II)V

    move-object/from16 v0, p7

    .line 12
    invoke-static {v12, v0}, Lcom/huawei/hms/scankit/p/Zb;->a(Lcom/huawei/hms/scankit/p/Nb;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/e;

    move-result-object v0

    return-object v0

    .line 13
    :cond_4
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object v0

    throw v0
.end method

.method private static a([II[ILjava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([II[I",
            "Ljava/util/Map<",
            "Lcom/huawei/hms/scankit/aiscan/common/d;",
            "*>;)",
            "Lcom/huawei/hms/scankit/aiscan/common/e;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;,
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 127
    array-length v0, p0

    if-eqz v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    shl-int v0, v1, v0

    .line 128
    invoke-static {p0, p2, v0}, Lcom/huawei/hms/scankit/p/Zb;->a([I[II)I

    move-result v1

    .line 129
    invoke-static {p0, v0}, Lcom/huawei/hms/scankit/p/Zb;->a([II)V

    .line 130
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p3}, Lcom/huawei/hms/scankit/p/Mb;->a([ILjava/lang/String;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/e;

    move-result-object p0

    .line 131
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/huawei/hms/scankit/aiscan/common/e;->b(Ljava/lang/Integer;)V

    .line 132
    array-length p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/huawei/hms/scankit/aiscan/common/e;->a(Ljava/lang/Integer;)V

    return-object p0

    .line 133
    :cond_0
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0
.end method

.method private static a(Lcom/huawei/hms/scankit/p/Pb;Lcom/huawei/hms/scankit/p/Pb;)Lcom/huawei/hms/scankit/p/Hb;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 37
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/Pb;->c()Lcom/huawei/hms/scankit/p/Hb;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    .line 38
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/Pb;->c()Lcom/huawei/hms/scankit/p/Hb;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/Hb;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/Hb;->a()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 40
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/Hb;->b()I

    move-result v1

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/Hb;->b()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 41
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/Hb;->c()I

    move-result v1

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/Hb;->c()I

    move-result p1

    if-eq v1, p1, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p0

    :cond_3
    :goto_1
    if-nez p1, :cond_4

    goto :goto_2

    .line 42
    :cond_4
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/Pb;->c()Lcom/huawei/hms/scankit/p/Hb;

    move-result-object v0

    :goto_2
    return-object v0
.end method

.method private static a(Lcom/huawei/hms/scankit/p/Pb;)Lcom/huawei/hms/scankit/p/Jb;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/Pb;->d()[I

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 26
    :cond_1
    invoke-static {v1}, Lcom/huawei/hms/scankit/p/Zb;->b([I)I

    move-result v0

    .line 27
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    aget v6, v1, v4

    sub-int v7, v0, v6

    add-int/2addr v5, v7

    if-lez v6, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 28
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/Ob;->b()[Lcom/huawei/hms/scankit/p/Kb;

    move-result-object v2

    const/4 v4, 0x0

    :goto_2
    if-lez v5, :cond_4

    .line 29
    aget-object v6, v2, v4

    if-nez v6, :cond_4

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 30
    :cond_4
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    :goto_3
    if-ltz v4, :cond_6

    .line 31
    aget v6, v1, v4

    sub-int v6, v0, v6

    add-int/2addr v3, v6

    .line 32
    aget v6, v1, v4

    if-lez v6, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 33
    :cond_6
    :goto_4
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    :goto_5
    if-lez v3, :cond_7

    aget-object v1, v2, v0

    if-nez v1, :cond_7

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 34
    :cond_7
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/Ob;->a()Lcom/huawei/hms/scankit/p/Jb;

    move-result-object v0

    .line 35
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/Pb;->e()Z

    move-result p0

    .line 36
    invoke-virtual {v0, v5, v3, p0}, Lcom/huawei/hms/scankit/p/Jb;->a(IIZ)Lcom/huawei/hms/scankit/p/Jb;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/huawei/hms/scankit/p/bb;IIZIIII)Lcom/huawei/hms/scankit/p/Kb;
    .locals 7

    .line 114
    invoke-static/range {p0 .. p5}, Lcom/huawei/hms/scankit/p/Zb;->a(Lcom/huawei/hms/scankit/p/bb;IIZII)I

    move-result p4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 115
    invoke-static/range {v0 .. v5}, Lcom/huawei/hms/scankit/p/Zb;->b(Lcom/huawei/hms/scankit/p/bb;IIZII)[I

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    .line 116
    :cond_0
    invoke-static {p0}, Lcom/huawei/hms/scankit/aiscan/common/n;->a([I)I

    move-result p2

    if-eqz p3, :cond_1

    add-int p3, p4, p2

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    .line 117
    :goto_0
    array-length p5, p0

    div-int/lit8 p5, p5, 0x2

    if-ge p3, p5, :cond_2

    .line 118
    aget p5, p0, p3

    .line 119
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p3

    aget v0, p0, v0

    aput v0, p0, p3

    .line 120
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p3

    aput p5, p0, v0

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    sub-int p3, p4, p2

    move v6, p4

    move p4, p3

    move p3, v6

    .line 121
    :goto_1
    invoke-static {p2, p6, p7}, Lcom/huawei/hms/scankit/p/Zb;->a(III)Z

    move-result p2

    if-nez p2, :cond_3

    return-object p1

    .line 122
    :cond_3
    invoke-static {p0}, Lcom/huawei/hms/scankit/p/Ub;->a([I)I

    move-result p0

    .line 123
    invoke-static {p0}, Lcom/huawei/hms/scankit/p/Vb;->a(I)I

    move-result p2

    const/4 p5, -0x1

    if-ne p2, p5, :cond_4

    return-object p1

    .line 124
    :cond_4
    new-instance p1, Lcom/huawei/hms/scankit/p/Kb;

    invoke-static {p0}, Lcom/huawei/hms/scankit/p/Zb;->b(I)I

    move-result p0

    invoke-direct {p1, p4, p3, p0, p2}, Lcom/huawei/hms/scankit/p/Kb;-><init>(IIII)V

    return-object p1
.end method

.method private static a(Lcom/huawei/hms/scankit/p/bb;Lcom/huawei/hms/scankit/p/Jb;Lcom/huawei/hms/scankit/aiscan/common/z;ZII)Lcom/huawei/hms/scankit/p/Pb;
    .locals 15

    move/from16 v8, p3

    .line 43
    new-instance v9, Lcom/huawei/hms/scankit/p/Pb;

    move-object/from16 v10, p1

    invoke-direct {v9, v10, v8}, Lcom/huawei/hms/scankit/p/Pb;-><init>(Lcom/huawei/hms/scankit/p/Jb;Z)V

    const/4 v0, 0x0

    const/4 v11, 0x0

    :goto_0
    const/4 v0, 0x2

    if-ge v11, v0, :cond_4

    if-nez v11, :cond_0

    const/4 v0, 0x1

    const/4 v12, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, -0x1

    const/4 v12, -0x1

    .line 44
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v0

    float-to-int v0, v0

    .line 45
    invoke-virtual/range {p2 .. p2}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v1

    float-to-int v1, v1

    move v13, v0

    move v14, v1

    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hms/scankit/p/Jb;->d()I

    move-result v0

    if-gt v14, v0, :cond_3

    .line 46
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hms/scankit/p/Jb;->f()I

    move-result v0

    if-lt v14, v0, :cond_3

    .line 47
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/bb;->d()I

    move-result v2

    const/4 v1, 0x0

    move-object v0, p0

    move/from16 v3, p3

    move v4, v13

    move v5, v14

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-static/range {v0 .. v7}, Lcom/huawei/hms/scankit/p/Zb;->a(Lcom/huawei/hms/scankit/p/bb;IIZIIII)Lcom/huawei/hms/scankit/p/Kb;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 48
    invoke-virtual {v9, v14, v0}, Lcom/huawei/hms/scankit/p/Ob;->a(ILcom/huawei/hms/scankit/p/Kb;)V

    if-eqz v8, :cond_1

    .line 49
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/Kb;->d()I

    move-result v0

    goto :goto_3

    .line 50
    :cond_1
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/Kb;->b()I

    move-result v0

    :goto_3
    move v13, v0

    :cond_2
    add-int/2addr v14, v12

    goto :goto_2

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_4
    return-object v9
.end method

.method private static a(Lcom/huawei/hms/scankit/p/Nb;Lcom/huawei/hms/scankit/p/Pb;Lcom/huawei/hms/scankit/p/Jb;ILcom/huawei/hms/scankit/p/bb;II)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    const/4 v4, 0x1

    if-eqz p1, :cond_0

    const/4 v13, 0x1

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    :goto_0
    move/from16 v5, p5

    move/from16 v6, p6

    const/4 v14, 0x1

    :goto_1
    if-gt v14, v2, :cond_b

    if-eqz v13, :cond_1

    move v15, v14

    goto :goto_2

    :cond_1
    sub-int v7, v2, v14

    move v15, v7

    .line 14
    :goto_2
    invoke-virtual {v0, v15}, Lcom/huawei/hms/scankit/p/Nb;->a(I)Lcom/huawei/hms/scankit/p/Ob;

    move-result-object v7

    if-eqz v7, :cond_2

    goto/16 :goto_c

    :cond_2
    if-eqz v15, :cond_4

    if-ne v15, v2, :cond_3

    goto :goto_4

    .line 15
    :cond_3
    new-instance v7, Lcom/huawei/hms/scankit/p/Ob;

    invoke-direct {v7, v1}, Lcom/huawei/hms/scankit/p/Ob;-><init>(Lcom/huawei/hms/scankit/p/Jb;)V

    :goto_3
    move-object v12, v7

    goto :goto_6

    .line 16
    :cond_4
    :goto_4
    new-instance v7, Lcom/huawei/hms/scankit/p/Pb;

    if-nez v15, :cond_5

    const/4 v8, 0x1

    goto :goto_5

    :cond_5
    const/4 v8, 0x0

    :goto_5
    invoke-direct {v7, v1, v8}, Lcom/huawei/hms/scankit/p/Pb;-><init>(Lcom/huawei/hms/scankit/p/Jb;Z)V

    goto :goto_3

    .line 17
    :goto_6
    invoke-virtual {v0, v15, v12}, Lcom/huawei/hms/scankit/p/Nb;->a(ILcom/huawei/hms/scankit/p/Ob;)V

    .line 18
    invoke-virtual/range {p2 .. p2}, Lcom/huawei/hms/scankit/p/Jb;->f()I

    move-result v7

    const/4 v11, -0x1

    move v10, v5

    move v9, v6

    move v8, v7

    const/4 v7, -0x1

    :goto_7
    invoke-virtual/range {p2 .. p2}, Lcom/huawei/hms/scankit/p/Jb;->d()I

    move-result v5

    if-gt v8, v5, :cond_a

    .line 19
    invoke-static {v0, v15, v8, v13}, Lcom/huawei/hms/scankit/p/Zb;->a(Lcom/huawei/hms/scankit/p/Nb;IIZ)I

    move-result v5

    if-ltz v5, :cond_7

    .line 20
    invoke-virtual/range {p2 .. p2}, Lcom/huawei/hms/scankit/p/Jb;->c()I

    move-result v6

    if-le v5, v6, :cond_6

    goto :goto_8

    :cond_6
    move/from16 v16, v5

    goto :goto_9

    :cond_7
    :goto_8
    if-ne v7, v11, :cond_8

    move/from16 v18, v7

    move v7, v8

    move v8, v10

    move-object v3, v12

    const/16 v17, -0x1

    goto :goto_a

    :cond_8
    move/from16 v16, v7

    .line 21
    :goto_9
    invoke-virtual/range {p2 .. p2}, Lcom/huawei/hms/scankit/p/Jb;->e()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Lcom/huawei/hms/scankit/p/Jb;->c()I

    move-result v17

    move-object/from16 v5, p4

    move/from16 v18, v7

    move/from16 v7, v17

    move/from16 p1, v8

    move v8, v13

    move/from16 p5, v9

    move/from16 v9, v16

    move/from16 p6, v10

    move/from16 v10, p1

    const/16 v17, -0x1

    move/from16 v11, p6

    move-object v3, v12

    move/from16 v12, p5

    invoke-static/range {v5 .. v12}, Lcom/huawei/hms/scankit/p/Zb;->a(Lcom/huawei/hms/scankit/p/bb;IIZIIII)Lcom/huawei/hms/scankit/p/Kb;

    move-result-object v5

    move/from16 v7, p1

    if-eqz v5, :cond_9

    .line 22
    invoke-virtual {v3, v7, v5}, Lcom/huawei/hms/scankit/p/Ob;->a(ILcom/huawei/hms/scankit/p/Kb;)V

    .line 23
    invoke-virtual {v5}, Lcom/huawei/hms/scankit/p/Kb;->f()I

    move-result v6

    move/from16 v8, p6

    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 24
    invoke-virtual {v5}, Lcom/huawei/hms/scankit/p/Kb;->f()I

    move-result v5

    move/from16 v9, p5

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v9, v5

    move v10, v6

    goto :goto_b

    :cond_9
    move/from16 v9, p5

    move/from16 v8, p6

    :goto_a
    move v10, v8

    move/from16 v16, v18

    :goto_b
    add-int/lit8 v8, v7, 0x1

    move-object v12, v3

    move/from16 v7, v16

    const/4 v11, -0x1

    goto :goto_7

    :cond_a
    move v8, v10

    move v5, v8

    move v6, v9

    :goto_c
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    :cond_b
    return-void
.end method

.method private static a(Lcom/huawei/hms/scankit/p/Nb;[[Lcom/huawei/hms/scankit/p/Ib;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    const/4 v0, 0x0

    .line 51
    aget-object p1, p1, v0

    const/4 v1, 0x1

    aget-object p1, p1, v1

    .line 52
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/Ib;->a()[I

    move-result-object v2

    .line 53
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/Nb;->a()I

    move-result v3

    .line 54
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/Nb;->c()I

    move-result v4

    mul-int v3, v3, v4

    .line 55
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/Nb;->b()I

    move-result p0

    invoke-static {p0}, Lcom/huawei/hms/scankit/p/Zb;->c(I)I

    move-result p0

    sub-int/2addr v3, p0

    .line 56
    array-length p0, v2

    if-nez p0, :cond_1

    if-lt v3, v1, :cond_0

    const/16 p0, 0x3a0

    if-gt v3, p0, :cond_0

    .line 57
    invoke-virtual {p1, v3}, Lcom/huawei/hms/scankit/p/Ib;->a(I)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0

    .line 59
    :cond_1
    aget p0, v2, v0

    if-eq p0, v3, :cond_2

    .line 60
    invoke-virtual {p1, v3}, Lcom/huawei/hms/scankit/p/Ib;->a(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static a([II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 137
    array-length v0, p0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_3

    const/4 v0, 0x0

    .line 138
    aget v1, p0, v0

    .line 139
    array-length v2, p0

    if-gt v1, v2, :cond_2

    if-nez v1, :cond_1

    .line 140
    array-length v1, p0

    if-ge p1, v1, :cond_0

    .line 141
    array-length v1, p0

    sub-int/2addr v1, p1

    aput v1, p0, v0

    goto :goto_0

    .line 142
    :cond_0
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    return-void

    .line 143
    :cond_2
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0

    .line 144
    :cond_3
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0
.end method

.method private static a(III)Z
    .locals 0

    add-int/lit8 p1, p1, -0x2

    if-gt p1, p0, :cond_0

    add-int/lit8 p2, p2, 0x2

    if-gt p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static a(Lcom/huawei/hms/scankit/p/Nb;I)Z
    .locals 1

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/Nb;->a()I

    move-result p0

    add-int/2addr p0, v0

    if-gt p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static a(I)[I
    .locals 4

    const/16 v0, 0x8

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x7

    :goto_0
    and-int/lit8 v3, p0, 0x1

    if-eq v3, v1, :cond_1

    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_0

    return-object v0

    :cond_0
    move v1, v3

    .line 145
    :cond_1
    aget v3, v0, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v0, v2

    shr-int/lit8 p0, p0, 0x1

    goto :goto_0
.end method

.method private static a(Lcom/huawei/hms/scankit/p/Nb;)[[Lcom/huawei/hms/scankit/p/Ib;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 91
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/Nb;->c()I

    move-result v0

    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/Nb;->a()I

    move-result v1

    const/4 v2, 0x2

    add-int/2addr v1, v2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    const-class v0, Lcom/huawei/hms/scankit/p/Ib;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/huawei/hms/scankit/p/Ib;

    const/4 v2, 0x0

    .line 92
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    const/4 v3, 0x0

    .line 93
    :goto_1
    aget-object v4, v0, v2

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 94
    aget-object v4, v0, v2

    new-instance v5, Lcom/huawei/hms/scankit/p/Ib;

    invoke-direct {v5}, Lcom/huawei/hms/scankit/p/Ib;-><init>()V

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/Nb;->e()[Lcom/huawei/hms/scankit/p/Ob;

    move-result-object p0

    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_2
    if-ge v3, v2, :cond_5

    aget-object v5, p0, v3

    if-eqz v5, :cond_4

    .line 96
    invoke-virtual {v5}, Lcom/huawei/hms/scankit/p/Ob;->b()[Lcom/huawei/hms/scankit/p/Kb;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_4

    aget-object v8, v5, v7

    if-eqz v8, :cond_3

    .line 97
    invoke-virtual {v8}, Lcom/huawei/hms/scankit/p/Kb;->c()I

    move-result v9

    if-ltz v9, :cond_3

    .line 98
    array-length v10, v0

    if-lt v9, v10, :cond_2

    goto :goto_4

    .line 99
    :cond_2
    aget-object v9, v0, v9

    aget-object v9, v9, v4

    invoke-virtual {v8}, Lcom/huawei/hms/scankit/p/Kb;->e()I

    move-result v8

    invoke-virtual {v9, v8}, Lcom/huawei/hms/scankit/p/Ib;->a(I)V

    :cond_3
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    return-object v0
.end method

.method private static b(I)I
    .locals 0

    .line 10
    invoke-static {p0}, Lcom/huawei/hms/scankit/p/Zb;->a(I)[I

    move-result-object p0

    invoke-static {p0}, Lcom/huawei/hms/scankit/p/Zb;->a([I)I

    move-result p0

    return p0
.end method

.method private static b([I)I
    .locals 4

    .line 6
    array-length v0, p0

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p0, v2

    .line 7
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private static b(Lcom/huawei/hms/scankit/p/Pb;Lcom/huawei/hms/scankit/p/Pb;)Lcom/huawei/hms/scankit/p/Nb;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-static {p0, p1}, Lcom/huawei/hms/scankit/p/Zb;->a(Lcom/huawei/hms/scankit/p/Pb;Lcom/huawei/hms/scankit/p/Pb;)Lcom/huawei/hms/scankit/p/Hb;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 2
    :cond_1
    invoke-static {p0}, Lcom/huawei/hms/scankit/p/Zb;->a(Lcom/huawei/hms/scankit/p/Pb;)Lcom/huawei/hms/scankit/p/Jb;

    move-result-object p0

    .line 3
    invoke-static {p1}, Lcom/huawei/hms/scankit/p/Zb;->a(Lcom/huawei/hms/scankit/p/Pb;)Lcom/huawei/hms/scankit/p/Jb;

    move-result-object p1

    .line 4
    invoke-static {p0, p1}, Lcom/huawei/hms/scankit/p/Jb;->a(Lcom/huawei/hms/scankit/p/Jb;Lcom/huawei/hms/scankit/p/Jb;)Lcom/huawei/hms/scankit/p/Jb;

    move-result-object p0

    .line 5
    new-instance p1, Lcom/huawei/hms/scankit/p/Nb;

    invoke-direct {p1, v1, p0}, Lcom/huawei/hms/scankit/p/Nb;-><init>(Lcom/huawei/hms/scankit/p/Hb;Lcom/huawei/hms/scankit/p/Jb;)V

    return-object p1
.end method

.method private static b(Lcom/huawei/hms/scankit/p/bb;IIZII)[I
    .locals 8

    const/16 v0, 0x8

    new-array v1, v0, [I

    const/4 v2, 0x1

    if-eqz p3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    :goto_0
    const/4 v4, 0x0

    move v6, p3

    const/4 v5, 0x0

    :goto_1
    if-eqz p3, :cond_1

    if-ge p4, p2, :cond_4

    goto :goto_2

    :cond_1
    if-lt p4, p1, :cond_4

    :goto_2
    if-ge v5, v0, :cond_4

    .line 8
    invoke-virtual {p0, p4, p5}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v7

    if-ne v7, v6, :cond_2

    .line 9
    aget v7, v1, v5

    add-int/2addr v7, v2

    aput v7, v1, v5

    add-int/2addr p4, v3

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    if-nez v6, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    :cond_4
    if-eq v5, v0, :cond_7

    if-eqz p3, :cond_5

    move p1, p2

    :cond_5
    if-ne p4, p1, :cond_6

    const/4 p0, 0x7

    if-ne v5, p0, :cond_6

    goto :goto_3

    :cond_6
    const/4 p0, 0x0

    return-object p0

    :cond_7
    :goto_3
    return-object v1
.end method

.method private static c(I)I
    .locals 1

    const/4 v0, 0x2

    shl-int p0, v0, p0

    return p0
.end method
