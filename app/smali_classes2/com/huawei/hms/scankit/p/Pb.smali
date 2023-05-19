.class final Lcom/huawei/hms/scankit/p/Pb;
.super Lcom/huawei/hms/scankit/p/Ob;
.source "DetectionResultRowIndicatorColumn.java"


# instance fields
.field private final c:Z


# direct methods
.method constructor <init>(Lcom/huawei/hms/scankit/p/Jb;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/huawei/hms/scankit/p/Ob;-><init>(Lcom/huawei/hms/scankit/p/Jb;)V

    .line 2
    iput-boolean p2, p0, Lcom/huawei/hms/scankit/p/Pb;->c:Z

    return-void
.end method

.method private a([Lcom/huawei/hms/scankit/p/Kb;Lcom/huawei/hms/scankit/p/Hb;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    const/4 v0, 0x0

    .line 19
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_8

    .line 20
    aget-object v1, p1, v0

    .line 21
    aget-object v2, p1, v0

    if-nez v2, :cond_0

    goto :goto_1

    .line 22
    :cond_0
    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/Kb;->e()I

    move-result v2

    rem-int/lit8 v2, v2, 0x1e

    .line 23
    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/Kb;->c()I

    move-result v1

    .line 24
    invoke-virtual {p2}, Lcom/huawei/hms/scankit/p/Hb;->c()I

    move-result v3

    const/4 v4, 0x0

    if-le v1, v3, :cond_1

    .line 25
    aput-object v4, p1, v0

    goto :goto_1

    .line 26
    :cond_1
    iget-boolean v3, p0, Lcom/huawei/hms/scankit/p/Pb;->c:Z

    if-nez v3, :cond_2

    add-int/lit8 v1, v1, 0x2

    .line 27
    :cond_2
    rem-int/lit8 v1, v1, 0x3

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    if-eq v1, v3, :cond_4

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    add-int/lit8 v2, v2, 0x1

    .line 28
    invoke-virtual {p2}, Lcom/huawei/hms/scankit/p/Hb;->a()I

    move-result v1

    if-eq v2, v1, :cond_7

    .line 29
    aput-object v4, p1, v0

    goto :goto_1

    .line 30
    :cond_3
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p1

    throw p1

    .line 31
    :cond_4
    div-int/lit8 v1, v2, 0x3

    invoke-virtual {p2}, Lcom/huawei/hms/scankit/p/Hb;->b()I

    move-result v3

    if-ne v1, v3, :cond_5

    rem-int/lit8 v2, v2, 0x3

    .line 32
    invoke-virtual {p2}, Lcom/huawei/hms/scankit/p/Hb;->d()I

    move-result v1

    if-eq v2, v1, :cond_7

    .line 33
    :cond_5
    aput-object v4, p1, v0

    goto :goto_1

    :cond_6
    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v2, v3

    .line 34
    invoke-virtual {p2}, Lcom/huawei/hms/scankit/p/Hb;->e()I

    move-result v1

    if-eq v2, v1, :cond_7

    .line 35
    aput-object v4, p1, v0

    :cond_7
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    return-void
.end method

.method private b(Lcom/huawei/hms/scankit/p/Hb;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/Ob;->a()Lcom/huawei/hms/scankit/p/Jb;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Lcom/huawei/hms/scankit/p/Pb;->c:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/Jb;->g()Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/Jb;->h()Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v1

    .line 3
    :goto_0
    iget-boolean v2, p0, Lcom/huawei/hms/scankit/p/Pb;->c:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/Jb;->a()Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/Jb;->b()Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v0

    .line 4
    :goto_1
    invoke-virtual {v1}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/huawei/hms/scankit/p/Ob;->c(I)I

    move-result v1

    .line 5
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/huawei/hms/scankit/p/Ob;->c(I)I

    move-result v0

    .line 6
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/Ob;->b()[Lcom/huawei/hms/scankit/p/Kb;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    :goto_2
    if-ge v1, v0, :cond_6

    .line 7
    aget-object v7, v2, v1

    if-nez v7, :cond_2

    goto :goto_4

    .line 8
    :cond_2
    aget-object v7, v2, v1

    .line 9
    invoke-virtual {v7}, Lcom/huawei/hms/scankit/p/Kb;->h()V

    .line 10
    invoke-virtual {v7}, Lcom/huawei/hms/scankit/p/Kb;->c()I

    move-result v8

    sub-int/2addr v8, v3

    if-nez v8, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_3
    if-ne v8, v5, :cond_4

    .line 11
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 12
    invoke-virtual {v7}, Lcom/huawei/hms/scankit/p/Kb;->c()I

    move-result v3

    :goto_3
    const/4 v4, 0x1

    goto :goto_4

    .line 13
    :cond_4
    invoke-virtual {v7}, Lcom/huawei/hms/scankit/p/Kb;->c()I

    move-result v8

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/Hb;->c()I

    move-result v9

    if-lt v8, v9, :cond_5

    const/4 v7, 0x0

    .line 14
    aput-object v7, v2, v1

    goto :goto_4

    .line 15
    :cond_5
    invoke-virtual {v7}, Lcom/huawei/hms/scankit/p/Kb;->c()I

    move-result v3

    goto :goto_3

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method private f()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/Ob;->b()[Lcom/huawei/hms/scankit/p/Kb;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 2
    invoke-virtual {v3}, Lcom/huawei/hms/scankit/p/Kb;->h()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method a(Lcom/huawei/hms/scankit/p/Hb;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/Ob;->b()[Lcom/huawei/hms/scankit/p/Kb;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/Pb;->f()V

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/huawei/hms/scankit/p/Pb;->a([Lcom/huawei/hms/scankit/p/Kb;Lcom/huawei/hms/scankit/p/Hb;)V

    .line 4
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/Ob;->a()Lcom/huawei/hms/scankit/p/Jb;

    move-result-object v1

    .line 5
    iget-boolean v2, p0, Lcom/huawei/hms/scankit/p/Pb;->c:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/Jb;->g()Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/Jb;->h()Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v2

    .line 6
    :goto_0
    iget-boolean v3, p0, Lcom/huawei/hms/scankit/p/Pb;->c:Z

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/Jb;->a()Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/Jb;->b()Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v1

    .line 7
    :goto_1
    invoke-virtual {v2}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v2}, Lcom/huawei/hms/scankit/p/Ob;->c(I)I

    move-result v2

    .line 8
    invoke-virtual {v1}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/huawei/hms/scankit/p/Ob;->c(I)I

    move-result v1

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    :goto_2
    if-ge v2, v1, :cond_c

    .line 9
    aget-object v8, v0, v2

    if-nez v8, :cond_2

    goto :goto_8

    .line 10
    :cond_2
    aget-object v8, v0, v2

    .line 11
    invoke-virtual {v8}, Lcom/huawei/hms/scankit/p/Kb;->c()I

    move-result v9

    sub-int/2addr v9, v3

    if-nez v9, :cond_3

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_3
    if-ne v9, v5, :cond_4

    .line 12
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 13
    invoke-virtual {v8}, Lcom/huawei/hms/scankit/p/Kb;->c()I

    move-result v3

    :goto_3
    const/4 v6, 0x1

    goto :goto_8

    :cond_4
    const/4 v10, 0x0

    if-ltz v9, :cond_b

    .line 14
    invoke-virtual {v8}, Lcom/huawei/hms/scankit/p/Kb;->c()I

    move-result v11

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/Hb;->c()I

    move-result v12

    if-ge v11, v12, :cond_b

    if-le v9, v2, :cond_5

    goto :goto_7

    :cond_5
    const/4 v11, 0x2

    if-le v7, v11, :cond_6

    add-int/lit8 v11, v7, -0x2

    mul-int v9, v9, v11

    :cond_6
    if-lt v9, v2, :cond_7

    const/4 v11, 0x1

    goto :goto_4

    :cond_7
    const/4 v11, 0x0

    :goto_4
    const/4 v12, 0x1

    :goto_5
    if-gt v12, v9, :cond_9

    if-nez v11, :cond_9

    sub-int v11, v2, v12

    .line 15
    aget-object v11, v0, v11

    if-eqz v11, :cond_8

    const/4 v11, 0x1

    goto :goto_6

    :cond_8
    const/4 v11, 0x0

    :goto_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_9
    if-eqz v11, :cond_a

    .line 16
    aput-object v10, v0, v2

    goto :goto_8

    .line 17
    :cond_a
    invoke-virtual {v8}, Lcom/huawei/hms/scankit/p/Kb;->c()I

    move-result v3

    goto :goto_3

    .line 18
    :cond_b
    :goto_7
    aput-object v10, v0, v2

    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_c
    return-void
.end method

.method c()Lcom/huawei/hms/scankit/p/Hb;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/Ob;->b()[Lcom/huawei/hms/scankit/p/Kb;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/huawei/hms/scankit/p/Ib;

    invoke-direct {v1}, Lcom/huawei/hms/scankit/p/Ib;-><init>()V

    .line 3
    new-instance v2, Lcom/huawei/hms/scankit/p/Ib;

    invoke-direct {v2}, Lcom/huawei/hms/scankit/p/Ib;-><init>()V

    .line 4
    new-instance v3, Lcom/huawei/hms/scankit/p/Ib;

    invoke-direct {v3}, Lcom/huawei/hms/scankit/p/Ib;-><init>()V

    .line 5
    new-instance v4, Lcom/huawei/hms/scankit/p/Ib;

    invoke-direct {v4}, Lcom/huawei/hms/scankit/p/Ib;-><init>()V

    .line 6
    array-length v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x1

    const/4 v9, 0x3

    if-ge v7, v5, :cond_5

    aget-object v10, v0, v7

    if-nez v10, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {v10}, Lcom/huawei/hms/scankit/p/Kb;->h()V

    .line 8
    invoke-virtual {v10}, Lcom/huawei/hms/scankit/p/Kb;->e()I

    move-result v11

    rem-int/lit8 v11, v11, 0x1e

    .line 9
    invoke-virtual {v10}, Lcom/huawei/hms/scankit/p/Kb;->c()I

    move-result v10

    .line 10
    iget-boolean v12, p0, Lcom/huawei/hms/scankit/p/Pb;->c:Z

    if-nez v12, :cond_1

    add-int/lit8 v10, v10, 0x2

    .line 11
    :cond_1
    rem-int/2addr v10, v9

    if-eqz v10, :cond_4

    if-eq v10, v8, :cond_3

    const/4 v8, 0x2

    if-ne v10, v8, :cond_2

    add-int/lit8 v11, v11, 0x1

    .line 12
    invoke-virtual {v1, v11}, Lcom/huawei/hms/scankit/p/Ib;->a(I)V

    goto :goto_1

    .line 13
    :cond_2
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object v0

    throw v0

    .line 14
    :cond_3
    div-int/lit8 v8, v11, 0x3

    invoke-virtual {v4, v8}, Lcom/huawei/hms/scankit/p/Ib;->a(I)V

    .line 15
    rem-int/lit8 v11, v11, 0x3

    invoke-virtual {v3, v11}, Lcom/huawei/hms/scankit/p/Ib;->a(I)V

    goto :goto_1

    :cond_4
    mul-int/lit8 v11, v11, 0x3

    add-int/2addr v11, v8

    .line 16
    invoke-virtual {v2, v11}, Lcom/huawei/hms/scankit/p/Ib;->a(I)V

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 17
    :cond_5
    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/Ib;->a()[I

    move-result-object v5

    array-length v5, v5

    if-eqz v5, :cond_7

    .line 18
    invoke-virtual {v2}, Lcom/huawei/hms/scankit/p/Ib;->a()[I

    move-result-object v5

    array-length v5, v5

    if-eqz v5, :cond_7

    .line 19
    invoke-virtual {v3}, Lcom/huawei/hms/scankit/p/Ib;->a()[I

    move-result-object v5

    array-length v5, v5

    if-eqz v5, :cond_7

    .line 20
    invoke-virtual {v4}, Lcom/huawei/hms/scankit/p/Ib;->a()[I

    move-result-object v5

    array-length v5, v5

    if-eqz v5, :cond_7

    .line 21
    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/Ib;->a()[I

    move-result-object v5

    aget v5, v5, v6

    if-lt v5, v8, :cond_7

    .line 22
    invoke-virtual {v2}, Lcom/huawei/hms/scankit/p/Ib;->a()[I

    move-result-object v5

    aget v5, v5, v6

    invoke-virtual {v3}, Lcom/huawei/hms/scankit/p/Ib;->a()[I

    move-result-object v7

    aget v7, v7, v6

    add-int/2addr v5, v7

    if-lt v5, v9, :cond_7

    .line 23
    invoke-virtual {v2}, Lcom/huawei/hms/scankit/p/Ib;->a()[I

    move-result-object v5

    aget v5, v5, v6

    invoke-virtual {v3}, Lcom/huawei/hms/scankit/p/Ib;->a()[I

    move-result-object v7

    aget v7, v7, v6

    add-int/2addr v5, v7

    const/16 v7, 0x5a

    if-le v5, v7, :cond_6

    goto :goto_2

    .line 24
    :cond_6
    new-instance v5, Lcom/huawei/hms/scankit/p/Hb;

    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/Ib;->a()[I

    move-result-object v1

    aget v1, v1, v6

    .line 25
    invoke-virtual {v2}, Lcom/huawei/hms/scankit/p/Ib;->a()[I

    move-result-object v2

    aget v2, v2, v6

    invoke-virtual {v3}, Lcom/huawei/hms/scankit/p/Ib;->a()[I

    move-result-object v3

    aget v3, v3, v6

    invoke-virtual {v4}, Lcom/huawei/hms/scankit/p/Ib;->a()[I

    move-result-object v4

    aget v4, v4, v6

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/huawei/hms/scankit/p/Hb;-><init>(IIII)V

    .line 26
    invoke-direct {p0, v0, v5}, Lcom/huawei/hms/scankit/p/Pb;->a([Lcom/huawei/hms/scankit/p/Kb;Lcom/huawei/hms/scankit/p/Hb;)V

    return-object v5

    :cond_7
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method d()[I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/Pb;->c()Lcom/huawei/hms/scankit/p/Hb;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-direct {p0, v0}, Lcom/huawei/hms/scankit/p/Pb;->b(Lcom/huawei/hms/scankit/p/Hb;)V

    .line 3
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/Hb;->c()I

    move-result v0

    new-array v1, v0, [I

    .line 4
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/Ob;->b()[Lcom/huawei/hms/scankit/p/Kb;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    if-eqz v5, :cond_2

    .line 5
    invoke-virtual {v5}, Lcom/huawei/hms/scankit/p/Kb;->c()I

    move-result v5

    if-lt v5, v0, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    aget v6, v1, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v1, v5

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hms/scankit/p/Pb;->c:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IsLeft: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/huawei/hms/scankit/p/Pb;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/huawei/hms/scankit/p/Ob;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
