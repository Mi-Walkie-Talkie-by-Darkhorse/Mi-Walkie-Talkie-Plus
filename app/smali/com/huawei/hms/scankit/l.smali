.class public Lcom/huawei/hms/scankit/l;
.super Ljava/lang/Object;
.source "DecodeProcessor.java"


# instance fields
.field private a:Lcom/huawei/hms/scankit/aiscan/common/m;

.field private b:Lcom/huawei/hms/scankit/p/_a;

.field private c:Lcom/huawei/hms/scankit/p/_a;

.field private d:Lcom/huawei/hms/scankit/p/_a;

.field private e:Z

.field private f:F

.field private g:F

.field private h:F

.field public i:Lcom/huawei/hms/scankit/aiscan/common/l;

.field private j:F

.field private k:I

.field private l:I


# direct methods
.method constructor <init>(Lcom/huawei/hms/scankit/aiscan/common/m;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/huawei/hms/scankit/l;->e:Z

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lcom/huawei/hms/scankit/l;->f:F

    .line 4
    iput v1, p0, Lcom/huawei/hms/scankit/l;->g:F

    .line 5
    iput v1, p0, Lcom/huawei/hms/scankit/l;->h:F

    const v1, 0x3fe39581    # 1.778f

    .line 6
    iput v1, p0, Lcom/huawei/hms/scankit/l;->j:F

    .line 7
    iput v0, p0, Lcom/huawei/hms/scankit/l;->k:I

    .line 8
    iput v0, p0, Lcom/huawei/hms/scankit/l;->l:I

    .line 9
    iput-object p1, p0, Lcom/huawei/hms/scankit/l;->a:Lcom/huawei/hms/scankit/aiscan/common/m;

    .line 10
    new-instance p1, Lcom/huawei/hms/scankit/p/db;

    iget-object v0, p0, Lcom/huawei/hms/scankit/l;->a:Lcom/huawei/hms/scankit/aiscan/common/m;

    invoke-direct {p1, v0}, Lcom/huawei/hms/scankit/p/db;-><init>(Lcom/huawei/hms/scankit/aiscan/common/m;)V

    .line 11
    new-instance v0, Lcom/huawei/hms/scankit/p/_a;

    invoke-direct {v0, p1}, Lcom/huawei/hms/scankit/p/_a;-><init>(Lcom/huawei/hms/scankit/p/Za;)V

    iput-object v0, p0, Lcom/huawei/hms/scankit/l;->b:Lcom/huawei/hms/scankit/p/_a;

    .line 12
    new-instance p1, Lcom/huawei/hms/scankit/p/eb;

    iget-object v0, p0, Lcom/huawei/hms/scankit/l;->a:Lcom/huawei/hms/scankit/aiscan/common/m;

    invoke-direct {p1, v0}, Lcom/huawei/hms/scankit/p/eb;-><init>(Lcom/huawei/hms/scankit/aiscan/common/m;)V

    .line 13
    new-instance v0, Lcom/huawei/hms/scankit/p/_a;

    invoke-direct {v0, p1}, Lcom/huawei/hms/scankit/p/_a;-><init>(Lcom/huawei/hms/scankit/p/Za;)V

    iput-object v0, p0, Lcom/huawei/hms/scankit/l;->c:Lcom/huawei/hms/scankit/p/_a;

    .line 14
    new-instance p1, Lcom/huawei/hms/scankit/aiscan/common/l;

    invoke-direct {p1}, Lcom/huawei/hms/scankit/aiscan/common/l;-><init>()V

    iput-object p1, p0, Lcom/huawei/hms/scankit/l;->i:Lcom/huawei/hms/scankit/aiscan/common/l;

    return-void
.end method

.method private a(Lcom/huawei/hms/scankit/aiscan/common/o;Lcom/huawei/hms/scankit/aiscan/common/m;Lcom/huawei/hms/scankit/aiscan/common/x;Ljava/util/Map;FII)Lcom/huawei/hms/scankit/aiscan/common/x;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/scankit/aiscan/common/o;",
            "Lcom/huawei/hms/scankit/aiscan/common/m;",
            "Lcom/huawei/hms/scankit/aiscan/common/x;",
            "Ljava/util/Map<",
            "Lcom/huawei/hms/scankit/aiscan/common/d;",
            "Ljava/lang/Object;",
            ">;FII)",
            "Lcom/huawei/hms/scankit/aiscan/common/x;"
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v0, p6

    move/from16 v1, p7

    .line 87
    sget-boolean v2, Lcom/huawei/hms/scankit/p/Bc;->a:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    .line 88
    :try_start_0
    new-instance v8, Lcom/huawei/hms/scankit/p/db;
    :try_end_0
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v9, p2

    :try_start_1
    invoke-direct {v8, v9}, Lcom/huawei/hms/scankit/p/db;-><init>(Lcom/huawei/hms/scankit/aiscan/common/m;)V

    .line 89
    new-instance v10, Lcom/huawei/hms/scankit/p/_a;

    invoke-direct {v10, v8}, Lcom/huawei/hms/scankit/p/_a;-><init>(Lcom/huawei/hms/scankit/p/Za;)V
    :try_end_1
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_1 .. :try_end_1} :catch_1

    move-object v8, p1

    .line 90
    :try_start_2
    invoke-virtual {p1, v10, v5}, Lcom/huawei/hms/scankit/aiscan/common/o;->a(Lcom/huawei/hms/scankit/p/_a;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 91
    invoke-virtual {v3}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 92
    invoke-direct {p0, v3, v6, v0, v1}, Lcom/huawei/hms/scankit/l;->a(Lcom/huawei/hms/scankit/aiscan/common/x;FII)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object v0

    return-object v0

    :cond_0
    if-eqz v3, :cond_1

    .line 93
    invoke-virtual {v3}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-virtual {v3}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v11

    array-length v11, v11

    if-lt v11, v2, :cond_1

    .line 94
    invoke-virtual {v3}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/huawei/hms/scankit/aiscan/common/x;->b([Lcom/huawei/hms/scankit/aiscan/common/z;)V
    :try_end_2
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    nop

    goto :goto_1

    :catch_1
    move-object v8, p1

    goto :goto_0

    :catch_2
    move-object v8, p1

    move-object/from16 v9, p2

    :goto_0
    move-object v10, v3

    :cond_1
    :goto_1
    if-eqz v4, :cond_2

    .line 95
    :try_start_3
    invoke-virtual/range {p3 .. p3}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual/range {p3 .. p3}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v3

    array-length v3, v3

    if-lt v3, v2, :cond_2

    sget-boolean v3, Lcom/huawei/hms/scankit/p/Bc;->h:Z

    if-nez v3, :cond_2

    const/4 v3, 0x6

    new-array v3, v3, [D

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    aput-wide v12, v3, v11

    const/4 v11, 0x1

    aput-wide v12, v3, v11

    const/4 v11, 0x2

    aput-wide v12, v3, v11

    aput-wide v12, v3, v2

    const/4 v2, 0x4

    aput-wide v12, v3, v2

    const/4 v2, 0x5

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    aput-wide v11, v3, v2

    .line 96
    invoke-direct {p0, v10, v5, v4, v3}, Lcom/huawei/hms/scankit/l;->a(Lcom/huawei/hms/scankit/p/_a;Ljava/util/Map;Lcom/huawei/hms/scankit/aiscan/common/x;[D)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 97
    invoke-virtual {v2}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 98
    invoke-direct {p0, v2, v6, v0, v1}, Lcom/huawei/hms/scankit/l;->a(Lcom/huawei/hms/scankit/aiscan/common/x;FII)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object v0
    :try_end_3
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_3 .. :try_end_3} :catch_3

    return-object v0

    :catch_3
    :cond_2
    move-object v0, p0

    move-object v1, v10

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    .line 99
    invoke-direct/range {v0 .. v6}, Lcom/huawei/hms/scankit/l;->a(Lcom/huawei/hms/scankit/p/_a;Lcom/huawei/hms/scankit/aiscan/common/o;Lcom/huawei/hms/scankit/aiscan/common/m;Lcom/huawei/hms/scankit/aiscan/common/x;Ljava/util/Map;F)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object v3

    :cond_3
    return-object v3
.end method

.method private a(Lcom/huawei/hms/scankit/aiscan/common/o;Lcom/huawei/hms/scankit/aiscan/common/m;Lcom/huawei/hms/scankit/p/_a;Ljava/util/Map;FLcom/huawei/hms/scankit/p/ob;)Lcom/huawei/hms/scankit/aiscan/common/x;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/scankit/aiscan/common/o;",
            "Lcom/huawei/hms/scankit/aiscan/common/m;",
            "Lcom/huawei/hms/scankit/p/_a;",
            "Ljava/util/Map<",
            "Lcom/huawei/hms/scankit/aiscan/common/d;",
            "Ljava/lang/Object;",
            ">;F",
            "Lcom/huawei/hms/scankit/p/ob;",
            ")",
            "Lcom/huawei/hms/scankit/aiscan/common/x;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 117
    sget-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->a:Z

    const/4 v1, 0x6

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->b:Z

    if-nez v0, :cond_1

    .line 118
    :try_start_0
    new-instance v0, Lcom/huawei/hms/scankit/p/db;

    invoke-direct {v0, p2}, Lcom/huawei/hms/scankit/p/db;-><init>(Lcom/huawei/hms/scankit/aiscan/common/m;)V

    .line 119
    new-instance v4, Lcom/huawei/hms/scankit/p/_a;

    invoke-direct {v4, v0}, Lcom/huawei/hms/scankit/p/_a;-><init>(Lcom/huawei/hms/scankit/p/Za;)V
    :try_end_0
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_0 .. :try_end_0} :catch_1

    .line 120
    :try_start_1
    invoke-virtual {p1, v4, p4}, Lcom/huawei/hms/scankit/aiscan/common/o;->a(Lcom/huawei/hms/scankit/p/_a;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 121
    invoke-virtual {v3}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 122
    invoke-virtual {v3}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object p3

    invoke-static {p3, p5, p6}, Lcom/huawei/hms/scankit/p/pb;->a([Lcom/huawei/hms/scankit/aiscan/common/z;FLcom/huawei/hms/scankit/p/ob;)V
    :try_end_1
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3

    :catch_0
    :cond_0
    move-object p3, v4

    goto :goto_0

    :catch_1
    nop

    :goto_0
    if-eqz v3, :cond_1

    .line 123
    invoke-virtual {v3}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v0

    array-length v0, v0

    if-lt v0, v2, :cond_1

    new-array v0, v1, [D

    .line 124
    fill-array-data v0, :array_0

    .line 125
    :try_start_2
    invoke-direct {p0, p3, p4, v3, v0}, Lcom/huawei/hms/scankit/l;->a(Lcom/huawei/hms/scankit/p/_a;Ljava/util/Map;Lcom/huawei/hms/scankit/aiscan/common/x;[D)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 126
    invoke-virtual {v3}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 127
    invoke-virtual {v3}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object p3

    invoke-static {p3, p5, p6}, Lcom/huawei/hms/scankit/p/pb;->a([Lcom/huawei/hms/scankit/aiscan/common/z;FLcom/huawei/hms/scankit/p/ob;)V
    :try_end_2
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_2 .. :try_end_2} :catch_2

    return-object v3

    .line 128
    :catch_2
    :cond_1
    new-instance p3, Lcom/huawei/hms/scankit/p/eb;

    invoke-direct {p3, p2}, Lcom/huawei/hms/scankit/p/eb;-><init>(Lcom/huawei/hms/scankit/aiscan/common/m;)V

    .line 129
    new-instance p2, Lcom/huawei/hms/scankit/p/_a;

    invoke-direct {p2, p3}, Lcom/huawei/hms/scankit/p/_a;-><init>(Lcom/huawei/hms/scankit/p/Za;)V

    .line 130
    :try_start_3
    invoke-virtual {p1, p2, p4}, Lcom/huawei/hms/scankit/aiscan/common/o;->a(Lcom/huawei/hms/scankit/p/_a;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 131
    invoke-virtual {v3}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 132
    invoke-virtual {v3}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object p1

    invoke-static {p1, p5, p6}, Lcom/huawei/hms/scankit/p/pb;->a([Lcom/huawei/hms/scankit/aiscan/common/z;FLcom/huawei/hms/scankit/p/ob;)V

    return-object v3

    .line 133
    :cond_2
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p1

    throw p1
    :try_end_3
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    nop

    .line 134
    sget-boolean p1, Lcom/huawei/hms/scankit/p/Bc;->a:Z

    if-eqz p1, :cond_3

    sget-boolean p1, Lcom/huawei/hms/scankit/p/Bc;->b:Z

    if-nez p1, :cond_3

    if-eqz v3, :cond_3

    .line 135
    invoke-virtual {v3}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {v3}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object p1

    array-length p1, p1

    if-lt p1, v2, :cond_3

    new-array p1, v1, [D

    .line 136
    fill-array-data p1, :array_1

    .line 137
    invoke-direct {p0, p2, p4, v3, p1}, Lcom/huawei/hms/scankit/l;->a(Lcom/huawei/hms/scankit/p/_a;Ljava/util/Map;Lcom/huawei/hms/scankit/aiscan/common/x;[D)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 138
    invoke-virtual {v3}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 139
    invoke-virtual {v3}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object p1

    invoke-static {p1, p5, p6}, Lcom/huawei/hms/scankit/p/pb;->a([Lcom/huawei/hms/scankit/aiscan/common/z;FLcom/huawei/hms/scankit/p/ob;)V

    :cond_3
    return-object v3

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method

.method private a(Lcom/huawei/hms/scankit/aiscan/common/x;FII)Lcom/huawei/hms/scankit/aiscan/common/x;
    .locals 7

    if-eqz p1, :cond_2

    .line 211
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    if-eqz p4, :cond_2

    :cond_0
    new-array v0, v1, [Lcom/huawei/hms/scankit/aiscan/common/z;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 212
    new-instance v3, Lcom/huawei/hms/scankit/aiscan/common/z;

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v4

    mul-float v4, v4, p2

    int-to-float v5, p3

    add-float/2addr v4, v5

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v5

    mul-float v5, v5, p2

    int-to-float v6, p4

    add-float/2addr v5, v6

    invoke-direct {v3, v4, v5}, Lcom/huawei/hms/scankit/aiscan/common/z;-><init>(FF)V

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 213
    :cond_1
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/x;->a()V

    .line 214
    invoke-virtual {p1, v0}, Lcom/huawei/hms/scankit/aiscan/common/x;->a([Lcom/huawei/hms/scankit/aiscan/common/z;)V

    :cond_2
    return-object p1
.end method

.method static a(Lcom/huawei/hms/scankit/l;)Lcom/huawei/hms/scankit/aiscan/common/x;
    .locals 15

    .line 13
    iget-object v0, p0, Lcom/huawei/hms/scankit/l;->b:Lcom/huawei/hms/scankit/p/_a;

    invoke-virtual {p0, v0}, Lcom/huawei/hms/scankit/l;->a(Lcom/huawei/hms/scankit/p/_a;)F

    move-result v0

    .line 14
    new-instance v1, Lcom/huawei/hms/scankit/aiscan/common/x;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2}, Lcom/huawei/hms/scankit/aiscan/common/x;-><init>(F)V

    .line 15
    invoke-virtual {v1, v0}, Lcom/huawei/hms/scankit/aiscan/common/x;->b(F)V

    .line 16
    new-instance v0, Lcom/huawei/hms/scankit/p/ob;

    iget-object v2, p0, Lcom/huawei/hms/scankit/l;->b:Lcom/huawei/hms/scankit/p/_a;

    .line 17
    invoke-virtual {v2}, Lcom/huawei/hms/scankit/p/_a;->e()I

    move-result v2

    int-to-float v7, v2

    iget-object p0, p0, Lcom/huawei/hms/scankit/l;->b:Lcom/huawei/hms/scankit/p/_a;

    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/_a;->e()I

    move-result p0

    int-to-float v8, p0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v14}, Lcom/huawei/hms/scankit/p/ob;-><init>(ZFFFFFFFFFF)V

    .line 18
    invoke-virtual {v1, v0}, Lcom/huawei/hms/scankit/aiscan/common/x;->b(Lcom/huawei/hms/scankit/p/ob;)V

    return-object v1
.end method

.method private a(Lcom/huawei/hms/scankit/p/_a;Lcom/huawei/hms/scankit/aiscan/common/o;Lcom/huawei/hms/scankit/aiscan/common/m;Lcom/huawei/hms/scankit/aiscan/common/x;Ljava/util/Map;F)Lcom/huawei/hms/scankit/aiscan/common/x;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/scankit/p/_a;",
            "Lcom/huawei/hms/scankit/aiscan/common/o;",
            "Lcom/huawei/hms/scankit/aiscan/common/m;",
            "Lcom/huawei/hms/scankit/aiscan/common/x;",
            "Ljava/util/Map<",
            "Lcom/huawei/hms/scankit/aiscan/common/d;",
            "Ljava/lang/Object;",
            ">;F)",
            "Lcom/huawei/hms/scankit/aiscan/common/x;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 100
    :try_start_0
    iget-object v3, p0, Lcom/huawei/hms/scankit/l;->a:Lcom/huawei/hms/scankit/aiscan/common/m;

    invoke-static {v3, p4}, Lcom/huawei/hms/scankit/p/yc;->a(Lcom/huawei/hms/scankit/aiscan/common/m;Lcom/huawei/hms/scankit/aiscan/common/x;)V

    .line 101
    sget-boolean p4, Lcom/huawei/hms/scankit/p/Bc;->c:Z

    if-eqz p4, :cond_0

    sget-object p4, Lcom/huawei/hms/scankit/p/Bc;->q:[Z

    aget-boolean p4, p4, v0

    if-eqz p4, :cond_0

    .line 102
    sput-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->n:Z

    .line 103
    iget-object p4, p0, Lcom/huawei/hms/scankit/l;->b:Lcom/huawei/hms/scankit/p/_a;

    invoke-virtual {p2, p4, p5}, Lcom/huawei/hms/scankit/aiscan/common/o;->a(Lcom/huawei/hms/scankit/p/_a;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object v2

    .line 104
    sput-boolean v1, Lcom/huawei/hms/scankit/p/Bc;->n:Z

    if-eqz v2, :cond_0

    .line 105
    invoke-virtual {v2}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 106
    invoke-direct {p0, v2, p6, v1, v1}, Lcom/huawei/hms/scankit/l;->a(Lcom/huawei/hms/scankit/aiscan/common/x;FII)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object p1
    :try_end_0
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 107
    :catch_0
    sput-boolean v1, Lcom/huawei/hms/scankit/p/Bc;->n:Z

    .line 108
    :cond_0
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/_a;->e()I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/_a;->c()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p4, p1

    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float v3, p4, p1

    if-gez v3, :cond_1

    div-float p4, p1, p4

    .line 109
    :cond_1
    sget-boolean p1, Lcom/huawei/hms/scankit/p/Bc;->h:Z

    if-nez p1, :cond_3

    sget-boolean p1, Lcom/huawei/hms/scankit/p/Bc;->i:Z

    if-nez p1, :cond_3

    float-to-double v3, p4

    const-wide v5, 0x3ff451eb851eb852L    # 1.27

    cmpl-double p1, v3, v5

    if-lez p1, :cond_3

    const-wide v5, 0x3ff45a1cac083127L    # 1.272

    cmpg-double p1, v3, v5

    if-gez p1, :cond_3

    .line 110
    sput-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->p:Z

    .line 111
    :try_start_1
    new-instance p1, Lcom/huawei/hms/scankit/p/eb;

    invoke-direct {p1, p3}, Lcom/huawei/hms/scankit/p/eb;-><init>(Lcom/huawei/hms/scankit/aiscan/common/m;)V

    .line 112
    new-instance p3, Lcom/huawei/hms/scankit/p/_a;

    invoke-direct {p3, p1}, Lcom/huawei/hms/scankit/p/_a;-><init>(Lcom/huawei/hms/scankit/p/Za;)V

    .line 113
    invoke-virtual {p2, p3, p5}, Lcom/huawei/hms/scankit/aiscan/common/o;->a(Lcom/huawei/hms/scankit/p/_a;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object p1
    :try_end_1
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz p1, :cond_2

    .line 114
    :try_start_2
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 115
    invoke-direct {p0, p1, p6, v1, v1}, Lcom/huawei/hms/scankit/l;->a(Lcom/huawei/hms/scankit/aiscan/common/x;FII)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object p1
    :try_end_2
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_2 .. :try_end_2} :catch_1

    return-object p1

    :catch_1
    :cond_2
    move-object v2, p1

    .line 116
    :catch_2
    sput-boolean v1, Lcom/huawei/hms/scankit/p/Bc;->p:Z

    :cond_3
    return-object v2
.end method

.method private a(Lcom/huawei/hms/scankit/p/_a;Lcom/huawei/hms/scankit/aiscan/common/x;Lcom/huawei/hms/scankit/aiscan/common/x;Lcom/huawei/hms/scankit/aiscan/common/o;Ljava/util/Map;FLcom/huawei/hms/scankit/p/ob;)Lcom/huawei/hms/scankit/aiscan/common/x;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/scankit/p/_a;",
            "Lcom/huawei/hms/scankit/aiscan/common/x;",
            "Lcom/huawei/hms/scankit/aiscan/common/x;",
            "Lcom/huawei/hms/scankit/aiscan/common/o;",
            "Ljava/util/Map<",
            "Lcom/huawei/hms/scankit/aiscan/common/d;",
            "Ljava/lang/Object;",
            ">;F",
            "Lcom/huawei/hms/scankit/p/ob;",
            ")",
            "Lcom/huawei/hms/scankit/aiscan/common/x;"
        }
    .end annotation

    .line 44
    :try_start_0
    sget-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->a:Z

    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/_a;->d()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/_a;->e()I

    move-result v1

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/_a;->c()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/scankit/l;->a([BII)Lcom/huawei/hms/scankit/p/bb;

    move-result-object v0

    .line 46
    invoke-virtual {p1, v0}, Lcom/huawei/hms/scankit/p/_a;->a(Lcom/huawei/hms/scankit/p/bb;)V

    .line 47
    invoke-virtual {p4, p1, p5}, Lcom/huawei/hms/scankit/aiscan/common/o;->a(Lcom/huawei/hms/scankit/p/_a;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 48
    invoke-virtual {p2}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 49
    new-instance v0, Lcom/huawei/hms/scankit/aiscan/common/x;

    invoke-virtual {p2}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v2

    sget-object v3, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->k:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    const/4 v4, 0x0

    invoke-direct {v0, v4, v4, v2, v3}, Lcom/huawei/hms/scankit/aiscan/common/x;-><init>(Ljava/lang/String;[B[Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;)V
    :try_end_0
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p3, 0x6

    :try_start_1
    new-array p3, p3, [D

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    aput-wide v3, p3, v2

    const/4 v2, 0x1

    aput-wide v3, p3, v2

    const/4 v2, 0x2

    aput-wide v3, p3, v2

    aput-wide v3, p3, v1

    const/4 v1, 0x4

    aput-wide v3, p3, v1

    const/4 v1, 0x5

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    aput-wide v2, p3, v1

    .line 50
    invoke-direct {p0, p1, p5, p2, p3}, Lcom/huawei/hms/scankit/l;->a(Lcom/huawei/hms/scankit/p/_a;Ljava/util/Map;Lcom/huawei/hms/scankit/aiscan/common/x;[D)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object p2
    :try_end_1
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_1 .. :try_end_1} :catch_0

    move-object p3, v0

    goto :goto_0

    :catch_0
    move-object p3, v0

    goto :goto_1

    :catch_1
    nop

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 51
    :try_start_2
    invoke-virtual {p2}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 52
    invoke-virtual {p2}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v0

    invoke-static {v0, p6, p7}, Lcom/huawei/hms/scankit/p/pb;->a([Lcom/huawei/hms/scankit/aiscan/common/z;FLcom/huawei/hms/scankit/p/ob;)V

    return-object p2

    .line 53
    :cond_1
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object v0

    throw v0
    :try_end_2
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    if-nez p2, :cond_3

    .line 54
    sget-boolean p2, Lcom/huawei/hms/scankit/p/Bc;->s:Z

    if-nez p2, :cond_2

    sget-boolean p2, Lcom/huawei/hms/scankit/p/Bc;->c:Z

    if-nez p2, :cond_3

    sget-boolean p2, Lcom/huawei/hms/scankit/p/Bc;->l:Z

    if-eqz p2, :cond_3

    .line 55
    :cond_2
    :try_start_3
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/_a;->b()Lcom/huawei/hms/scankit/p/bb;

    move-result-object p2

    invoke-virtual {p2}, Lcom/huawei/hms/scankit/p/bb;->c()Lcom/huawei/hms/scankit/p/bb;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/huawei/hms/scankit/p/_a;->a(Lcom/huawei/hms/scankit/p/bb;)V

    .line 56
    invoke-virtual {p4, p1, p5}, Lcom/huawei/hms/scankit/aiscan/common/o;->a(Lcom/huawei/hms/scankit/p/_a;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 57
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 58
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object p2

    invoke-static {p2, p6, p7}, Lcom/huawei/hms/scankit/p/pb;->a([Lcom/huawei/hms/scankit/aiscan/common/z;FLcom/huawei/hms/scankit/p/ob;)V
    :try_end_3
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_3 .. :try_end_3} :catch_2

    return-object p1

    :catch_2
    :cond_3
    return-object p3
.end method

.method private a(Lcom/huawei/hms/scankit/p/_a;Ljava/util/Map;Lcom/huawei/hms/scankit/aiscan/common/x;[D)Lcom/huawei/hms/scankit/aiscan/common/x;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/scankit/p/_a;",
            "Ljava/util/Map<",
            "Lcom/huawei/hms/scankit/aiscan/common/d;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/huawei/hms/scankit/aiscan/common/x;",
            "[D)",
            "Lcom/huawei/hms/scankit/aiscan/common/x;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 185
    :cond_0
    new-instance v3, Lcom/huawei/hms/scankit/aiscan/common/o;

    invoke-direct {v3}, Lcom/huawei/hms/scankit/aiscan/common/o;-><init>()V

    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 186
    fill-array-data v4, :array_0

    move-object/from16 v5, p3

    .line 187
    invoke-static {v0, v1, v5, v4, v2}, Lcom/huawei/hms/scankit/aiscan/common/D;->a(Lcom/huawei/hms/scankit/p/_a;Ljava/util/Map;Lcom/huawei/hms/scankit/aiscan/common/x;[I[D)[B

    move-result-object v7

    .line 188
    new-instance v15, Lcom/huawei/hms/scankit/aiscan/common/r;

    const/4 v6, 0x0

    aget v8, v4, v6

    const/4 v9, 0x1

    aget v10, v4, v9

    aget v12, v4, v6

    aget v13, v4, v9

    const/4 v4, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    move-object v6, v15

    move v9, v10

    move v10, v4

    invoke-direct/range {v6 .. v14}, Lcom/huawei/hms/scankit/aiscan/common/r;-><init>([BIIIIIIZ)V

    .line 189
    new-instance v4, Lcom/huawei/hms/scankit/p/_a;

    new-instance v6, Lcom/huawei/hms/scankit/p/db;

    invoke-direct {v6, v15}, Lcom/huawei/hms/scankit/p/db;-><init>(Lcom/huawei/hms/scankit/aiscan/common/m;)V

    invoke-direct {v4, v6}, Lcom/huawei/hms/scankit/p/_a;-><init>(Lcom/huawei/hms/scankit/p/Za;)V

    .line 190
    :try_start_0
    invoke-virtual {v3, v4, v1}, Lcom/huawei/hms/scankit/aiscan/common/o;->a(Lcom/huawei/hms/scankit/p/_a;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object v4
    :try_end_0
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_1

    .line 191
    :try_start_1
    invoke-virtual {v4}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 192
    invoke-virtual {v4}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hms/scankit/p/_a;->e()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hms/scankit/p/_a;->c()I

    move-result v7

    invoke-static {v5, v6, v7, v2}, Lcom/huawei/hms/scankit/aiscan/common/D;->a([Lcom/huawei/hms/scankit/aiscan/common/z;II[D)[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v5

    .line 193
    invoke-virtual {v4}, Lcom/huawei/hms/scankit/aiscan/common/x;->a()V

    .line 194
    invoke-virtual {v4, v5}, Lcom/huawei/hms/scankit/aiscan/common/x;->b([Lcom/huawei/hms/scankit/aiscan/common/z;)V

    return-object v4

    .line 195
    :cond_1
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object v5

    throw v5
    :try_end_1
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    move-object v4, v5

    .line 196
    :catch_1
    new-instance v5, Lcom/huawei/hms/scankit/p/_a;

    new-instance v6, Lcom/huawei/hms/scankit/p/eb;

    invoke-direct {v6, v15}, Lcom/huawei/hms/scankit/p/eb;-><init>(Lcom/huawei/hms/scankit/aiscan/common/m;)V

    invoke-direct {v5, v6}, Lcom/huawei/hms/scankit/p/_a;-><init>(Lcom/huawei/hms/scankit/p/Za;)V

    .line 197
    :try_start_2
    invoke-virtual {v3, v5, v1}, Lcom/huawei/hms/scankit/aiscan/common/o;->a(Lcom/huawei/hms/scankit/p/_a;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 198
    invoke-virtual {v4}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 199
    invoke-virtual {v4}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hms/scankit/p/_a;->e()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hms/scankit/p/_a;->c()I

    move-result v8

    invoke-static {v6, v7, v8, v2}, Lcom/huawei/hms/scankit/aiscan/common/D;->a([Lcom/huawei/hms/scankit/aiscan/common/z;II[D)[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v6

    .line 200
    invoke-virtual {v4}, Lcom/huawei/hms/scankit/aiscan/common/x;->a()V

    .line 201
    invoke-virtual {v4, v6}, Lcom/huawei/hms/scankit/aiscan/common/x;->b([Lcom/huawei/hms/scankit/aiscan/common/z;)V

    return-object v4

    .line 202
    :cond_2
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object v6

    throw v6
    :try_end_2
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_2 .. :try_end_2} :catch_2

    .line 203
    :catch_2
    invoke-virtual {v15}, Lcom/huawei/hms/scankit/aiscan/common/r;->b()[B

    move-result-object v6

    invoke-virtual {v15}, Lcom/huawei/hms/scankit/aiscan/common/m;->c()I

    move-result v7

    invoke-virtual {v15}, Lcom/huawei/hms/scankit/aiscan/common/m;->a()I

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/huawei/hms/scankit/l;->a([BII)Lcom/huawei/hms/scankit/p/bb;

    move-result-object v6

    .line 204
    invoke-virtual {v5, v6}, Lcom/huawei/hms/scankit/p/_a;->a(Lcom/huawei/hms/scankit/p/bb;)V

    .line 205
    :try_start_3
    invoke-virtual {v3, v5, v1}, Lcom/huawei/hms/scankit/aiscan/common/o;->a(Lcom/huawei/hms/scankit/p/_a;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 206
    invoke-virtual {v4}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 207
    invoke-virtual {v4}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hms/scankit/p/_a;->e()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hms/scankit/p/_a;->c()I

    move-result v0

    invoke-static {v1, v3, v0, v2}, Lcom/huawei/hms/scankit/aiscan/common/D;->a([Lcom/huawei/hms/scankit/aiscan/common/z;II[D)[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v0

    .line 208
    invoke-virtual {v4}, Lcom/huawei/hms/scankit/aiscan/common/x;->a()V

    .line 209
    invoke-virtual {v4, v0}, Lcom/huawei/hms/scankit/aiscan/common/x;->b([Lcom/huawei/hms/scankit/aiscan/common/z;)V

    return-object v4

    .line 210
    :cond_3
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object v0

    throw v0
    :try_end_3
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-object v4

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method static a(Ljava/util/List;Lcom/huawei/hms/scankit/l;)Lcom/huawei/hms/scankit/aiscan/common/x;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/huawei/hms/scankit/p/ob;",
            ">;",
            "Lcom/huawei/hms/scankit/l;",
            ")",
            "Lcom/huawei/hms/scankit/aiscan/common/x;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hms/scankit/p/ob;

    .line 2
    sget-boolean v1, Lcom/huawei/hms/scankit/p/Bc;->b:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/ob;->h()F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x3fd999999999999aL    # 0.4

    cmpl-double v5, v1, v3

    if-lez v5, :cond_0

    .line 3
    :cond_1
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/ob;->j()F

    move-result v1

    float-to-int v1, v1

    .line 4
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/ob;->k()F

    move-result v2

    float-to-int v2, v2

    .line 5
    iget-object v3, p1, Lcom/huawei/hms/scankit/l;->a:Lcom/huawei/hms/scankit/aiscan/common/m;

    invoke-virtual {v3}, Lcom/huawei/hms/scankit/aiscan/common/m;->c()I

    move-result v3

    div-int/lit8 v3, v3, 0x3

    if-le v1, v3, :cond_2

    iget-object v3, p1, Lcom/huawei/hms/scankit/l;->a:Lcom/huawei/hms/scankit/aiscan/common/m;

    .line 6
    invoke-virtual {v3}, Lcom/huawei/hms/scankit/aiscan/common/m;->c()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x3

    if-ge v1, v3, :cond_2

    iget-object v1, p1, Lcom/huawei/hms/scankit/l;->a:Lcom/huawei/hms/scankit/aiscan/common/m;

    .line 7
    invoke-virtual {v1}, Lcom/huawei/hms/scankit/aiscan/common/m;->a()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    if-le v2, v1, :cond_2

    iget-object v1, p1, Lcom/huawei/hms/scankit/l;->a:Lcom/huawei/hms/scankit/aiscan/common/m;

    .line 8
    invoke-virtual {v1}, Lcom/huawei/hms/scankit/aiscan/common/m;->a()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    if-ge v2, v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    .line 9
    iget-object p0, p1, Lcom/huawei/hms/scankit/l;->d:Lcom/huawei/hms/scankit/p/_a;

    invoke-virtual {p1, p0}, Lcom/huawei/hms/scankit/l;->a(Lcom/huawei/hms/scankit/p/_a;)F

    move-result p0

    .line 10
    new-instance p1, Lcom/huawei/hms/scankit/aiscan/common/x;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p1, v1}, Lcom/huawei/hms/scankit/aiscan/common/x;-><init>(F)V

    .line 11
    invoke-virtual {p1, p0}, Lcom/huawei/hms/scankit/aiscan/common/x;->a(F)V

    .line 12
    invoke-virtual {p1, v0}, Lcom/huawei/hms/scankit/aiscan/common/x;->a(Lcom/huawei/hms/scankit/p/ob;)V

    return-object p1

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a([BII)Lcom/huawei/hms/scankit/p/bb;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    const/16 v0, 0x2d

    .line 215
    invoke-static {p0, p2, p1, v0}, Lcom/huawei/hms/scankit/util/LoadOpencvJNIUtil;->adaptivebinary([BIII)[B

    move-result-object p0

    if-eqz p0, :cond_3

    .line 216
    new-instance v0, Lcom/huawei/hms/scankit/p/bb;

    invoke-direct {v0, p1, p2}, Lcom/huawei/hms/scankit/p/bb;-><init>(II)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p1, :cond_1

    mul-int v4, v2, p1

    add-int/2addr v4, v3

    .line 217
    aget-byte v4, p0, v4

    if-nez v4, :cond_0

    .line 218
    invoke-virtual {v0, v3, v2}, Lcom/huawei/hms/scankit/p/bb;->c(II)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    .line 219
    :cond_3
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0
.end method

.method private static a(Lcom/huawei/hms/scankit/p/_a;Lcom/huawei/hms/scankit/p/ob;)Z
    .locals 10

    .line 244
    sget-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->a:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->b:Z

    if-nez v0, :cond_a

    .line 245
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/ob;->d()F

    move-result v0

    .line 246
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/ob;->e()F

    move-result v2

    .line 247
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/ob;->f()F

    move-result v3

    .line 248
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/ob;->c()F

    move-result v4

    const v5, 0x3e4ccccd    # 0.2f

    mul-float v6, v3, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sub-float/2addr v0, v6

    const/4 v6, 0x0

    cmpg-float v8, v0, v6

    if-gez v8, :cond_0

    const/4 v0, 0x0

    :cond_0
    mul-float v5, v5, v4

    div-float/2addr v5, v7

    sub-float/2addr v2, v5

    cmpg-float v5, v2, v6

    if-gez v5, :cond_1

    goto :goto_0

    :cond_1
    move v6, v2

    :goto_0
    const v2, 0x3f99999a    # 1.2f

    mul-float v3, v3, v2

    add-float/2addr v3, v0

    .line 249
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/_a;->e()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, v3, v5

    if-lez v5, :cond_2

    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/_a;->e()I

    move-result v3

    int-to-float v3, v3

    :cond_2
    mul-float v4, v4, v2

    add-float/2addr v4, v6

    .line 250
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/_a;->c()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v4, v2

    if-lez v2, :cond_3

    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/_a;->c()I

    move-result v2

    int-to-float v4, v2

    :cond_3
    sub-float/2addr v3, v0

    sub-float/2addr v4, v6

    .line 251
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/_a;->e()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v7

    cmpg-float v2, v3, v2

    if-gez v2, :cond_a

    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/_a;->c()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v7

    cmpg-float v2, v4, v2

    if-gez v2, :cond_a

    float-to-int v0, v0

    float-to-int v2, v6

    float-to-int v3, v3

    float-to-int v4, v4

    .line 252
    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/huawei/hms/scankit/p/_a;->a(IIII)Lcom/huawei/hms/scankit/p/_a;

    move-result-object p0

    .line 253
    sget-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->b:Z

    const/4 v2, 0x0

    invoke-static {v0, p0, v2, v1}, Lcom/huawei/hms/scankit/p/pb;->a(ZLcom/huawei/hms/scankit/p/_a;IZ)Ljava/util/List;

    move-result-object p0

    .line 254
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hms/scankit/p/ob;

    .line 255
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/ob;->g()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_5

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/ob;->h()F

    move-result v3

    float-to-double v3, v3

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    cmpl-double v8, v3, v5

    if-lez v8, :cond_5

    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    .line 256
    :goto_1
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/ob;->g()F

    move-result v4

    const-wide v5, 0x3fe6666666666666L    # 0.7

    cmpl-float v4, v4, v7

    if-nez v4, :cond_6

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/ob;->g()F

    move-result v4

    cmpl-float v4, v4, v7

    if-nez v4, :cond_6

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/ob;->h()F

    move-result v4

    float-to-double v8, v4

    cmpl-double v4, v8, v5

    if-lez v4, :cond_6

    const/4 v4, 0x1

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    .line 257
    :goto_2
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/ob;->g()F

    move-result v8

    const/high16 v9, 0x40400000    # 3.0f

    cmpl-float v8, v8, v9

    if-nez v8, :cond_7

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/ob;->g()F

    move-result v8

    cmpl-float v8, v8, v9

    if-nez v8, :cond_7

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/ob;->h()F

    move-result v0

    float-to-double v8, v0

    cmpl-double v0, v8, v5

    if-lez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    :goto_3
    if-nez v3, :cond_8

    if-nez v4, :cond_8

    if-eqz v0, :cond_4

    :cond_8
    return v1

    :cond_9
    return v2

    :cond_a
    return v1
.end method

.method private b(Lcom/huawei/hms/scankit/p/_a;)Lcom/huawei/hms/scankit/p/_a;
    .locals 8

    .line 11
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/_a;->e()I

    move-result v0

    .line 12
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/_a;->c()I

    move-result v1

    int-to-double v2, v0

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    mul-double v2, v2, v4

    double-to-int v2, v2

    int-to-double v6, v1

    mul-double v6, v6, v4

    double-to-int v3, v6

    .line 13
    iget v4, p0, Lcom/huawei/hms/scankit/l;->k:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v4, v0

    iput v4, p0, Lcom/huawei/hms/scankit/l;->k:I

    .line 14
    iget v4, p0, Lcom/huawei/hms/scankit/l;->l:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v4, v1

    iput v4, p0, Lcom/huawei/hms/scankit/l;->l:I

    .line 15
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/huawei/hms/scankit/p/_a;->a(IIII)Lcom/huawei/hms/scankit/p/_a;

    move-result-object p1

    return-object p1
.end method

.method private b(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/huawei/hms/scankit/p/ob;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hms/scankit/p/ob;

    .line 17
    iget-object v1, p0, Lcom/huawei/hms/scankit/l;->a:Lcom/huawei/hms/scankit/aiscan/common/m;

    invoke-virtual {v1}, Lcom/huawei/hms/scankit/aiscan/common/m;->c()I

    move-result v1

    iget-object v2, p0, Lcom/huawei/hms/scankit/l;->a:Lcom/huawei/hms/scankit/aiscan/common/m;

    invoke-virtual {v2}, Lcom/huawei/hms/scankit/aiscan/common/m;->a()I

    move-result v2

    iget v3, p0, Lcom/huawei/hms/scankit/l;->k:I

    int-to-float v3, v3

    iget v4, p0, Lcom/huawei/hms/scankit/l;->l:I

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/huawei/hms/scankit/p/ob;->a(IIFF)V

    .line 18
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/ob;->i()F

    move-result v1

    const/high16 v2, 0x42b40000    # 90.0f

    rem-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/ob;->i()F

    move-result v3

    rem-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 19
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/ob;->c()F

    move-result v2

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/ob;->f()F

    move-result v3

    mul-float v2, v2, v3

    iget-object v3, p0, Lcom/huawei/hms/scankit/l;->a:Lcom/huawei/hms/scankit/aiscan/common/m;

    invoke-virtual {v3}, Lcom/huawei/hms/scankit/aiscan/common/m;->a()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f666666    # 0.9f

    mul-float v3, v3, v4

    iget-object v4, p0, Lcom/huawei/hms/scankit/l;->a:Lcom/huawei/hms/scankit/aiscan/common/m;

    invoke-virtual {v4}, Lcom/huawei/hms/scankit/aiscan/common/m;->c()I

    move-result v4

    int-to-float v4, v4

    mul-float v3, v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    const/high16 v2, 0x40a00000    # 5.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 20
    iget-object v1, p0, Lcom/huawei/hms/scankit/l;->a:Lcom/huawei/hms/scankit/aiscan/common/m;

    invoke-virtual {v1}, Lcom/huawei/hms/scankit/aiscan/common/m;->c()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/huawei/hms/scankit/l;->a:Lcom/huawei/hms/scankit/aiscan/common/m;

    invoke-virtual {v2}, Lcom/huawei/hms/scankit/aiscan/common/m;->a()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/huawei/hms/scankit/p/ob;->b(FF)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private c(Lcom/huawei/hms/scankit/p/_a;)Lcom/huawei/hms/scankit/p/_a;
    .locals 8

    .line 28
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/_a;->e()I

    move-result v0

    .line 29
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/_a;->c()I

    move-result v1

    const/4 v2, 0x0

    const-wide v3, 0x3ff3333333333333L    # 1.2

    if-ge v0, v1, :cond_0

    int-to-float v5, v1

    int-to-float v6, v0

    div-float/2addr v5, v6

    float-to-double v5, v5

    cmpl-double v7, v5, v3

    if-lez v7, :cond_1

    int-to-double v5, v0

    mul-double v5, v5, v3

    double-to-int v3, v5

    sub-int/2addr v1, v3

    .line 30
    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/huawei/hms/scankit/l;->l:I

    .line 31
    invoke-virtual {p1, v2, v1, v0, v3}, Lcom/huawei/hms/scankit/p/_a;->a(IIII)Lcom/huawei/hms/scankit/p/_a;

    move-result-object p1

    return-object p1

    :cond_0
    int-to-float v5, v0

    int-to-float v6, v1

    div-float/2addr v5, v6

    float-to-double v5, v5

    cmpl-double v7, v5, v3

    if-lez v7, :cond_1

    int-to-double v5, v1

    mul-double v5, v5, v3

    double-to-int v3, v5

    sub-int/2addr v0, v3

    .line 32
    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/huawei/hms/scankit/l;->k:I

    .line 33
    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/huawei/hms/scankit/p/_a;->a(IIII)Lcom/huawei/hms/scankit/p/_a;

    move-result-object p1

    :cond_1
    return-object p1
.end method


# virtual methods
.method public a(Lcom/huawei/hms/scankit/p/_a;)F
    .locals 8

    if-eqz p1, :cond_1

    .line 220
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/_a;->a()Lcom/huawei/hms/scankit/p/Za;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/_a;->a()Lcom/huawei/hms/scankit/p/Za;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/Za;->c()Lcom/huawei/hms/scankit/aiscan/common/m;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 221
    :cond_0
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/_a;->a()Lcom/huawei/hms/scankit/p/Za;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/Za;->c()Lcom/huawei/hms/scankit/aiscan/common/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/aiscan/common/m;->b()[B

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    return p1

    :cond_2
    const-wide/16 v1, 0x0

    .line 222
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/_a;->e()I

    move-result v3

    .line 223
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/_a;->c()I

    move-result p1

    .line 224
    div-int/lit8 v4, p1, 0x4

    :goto_1
    mul-int/lit8 v5, p1, 0x3

    div-int/lit8 v5, v5, 0x4

    if-ge v4, v5, :cond_4

    .line 225
    div-int/lit8 v5, v3, 0x4

    :goto_2
    mul-int/lit8 v6, v3, 0x3

    div-int/lit8 v6, v6, 0x4

    if-ge v5, v6, :cond_3

    mul-int v6, v4, v3

    add-int/2addr v6, v5

    .line 226
    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    add-long/2addr v1, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 227
    :cond_4
    array-length p1, v0

    int-to-long v3, p1

    div-long/2addr v1, v3

    const-wide/16 v3, 0x4

    mul-long v1, v1, v3

    long-to-float p1, v1

    return p1
.end method

.method public a(Ljava/util/List;Lcom/huawei/hms/scankit/p/ob;)Lcom/huawei/hms/scankit/aiscan/common/x;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;",
            ">;",
            "Lcom/huawei/hms/scankit/p/ob;",
            ")",
            "Lcom/huawei/hms/scankit/aiscan/common/x;"
        }
    .end annotation

    .line 140
    new-instance v6, Lcom/huawei/hms/scankit/aiscan/common/o;

    invoke-direct {v6}, Lcom/huawei/hms/scankit/aiscan/common/o;-><init>()V

    .line 141
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 142
    sget-object v0, Lcom/huawei/hms/scankit/aiscan/common/d;->b:Lcom/huawei/hms/scankit/aiscan/common/d;

    invoke-interface {v7, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-boolean p1, Lcom/huawei/hms/scankit/p/Bc;->c:Z

    if-eqz p1, :cond_0

    .line 144
    sget-object p1, Lcom/huawei/hms/scankit/aiscan/common/d;->c:Lcom/huawei/hms/scankit/aiscan/common/d;

    sget-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->c:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v7, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p1, 0x0

    if-eqz p2, :cond_1

    .line 145
    :try_start_0
    iget-object v1, p0, Lcom/huawei/hms/scankit/l;->b:Lcom/huawei/hms/scankit/p/_a;

    iget-object v2, p0, Lcom/huawei/hms/scankit/l;->d:Lcom/huawei/hms/scankit/p/_a;

    iget-object v4, p0, Lcom/huawei/hms/scankit/l;->i:Lcom/huawei/hms/scankit/aiscan/common/l;

    move-object v0, v6

    move-object v3, v7

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/huawei/hms/scankit/aiscan/common/o;->a(Lcom/huawei/hms/scankit/p/_a;Lcom/huawei/hms/scankit/p/_a;Ljava/util/Map;Lcom/huawei/hms/scankit/aiscan/common/l;Lcom/huawei/hms/scankit/p/ob;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object p1

    goto :goto_0

    .line 146
    :cond_1
    iget-object v1, p0, Lcom/huawei/hms/scankit/l;->b:Lcom/huawei/hms/scankit/p/_a;

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/huawei/hms/scankit/l;->i:Lcom/huawei/hms/scankit/aiscan/common/l;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v3, v7

    invoke-virtual/range {v0 .. v5}, Lcom/huawei/hms/scankit/aiscan/common/o;->a(Lcom/huawei/hms/scankit/p/_a;Lcom/huawei/hms/scankit/p/_a;Ljava/util/Map;Lcom/huawei/hms/scankit/aiscan/common/l;Lcom/huawei/hms/scankit/p/ob;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object p1
    :try_end_0
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-nez p1, :cond_9

    .line 147
    sget-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->b:Z

    if-nez v0, :cond_9

    if-eqz p2, :cond_9

    sget-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->c:Z

    if-eqz v0, :cond_9

    invoke-virtual {p2}, Lcom/huawei/hms/scankit/p/ob;->h()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3fe999999999999aL    # 0.8

    cmpg-double v4, v0, v2

    if-gez v4, :cond_9

    .line 148
    invoke-virtual {p2}, Lcom/huawei/hms/scankit/p/ob;->i()F

    move-result v0

    const/high16 v1, 0x43340000    # 180.0f

    rem-float/2addr v0, v1

    .line 149
    invoke-virtual {p2}, Lcom/huawei/hms/scankit/p/ob;->c()F

    move-result v1

    float-to-double v1, v1

    iget-object v3, p0, Lcom/huawei/hms/scankit/l;->b:Lcom/huawei/hms/scankit/p/_a;

    invoke-virtual {v3}, Lcom/huawei/hms/scankit/p/_a;->c()I

    move-result v3

    int-to-double v3, v3

    const-wide v8, 0x3fef0a3d70a3d70aL    # 0.97

    mul-double v3, v3, v8

    const/4 v5, 0x1

    const/4 v10, 0x0

    cmpl-double v11, v1, v3

    if-lez v11, :cond_4

    const/high16 v1, 0x40a00000    # 5.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    const/high16 v1, -0x3f600000    # -5.0f

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_3

    :cond_2
    const/high16 v1, -0x3cd10000    # -175.0f

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_3

    const/high16 v1, 0x432f0000    # 175.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_4

    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 150
    :goto_1
    invoke-virtual {p2}, Lcom/huawei/hms/scankit/p/ob;->b()F

    move-result p2

    float-to-double v2, p2

    iget-object p2, p0, Lcom/huawei/hms/scankit/l;->b:Lcom/huawei/hms/scankit/p/_a;

    invoke-virtual {p2}, Lcom/huawei/hms/scankit/p/_a;->e()I

    move-result p2

    int-to-double v11, p2

    mul-double v11, v11, v8

    cmpl-double p2, v2, v11

    if-lez p2, :cond_6

    const/high16 p2, 0x42be0000    # 95.0f

    cmpg-float p2, v0, p2

    if-gez p2, :cond_5

    const/high16 p2, 0x42aa0000    # 85.0f

    cmpl-float p2, v0, p2

    if-gtz p2, :cond_7

    :cond_5
    const/high16 p2, -0x3d560000    # -85.0f

    cmpg-float p2, v0, p2

    if-gez p2, :cond_6

    const/high16 p2, -0x3d420000    # -95.0f

    cmpl-float p2, v0, p2

    if-lez p2, :cond_6

    goto :goto_2

    :cond_6
    const/4 v5, 0x0

    :cond_7
    :goto_2
    if-nez v1, :cond_8

    if-eqz v5, :cond_9

    .line 151
    :cond_8
    iget-object p2, p0, Lcom/huawei/hms/scankit/l;->i:Lcom/huawei/hms/scankit/aiscan/common/l;

    invoke-virtual {p2}, Lcom/huawei/hms/scankit/aiscan/common/l;->a()V

    .line 152
    :try_start_1
    iget-object v1, p0, Lcom/huawei/hms/scankit/l;->b:Lcom/huawei/hms/scankit/p/_a;

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/huawei/hms/scankit/l;->i:Lcom/huawei/hms/scankit/aiscan/common/l;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v3, v7

    invoke-virtual/range {v0 .. v5}, Lcom/huawei/hms/scankit/aiscan/common/o;->a(Lcom/huawei/hms/scankit/p/_a;Lcom/huawei/hms/scankit/p/_a;Ljava/util/Map;Lcom/huawei/hms/scankit/aiscan/common/l;Lcom/huawei/hms/scankit/p/ob;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object p1
    :try_end_1
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_9
    return-object p1
.end method

.method public a(Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/x;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/huawei/hms/scankit/aiscan/common/d;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/huawei/hms/scankit/aiscan/common/x;"
        }
    .end annotation

    .line 59
    new-instance v1, Lcom/huawei/hms/scankit/aiscan/common/o;

    invoke-direct {v1}, Lcom/huawei/hms/scankit/aiscan/common/o;-><init>()V

    .line 60
    iget-object v0, p0, Lcom/huawei/hms/scankit/l;->a:Lcom/huawei/hms/scankit/aiscan/common/m;

    .line 61
    sget-boolean v2, Lcom/huawei/hms/scankit/p/Bc;->a:Z

    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/huawei/hms/scankit/l;->b:Lcom/huawei/hms/scankit/p/_a;

    invoke-virtual {v2}, Lcom/huawei/hms/scankit/p/_a;->e()I

    move-result v2

    const/16 v3, 0x320

    if-gt v2, v3, :cond_0

    iget-object v2, p0, Lcom/huawei/hms/scankit/l;->b:Lcom/huawei/hms/scankit/p/_a;

    invoke-virtual {v2}, Lcom/huawei/hms/scankit/p/_a;->c()I

    move-result v2

    if-le v2, v3, :cond_3

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/l;->b:Lcom/huawei/hms/scankit/p/_a;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/_a;->e()I

    move-result v0

    iget-object v2, p0, Lcom/huawei/hms/scankit/l;->b:Lcom/huawei/hms/scankit/p/_a;

    invoke-virtual {v2}, Lcom/huawei/hms/scankit/p/_a;->c()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x44480000    # 800.0f

    div-float/2addr v0, v2

    .line 63
    sget-boolean v2, Lcom/huawei/hms/scankit/p/Bc;->c:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/huawei/hms/scankit/l;->b:Lcom/huawei/hms/scankit/p/_a;

    invoke-virtual {v2}, Lcom/huawei/hms/scankit/p/_a;->e()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/huawei/hms/scankit/l;->b:Lcom/huawei/hms/scankit/p/_a;

    invoke-virtual {v3}, Lcom/huawei/hms/scankit/p/_a;->c()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/huawei/hms/scankit/l;->j:F

    mul-float v3, v3, v4

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_1

    iget-object v2, p0, Lcom/huawei/hms/scankit/l;->b:Lcom/huawei/hms/scankit/p/_a;

    invoke-virtual {v2}, Lcom/huawei/hms/scankit/p/_a;->c()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/huawei/hms/scankit/l;->b:Lcom/huawei/hms/scankit/p/_a;

    invoke-virtual {v3}, Lcom/huawei/hms/scankit/p/_a;->e()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/huawei/hms/scankit/l;->j:F

    mul-float v3, v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/huawei/hms/scankit/l;->b:Lcom/huawei/hms/scankit/p/_a;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/_a;->e()I

    move-result v0

    iget-object v2, p0, Lcom/huawei/hms/scankit/l;->b:Lcom/huawei/hms/scankit/p/_a;

    invoke-virtual {v2}, Lcom/huawei/hms/scankit/p/_a;->c()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x44570000    # 860.0f

    div-float/2addr v0, v2

    .line 65
    :cond_2
    iget-object v2, p0, Lcom/huawei/hms/scankit/l;->i:Lcom/huawei/hms/scankit/aiscan/common/l;

    iget-object v3, p0, Lcom/huawei/hms/scankit/l;->b:Lcom/huawei/hms/scankit/p/_a;

    invoke-virtual {v2, v3, v0}, Lcom/huawei/hms/scankit/aiscan/common/l;->d(Lcom/huawei/hms/scankit/p/_a;F)Lcom/huawei/hms/scankit/p/_a;

    move-result-object v2

    .line 66
    invoke-virtual {v2}, Lcom/huawei/hms/scankit/p/_a;->a()Lcom/huawei/hms/scankit/p/Za;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/hms/scankit/p/Za;->c()Lcom/huawei/hms/scankit/aiscan/common/m;

    move-result-object v2

    move v9, v0

    goto :goto_0

    :cond_3
    move-object v2, v0

    const/high16 v9, 0x3f800000    # 1.0f

    :goto_0
    const/4 v0, 0x0

    if-nez v2, :cond_4

    return-object v0

    .line 67
    :cond_4
    new-instance v3, Lcom/huawei/hms/scankit/p/_a;

    new-instance v4, Lcom/huawei/hms/scankit/p/db;

    invoke-direct {v4, v2}, Lcom/huawei/hms/scankit/p/db;-><init>(Lcom/huawei/hms/scankit/aiscan/common/m;)V

    invoke-direct {v3, v4}, Lcom/huawei/hms/scankit/p/_a;-><init>(Lcom/huawei/hms/scankit/p/Za;)V

    .line 68
    iget-object v4, p0, Lcom/huawei/hms/scankit/l;->a:Lcom/huawei/hms/scankit/aiscan/common/m;

    invoke-static {v4}, Lcom/huawei/hms/scankit/p/yc;->a(Lcom/huawei/hms/scankit/aiscan/common/m;)V

    const/4 v10, 0x3

    const/4 v11, 0x0

    .line 69
    :try_start_0
    sget-boolean v4, Lcom/huawei/hms/scankit/p/Bc;->a:Z

    if-eqz v4, :cond_5

    .line 70
    invoke-virtual {v2}, Lcom/huawei/hms/scankit/aiscan/common/m;->b()[B

    move-result-object v4

    invoke-virtual {v2}, Lcom/huawei/hms/scankit/aiscan/common/m;->c()I

    move-result v5

    invoke-virtual {v2}, Lcom/huawei/hms/scankit/aiscan/common/m;->a()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/huawei/hms/scankit/l;->a([BII)Lcom/huawei/hms/scankit/p/bb;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/huawei/hms/scankit/p/_a;->a(Lcom/huawei/hms/scankit/p/bb;)V

    .line 71
    :cond_5
    invoke-virtual {v1, v3, p1}, Lcom/huawei/hms/scankit/aiscan/common/o;->a(Lcom/huawei/hms/scankit/p/_a;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 72
    invoke-virtual {v3}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 73
    invoke-direct {p0, v3, v9, v11, v11}, Lcom/huawei/hms/scankit/l;->a(Lcom/huawei/hms/scankit/aiscan/common/x;FII)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object p1

    return-object p1

    :cond_6
    if-eqz v3, :cond_7

    .line 74
    invoke-virtual {v3}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v4

    array-length v4, v4

    if-lt v4, v10, :cond_7

    .line 75
    new-instance v4, Lcom/huawei/hms/scankit/aiscan/common/x;

    invoke-virtual {v3}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v3

    sget-object v5, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->k:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    invoke-direct {v4, v0, v0, v3, v5}, Lcom/huawei/hms/scankit/aiscan/common/x;-><init>(Ljava/lang/String;[B[Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;)V
    :try_end_0
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_0 .. :try_end_0} :catch_0

    move-object v12, v4

    goto :goto_1

    :catch_0
    :cond_7
    move-object v12, v0

    :goto_1
    if-nez v12, :cond_8

    .line 76
    new-instance v3, Lcom/huawei/hms/scankit/aiscan/common/x;

    sget-object v4, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->k:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    invoke-direct {v3, v0, v0, v0, v4}, Lcom/huawei/hms/scankit/aiscan/common/x;-><init>(Ljava/lang/String;[B[Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;)V

    goto :goto_2

    :cond_8
    move-object v3, v12

    .line 77
    :goto_2
    sget-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->c:Z

    if-eqz v0, :cond_9

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v4, p1

    move v5, v9

    .line 78
    invoke-direct/range {v0 .. v7}, Lcom/huawei/hms/scankit/l;->a(Lcom/huawei/hms/scankit/aiscan/common/o;Lcom/huawei/hms/scankit/aiscan/common/m;Lcom/huawei/hms/scankit/aiscan/common/x;Ljava/util/Map;FII)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object v3

    :cond_9
    if-eqz v3, :cond_a

    .line 79
    invoke-virtual {v3}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    return-object v3

    :cond_a
    if-eqz v3, :cond_b

    .line 80
    invoke-virtual {v3}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object p1

    if-eqz p1, :cond_b

    move-object v12, v3

    .line 81
    :cond_b
    sget-boolean p1, Lcom/huawei/hms/scankit/p/Bc;->c:Z

    if-nez p1, :cond_c

    if-eqz v12, :cond_c

    invoke-virtual {v12}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-virtual {v12}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object p1

    array-length p1, p1

    if-lt p1, v10, :cond_c

    .line 82
    invoke-direct {p0, v12, v9, v11, v11}, Lcom/huawei/hms/scankit/l;->a(Lcom/huawei/hms/scankit/aiscan/common/x;FII)Lcom/huawei/hms/scankit/aiscan/common/x;

    .line 83
    iget-object p1, p0, Lcom/huawei/hms/scankit/l;->a:Lcom/huawei/hms/scankit/aiscan/common/m;

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/m;->c()I

    move-result p1

    iget-object v0, p0, Lcom/huawei/hms/scankit/l;->a:Lcom/huawei/hms/scankit/aiscan/common/m;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/aiscan/common/m;->a()I

    move-result v0

    invoke-virtual {v12}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/huawei/hms/scankit/H;->a(II[Lcom/huawei/hms/scankit/aiscan/common/z;)F

    move-result p1

    sub-float/2addr v8, p1

    .line 84
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v4, v0, v2

    if-lez v4, :cond_c

    .line 85
    iput p1, p0, Lcom/huawei/hms/scankit/l;->f:F

    const/4 p1, 0x1

    .line 86
    iput-boolean p1, p0, Lcom/huawei/hms/scankit/l;->e:Z

    :cond_c
    return-object v12
.end method

.method public a(Ljava/util/Map;Lcom/huawei/hms/scankit/p/ob;)Lcom/huawei/hms/scankit/aiscan/common/x;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/huawei/hms/scankit/aiscan/common/d;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/huawei/hms/scankit/p/ob;",
            ")",
            "Lcom/huawei/hms/scankit/aiscan/common/x;"
        }
    .end annotation

    .line 19
    new-instance v4, Lcom/huawei/hms/scankit/aiscan/common/o;

    invoke-direct {v4}, Lcom/huawei/hms/scankit/aiscan/common/o;-><init>()V

    .line 20
    iget-object v0, p0, Lcom/huawei/hms/scankit/l;->d:Lcom/huawei/hms/scankit/p/_a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v8, 0x1

    .line 21
    sput-boolean v8, Lcom/huawei/hms/scankit/p/Bc;->d:Z

    .line 22
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/_a;->e()I

    move-result v0

    iget-object v2, p0, Lcom/huawei/hms/scankit/l;->d:Lcom/huawei/hms/scankit/p/_a;

    invoke-virtual {v2}, Lcom/huawei/hms/scankit/p/_a;->c()I

    move-result v2

    if-le v0, v2, :cond_1

    iget-object v0, p0, Lcom/huawei/hms/scankit/l;->d:Lcom/huawei/hms/scankit/p/_a;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/_a;->e()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/huawei/hms/scankit/l;->d:Lcom/huawei/hms/scankit/p/_a;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/_a;->c()I

    move-result v0

    .line 23
    :goto_0
    sget-boolean v2, Lcom/huawei/hms/scankit/p/Bc;->a:Z

    const/high16 v9, 0x3f800000    # 1.0f

    if-eqz v2, :cond_3

    const/16 v2, 0x1f4

    if-le v0, v2, :cond_3

    int-to-float v0, v0

    const/high16 v2, 0x43fa0000    # 500.0f

    div-float/2addr v0, v2

    cmpg-float v2, v0, v9

    if-gez v2, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 24
    :cond_2
    iget-object v2, p0, Lcom/huawei/hms/scankit/l;->i:Lcom/huawei/hms/scankit/aiscan/common/l;

    iget-object v3, p0, Lcom/huawei/hms/scankit/l;->d:Lcom/huawei/hms/scankit/p/_a;

    invoke-virtual {v2, v3, v0}, Lcom/huawei/hms/scankit/aiscan/common/l;->g(Lcom/huawei/hms/scankit/p/_a;F)Lcom/huawei/hms/scankit/p/_a;

    move-result-object v2

    move v10, v0

    goto :goto_1

    .line 25
    :cond_3
    iget-object v2, p0, Lcom/huawei/hms/scankit/l;->d:Lcom/huawei/hms/scankit/p/_a;

    const/high16 v10, 0x3f800000    # 1.0f

    :goto_1
    const/4 v11, 0x3

    .line 26
    :try_start_0
    sget-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->j:Z

    if-eqz v0, :cond_4

    .line 27
    invoke-virtual {v2}, Lcom/huawei/hms/scankit/p/_a;->a()Lcom/huawei/hms/scankit/p/Za;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/Za;->c()Lcom/huawei/hms/scankit/aiscan/common/m;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hms/scankit/aiscan/common/C;->a(Lcom/huawei/hms/scankit/aiscan/common/m;)Lcom/huawei/hms/scankit/aiscan/common/m;

    move-result-object v0

    .line 28
    new-instance v3, Lcom/huawei/hms/scankit/p/_a;

    new-instance v5, Lcom/huawei/hms/scankit/p/db;

    invoke-direct {v5, v0}, Lcom/huawei/hms/scankit/p/db;-><init>(Lcom/huawei/hms/scankit/aiscan/common/m;)V

    invoke-direct {v3, v5}, Lcom/huawei/hms/scankit/p/_a;-><init>(Lcom/huawei/hms/scankit/p/Za;)V

    move-object v2, v3

    .line 29
    :cond_4
    invoke-virtual {v4, v2, p1}, Lcom/huawei/hms/scankit/aiscan/common/o;->a(Lcom/huawei/hms/scankit/p/_a;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object v0
    :try_end_0
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v0, :cond_5

    .line 30
    :try_start_1
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v3

    array-length v3, v3

    if-lt v3, v11, :cond_5

    .line 31
    new-instance v3, Lcom/huawei/hms/scankit/aiscan/common/x;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v5

    sget-object v6, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->k:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    invoke-direct {v3, v1, v1, v5, v6}, Lcom/huawei/hms/scankit/aiscan/common/x;-><init>(Ljava/lang/String;[B[Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;)V
    :try_end_1
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v1, 0x6

    :try_start_2
    new-array v1, v1, [D

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    aput-wide v6, v1, v5

    aput-wide v6, v1, v8

    const/4 v5, 0x2

    aput-wide v6, v1, v5

    aput-wide v6, v1, v11

    const/4 v5, 0x4

    aput-wide v6, v1, v5

    const/4 v5, 0x5

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    aput-wide v6, v1, v5

    .line 32
    invoke-direct {p0, v2, p1, v0, v1}, Lcom/huawei/hms/scankit/l;->a(Lcom/huawei/hms/scankit/p/_a;Ljava/util/Map;Lcom/huawei/hms/scankit/aiscan/common/x;[D)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object v0
    :try_end_2
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_2 .. :try_end_2} :catch_1

    move-object v1, v3

    goto :goto_2

    :catch_0
    move-object v3, v1

    :catch_1
    move-object v1, v2

    move-object v2, v0

    goto :goto_3

    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    .line 33
    :try_start_3
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 34
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v3

    invoke-static {v3, v10, p2}, Lcom/huawei/hms/scankit/p/pb;->a([Lcom/huawei/hms/scankit/aiscan/common/z;FLcom/huawei/hms/scankit/p/ob;)V

    return-object v0

    .line 35
    :cond_6
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object v3

    throw v3
    :try_end_3
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_3 .. :try_end_3} :catch_0

    :catch_2
    move-object v3, v1

    move-object v1, v2

    move-object v2, v3

    :goto_3
    move-object v0, p0

    move-object v5, p1

    move v6, v10

    move-object v7, p2

    .line 36
    invoke-direct/range {v0 .. v7}, Lcom/huawei/hms/scankit/l;->a(Lcom/huawei/hms/scankit/p/_a;Lcom/huawei/hms/scankit/aiscan/common/x;Lcom/huawei/hms/scankit/aiscan/common/x;Lcom/huawei/hms/scankit/aiscan/common/o;Ljava/util/Map;FLcom/huawei/hms/scankit/p/ob;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 37
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object p1

    .line 38
    :cond_7
    sget-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->c:Z

    if-nez v0, :cond_8

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v0

    array-length v0, v0

    if-lt v0, v11, :cond_8

    .line 39
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v0

    invoke-static {v0, v10, p2}, Lcom/huawei/hms/scankit/p/pb;->a([Lcom/huawei/hms/scankit/aiscan/common/z;FLcom/huawei/hms/scankit/p/ob;)V

    .line 40
    iget-object p2, p0, Lcom/huawei/hms/scankit/l;->a:Lcom/huawei/hms/scankit/aiscan/common/m;

    invoke-virtual {p2}, Lcom/huawei/hms/scankit/aiscan/common/m;->c()I

    move-result p2

    iget-object v0, p0, Lcom/huawei/hms/scankit/l;->a:Lcom/huawei/hms/scankit/aiscan/common/m;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/aiscan/common/m;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/huawei/hms/scankit/H;->a(II[Lcom/huawei/hms/scankit/aiscan/common/z;)F

    move-result p2

    sub-float/2addr v9, p2

    .line 41
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v4, v0, v2

    if-lez v4, :cond_8

    .line 42
    iput p2, p0, Lcom/huawei/hms/scankit/l;->f:F

    .line 43
    iput-boolean v8, p0, Lcom/huawei/hms/scankit/l;->e:Z

    :cond_8
    return-object p1
.end method

.method public a(IZ)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Lcom/huawei/hms/scankit/p/ob;",
            ">;"
        }
    .end annotation

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    sget-boolean v1, Lcom/huawei/hms/scankit/p/Bc;->a:Z

    if-eqz v1, :cond_7

    .line 155
    sget-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->b:Z

    if-nez v0, :cond_6

    .line 156
    invoke-static {}, Lcom/huawei/hms/scankit/z;->c()[B

    move-result-object v1

    .line 157
    invoke-static {}, Lcom/huawei/hms/scankit/z;->d()[F

    move-result-object v3

    .line 158
    invoke-static {}, Lcom/huawei/hms/scankit/z;->a()I

    move-result v4

    .line 159
    invoke-static {}, Lcom/huawei/hms/scankit/z;->b()[B

    move-result-object v5

    .line 160
    array-length v2, v1

    array-length v6, v5

    invoke-static/range {v1 .. v6}, Lcom/huawei/hms/scankit/util/LoadOpencvJNIUtil;->setModel([BI[FI[BI)V

    .line 161
    iget-object v0, p0, Lcom/huawei/hms/scankit/l;->b:Lcom/huawei/hms/scankit/p/_a;

    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0xa

    .line 163
    rem-long/2addr v1, v3

    const-wide/16 v3, 0x2

    rem-long v3, v1, v3

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    cmp-long v9, v3, v6

    if-nez v9, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-wide/16 v9, 0x3

    .line 164
    rem-long/2addr v1, v9

    cmp-long v4, v1, v6

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-nez p1, :cond_2

    .line 165
    sget-boolean v1, Lcom/huawei/hms/scankit/p/Bc;->c:Z

    if-nez v1, :cond_2

    if-eqz v3, :cond_2

    .line 166
    iget-object v0, p0, Lcom/huawei/hms/scankit/l;->b:Lcom/huawei/hms/scankit/p/_a;

    invoke-direct {p0, v0}, Lcom/huawei/hms/scankit/l;->c(Lcom/huawei/hms/scankit/p/_a;)Lcom/huawei/hms/scankit/p/_a;

    move-result-object v0

    goto/16 :goto_3

    :cond_2
    if-nez p1, :cond_3

    .line 167
    sget-boolean v1, Lcom/huawei/hms/scankit/p/Bc;->c:Z

    if-nez v1, :cond_3

    if-eqz v5, :cond_3

    .line 168
    iget-object v0, p0, Lcom/huawei/hms/scankit/l;->b:Lcom/huawei/hms/scankit/p/_a;

    invoke-direct {p0, v0}, Lcom/huawei/hms/scankit/l;->c(Lcom/huawei/hms/scankit/p/_a;)Lcom/huawei/hms/scankit/p/_a;

    move-result-object v0

    .line 169
    invoke-direct {p0, v0}, Lcom/huawei/hms/scankit/l;->b(Lcom/huawei/hms/scankit/p/_a;)Lcom/huawei/hms/scankit/p/_a;

    move-result-object v0

    goto/16 :goto_3

    .line 170
    :cond_3
    iget-object v1, p0, Lcom/huawei/hms/scankit/l;->a:Lcom/huawei/hms/scankit/aiscan/common/m;

    invoke-virtual {v1}, Lcom/huawei/hms/scankit/aiscan/common/m;->a()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/huawei/hms/scankit/l;->a:Lcom/huawei/hms/scankit/aiscan/common/m;

    invoke-virtual {v2}, Lcom/huawei/hms/scankit/aiscan/common/m;->c()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v2, v1

    const v4, 0x3fa66666    # 1.3f

    const-wide v5, 0x3ff599999999999aL    # 1.35

    cmpl-double v7, v2, v5

    if-lez v7, :cond_4

    .line 171
    iget-object v0, p0, Lcom/huawei/hms/scankit/l;->a:Lcom/huawei/hms/scankit/aiscan/common/m;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/aiscan/common/m;->a()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    float-to-int v0, v0

    .line 172
    iput v8, p0, Lcom/huawei/hms/scankit/l;->l:I

    .line 173
    iget-object v1, p0, Lcom/huawei/hms/scankit/l;->a:Lcom/huawei/hms/scankit/aiscan/common/m;

    invoke-virtual {v1}, Lcom/huawei/hms/scankit/aiscan/common/m;->c()I

    move-result v1

    sub-int v1, v0, v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/huawei/hms/scankit/l;->k:I

    .line 174
    new-instance v1, Lcom/huawei/hms/scankit/p/_a;

    new-instance v2, Lcom/huawei/hms/scankit/p/db;

    iget-object v3, p0, Lcom/huawei/hms/scankit/l;->a:Lcom/huawei/hms/scankit/aiscan/common/m;

    invoke-virtual {v3}, Lcom/huawei/hms/scankit/aiscan/common/m;->a()I

    move-result v4

    iget v5, p0, Lcom/huawei/hms/scankit/l;->k:I

    neg-int v5, v5

    iget v6, p0, Lcom/huawei/hms/scankit/l;->l:I

    neg-int v6, v6

    invoke-virtual {v3, v0, v4, v5, v6}, Lcom/huawei/hms/scankit/aiscan/common/m;->b(IIII)Lcom/huawei/hms/scankit/aiscan/common/m;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/huawei/hms/scankit/p/db;-><init>(Lcom/huawei/hms/scankit/aiscan/common/m;)V

    invoke-direct {v1, v2}, Lcom/huawei/hms/scankit/p/_a;-><init>(Lcom/huawei/hms/scankit/p/Za;)V

    :goto_2
    move-object v0, v1

    goto :goto_3

    :cond_4
    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, v1

    float-to-double v1, v2

    cmpl-double v3, v1, v5

    if-lez v3, :cond_5

    .line 175
    iget-object v0, p0, Lcom/huawei/hms/scankit/l;->a:Lcom/huawei/hms/scankit/aiscan/common/m;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/aiscan/common/m;->c()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    float-to-int v0, v0

    .line 176
    iget-object v1, p0, Lcom/huawei/hms/scankit/l;->a:Lcom/huawei/hms/scankit/aiscan/common/m;

    invoke-virtual {v1}, Lcom/huawei/hms/scankit/aiscan/common/m;->a()I

    move-result v1

    sub-int v1, v0, v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/huawei/hms/scankit/l;->l:I

    .line 177
    iput v8, p0, Lcom/huawei/hms/scankit/l;->k:I

    .line 178
    new-instance v1, Lcom/huawei/hms/scankit/p/_a;

    new-instance v2, Lcom/huawei/hms/scankit/p/db;

    iget-object v3, p0, Lcom/huawei/hms/scankit/l;->a:Lcom/huawei/hms/scankit/aiscan/common/m;

    invoke-virtual {v3}, Lcom/huawei/hms/scankit/aiscan/common/m;->c()I

    move-result v4

    iget v5, p0, Lcom/huawei/hms/scankit/l;->k:I

    neg-int v5, v5

    iget v6, p0, Lcom/huawei/hms/scankit/l;->l:I

    neg-int v6, v6

    invoke-virtual {v3, v4, v0, v5, v6}, Lcom/huawei/hms/scankit/aiscan/common/m;->b(IIII)Lcom/huawei/hms/scankit/aiscan/common/m;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/huawei/hms/scankit/p/db;-><init>(Lcom/huawei/hms/scankit/aiscan/common/m;)V

    invoke-direct {v1, v2}, Lcom/huawei/hms/scankit/p/_a;-><init>(Lcom/huawei/hms/scankit/p/Za;)V

    goto :goto_2

    .line 179
    :cond_5
    :goto_3
    sget-boolean v1, Lcom/huawei/hms/scankit/p/Bc;->b:Z

    invoke-static {v1, v0, p1, p2}, Lcom/huawei/hms/scankit/p/pb;->a(ZLcom/huawei/hms/scankit/p/_a;IZ)Ljava/util/List;

    move-result-object p1

    goto :goto_4

    .line 180
    :cond_6
    iget-object v1, p0, Lcom/huawei/hms/scankit/l;->b:Lcom/huawei/hms/scankit/p/_a;

    invoke-static {v0, v1, p1, p2}, Lcom/huawei/hms/scankit/p/pb;->a(ZLcom/huawei/hms/scankit/p/_a;IZ)Ljava/util/List;

    move-result-object p1

    :goto_4
    move-object v0, p1

    .line 181
    invoke-direct {p0, v0}, Lcom/huawei/hms/scankit/l;->b(Ljava/util/List;)V

    :cond_7
    return-object v0
.end method

.method public a(Lcom/huawei/hms/scankit/p/ob;)V
    .locals 2

    .line 182
    :try_start_0
    sget-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->a:Z

    if-eqz v0, :cond_0

    .line 183
    sget-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->b:Z

    iget-object v1, p0, Lcom/huawei/hms/scankit/l;->b:Lcom/huawei/hms/scankit/p/_a;

    invoke-static {v0, v1, p1}, Lcom/huawei/hms/scankit/p/pb;->a(ZLcom/huawei/hms/scankit/p/_a;Lcom/huawei/hms/scankit/p/ob;)Z

    .line 184
    iget-object p1, p1, Lcom/huawei/hms/scankit/p/ob;->l:Lcom/huawei/hms/scankit/p/_a;

    iput-object p1, p0, Lcom/huawei/hms/scankit/l;->d:Lcom/huawei/hms/scankit/p/_a;
    :try_end_0
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .line 228
    iget-boolean v0, p0, Lcom/huawei/hms/scankit/l;->e:Z

    return v0
.end method

.method public a(Ljava/util/List;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/huawei/hms/scankit/p/ob;",
            ">;)Z"
        }
    .end annotation

    .line 229
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hms/scankit/p/ob;

    .line 230
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/ob;->g()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    const-wide v3, 0x3fe6666666666666L    # 0.7

    const/4 v5, 0x1

    const/4 v6, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/ob;->h()F

    move-result v1

    float-to-double v7, v1

    cmpl-double v1, v7, v3

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 231
    :goto_1
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/ob;->g()F

    move-result v7

    cmpl-float v2, v7, v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/ob;->h()F

    move-result v2

    float-to-double v7, v2

    const-wide v9, 0x3fd999999999999aL    # 0.4

    cmpl-double v2, v7, v9

    if-lez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 232
    :goto_2
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/ob;->g()F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    cmpl-float v7, v7, v8

    if-nez v7, :cond_3

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/ob;->h()F

    move-result v7

    float-to-double v7, v7

    cmpl-double v9, v7, v3

    if-lez v9, :cond_3

    const/4 v7, 0x1

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    .line 233
    :goto_3
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/ob;->g()F

    move-result v8

    const/high16 v9, 0x40400000    # 3.0f

    cmpl-float v8, v8, v9

    if-nez v8, :cond_4

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/ob;->h()F

    move-result v8

    float-to-double v8, v8

    cmpl-double v10, v8, v3

    if-lez v10, :cond_4

    const/4 v3, 0x1

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    :goto_4
    if-nez v2, :cond_5

    if-nez v7, :cond_5

    if-eqz v3, :cond_0

    :cond_5
    if-nez v1, :cond_7

    .line 234
    iget-object v1, p0, Lcom/huawei/hms/scankit/l;->b:Lcom/huawei/hms/scankit/p/_a;

    invoke-static {v1, v0}, Lcom/huawei/hms/scankit/l;->a(Lcom/huawei/hms/scankit/p/_a;Lcom/huawei/hms/scankit/p/ob;)Z

    move-result v1

    if-nez v1, :cond_7

    sget v1, Lcom/huawei/hms/scankit/p/Bc;->g:I

    const/4 v2, 0x4

    if-le v1, v2, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v1, v1, 0x2

    .line 235
    sput v1, Lcom/huawei/hms/scankit/p/Bc;->g:I

    goto/16 :goto_0

    .line 236
    :cond_7
    :goto_5
    sput v6, Lcom/huawei/hms/scankit/p/Bc;->g:I

    .line 237
    new-instance v1, Lcom/huawei/hms/scankit/aiscan/common/z;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/ob;->d()F

    move-result v2

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/ob;->e()F

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/huawei/hms/scankit/aiscan/common/z;-><init>(FF)V

    .line 238
    new-instance v2, Lcom/huawei/hms/scankit/aiscan/common/z;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/ob;->d()F

    move-result v3

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/ob;->f()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/ob;->e()F

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/huawei/hms/scankit/aiscan/common/z;-><init>(FF)V

    .line 239
    new-instance v3, Lcom/huawei/hms/scankit/aiscan/common/z;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/ob;->d()F

    move-result v4

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/ob;->e()F

    move-result v7

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/ob;->c()F

    move-result v0

    add-float/2addr v7, v0

    invoke-direct {v3, v4, v7}, Lcom/huawei/hms/scankit/aiscan/common/z;-><init>(FF)V

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/huawei/hms/scankit/aiscan/common/z;

    aput-object v1, v0, v6

    aput-object v2, v0, v5

    const/4 v1, 0x2

    aput-object v3, v0, v1

    .line 240
    iget-object v1, p0, Lcom/huawei/hms/scankit/l;->a:Lcom/huawei/hms/scankit/aiscan/common/m;

    invoke-virtual {v1}, Lcom/huawei/hms/scankit/aiscan/common/m;->c()I

    move-result v1

    iget-object v2, p0, Lcom/huawei/hms/scankit/l;->a:Lcom/huawei/hms/scankit/aiscan/common/m;

    invoke-virtual {v2}, Lcom/huawei/hms/scankit/aiscan/common/m;->a()I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/huawei/hms/scankit/H;->b(II[Lcom/huawei/hms/scankit/aiscan/common/z;)F

    move-result v0

    const v1, 0x3f8020c5    # 1.001f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 241
    iput v0, p0, Lcom/huawei/hms/scankit/l;->g:F

    .line 242
    iput-boolean v5, p0, Lcom/huawei/hms/scankit/l;->e:Z

    goto/16 :goto_0

    .line 243
    :cond_8
    iget-boolean p1, p0, Lcom/huawei/hms/scankit/l;->e:Z

    return p1
.end method

.method public b()F
    .locals 1

    .line 21
    iget v0, p0, Lcom/huawei/hms/scankit/l;->f:F

    return v0
.end method

.method public b(Ljava/util/List;Lcom/huawei/hms/scankit/p/ob;)Lcom/huawei/hms/scankit/aiscan/common/x;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;",
            ">;",
            "Lcom/huawei/hms/scankit/p/ob;",
            ")",
            "Lcom/huawei/hms/scankit/aiscan/common/x;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/huawei/hms/scankit/aiscan/common/o;

    invoke-direct {v0}, Lcom/huawei/hms/scankit/aiscan/common/o;-><init>()V

    .line 2
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 3
    sget-object v1, Lcom/huawei/hms/scankit/aiscan/common/d;->b:Lcom/huawei/hms/scankit/aiscan/common/d;

    invoke-interface {v4, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/huawei/hms/scankit/l;->b:Lcom/huawei/hms/scankit/p/_a;

    iget-object v2, p0, Lcom/huawei/hms/scankit/l;->c:Lcom/huawei/hms/scankit/p/_a;

    iget-object v3, p0, Lcom/huawei/hms/scankit/l;->d:Lcom/huawei/hms/scankit/p/_a;

    iget-object v5, p0, Lcom/huawei/hms/scankit/l;->i:Lcom/huawei/hms/scankit/aiscan/common/l;

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/huawei/hms/scankit/aiscan/common/o;->a(Lcom/huawei/hms/scankit/p/_a;Lcom/huawei/hms/scankit/p/_a;Lcom/huawei/hms/scankit/p/_a;Ljava/util/Map;Lcom/huawei/hms/scankit/aiscan/common/l;Lcom/huawei/hms/scankit/p/ob;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/huawei/hms/scankit/l;->b:Lcom/huawei/hms/scankit/p/_a;

    iget-object v2, p0, Lcom/huawei/hms/scankit/l;->c:Lcom/huawei/hms/scankit/p/_a;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/huawei/hms/scankit/l;->i:Lcom/huawei/hms/scankit/aiscan/common/l;

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/huawei/hms/scankit/aiscan/common/o;->a(Lcom/huawei/hms/scankit/p/_a;Lcom/huawei/hms/scankit/p/_a;Lcom/huawei/hms/scankit/p/_a;Ljava/util/Map;Lcom/huawei/hms/scankit/aiscan/common/l;Lcom/huawei/hms/scankit/p/ob;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object p1
    :try_end_0
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :goto_0
    :try_start_1
    sget-boolean p2, Lcom/huawei/hms/scankit/p/Bc;->c:Z

    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object p2

    array-length p2, p2

    const/4 v0, 0x3

    if-lt p2, v0, :cond_1

    .line 7
    iget-object p2, p0, Lcom/huawei/hms/scankit/l;->a:Lcom/huawei/hms/scankit/aiscan/common/m;

    invoke-virtual {p2}, Lcom/huawei/hms/scankit/aiscan/common/m;->c()I

    move-result p2

    iget-object v0, p0, Lcom/huawei/hms/scankit/l;->a:Lcom/huawei/hms/scankit/aiscan/common/m;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/aiscan/common/m;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/huawei/hms/scankit/H;->b(II[Lcom/huawei/hms/scankit/aiscan/common/z;)F

    move-result p2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 8
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1

    .line 9
    iput p2, p0, Lcom/huawei/hms/scankit/l;->h:F

    const/4 p2, 0x1

    .line 10
    iput-boolean p2, p0, Lcom/huawei/hms/scankit/l;->e:Z
    :try_end_1
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    const/4 p1, 0x0

    :catch_1
    :cond_1
    :goto_1
    return-object p1
.end method

.method public c()F
    .locals 1

    .line 34
    iget v0, p0, Lcom/huawei/hms/scankit/l;->h:F

    return v0
.end method

.method public c(Ljava/util/List;Lcom/huawei/hms/scankit/p/ob;)Lcom/huawei/hms/scankit/aiscan/common/x;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;",
            ">;",
            "Lcom/huawei/hms/scankit/p/ob;",
            ")",
            "Lcom/huawei/hms/scankit/aiscan/common/x;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    new-instance v2, Lcom/huawei/hms/scankit/aiscan/common/o;

    invoke-direct {v2}, Lcom/huawei/hms/scankit/aiscan/common/o;-><init>()V

    .line 2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 3
    sget-object v4, Lcom/huawei/hms/scankit/aiscan/common/d;->b:Lcom/huawei/hms/scankit/aiscan/common/d;

    move-object/from16 v5, p1

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v4, 0x3fa00000    # 1.25f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-eqz v1, :cond_8

    .line 4
    :try_start_0
    iget-object v7, v0, Lcom/huawei/hms/scankit/l;->d:Lcom/huawei/hms/scankit/p/_a;

    if-eqz v7, :cond_6

    .line 5
    invoke-virtual {v7}, Lcom/huawei/hms/scankit/p/_a;->e()I

    move-result v7

    iget-object v8, v0, Lcom/huawei/hms/scankit/l;->d:Lcom/huawei/hms/scankit/p/_a;

    invoke-virtual {v8}, Lcom/huawei/hms/scankit/p/_a;->c()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7
    :try_end_0
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_0 .. :try_end_0} :catch_4

    int-to-float v7, v7

    const/high16 v8, 0x44480000    # 800.0f

    div-float/2addr v7, v8

    cmpg-float v4, v7, v4

    if-gez v4, :cond_0

    const/high16 v7, 0x3f800000    # 1.0f

    .line 6
    :cond_0
    :try_start_1
    iget-object v4, v0, Lcom/huawei/hms/scankit/l;->i:Lcom/huawei/hms/scankit/aiscan/common/l;

    iget-object v8, v0, Lcom/huawei/hms/scankit/l;->d:Lcom/huawei/hms/scankit/p/_a;

    invoke-virtual {v4, v8, v7}, Lcom/huawei/hms/scankit/aiscan/common/l;->h(Lcom/huawei/hms/scankit/p/_a;F)Lcom/huawei/hms/scankit/p/_a;

    move-result-object v4
    :try_end_1
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_1 .. :try_end_1} :catch_2

    .line 7
    :try_start_2
    invoke-virtual {v2, v4, v3}, Lcom/huawei/hms/scankit/aiscan/common/o;->a(Lcom/huawei/hms/scankit/p/_a;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object v2
    :try_end_2
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 8
    :catch_0
    :try_start_3
    sget-boolean v8, Lcom/huawei/hms/scankit/p/Bc;->l:Z

    if-eqz v8, :cond_1

    .line 9
    iget-object v8, v0, Lcom/huawei/hms/scankit/l;->i:Lcom/huawei/hms/scankit/aiscan/common/l;

    iget-object v9, v0, Lcom/huawei/hms/scankit/l;->d:Lcom/huawei/hms/scankit/p/_a;

    invoke-virtual {v8, v9, v7}, Lcom/huawei/hms/scankit/aiscan/common/l;->g(Lcom/huawei/hms/scankit/p/_a;F)Lcom/huawei/hms/scankit/p/_a;

    move-result-object v8

    .line 10
    invoke-virtual {v2, v8, v3}, Lcom/huawei/hms/scankit/aiscan/common/o;->a(Lcom/huawei/hms/scankit/p/_a;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object v6
    :try_end_3
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_3 .. :try_end_3} :catch_1

    .line 11
    :catch_1
    :cond_1
    :try_start_4
    invoke-virtual/range {p2 .. p2}, Lcom/huawei/hms/scankit/p/ob;->i()F

    move-result v8

    const/high16 v9, 0x43340000    # 180.0f

    add-float/2addr v8, v9

    const/high16 v9, 0x42b40000    # 90.0f

    rem-float/2addr v8, v9

    .line 12
    sget-boolean v10, Lcom/huawei/hms/scankit/p/Bc;->c:Z

    if-eqz v10, :cond_5

    invoke-virtual/range {p2 .. p2}, Lcom/huawei/hms/scankit/p/ob;->h()F

    move-result v10

    float-to-double v10, v10

    const-wide v12, 0x3fe999999999999aL    # 0.8

    cmpl-double v14, v10, v12

    if-lez v14, :cond_5

    const/high16 v10, 0x40400000    # 3.0f

    const/high16 v11, 0x42ae0000    # 87.0f

    cmpg-float v10, v8, v10

    if-ltz v10, :cond_2

    cmpl-float v12, v8, v11

    if-lez v12, :cond_5

    .line 13
    :cond_2
    invoke-virtual {v4}, Lcom/huawei/hms/scankit/p/_a;->a()Lcom/huawei/hms/scankit/p/Za;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/hms/scankit/p/Za;->c()Lcom/huawei/hms/scankit/aiscan/common/m;

    move-result-object v4

    const/4 v12, 0x0

    if-gez v10, :cond_3

    const/high16 v9, -0x40000000    # -2.0f

    mul-float v12, v8, v9

    :goto_0
    move/from16 v18, v12

    goto :goto_1

    :cond_3
    cmpl-float v10, v8, v11

    if-lez v10, :cond_4

    sub-float/2addr v9, v8

    const/high16 v8, 0x40000000    # 2.0f

    mul-float v12, v9, v8

    goto :goto_0

    :cond_4
    const/16 v18, 0x0

    .line 14
    :goto_1
    invoke-virtual {v4}, Lcom/huawei/hms/scankit/aiscan/common/m;->b()[B

    move-result-object v13

    invoke-virtual {v4}, Lcom/huawei/hms/scankit/aiscan/common/m;->a()I

    move-result v14

    invoke-virtual {v4}, Lcom/huawei/hms/scankit/aiscan/common/m;->c()I

    move-result v15

    .line 15
    invoke-virtual {v4}, Lcom/huawei/hms/scankit/aiscan/common/m;->a()I

    move-result v16

    invoke-virtual {v4}, Lcom/huawei/hms/scankit/aiscan/common/m;->c()I

    move-result v17

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    .line 16
    invoke-static/range {v13 .. v20}, Lcom/huawei/hms/scankit/util/LoadOpencvJNIUtil;->imageRotate([BIIIIFD)[B

    move-result-object v22

    .line 17
    new-instance v8, Lcom/huawei/hms/scankit/aiscan/common/r;

    invoke-virtual {v4}, Lcom/huawei/hms/scankit/aiscan/common/m;->c()I

    move-result v23

    .line 18
    invoke-virtual {v4}, Lcom/huawei/hms/scankit/aiscan/common/m;->a()I

    move-result v24

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-virtual {v4}, Lcom/huawei/hms/scankit/aiscan/common/m;->c()I

    move-result v27

    invoke-virtual {v4}, Lcom/huawei/hms/scankit/aiscan/common/m;->a()I

    move-result v28

    const/16 v29, 0x0

    move-object/from16 v21, v8

    invoke-direct/range {v21 .. v29}, Lcom/huawei/hms/scankit/aiscan/common/r;-><init>([BIIIIIIZ)V

    .line 19
    new-instance v4, Lcom/huawei/hms/scankit/p/_a;

    new-instance v9, Lcom/huawei/hms/scankit/p/eb;

    invoke-direct {v9, v8}, Lcom/huawei/hms/scankit/p/eb;-><init>(Lcom/huawei/hms/scankit/aiscan/common/m;)V

    invoke-direct {v4, v9}, Lcom/huawei/hms/scankit/p/_a;-><init>(Lcom/huawei/hms/scankit/p/Za;)V

    invoke-virtual {v2, v4, v3}, Lcom/huawei/hms/scankit/aiscan/common/o;->a(Lcom/huawei/hms/scankit/p/_a;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object v2
    :try_end_4
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :cond_5
    move-object v2, v6

    :goto_2
    move-object v6, v2

    goto :goto_3

    .line 20
    :cond_6
    :try_start_5
    iget-object v4, v0, Lcom/huawei/hms/scankit/l;->b:Lcom/huawei/hms/scankit/p/_a;

    invoke-virtual {v2, v4, v3}, Lcom/huawei/hms/scankit/aiscan/common/o;->a(Lcom/huawei/hms/scankit/p/_a;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object v2
    :try_end_5
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_5 .. :try_end_5} :catch_4

    move-object v6, v2

    const/high16 v7, 0x3f800000    # 1.0f

    :goto_3
    if-eqz v6, :cond_7

    .line 21
    :try_start_6
    invoke-virtual {v6}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v2

    invoke-static {v2, v7, v1}, Lcom/huawei/hms/scankit/p/pb;->a([Lcom/huawei/hms/scankit/aiscan/common/z;FLcom/huawei/hms/scankit/p/ob;)V
    :try_end_6
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_5

    :catch_2
    :cond_7
    move v5, v7

    goto :goto_5

    .line 22
    :cond_8
    :try_start_7
    iget-object v1, v0, Lcom/huawei/hms/scankit/l;->b:Lcom/huawei/hms/scankit/p/_a;

    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/_a;->e()I

    move-result v1

    iget-object v7, v0, Lcom/huawei/hms/scankit/l;->b:Lcom/huawei/hms/scankit/p/_a;

    invoke-virtual {v7}, Lcom/huawei/hms/scankit/p/_a;->c()I

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1
    :try_end_7
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_7 .. :try_end_7} :catch_4

    const/16 v7, 0x438

    if-le v1, v7, :cond_a

    int-to-float v1, v1

    const/high16 v7, 0x44870000    # 1080.0f

    div-float/2addr v1, v7

    cmpg-float v4, v1, v4

    if-gez v4, :cond_9

    goto :goto_4

    :cond_9
    move v5, v1

    .line 23
    :cond_a
    :goto_4
    :try_start_8
    iget-object v1, v0, Lcom/huawei/hms/scankit/l;->i:Lcom/huawei/hms/scankit/aiscan/common/l;

    iget-object v4, v0, Lcom/huawei/hms/scankit/l;->b:Lcom/huawei/hms/scankit/p/_a;

    invoke-virtual {v1, v4, v5}, Lcom/huawei/hms/scankit/aiscan/common/l;->a(Lcom/huawei/hms/scankit/p/_a;F)Lcom/huawei/hms/scankit/p/_a;

    move-result-object v1

    .line 24
    invoke-virtual {v2, v1, v3}, Lcom/huawei/hms/scankit/aiscan/common/o;->a(Lcom/huawei/hms/scankit/p/_a;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object v6
    :try_end_8
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_5

    .line 25
    :catch_3
    :try_start_9
    iget-object v1, v0, Lcom/huawei/hms/scankit/l;->i:Lcom/huawei/hms/scankit/aiscan/common/l;

    iget-object v4, v0, Lcom/huawei/hms/scankit/l;->c:Lcom/huawei/hms/scankit/p/_a;

    invoke-virtual {v1, v4, v5}, Lcom/huawei/hms/scankit/aiscan/common/l;->b(Lcom/huawei/hms/scankit/p/_a;F)Lcom/huawei/hms/scankit/p/_a;

    move-result-object v1

    .line 26
    invoke-virtual {v2, v1, v3}, Lcom/huawei/hms/scankit/aiscan/common/o;->a(Lcom/huawei/hms/scankit/p/_a;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object v6
    :try_end_9
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_9 .. :try_end_9} :catch_4

    :catch_4
    :goto_5
    const/4 v1, 0x0

    .line 27
    invoke-direct {v0, v6, v5, v1, v1}, Lcom/huawei/hms/scankit/l;->a(Lcom/huawei/hms/scankit/aiscan/common/x;FII)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object v1

    return-object v1
.end method

.method public d()F
    .locals 1

    .line 25
    iget v0, p0, Lcom/huawei/hms/scankit/l;->g:F

    return v0
.end method

.method public d(Ljava/util/List;Lcom/huawei/hms/scankit/p/ob;)Lcom/huawei/hms/scankit/aiscan/common/x;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;",
            ">;",
            "Lcom/huawei/hms/scankit/p/ob;",
            ")",
            "Lcom/huawei/hms/scankit/aiscan/common/x;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    sget-object v1, Lcom/huawei/hms/scankit/aiscan/common/d;->b:Lcom/huawei/hms/scankit/aiscan/common/d;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_3

    .line 3
    invoke-virtual {p0, v0, p2}, Lcom/huawei/hms/scankit/l;->a(Ljava/util/Map;Lcom/huawei/hms/scankit/p/ob;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v3}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    sget-boolean v4, Lcom/huawei/hms/scankit/p/Bc;->k:Z

    if-eqz v4, :cond_0

    .line 5
    sput-boolean v2, Lcom/huawei/hms/scankit/p/Bc;->h:Z

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/huawei/hms/scankit/l;->f(Ljava/util/List;Lcom/huawei/hms/scankit/p/ob;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object v3

    .line 7
    sput-boolean v1, Lcom/huawei/hms/scankit/p/Bc;->h:Z

    :cond_0
    if-eqz v3, :cond_1

    .line 8
    invoke-virtual {v3}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    sget-boolean p1, Lcom/huawei/hms/scankit/p/Bc;->l:Z

    if-eqz p1, :cond_1

    .line 9
    sput-boolean v2, Lcom/huawei/hms/scankit/p/Bc;->i:Z

    .line 10
    invoke-virtual {p0, v0, p2}, Lcom/huawei/hms/scankit/l;->a(Ljava/util/Map;Lcom/huawei/hms/scankit/p/ob;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object v3

    .line 11
    sput-boolean v1, Lcom/huawei/hms/scankit/p/Bc;->i:Z

    :cond_1
    if-eqz v3, :cond_2

    .line 12
    invoke-virtual {v3}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    :cond_2
    sget-boolean p1, Lcom/huawei/hms/scankit/p/Bc;->m:Z

    if-eqz p1, :cond_5

    .line 13
    sput-boolean v2, Lcom/huawei/hms/scankit/p/Bc;->j:Z

    .line 14
    invoke-virtual {p0, v0, p2}, Lcom/huawei/hms/scankit/l;->a(Ljava/util/Map;Lcom/huawei/hms/scankit/p/ob;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object v3

    .line 15
    sput-boolean v1, Lcom/huawei/hms/scankit/p/Bc;->j:Z

    goto :goto_0

    .line 16
    :cond_3
    invoke-virtual {p0, v0}, Lcom/huawei/hms/scankit/l;->a(Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 17
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_4

    sget-boolean p2, Lcom/huawei/hms/scankit/p/Bc;->l:Z

    if-eqz p2, :cond_4

    .line 18
    sput-boolean v2, Lcom/huawei/hms/scankit/p/Bc;->h:Z

    .line 19
    invoke-virtual {p0, v0}, Lcom/huawei/hms/scankit/l;->a(Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object p1

    .line 20
    sput-boolean v1, Lcom/huawei/hms/scankit/p/Bc;->h:Z

    :cond_4
    move-object v3, p1

    if-eqz v3, :cond_5

    .line 21
    invoke-virtual {v3}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    sget-boolean p1, Lcom/huawei/hms/scankit/p/Bc;->m:Z

    if-eqz p1, :cond_5

    .line 22
    sput-boolean v2, Lcom/huawei/hms/scankit/p/Bc;->i:Z

    .line 23
    invoke-virtual {p0, v0}, Lcom/huawei/hms/scankit/l;->a(Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object v3

    .line 24
    sput-boolean v1, Lcom/huawei/hms/scankit/p/Bc;->i:Z

    :cond_5
    :goto_0
    return-object v3
.end method

.method public e(Ljava/util/List;Lcom/huawei/hms/scankit/p/ob;)Lcom/huawei/hms/scankit/aiscan/common/x;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;",
            ">;",
            "Lcom/huawei/hms/scankit/p/ob;",
            ")",
            "Lcom/huawei/hms/scankit/aiscan/common/x;"
        }
    .end annotation

    .line 1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2
    sget-object v0, Lcom/huawei/hms/scankit/aiscan/common/d;->b:Lcom/huawei/hms/scankit/aiscan/common/d;

    invoke-interface {v4, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/l;->d:Lcom/huawei/hms/scankit/p/_a;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/_a;->a()Lcom/huawei/hms/scankit/p/Za;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/Za;->c()Lcom/huawei/hms/scankit/aiscan/common/m;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/l;->a:Lcom/huawei/hms/scankit/aiscan/common/m;

    .line 5
    :goto_0
    sget-boolean v1, Lcom/huawei/hms/scankit/p/Bc;->a:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/huawei/hms/scankit/l;->b:Lcom/huawei/hms/scankit/p/_a;

    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/_a;->e()I

    move-result v1

    const/16 v2, 0x320

    if-gt v1, v2, :cond_1

    iget-object v1, p0, Lcom/huawei/hms/scankit/l;->b:Lcom/huawei/hms/scankit/p/_a;

    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/_a;->c()I

    move-result v1

    if-le v1, v2, :cond_3

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/huawei/hms/scankit/l;->b:Lcom/huawei/hms/scankit/p/_a;

    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/_a;->e()I

    move-result v1

    iget-object v2, p0, Lcom/huawei/hms/scankit/l;->b:Lcom/huawei/hms/scankit/p/_a;

    invoke-virtual {v2}, Lcom/huawei/hms/scankit/p/_a;->c()I

    move-result v2

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lcom/huawei/hms/scankit/l;->b:Lcom/huawei/hms/scankit/p/_a;

    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/_a;->e()I

    move-result v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/huawei/hms/scankit/l;->b:Lcom/huawei/hms/scankit/p/_a;

    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/_a;->c()I

    move-result v1

    :goto_1
    int-to-float v1, v1

    const/high16 v2, 0x44480000    # 800.0f

    div-float/2addr v1, v2

    .line 7
    iget-object v2, p0, Lcom/huawei/hms/scankit/l;->i:Lcom/huawei/hms/scankit/aiscan/common/l;

    new-instance v3, Lcom/huawei/hms/scankit/p/_a;

    new-instance v5, Lcom/huawei/hms/scankit/p/db;

    invoke-direct {v5, v0}, Lcom/huawei/hms/scankit/p/db;-><init>(Lcom/huawei/hms/scankit/aiscan/common/m;)V

    invoke-direct {v3, v5}, Lcom/huawei/hms/scankit/p/_a;-><init>(Lcom/huawei/hms/scankit/p/Za;)V

    invoke-virtual {v2, v3, v1}, Lcom/huawei/hms/scankit/aiscan/common/l;->h(Lcom/huawei/hms/scankit/p/_a;F)Lcom/huawei/hms/scankit/p/_a;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/_a;->a()Lcom/huawei/hms/scankit/p/Za;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/Za;->c()Lcom/huawei/hms/scankit/aiscan/common/m;

    move-result-object v0

    move-object v2, v0

    move v5, v1

    goto :goto_2

    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    move-object v2, v0

    const/high16 v5, 0x3f800000    # 1.0f

    :goto_2
    if-eqz v2, :cond_6

    .line 9
    sget-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->a:Z

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->b:Z

    if-nez v0, :cond_4

    .line 10
    invoke-virtual {v2}, Lcom/huawei/hms/scankit/aiscan/common/m;->b()[B

    move-result-object v0

    invoke-virtual {v2}, Lcom/huawei/hms/scankit/aiscan/common/m;->c()I

    move-result v1

    invoke-virtual {v2}, Lcom/huawei/hms/scankit/aiscan/common/m;->a()I

    move-result v3

    invoke-static {v0, v1, v3}, Lcom/huawei/hms/scankit/l;->a([BII)Lcom/huawei/hms/scankit/p/bb;

    move-result-object v0

    .line 11
    new-instance v1, Lcom/huawei/hms/scankit/p/db;

    invoke-direct {v1, v2}, Lcom/huawei/hms/scankit/p/db;-><init>(Lcom/huawei/hms/scankit/aiscan/common/m;)V

    .line 12
    new-instance v3, Lcom/huawei/hms/scankit/p/_a;

    invoke-direct {v3, v1}, Lcom/huawei/hms/scankit/p/_a;-><init>(Lcom/huawei/hms/scankit/p/Za;)V

    .line 13
    invoke-virtual {v3, v0}, Lcom/huawei/hms/scankit/p/_a;->a(Lcom/huawei/hms/scankit/p/bb;)V

    goto :goto_3

    .line 14
    :cond_4
    new-instance v0, Lcom/huawei/hms/scankit/p/_a;

    new-instance v1, Lcom/huawei/hms/scankit/p/db;

    invoke-direct {v1, v2}, Lcom/huawei/hms/scankit/p/db;-><init>(Lcom/huawei/hms/scankit/aiscan/common/m;)V

    invoke-direct {v0, v1}, Lcom/huawei/hms/scankit/p/_a;-><init>(Lcom/huawei/hms/scankit/p/Za;)V

    move-object v3, v0

    .line 15
    :goto_3
    new-instance v1, Lcom/huawei/hms/scankit/aiscan/common/o;

    invoke-direct {v1}, Lcom/huawei/hms/scankit/aiscan/common/o;-><init>()V
    :try_end_0
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_0 .. :try_end_0} :catch_1

    .line 16
    :try_start_1
    invoke-virtual {v1, v3, v4}, Lcom/huawei/hms/scankit/aiscan/common/o;->a(Lcom/huawei/hms/scankit/p/_a;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 17
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 18
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v0

    invoke-static {v0, v5, p2}, Lcom/huawei/hms/scankit/p/pb;->a([Lcom/huawei/hms/scankit/aiscan/common/z;FLcom/huawei/hms/scankit/p/ob;)V

    return-object p1

    .line 19
    :cond_5
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object v0

    throw v0
    :try_end_1
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-object v0, p0

    move-object v6, p2

    .line 20
    :try_start_2
    invoke-direct/range {v0 .. v6}, Lcom/huawei/hms/scankit/l;->a(Lcom/huawei/hms/scankit/aiscan/common/o;Lcom/huawei/hms/scankit/aiscan/common/m;Lcom/huawei/hms/scankit/p/_a;Ljava/util/Map;FLcom/huawei/hms/scankit/p/ob;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object p1

    goto :goto_4

    .line 21
    :cond_6
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p2

    throw p2
    :try_end_2
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :goto_4
    return-object p1
.end method

.method public f(Ljava/util/List;Lcom/huawei/hms/scankit/p/ob;)Lcom/huawei/hms/scankit/aiscan/common/x;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;",
            ">;",
            "Lcom/huawei/hms/scankit/p/ob;",
            ")",
            "Lcom/huawei/hms/scankit/aiscan/common/x;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/huawei/hms/scankit/aiscan/common/o;

    invoke-direct {v0}, Lcom/huawei/hms/scankit/aiscan/common/o;-><init>()V

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3
    sget-object v2, Lcom/huawei/hms/scankit/aiscan/common/d;->b:Lcom/huawei/hms/scankit/aiscan/common/d;

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 p1, 0x43fa0000    # 500.0f

    const/16 v2, 0x1f4

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez p2, :cond_3

    .line 4
    sget-boolean v4, Lcom/huawei/hms/scankit/p/Bc;->a:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/huawei/hms/scankit/l;->b:Lcom/huawei/hms/scankit/p/_a;

    invoke-virtual {v4}, Lcom/huawei/hms/scankit/p/_a;->e()I

    move-result v4

    if-gt v4, v2, :cond_0

    iget-object v4, p0, Lcom/huawei/hms/scankit/l;->b:Lcom/huawei/hms/scankit/p/_a;

    invoke-virtual {v4}, Lcom/huawei/hms/scankit/p/_a;->c()I

    move-result v4

    if-le v4, v2, :cond_2

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/huawei/hms/scankit/l;->b:Lcom/huawei/hms/scankit/p/_a;

    invoke-virtual {v2}, Lcom/huawei/hms/scankit/p/_a;->e()I

    move-result v2

    iget-object v3, p0, Lcom/huawei/hms/scankit/l;->b:Lcom/huawei/hms/scankit/p/_a;

    invoke-virtual {v3}, Lcom/huawei/hms/scankit/p/_a;->c()I

    move-result v3

    if-le v2, v3, :cond_1

    iget-object v2, p0, Lcom/huawei/hms/scankit/l;->b:Lcom/huawei/hms/scankit/p/_a;

    invoke-virtual {v2}, Lcom/huawei/hms/scankit/p/_a;->e()I

    move-result v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/huawei/hms/scankit/l;->b:Lcom/huawei/hms/scankit/p/_a;

    invoke-virtual {v2}, Lcom/huawei/hms/scankit/p/_a;->c()I

    move-result v2

    :goto_0
    int-to-float v2, v2

    div-float v3, v2, p1

    .line 6
    iget-object p1, p0, Lcom/huawei/hms/scankit/l;->i:Lcom/huawei/hms/scankit/aiscan/common/l;

    iget-object v2, p0, Lcom/huawei/hms/scankit/l;->b:Lcom/huawei/hms/scankit/p/_a;

    invoke-virtual {p1, v2, v3}, Lcom/huawei/hms/scankit/aiscan/common/l;->c(Lcom/huawei/hms/scankit/p/_a;F)Lcom/huawei/hms/scankit/p/_a;

    move-result-object p1

    goto :goto_2

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/huawei/hms/scankit/l;->b:Lcom/huawei/hms/scankit/p/_a;

    goto :goto_2

    .line 8
    :cond_3
    sget-boolean v4, Lcom/huawei/hms/scankit/p/Bc;->a:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/huawei/hms/scankit/l;->d:Lcom/huawei/hms/scankit/p/_a;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/huawei/hms/scankit/p/_a;->e()I

    move-result v4

    if-gt v4, v2, :cond_4

    iget-object v4, p0, Lcom/huawei/hms/scankit/l;->d:Lcom/huawei/hms/scankit/p/_a;

    invoke-virtual {v4}, Lcom/huawei/hms/scankit/p/_a;->c()I

    move-result v4

    if-le v4, v2, :cond_6

    .line 9
    :cond_4
    iget-object v2, p0, Lcom/huawei/hms/scankit/l;->d:Lcom/huawei/hms/scankit/p/_a;

    invoke-virtual {v2}, Lcom/huawei/hms/scankit/p/_a;->e()I

    move-result v2

    iget-object v3, p0, Lcom/huawei/hms/scankit/l;->d:Lcom/huawei/hms/scankit/p/_a;

    invoke-virtual {v3}, Lcom/huawei/hms/scankit/p/_a;->c()I

    move-result v3

    if-le v2, v3, :cond_5

    iget-object v2, p0, Lcom/huawei/hms/scankit/l;->d:Lcom/huawei/hms/scankit/p/_a;

    invoke-virtual {v2}, Lcom/huawei/hms/scankit/p/_a;->e()I

    move-result v2

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/huawei/hms/scankit/l;->d:Lcom/huawei/hms/scankit/p/_a;

    invoke-virtual {v2}, Lcom/huawei/hms/scankit/p/_a;->c()I

    move-result v2

    :goto_1
    int-to-float v2, v2

    div-float v3, v2, p1

    .line 10
    iget-object p1, p0, Lcom/huawei/hms/scankit/l;->i:Lcom/huawei/hms/scankit/aiscan/common/l;

    iget-object v2, p0, Lcom/huawei/hms/scankit/l;->d:Lcom/huawei/hms/scankit/p/_a;

    invoke-virtual {p1, v2, v3}, Lcom/huawei/hms/scankit/aiscan/common/l;->g(Lcom/huawei/hms/scankit/p/_a;F)Lcom/huawei/hms/scankit/p/_a;

    move-result-object p1

    goto :goto_2

    .line 11
    :cond_6
    iget-object p1, p0, Lcom/huawei/hms/scankit/l;->d:Lcom/huawei/hms/scankit/p/_a;

    .line 12
    :goto_2
    :try_start_0
    invoke-virtual {v0, p1, v1}, Lcom/huawei/hms/scankit/aiscan/common/o;->a(Lcom/huawei/hms/scankit/p/_a;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object p1
    :try_end_0
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_7

    .line 13
    :try_start_1
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 14
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v0

    invoke-static {v0, v3, p2}, Lcom/huawei/hms/scankit/p/pb;->a([Lcom/huawei/hms/scankit/aiscan/common/z;FLcom/huawei/hms/scankit/p/ob;)V
    :try_end_1
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_0
    const/4 p1, 0x0

    :catch_1
    :cond_7
    return-object p1
.end method
