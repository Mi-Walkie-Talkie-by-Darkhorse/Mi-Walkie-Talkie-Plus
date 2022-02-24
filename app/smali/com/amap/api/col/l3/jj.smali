.class public final Lcom/amap/api/col/l3/jj;
.super Ljava/lang/Object;
.source "CellAgeEstimator.java"


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/amap/api/col/l3/jk;",
            ">;"
        }
    .end annotation
.end field

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3/jj;->a:Ljava/util/HashMap;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/amap/api/col/l3/jj;->b:J

    return-void
.end method

.method private static a(II)J
    .locals 4

    int-to-long v0, p0

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    int-to-long p0, p1

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public final a(Lcom/amap/api/col/l3/jk;)J
    .locals 8

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_5

    .line 1
    iget-boolean v2, p1, Lcom/amap/api/col/l3/jk;->p:Z

    if-nez v2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v2, p0, Lcom/amap/api/col/l3/jj;->a:Ljava/util/HashMap;

    .line 3
    iget v3, p1, Lcom/amap/api/col/l3/jk;->k:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    move-wide v3, v0

    goto :goto_0

    .line 4
    :cond_1
    iget v3, p1, Lcom/amap/api/col/l3/jk;->h:I

    iget v4, p1, Lcom/amap/api/col/l3/jk;->i:I

    invoke-static {v3, v4}, Lcom/amap/api/col/l3/jj;->a(II)J

    move-result-wide v3

    goto :goto_0

    .line 5
    :cond_2
    iget v3, p1, Lcom/amap/api/col/l3/jk;->c:I

    iget v4, p1, Lcom/amap/api/col/l3/jk;->d:I

    invoke-static {v3, v4}, Lcom/amap/api/col/l3/jj;->a(II)J

    move-result-wide v3

    .line 6
    :goto_0
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amap/api/col/l3/jk;

    if-nez v5, :cond_3

    .line 7
    invoke-static {}, Lcom/amap/api/col/l3/ki;->c()J

    move-result-wide v5

    iput-wide v5, p1, Lcom/amap/api/col/l3/jk;->m:J

    .line 8
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-wide v0

    .line 9
    :cond_3
    iget v6, v5, Lcom/amap/api/col/l3/jk;->j:I

    iget v7, p1, Lcom/amap/api/col/l3/jk;->j:I

    if-eq v6, v7, :cond_4

    .line 10
    invoke-static {}, Lcom/amap/api/col/l3/ki;->c()J

    move-result-wide v5

    iput-wide v5, p1, Lcom/amap/api/col/l3/jk;->m:J

    .line 11
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-wide v0

    .line 12
    :cond_4
    iget-wide v0, v5, Lcom/amap/api/col/l3/jk;->m:J

    iput-wide v0, p1, Lcom/amap/api/col/l3/jk;->m:J

    .line 13
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {}, Lcom/amap/api/col/l3/ki;->c()J

    move-result-wide v0

    iget-wide v2, v5, Lcom/amap/api/col/l3/jk;->m:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    :cond_5
    :goto_1
    return-wide v0
.end method

.method public final a()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/amap/api/col/l3/jj;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const-wide/16 v0, 0x0

    .line 38
    iput-wide v0, p0, Lcom/amap/api/col/l3/jj;->b:J

    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "+",
            "Lcom/amap/api/col/l3/jk;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_a

    .line 15
    invoke-static {}, Lcom/amap/api/col/l3/ki;->c()J

    move-result-wide v0

    .line 16
    iget-wide v2, p0, Lcom/amap/api/col/l3/jj;->b:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    sub-long v2, v0, v2

    const-wide/32 v6, 0xea60

    cmp-long v8, v2, v6

    if-gez v8, :cond_0

    return-void

    .line 17
    :cond_0
    iget-object v2, p0, Lcom/amap/api/col/l3/jj;->a:Ljava/util/HashMap;

    .line 18
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-ge v7, v3, :cond_5

    .line 19
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/amap/api/col/l3/jk;

    .line 20
    iget-boolean v13, v12, Lcom/amap/api/col/l3/jk;->p:Z

    if-eqz v13, :cond_4

    .line 21
    iget v13, v12, Lcom/amap/api/col/l3/jk;->k:I

    if-eq v13, v11, :cond_2

    if-eq v13, v10, :cond_1

    if-eq v13, v9, :cond_2

    if-eq v13, v8, :cond_2

    goto :goto_1

    .line 22
    :cond_1
    iget v4, v12, Lcom/amap/api/col/l3/jk;->h:I

    iget v5, v12, Lcom/amap/api/col/l3/jk;->i:I

    invoke-static {v4, v5}, Lcom/amap/api/col/l3/jj;->a(II)J

    move-result-wide v4

    goto :goto_1

    .line 23
    :cond_2
    iget v4, v12, Lcom/amap/api/col/l3/jk;->c:I

    iget v5, v12, Lcom/amap/api/col/l3/jk;->d:I

    invoke-static {v4, v5}, Lcom/amap/api/col/l3/jj;->a(II)J

    move-result-wide v4

    .line 24
    :goto_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/amap/api/col/l3/jk;

    if-eqz v8, :cond_4

    .line 25
    iget v9, v8, Lcom/amap/api/col/l3/jk;->j:I

    iget v10, v12, Lcom/amap/api/col/l3/jk;->j:I

    if-ne v9, v10, :cond_3

    .line 26
    iget-wide v8, v8, Lcom/amap/api/col/l3/jk;->m:J

    iput-wide v8, v12, Lcom/amap/api/col/l3/jk;->m:J

    goto :goto_2

    .line 27
    :cond_3
    iput-wide v0, v12, Lcom/amap/api/col/l3/jk;->m:J

    :cond_4
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 28
    :cond_5
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 29
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_3
    if-ge v6, v3, :cond_9

    .line 30
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amap/api/col/l3/jk;

    .line 31
    iget-boolean v12, v7, Lcom/amap/api/col/l3/jk;->p:Z

    if-eqz v12, :cond_8

    .line 32
    iget v12, v7, Lcom/amap/api/col/l3/jk;->k:I

    if-eq v12, v11, :cond_7

    if-eq v12, v10, :cond_6

    if-eq v12, v9, :cond_7

    if-eq v12, v8, :cond_7

    goto :goto_4

    .line 33
    :cond_6
    iget v4, v7, Lcom/amap/api/col/l3/jk;->h:I

    iget v5, v7, Lcom/amap/api/col/l3/jk;->i:I

    invoke-static {v4, v5}, Lcom/amap/api/col/l3/jj;->a(II)J

    move-result-wide v4

    goto :goto_4

    .line 34
    :cond_7
    iget v4, v7, Lcom/amap/api/col/l3/jk;->c:I

    iget v5, v7, Lcom/amap/api/col/l3/jk;->d:I

    invoke-static {v4, v5}, Lcom/amap/api/col/l3/jj;->a(II)J

    move-result-wide v4

    .line 35
    :goto_4
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v2, v12, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 36
    :cond_9
    iput-wide v0, p0, Lcom/amap/api/col/l3/jj;->b:J

    :cond_a
    return-void
.end method
