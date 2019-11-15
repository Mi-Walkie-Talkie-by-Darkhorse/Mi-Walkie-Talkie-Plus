.class public Lcom/ksyun/ks3/model/b/a;
.super Ljava/io/FilterInputStream;
.source "InputSubStream.java"


# instance fields
.field private a:J

.field private final b:J

.field private final c:J

.field private final d:Z

.field private e:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;JJZ)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput-wide v0, p0, Lcom/ksyun/ks3/model/b/a;->e:J

    iput-wide v0, p0, Lcom/ksyun/ks3/model/b/a;->a:J

    iput-wide p4, p0, Lcom/ksyun/ks3/model/b/a;->c:J

    iput-wide p2, p0, Lcom/ksyun/ks3/model/b/a;->b:J

    iput-boolean p6, p0, Lcom/ksyun/ks3/model/b/a;->d:Z

    return-void
.end method


# virtual methods
.method public available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/ksyun/ks3/model/b/a;->a:J

    iget-wide v2, p0, Lcom/ksyun/ks3/model/b/a;->b:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-wide v0, p0, Lcom/ksyun/ks3/model/b/a;->c:J

    :goto_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    :cond_0
    iget-wide v0, p0, Lcom/ksyun/ks3/model/b/a;->c:J

    iget-wide v2, p0, Lcom/ksyun/ks3/model/b/a;->b:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/ksyun/ks3/model/b/a;->a:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/ksyun/ks3/model/b/a;->d:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    :cond_0
    return-void
.end method

.method public declared-synchronized mark(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/ksyun/ks3/model/b/a;->a:J

    iput-wide v0, p0, Lcom/ksyun/ks3/model/b/a;->e:J

    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->mark(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v3, 0x0

    new-array v1, v0, [B

    invoke-virtual {p0, v1, v3, v0}, Lcom/ksyun/ks3/model/b/a;->read([BII)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    aget-byte v0, v1, v3

    goto :goto_0
.end method

.method public read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget-wide v0, p0, Lcom/ksyun/ks3/model/b/a;->a:J

    iget-wide v2, p0, Lcom/ksyun/ks3/model/b/a;->b:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-wide v0, p0, Lcom/ksyun/ks3/model/b/a;->b:J

    iget-wide v2, p0, Lcom/ksyun/ks3/model/b/a;->a:J

    sub-long/2addr v0, v2

    invoke-super {p0, v0, v1}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ksyun/ks3/model/b/a;->a:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ksyun/ks3/model/b/a;->a:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/ksyun/ks3/model/b/a;->c:J

    iget-wide v2, p0, Lcom/ksyun/ks3/model/b/a;->b:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/ksyun/ks3/model/b/a;->a:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    const/4 v0, -0x1

    :goto_1
    return v0

    :cond_1
    int-to-long v2, p3

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-super {p0, p1, p2, v0}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    iget-wide v2, p0, Lcom/ksyun/ks3/model/b/a;->a:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/ksyun/ks3/model/b/a;->a:J

    goto :goto_1
.end method

.method public declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/ksyun/ks3/model/b/a;->e:J

    iput-wide v0, p0, Lcom/ksyun/ks3/model/b/a;->a:J

    invoke-super {p0}, Ljava/io/FilterInputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
