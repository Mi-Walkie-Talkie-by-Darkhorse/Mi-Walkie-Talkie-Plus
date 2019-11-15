.class public Lrx/internal/util/a/d;
.super Lrx/internal/util/a/e;
.source "MpmcArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/a/e",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Lrx/internal/util/a/e;-><init>(I)V

    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 4

    invoke-virtual {p0}, Lrx/internal/util/a/d;->a()J

    move-result-wide v0

    invoke-virtual {p0}, Lrx/internal/util/a/d;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null is not a valid element"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Lrx/internal/util/a/d;->b:J

    const-wide/16 v2, 0x1

    add-long v6, v0, v2

    iget-object v1, p0, Lrx/internal/util/a/d;->d:[J

    const-wide v2, 0x7fffffffffffffffL

    move-wide v4, v2

    :goto_0
    invoke-virtual {p0}, Lrx/internal/util/a/d;->b()J

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lrx/internal/util/a/d;->d(J)J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lrx/internal/util/a/d;->a([JJ)J

    move-result-wide v10

    sub-long/2addr v10, v8

    const-wide/16 v12, 0x0

    cmp-long v0, v10, v12

    if-nez v0, :cond_1

    const-wide/16 v10, 0x1

    add-long/2addr v10, v8

    invoke-virtual {p0, v8, v9, v10, v11}, Lrx/internal/util/a/d;->c(JJ)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v8, v9}, Lrx/internal/util/a/d;->a(J)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5, p1}, Lrx/internal/util/a/d;->a(JLjava/lang/Object;)V

    const-wide/16 v4, 0x1

    add-long/2addr v4, v8

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lrx/internal/util/a/d;->a([JJJ)V

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v0, v10, v2

    if-gez v0, :cond_2

    sub-long v2, v8, v6

    cmp-long v0, v2, v4

    if-gtz v0, :cond_2

    sub-long v2, v8, v6

    invoke-virtual {p0}, Lrx/internal/util/a/d;->a()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move-wide v2, v4

    move-wide v4, v2

    goto :goto_0
.end method

.method public peek()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    :cond_0
    invoke-virtual {p0}, Lrx/internal/util/a/d;->a()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lrx/internal/util/a/d;->a(J)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lrx/internal/util/a/d;->b(J)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lrx/internal/util/a/d;->b()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    :cond_1
    return-object v2
.end method

.method public poll()Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v1, p0, Lrx/internal/util/a/d;->d:[J

    const-wide/16 v2, -0x1

    move-wide v4, v2

    :goto_0
    invoke-virtual {p0}, Lrx/internal/util/a/d;->a()J

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lrx/internal/util/a/d;->d(J)J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lrx/internal/util/a/d;->a([JJ)J

    move-result-wide v6

    const-wide/16 v10, 0x1

    add-long/2addr v10, v8

    sub-long/2addr v6, v10

    const-wide/16 v10, 0x0

    cmp-long v0, v6, v10

    if-nez v0, :cond_0

    const-wide/16 v6, 0x1

    add-long/2addr v6, v8

    invoke-virtual {p0, v8, v9, v6, v7}, Lrx/internal/util/a/d;->b(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v8, v9}, Lrx/internal/util/a/d;->a(J)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lrx/internal/util/a/d;->b(J)Ljava/lang/Object;

    move-result-object v6

    const/4 v0, 0x0

    invoke-virtual {p0, v4, v5, v0}, Lrx/internal/util/a/d;->a(JLjava/lang/Object;)V

    iget-wide v4, p0, Lrx/internal/util/a/d;->b:J

    add-long/2addr v4, v8

    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lrx/internal/util/a/d;->a([JJJ)V

    move-object v0, v6

    :goto_1
    return-object v0

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v0, v6, v2

    if-gez v0, :cond_1

    cmp-long v0, v8, v4

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lrx/internal/util/a/d;->b()J

    move-result-wide v4

    cmp-long v0, v8, v4

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    move-wide v2, v4

    move-wide v4, v2

    goto :goto_0
.end method

.method public size()I
    .locals 6

    invoke-virtual {p0}, Lrx/internal/util/a/d;->a()J

    move-result-wide v0

    :goto_0
    invoke-virtual {p0}, Lrx/internal/util/a/d;->b()J

    move-result-wide v4

    invoke-virtual {p0}, Lrx/internal/util/a/d;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    sub-long v0, v4, v2

    long-to-int v0, v0

    return v0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method
