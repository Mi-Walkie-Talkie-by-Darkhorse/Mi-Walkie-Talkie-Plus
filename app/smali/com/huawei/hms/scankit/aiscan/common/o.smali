.class public final Lcom/huawei/hms/scankit/aiscan/common/o;
.super Ljava/lang/Object;
.source "MultiFormatReader.java"

# interfaces
.implements Lcom/huawei/hms/scankit/aiscan/common/t;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(ILcom/huawei/hms/scankit/aiscan/common/l;Lcom/huawei/hms/scankit/p/_a;Lcom/huawei/hms/scankit/p/_a;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/x;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/huawei/hms/scankit/aiscan/common/l;",
            "Lcom/huawei/hms/scankit/p/_a;",
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

    .line 132
    invoke-virtual {p0, p5}, Lcom/huawei/hms/scankit/aiscan/common/o;->a(Ljava/util/Map;)[Lcom/huawei/hms/scankit/aiscan/common/t;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 133
    :try_start_0
    sget-boolean v3, Lcom/huawei/hms/scankit/p/Bc;->a:Z

    if-eqz v3, :cond_1

    int-to-float v3, p1

    mul-float v3, v3, v2

    const/high16 v4, 0x43fa0000    # 500.0f

    div-float/2addr v3, v4

    cmpl-float v4, v3, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    .line 134
    :goto_0
    invoke-virtual {p2, p3, v3}, Lcom/huawei/hms/scankit/aiscan/common/l;->g(Lcom/huawei/hms/scankit/p/_a;F)Lcom/huawei/hms/scankit/p/_a;

    move-result-object p3

    .line 135
    invoke-virtual {p2, p3}, Lcom/huawei/hms/scankit/aiscan/common/l;->g(Lcom/huawei/hms/scankit/p/_a;)Lcom/huawei/hms/scankit/p/_a;

    move-result-object p3

    invoke-direct {p0, p3, v0, p5}, Lcom/huawei/hms/scankit/aiscan/common/o;->a(Lcom/huawei/hms/scankit/p/_a;[Lcom/huawei/hms/scankit/aiscan/common/t;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 136
    invoke-virtual {p3}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 137
    invoke-virtual {p3}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v4

    invoke-static {v4, v3, v1}, Lcom/huawei/hms/scankit/p/pb;->a([Lcom/huawei/hms/scankit/aiscan/common/z;FLcom/huawei/hms/scankit/p/ob;)V

    return-object p3

    .line 138
    :cond_1
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p3

    throw p3
    :try_end_0
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    nop

    int-to-float p1, p1

    mul-float p1, p1, v2

    const/high16 p3, 0x44870000    # 1080.0f

    div-float/2addr p1, p3

    cmpl-float p3, p1, v2

    if-lez p3, :cond_2

    move v2, p1

    .line 139
    :cond_2
    invoke-virtual {p2, p4, v2}, Lcom/huawei/hms/scankit/aiscan/common/l;->b(Lcom/huawei/hms/scankit/p/_a;F)Lcom/huawei/hms/scankit/p/_a;

    move-result-object p1

    .line 140
    invoke-direct {p0, p1, v0, p5}, Lcom/huawei/hms/scankit/aiscan/common/o;->a(Lcom/huawei/hms/scankit/p/_a;[Lcom/huawei/hms/scankit/aiscan/common/t;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 141
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 142
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object p2

    invoke-static {p2, v2, v1}, Lcom/huawei/hms/scankit/p/pb;->a([Lcom/huawei/hms/scankit/aiscan/common/z;FLcom/huawei/hms/scankit/p/ob;)V

    :cond_3
    return-object p1
.end method

.method private a(ILcom/huawei/hms/scankit/p/_a;Lcom/huawei/hms/scankit/aiscan/common/l;Ljava/util/Map;Lcom/huawei/hms/scankit/p/ob;)Lcom/huawei/hms/scankit/aiscan/common/x;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/huawei/hms/scankit/p/_a;",
            "Lcom/huawei/hms/scankit/aiscan/common/l;",
            "Ljava/util/Map<",
            "Lcom/huawei/hms/scankit/aiscan/common/d;",
            "*>;",
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

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float p1, p1, v0

    const/high16 v1, 0x437a0000    # 250.0f

    div-float/2addr p1, v1

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 103
    :cond_0
    invoke-virtual {p3, p2, p1}, Lcom/huawei/hms/scankit/aiscan/common/l;->f(Lcom/huawei/hms/scankit/p/_a;F)Lcom/huawei/hms/scankit/p/_a;

    move-result-object v1

    .line 104
    invoke-virtual {p0, p4}, Lcom/huawei/hms/scankit/aiscan/common/o;->a(Ljava/util/Map;)[Lcom/huawei/hms/scankit/aiscan/common/t;

    move-result-object v2

    .line 105
    :try_start_0
    invoke-virtual {p3, v1}, Lcom/huawei/hms/scankit/aiscan/common/l;->e(Lcom/huawei/hms/scankit/p/_a;)Lcom/huawei/hms/scankit/p/_a;

    move-result-object v3

    invoke-direct {p0, v3, v2, p4}, Lcom/huawei/hms/scankit/aiscan/common/o;->a(Lcom/huawei/hms/scankit/p/_a;[Lcom/huawei/hms/scankit/aiscan/common/t;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 106
    invoke-virtual {v3}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 107
    invoke-virtual {v3}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v4

    invoke-static {v4, p1, p5}, Lcom/huawei/hms/scankit/p/pb;->a([Lcom/huawei/hms/scankit/aiscan/common/z;FLcom/huawei/hms/scankit/p/ob;)V

    return-object v3

    .line 108
    :cond_1
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object v3

    throw v3
    :try_end_0
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :catch_0
    :try_start_1
    invoke-virtual {p3, v1}, Lcom/huawei/hms/scankit/aiscan/common/l;->f(Lcom/huawei/hms/scankit/p/_a;)Lcom/huawei/hms/scankit/p/_a;

    move-result-object p3

    invoke-direct {p0, p3, v2, p4}, Lcom/huawei/hms/scankit/aiscan/common/o;->a(Lcom/huawei/hms/scankit/p/_a;[Lcom/huawei/hms/scankit/aiscan/common/t;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 110
    invoke-virtual {p3}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 111
    invoke-virtual {p3}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v1

    invoke-static {v1, p1, p5}, Lcom/huawei/hms/scankit/p/pb;->a([Lcom/huawei/hms/scankit/aiscan/common/z;FLcom/huawei/hms/scankit/p/ob;)V

    return-object p3

    .line 112
    :cond_2
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p1

    throw p1
    :try_end_1
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    nop

    .line 113
    new-instance p1, Lcom/huawei/hms/scankit/p/_a;

    new-instance p3, Lcom/huawei/hms/scankit/p/eb;

    invoke-virtual {p2}, Lcom/huawei/hms/scankit/p/_a;->a()Lcom/huawei/hms/scankit/p/Za;

    move-result-object p2

    invoke-virtual {p2}, Lcom/huawei/hms/scankit/p/Za;->c()Lcom/huawei/hms/scankit/aiscan/common/m;

    move-result-object p2

    invoke-direct {p3, p2}, Lcom/huawei/hms/scankit/p/eb;-><init>(Lcom/huawei/hms/scankit/aiscan/common/m;)V

    invoke-direct {p1, p3}, Lcom/huawei/hms/scankit/p/_a;-><init>(Lcom/huawei/hms/scankit/p/Za;)V

    invoke-direct {p0, p1, v2, p4}, Lcom/huawei/hms/scankit/aiscan/common/o;->a(Lcom/huawei/hms/scankit/p/_a;[Lcom/huawei/hms/scankit/aiscan/common/t;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 114
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 115
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object p2

    invoke-static {p2, v0, p5}, Lcom/huawei/hms/scankit/p/pb;->a([Lcom/huawei/hms/scankit/aiscan/common/z;FLcom/huawei/hms/scankit/p/ob;)V

    :cond_3
    return-object p1
.end method

.method private a(Lcom/huawei/hms/scankit/p/_a;Lcom/huawei/hms/scankit/aiscan/common/l;Ljava/util/Map;[F)Lcom/huawei/hms/scankit/aiscan/common/x;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/scankit/p/_a;",
            "Lcom/huawei/hms/scankit/aiscan/common/l;",
            "Ljava/util/Map<",
            "Lcom/huawei/hms/scankit/aiscan/common/d;",
            "Ljava/lang/Object;",
            ">;[F)",
            "Lcom/huawei/hms/scankit/aiscan/common/x;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 67
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/_a;->c()I

    move-result v0

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/_a;->e()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    const/high16 v2, 0x44870000    # 1080.0f

    div-float/2addr v0, v2

    .line 68
    sget-boolean v2, Lcom/huawei/hms/scankit/p/Bc;->a:Z

    if-eqz v2, :cond_0

    .line 69
    invoke-virtual {p2, p1, v0}, Lcom/huawei/hms/scankit/aiscan/common/l;->a(Lcom/huawei/hms/scankit/p/_a;F)Lcom/huawei/hms/scankit/p/_a;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3fc00000    # 1.5f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    move v1, v0

    .line 70
    :cond_1
    invoke-virtual {p2, p1, v1}, Lcom/huawei/hms/scankit/aiscan/common/l;->a(Lcom/huawei/hms/scankit/p/_a;F)Lcom/huawei/hms/scankit/p/_a;

    move-result-object p1

    move v0, v1

    .line 71
    :goto_0
    invoke-virtual {p0, p3}, Lcom/huawei/hms/scankit/aiscan/common/o;->a(Ljava/util/Map;)[Lcom/huawei/hms/scankit/aiscan/common/t;

    move-result-object v1

    .line 72
    sget-boolean v2, Lcom/huawei/hms/scankit/p/Bc;->b:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/huawei/hms/scankit/p/Bc;->a:Z

    if-eqz v2, :cond_2

    .line 73
    sget-object p2, Lcom/huawei/hms/scankit/aiscan/common/d;->d:Lcom/huawei/hms/scankit/aiscan/common/d;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p3, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-direct {p0, p1, v1, p3}, Lcom/huawei/hms/scankit/aiscan/common/o;->a(Lcom/huawei/hms/scankit/p/_a;[Lcom/huawei/hms/scankit/aiscan/common/t;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object p2

    goto :goto_3

    :cond_2
    move-object v2, v3

    const/4 v5, 0x0

    :goto_1
    const/4 v6, 0x2

    if-ge v5, v6, :cond_5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 75
    invoke-static {p1}, Lcom/huawei/hms/scankit/aiscan/common/k;->a(Lcom/huawei/hms/scankit/p/_a;)Lcom/huawei/hms/scankit/p/_a;

    move-result-object v7

    .line 76
    :try_start_0
    invoke-virtual {p2, v7}, Lcom/huawei/hms/scankit/aiscan/common/l;->c(Lcom/huawei/hms/scankit/p/_a;)Lcom/huawei/hms/scankit/p/_a;

    move-result-object v7

    invoke-direct {p0, v7, v1, p3}, Lcom/huawei/hms/scankit/aiscan/common/o;->a(Lcom/huawei/hms/scankit/p/_a;[Lcom/huawei/hms/scankit/aiscan/common/t;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object v2

    const/high16 v7, 0x40000000    # 2.0f

    .line 77
    aput v7, p4, v6
    :try_end_0
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 78
    :cond_3
    :try_start_1
    invoke-virtual {p2, p1}, Lcom/huawei/hms/scankit/aiscan/common/l;->b(Lcom/huawei/hms/scankit/p/_a;)Lcom/huawei/hms/scankit/p/_a;

    move-result-object v7

    invoke-direct {p0, v7, v1, p3}, Lcom/huawei/hms/scankit/aiscan/common/o;->a(Lcom/huawei/hms/scankit/p/_a;[Lcom/huawei/hms/scankit/aiscan/common/t;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object p2
    :try_end_1
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 79
    :catch_0
    :try_start_2
    sget-boolean v7, Lcom/huawei/hms/scankit/p/Bc;->k:Z

    if-eqz v7, :cond_4

    .line 80
    sget-object v7, Lcom/huawei/hms/scankit/aiscan/common/d;->d:Lcom/huawei/hms/scankit/aiscan/common/d;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-virtual {p2, p1}, Lcom/huawei/hms/scankit/aiscan/common/l;->d(Lcom/huawei/hms/scankit/p/_a;)Lcom/huawei/hms/scankit/p/_a;

    move-result-object v6

    invoke-direct {p0, v6, v1, p3}, Lcom/huawei/hms/scankit/aiscan/common/o;->a(Lcom/huawei/hms/scankit/p/_a;[Lcom/huawei/hms/scankit/aiscan/common/t;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object p2
    :try_end_2
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    move-object p2, v2

    :goto_3
    if-eqz p2, :cond_6

    .line 82
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/_a;->b()Lcom/huawei/hms/scankit/p/bb;

    move-result-object p1

    invoke-static {p1, p2, v0, v3}, Lcom/huawei/hms/scankit/p/pb;->a(Lcom/huawei/hms/scankit/p/bb;Lcom/huawei/hms/scankit/aiscan/common/x;FLcom/huawei/hms/scankit/p/ob;)V

    .line 83
    :cond_6
    aput v0, p4, v4

    return-object p2
.end method

.method private a(Lcom/huawei/hms/scankit/p/_a;Lcom/huawei/hms/scankit/aiscan/common/l;Ljava/util/Map;[FLcom/huawei/hms/scankit/p/ob;)Lcom/huawei/hms/scankit/aiscan/common/x;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/scankit/p/_a;",
            "Lcom/huawei/hms/scankit/aiscan/common/l;",
            "Ljava/util/Map<",
            "Lcom/huawei/hms/scankit/aiscan/common/d;",
            "Ljava/lang/Object;",
            ">;[F",
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

    .line 46
    invoke-virtual {p5}, Lcom/huawei/hms/scankit/p/ob;->n()F

    move-result v0

    .line 47
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/_a;->e()I

    move-result v1

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/_a;->c()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/_a;->e()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/_a;->c()I

    move-result v1

    :goto_0
    int-to-float v1, v1

    const/high16 v2, 0x43fa0000    # 500.0f

    div-float v2, v1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v4, v2, v3

    if-gez v4, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 48
    :cond_1
    invoke-virtual {p2, p1, v2}, Lcom/huawei/hms/scankit/aiscan/common/l;->g(Lcom/huawei/hms/scankit/p/_a;F)Lcom/huawei/hms/scankit/p/_a;

    move-result-object v4

    .line 49
    invoke-virtual {p0, p3}, Lcom/huawei/hms/scankit/aiscan/common/o;->a(Ljava/util/Map;)[Lcom/huawei/hms/scankit/aiscan/common/t;

    move-result-object v5

    .line 50
    invoke-virtual {p5}, Lcom/huawei/hms/scankit/p/ob;->a()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    .line 51
    invoke-virtual {p5}, Lcom/huawei/hms/scankit/p/ob;->b()F

    move-result v6

    invoke-virtual {p5}, Lcom/huawei/hms/scankit/p/ob;->a()F

    move-result v7

    div-float/2addr v6, v7

    goto :goto_1

    :cond_2
    const/high16 v6, 0x3f800000    # 1.0f

    :goto_1
    const/4 v7, 0x0

    .line 52
    :try_start_0
    invoke-direct {p0, v4, v5, p3}, Lcom/huawei/hms/scankit/aiscan/common/o;->a(Lcom/huawei/hms/scankit/p/_a;[Lcom/huawei/hms/scankit/aiscan/common/t;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object v8
    :try_end_0
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_0 .. :try_end_0} :catch_0

    div-float v9, v0, v2

    .line 53
    :try_start_1
    invoke-static {v8, v9, v6}, Lcom/huawei/hms/scankit/aiscan/common/o;->a(Lcom/huawei/hms/scankit/aiscan/common/x;FF)Z

    move-result v9
    :try_end_1
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v9, :cond_3

    goto :goto_5

    .line 54
    :cond_3
    :try_start_2
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object v8

    throw v8
    :try_end_2
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    nop

    goto :goto_2

    :catch_1
    move-object v7, v8

    .line 55
    :goto_2
    sget-boolean v8, Lcom/huawei/hms/scankit/p/Bc;->k:Z

    if-eqz v8, :cond_7

    const/high16 v2, 0x437a0000    # 250.0f

    div-float/2addr v1, v2

    cmpg-float v2, v1, v3

    if-gez v2, :cond_4

    goto :goto_3

    :cond_4
    move v3, v1

    .line 56
    :goto_3
    invoke-virtual {p2, p1, v3}, Lcom/huawei/hms/scankit/aiscan/common/l;->f(Lcom/huawei/hms/scankit/p/_a;F)Lcom/huawei/hms/scankit/p/_a;

    move-result-object v4

    .line 57
    :try_start_3
    sget-object p1, Lcom/huawei/hms/scankit/aiscan/common/d;->d:Lcom/huawei/hms/scankit/aiscan/common/d;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-virtual {p2, v4}, Lcom/huawei/hms/scankit/aiscan/common/l;->e(Lcom/huawei/hms/scankit/p/_a;)Lcom/huawei/hms/scankit/p/_a;

    move-result-object p1

    invoke-direct {p0, p1, v5, p3}, Lcom/huawei/hms/scankit/aiscan/common/o;->a(Lcom/huawei/hms/scankit/p/_a;[Lcom/huawei/hms/scankit/aiscan/common/t;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object p1

    div-float v1, v0, v3

    .line 59
    invoke-static {p1, v1, v6}, Lcom/huawei/hms/scankit/aiscan/common/o;->a(Lcom/huawei/hms/scankit/aiscan/common/x;FF)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_4

    .line 60
    :cond_5
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p1

    throw p1
    :try_end_3
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    nop

    .line 61
    sget-object p1, Lcom/huawei/hms/scankit/aiscan/common/d;->d:Lcom/huawei/hms/scankit/aiscan/common/d;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-virtual {p2, v4}, Lcom/huawei/hms/scankit/aiscan/common/l;->f(Lcom/huawei/hms/scankit/p/_a;)Lcom/huawei/hms/scankit/p/_a;

    move-result-object p1

    invoke-direct {p0, p1, v5, p3}, Lcom/huawei/hms/scankit/aiscan/common/o;->a(Lcom/huawei/hms/scankit/p/_a;[Lcom/huawei/hms/scankit/aiscan/common/t;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object p1

    div-float/2addr v0, v3

    .line 63
    invoke-static {p1, v0, v6}, Lcom/huawei/hms/scankit/aiscan/common/o;->a(Lcom/huawei/hms/scankit/aiscan/common/x;FF)Z

    move-result p2

    if-nez p2, :cond_6

    :goto_4
    move v2, v3

    goto :goto_6

    .line 64
    :cond_6
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p1

    throw p1

    :cond_7
    move-object v8, v7

    :goto_5
    move-object p1, v8

    :goto_6
    const/4 p2, 0x0

    .line 65
    aput v2, p4, p2

    if-eqz p1, :cond_8

    .line 66
    invoke-virtual {v4}, Lcom/huawei/hms/scankit/p/_a;->b()Lcom/huawei/hms/scankit/p/bb;

    move-result-object p2

    invoke-static {p2, p1, v2, p5}, Lcom/huawei/hms/scankit/p/pb;->a(Lcom/huawei/hms/scankit/p/bb;Lcom/huawei/hms/scankit/aiscan/common/x;FLcom/huawei/hms/scankit/p/ob;)V

    :cond_8
    return-object p1
.end method

.method private a(Lcom/huawei/hms/scankit/p/_a;[Lcom/huawei/hms/scankit/aiscan/common/t;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/x;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/scankit/p/_a;",
            "[",
            "Lcom/huawei/hms/scankit/aiscan/common/t;",
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

    if-eqz p2, :cond_4

    .line 27
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v3, p2, v2

    .line 28
    :try_start_0
    invoke-interface {v3, p1, p3}, Lcom/huawei/hms/scankit/aiscan/common/t;->a(Lcom/huawei/hms/scankit/p/_a;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 29
    invoke-virtual {v3}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 30
    invoke-virtual {v3}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v4

    .line 31
    array-length v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v8, v4, v6

    if-eqz v8, :cond_0

    add-int/lit8 v7, v7, 0x1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    if-nez v7, :cond_3

    .line 32
    invoke-virtual {v3}, Lcom/huawei/hms/scankit/aiscan/common/x;->b()Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    move-result-object v4

    sget-object v5, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->j:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    if-eq v4, v5, :cond_2

    goto :goto_2

    .line 33
    :cond_2
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object v3

    throw v3
    :try_end_0
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_2
    return-object v3

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 34
    :cond_4
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p1

    throw p1
.end method

.method public static a(Lcom/huawei/hms/scankit/aiscan/common/x;FF)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v0

    invoke-virtual {p0}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object p0

    const/4 v2, 0x1

    aget-object p0, p0, v2

    invoke-virtual {p0}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result p0

    sub-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    div-float/2addr p0, p1

    float-to-double p0, p0

    const-wide v3, 0x3fe199999999999aL    # 0.55

    cmpg-double v0, p0, v3

    if-gez v0, :cond_0

    float-to-double v3, p2

    const-wide/high16 v5, 0x3ff8000000000000L    # 1.5

    cmpl-double p2, v3, v5

    if-gtz p2, :cond_1

    :cond_0
    const-wide v3, 0x3fd3333333333333L    # 0.3

    cmpg-double p2, p0, v3

    if-gez p2, :cond_2

    :cond_1
    return v2

    :cond_2
    return v1
.end method


# virtual methods
.method public a(Lcom/huawei/hms/scankit/p/_a;Lcom/huawei/hms/scankit/aiscan/common/l;Ljava/util/Map;Lcom/huawei/hms/scankit/p/ob;)Lcom/huawei/hms/scankit/aiscan/common/x;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/scankit/p/_a;",
            "Lcom/huawei/hms/scankit/aiscan/common/l;",
            "Ljava/util/Map<",
            "Lcom/huawei/hms/scankit/aiscan/common/d;",
            "*>;",
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

    .line 86
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/_a;->e()I

    move-result v0

    .line 87
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/_a;->c()I

    move-result v1

    if-ge v0, v1, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    int-to-float v0, v3

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    const/high16 v2, 0x43000000    # 128.0f

    div-float v2, v0, v2

    cmpg-float v4, v2, v1

    if-gez v4, :cond_1

    .line 88
    sget-boolean v4, Lcom/huawei/hms/scankit/p/Bc;->c:Z

    if-eqz v4, :cond_1

    .line 89
    invoke-virtual {p2, p1, v2}, Lcom/huawei/hms/scankit/aiscan/common/l;->e(Lcom/huawei/hms/scankit/p/_a;F)Lcom/huawei/hms/scankit/p/_a;

    move-result-object p1

    :cond_1
    move-object v4, p1

    const/high16 p1, 0x43fa0000    # 500.0f

    div-float/2addr v0, p1

    cmpg-float p1, v0, v1

    if-gez p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 90
    :try_start_0
    invoke-virtual {p2, v4, v1}, Lcom/huawei/hms/scankit/aiscan/common/l;->g(Lcom/huawei/hms/scankit/p/_a;F)Lcom/huawei/hms/scankit/p/_a;

    move-result-object v2

    .line 91
    invoke-virtual {p0, p3}, Lcom/huawei/hms/scankit/aiscan/common/o;->a(Ljava/util/Map;)[Lcom/huawei/hms/scankit/aiscan/common/t;

    move-result-object v5

    .line 92
    invoke-direct {p0, v2, v5, p3}, Lcom/huawei/hms/scankit/aiscan/common/o;->a(Lcom/huawei/hms/scankit/p/_a;[Lcom/huawei/hms/scankit/aiscan/common/t;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 93
    invoke-virtual {v2}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 94
    invoke-virtual {v2}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v5

    invoke-static {v5, v1, p4}, Lcom/huawei/hms/scankit/p/pb;->a([Lcom/huawei/hms/scankit/aiscan/common/z;FLcom/huawei/hms/scankit/p/ob;)V

    return-object v2

    .line 95
    :cond_3
    sget-boolean v5, Lcom/huawei/hms/scankit/p/Bc;->c:Z

    if-nez v5, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    invoke-virtual {v2}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v5

    array-length v5, v5

    const/4 v6, 0x3

    if-lt v5, v6, :cond_4

    const/4 v0, 0x1

    .line 96
    invoke-virtual {v2}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v2

    invoke-virtual {v2}, [Lcom/huawei/hms/scankit/aiscan/common/z;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/huawei/hms/scankit/aiscan/common/z;

    move-object p1, v2

    goto :goto_2

    :catch_0
    nop

    goto :goto_3

    .line 97
    :cond_4
    :goto_2
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object v2

    throw v2
    :try_end_0
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    move-object v2, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 98
    invoke-direct/range {v2 .. v7}, Lcom/huawei/hms/scankit/aiscan/common/o;->a(ILcom/huawei/hms/scankit/p/_a;Lcom/huawei/hms/scankit/aiscan/common/l;Ljava/util/Map;Lcom/huawei/hms/scankit/p/ob;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object p2

    if-eqz p2, :cond_6

    if-eqz v0, :cond_5

    .line 99
    invoke-virtual {p2}, Lcom/huawei/hms/scankit/aiscan/common/x;->a()V

    .line 100
    invoke-virtual {p2, p1}, Lcom/huawei/hms/scankit/aiscan/common/x;->b([Lcom/huawei/hms/scankit/aiscan/common/z;)V

    .line 101
    invoke-virtual {p2}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object p1

    invoke-static {p1, v1, p4}, Lcom/huawei/hms/scankit/p/pb;->a([Lcom/huawei/hms/scankit/aiscan/common/z;FLcom/huawei/hms/scankit/p/ob;)V

    :cond_5
    return-object p2

    .line 102
    :cond_6
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p1

    throw p1
.end method

.method public a(Lcom/huawei/hms/scankit/p/_a;Lcom/huawei/hms/scankit/p/_a;Lcom/huawei/hms/scankit/aiscan/common/l;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/x;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/scankit/p/_a;",
            "Lcom/huawei/hms/scankit/p/_a;",
            "Lcom/huawei/hms/scankit/aiscan/common/l;",
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

    .line 116
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/_a;->e()I

    move-result v0

    .line 117
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/_a;->c()I

    move-result v1

    if-ge v0, v1, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    int-to-float v0, v3

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    const/high16 v2, 0x44870000    # 1080.0f

    div-float/2addr v0, v2

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    goto :goto_1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 118
    :goto_1
    sget-boolean v2, Lcom/huawei/hms/scankit/p/Bc;->a:Z

    if-eqz v2, :cond_2

    .line 119
    invoke-virtual {p3, p1, v0}, Lcom/huawei/hms/scankit/aiscan/common/l;->a(Lcom/huawei/hms/scankit/p/_a;F)Lcom/huawei/hms/scankit/p/_a;

    move-result-object v1

    goto :goto_2

    :cond_2
    const/high16 v2, 0x3fc00000    # 1.5f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_3

    move v1, v0

    .line 120
    :cond_3
    invoke-virtual {p3, p1, v1}, Lcom/huawei/hms/scankit/aiscan/common/l;->a(Lcom/huawei/hms/scankit/p/_a;F)Lcom/huawei/hms/scankit/p/_a;

    move-result-object v0

    move v8, v1

    move-object v1, v0

    move v0, v8

    .line 121
    :goto_2
    invoke-virtual {p0, p4}, Lcom/huawei/hms/scankit/aiscan/common/o;->a(Ljava/util/Map;)[Lcom/huawei/hms/scankit/aiscan/common/t;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 122
    :try_start_0
    invoke-direct {p0, v1, v2, p4}, Lcom/huawei/hms/scankit/aiscan/common/o;->a(Lcom/huawei/hms/scankit/p/_a;[Lcom/huawei/hms/scankit/aiscan/common/t;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 123
    invoke-virtual {v1}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 124
    invoke-virtual {v1}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v2

    invoke-static {v2, v0, v4}, Lcom/huawei/hms/scankit/p/pb;->a([Lcom/huawei/hms/scankit/aiscan/common/z;FLcom/huawei/hms/scankit/p/ob;)V

    return-object v1

    .line 125
    :cond_4
    sget-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->c:Z

    if-nez v0, :cond_5

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-virtual {v1}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v0

    array-length v0, v0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_5

    const/4 v5, 0x1

    .line 126
    invoke-virtual {v1}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v0

    invoke-virtual {v0}, [Lcom/huawei/hms/scankit/aiscan/common/z;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/hms/scankit/aiscan/common/z;

    move-object v4, v0

    .line 127
    :cond_5
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-object v0, v4

    move v1, v5

    move-object v2, p0

    move-object v4, p3

    move-object v5, p1

    move-object v6, p2

    move-object v7, p4

    .line 128
    invoke-direct/range {v2 .. v7}, Lcom/huawei/hms/scankit/aiscan/common/o;->a(ILcom/huawei/hms/scankit/aiscan/common/l;Lcom/huawei/hms/scankit/p/_a;Lcom/huawei/hms/scankit/p/_a;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object p1

    if-eqz p1, :cond_7

    if-eqz v1, :cond_6

    .line 129
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/x;->a()V

    .line 130
    invoke-virtual {p1, v0}, Lcom/huawei/hms/scankit/aiscan/common/x;->b([Lcom/huawei/hms/scankit/aiscan/common/z;)V

    :cond_6
    return-object p1

    .line 131
    :cond_7
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p1

    throw p1
.end method

.method public a(Lcom/huawei/hms/scankit/p/_a;Lcom/huawei/hms/scankit/p/_a;Lcom/huawei/hms/scankit/p/_a;Ljava/util/Map;Lcom/huawei/hms/scankit/aiscan/common/l;Lcom/huawei/hms/scankit/p/ob;)Lcom/huawei/hms/scankit/aiscan/common/x;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/scankit/p/_a;",
            "Lcom/huawei/hms/scankit/p/_a;",
            "Lcom/huawei/hms/scankit/p/_a;",
            "Ljava/util/Map<",
            "Lcom/huawei/hms/scankit/aiscan/common/d;",
            "*>;",
            "Lcom/huawei/hms/scankit/aiscan/common/l;",
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

    if-eqz p3, :cond_0

    .line 84
    invoke-virtual {p0, p3, p5, p4, p6}, Lcom/huawei/hms/scankit/aiscan/common/o;->a(Lcom/huawei/hms/scankit/p/_a;Lcom/huawei/hms/scankit/aiscan/common/l;Ljava/util/Map;Lcom/huawei/hms/scankit/p/ob;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object p1

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {p0, p1, p2, p5, p4}, Lcom/huawei/hms/scankit/aiscan/common/o;->a(Lcom/huawei/hms/scankit/p/_a;Lcom/huawei/hms/scankit/p/_a;Lcom/huawei/hms/scankit/aiscan/common/l;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public a(Lcom/huawei/hms/scankit/p/_a;Lcom/huawei/hms/scankit/p/_a;Ljava/util/Map;Lcom/huawei/hms/scankit/aiscan/common/l;Lcom/huawei/hms/scankit/p/ob;)Lcom/huawei/hms/scankit/aiscan/common/x;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/scankit/p/_a;",
            "Lcom/huawei/hms/scankit/p/_a;",
            "Ljava/util/Map<",
            "Lcom/huawei/hms/scankit/aiscan/common/d;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/huawei/hms/scankit/aiscan/common/l;",
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

    .line 35
    sget-object v0, Lcom/huawei/hms/scankit/aiscan/common/d;->c:Lcom/huawei/hms/scankit/aiscan/common/d;

    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    new-array v6, v1, [F

    .line 36
    fill-array-data v6, :array_0

    const/4 v1, 0x0

    const/4 v8, 0x1

    if-eqz p2, :cond_1

    move-object v2, p0

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    move-object v7, p5

    .line 37
    invoke-direct/range {v2 .. v7}, Lcom/huawei/hms/scankit/aiscan/common/o;->a(Lcom/huawei/hms/scankit/p/_a;Lcom/huawei/hms/scankit/aiscan/common/l;Ljava/util/Map;[FLcom/huawei/hms/scankit/p/ob;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object p2

    :cond_0
    :goto_0
    const/4 p3, 0x0

    goto :goto_2

    :cond_1
    if-nez v0, :cond_3

    .line 38
    sget-boolean p2, Lcom/huawei/hms/scankit/p/Bc;->a:Z

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    goto :goto_0

    .line 39
    :cond_3
    :goto_1
    invoke-direct {p0, p1, p4, p3, v6}, Lcom/huawei/hms/scankit/aiscan/common/o;->a(Lcom/huawei/hms/scankit/p/_a;Lcom/huawei/hms/scankit/aiscan/common/l;Ljava/util/Map;[F)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object p2

    .line 40
    aget p3, v6, v8

    const/high16 p4, 0x3f800000    # 1.0f

    cmpl-float p3, p3, p4

    if-lez p3, :cond_0

    const/4 p3, 0x1

    :goto_2
    if-eqz p2, :cond_6

    if-eqz p3, :cond_5

    .line 41
    invoke-virtual {p2}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 42
    :goto_3
    array-length p4, p3

    if-ge v1, p4, :cond_5

    .line 43
    aget-object p4, p3, v1

    if-eqz p4, :cond_4

    .line 44
    new-instance p4, Lcom/huawei/hms/scankit/aiscan/common/z;

    aget-object p5, p3, v1

    invoke-virtual {p5}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result p5

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/_a;->c()I

    move-result v0

    sub-int/2addr v0, v8

    int-to-float v0, v0

    aget-object v2, p3, v1

    invoke-virtual {v2}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-direct {p4, p5, v0}, Lcom/huawei/hms/scankit/aiscan/common/z;-><init>(FF)V

    aput-object p4, p3, v1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    return-object p2

    .line 45
    :cond_6
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p1

    throw p1

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public a(Lcom/huawei/hms/scankit/p/_a;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/x;
    .locals 1
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

    .line 2
    invoke-virtual {p0, p2}, Lcom/huawei/hms/scankit/aiscan/common/o;->a(Ljava/util/Map;)[Lcom/huawei/hms/scankit/aiscan/common/t;

    move-result-object v0

    .line 3
    invoke-direct {p0, p1, v0, p2}, Lcom/huawei/hms/scankit/aiscan/common/o;->a(Lcom/huawei/hms/scankit/p/_a;[Lcom/huawei/hms/scankit/aiscan/common/t;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/Map;)[Lcom/huawei/hms/scankit/aiscan/common/t;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/huawei/hms/scankit/aiscan/common/d;",
            "*>;)[",
            "Lcom/huawei/hms/scankit/aiscan/common/t;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/huawei/hms/scankit/aiscan/common/d;->b:Lcom/huawei/hms/scankit/aiscan/common/d;

    .line 5
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 6
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_7

    .line 7
    sget-object v2, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->l:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    .line 8
    invoke-interface {v0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->m:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    .line 9
    invoke-interface {v0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->h:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    .line 10
    invoke-interface {v0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->g:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    .line 11
    invoke-interface {v0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->b:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    .line 12
    invoke-interface {v0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->c:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    .line 13
    invoke-interface {v0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->d:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    .line 14
    invoke-interface {v0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->e:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    .line 15
    invoke-interface {v0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->i:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    .line 16
    invoke-interface {v0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_3

    .line 17
    new-instance v2, Lcom/huawei/hms/scankit/p/yb;

    invoke-direct {v2, p1}, Lcom/huawei/hms/scankit/p/yb;-><init>(Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_3
    sget-object p1, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->k:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 19
    new-instance p1, Lcom/huawei/hms/scankit/p/yc;

    invoke-direct {p1}, Lcom/huawei/hms/scankit/p/yc;-><init>()V

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_4
    sget-object p1, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->f:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 21
    new-instance p1, Lcom/huawei/hms/scankit/p/hb;

    invoke-direct {p1}, Lcom/huawei/hms/scankit/p/hb;-><init>()V

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_5
    sget-object p1, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->a:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 23
    new-instance p1, Lcom/huawei/hms/scankit/p/Va;

    invoke-direct {p1}, Lcom/huawei/hms/scankit/p/Va;-><init>()V

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_6
    sget-object p1, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->j:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 25
    new-instance p1, Lcom/huawei/hms/scankit/p/Xb;

    invoke-direct {p1}, Lcom/huawei/hms/scankit/p/Xb;-><init>()V

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 26
    :cond_7
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result p1

    new-array p1, p1, [Lcom/huawei/hms/scankit/aiscan/common/t;

    invoke-interface {v1, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/huawei/hms/scankit/aiscan/common/t;

    return-object p1
.end method
