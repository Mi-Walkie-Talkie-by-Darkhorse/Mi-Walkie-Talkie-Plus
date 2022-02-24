.class public Lcom/xiaomi/infra/galaxy/fds/android/util/ObjectInputStream;
.super Ljava/io/FilterInputStream;
.source "ObjectInputStream.java"


# instance fields
.field private lastNotifyTime:J

.field private final listener:Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;

.field private final metadata:Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;

.field private totalBytesRead:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2
    iput-object p2, p0, Lcom/xiaomi/infra/galaxy/fds/android/util/ObjectInputStream;->metadata:Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;

    .line 3
    iput-object p3, p0, Lcom/xiaomi/infra/galaxy/fds/android/util/ObjectInputStream;->listener:Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;

    return-void
.end method

.method private notifyListener(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/util/ObjectInputStream;->listener:Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-eqz p1, :cond_0

    .line 3
    iget-wide v2, p0, Lcom/xiaomi/infra/galaxy/fds/android/util/ObjectInputStream;->lastNotifyTime:J

    sub-long v2, v0, v2

    iget-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/android/util/ObjectInputStream;->listener:Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;

    invoke-virtual {p1}, Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;->progressInterval()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-ltz p1, :cond_1

    .line 4
    :cond_0
    iput-wide v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/util/ObjectInputStream;->lastNotifyTime:J

    .line 5
    iget-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/android/util/ObjectInputStream;->listener:Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;

    iget-wide v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/util/ObjectInputStream;->totalBytesRead:J

    iget-object v2, p0, Lcom/xiaomi/infra/galaxy/fds/android/util/ObjectInputStream;->metadata:Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;

    invoke-virtual {v2}, Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;->getContentLength()J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;->onProgress(JJ)V

    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/xiaomi/infra/galaxy/fds/android/util/ObjectInputStream;->notifyListener(Z)V

    return-void
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 5
    iget-wide v1, p0, Lcom/xiaomi/infra/galaxy/fds/android/util/ObjectInputStream;->totalBytesRead:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/xiaomi/infra/galaxy/fds/android/util/ObjectInputStream;->totalBytesRead:J

    const/4 v1, 0x1

    .line 6
    invoke-direct {p0, v1}, Lcom/xiaomi/infra/galaxy/fds/android/util/ObjectInputStream;->notifyListener(Z)V

    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 2
    iget-wide p2, p0, Lcom/xiaomi/infra/galaxy/fds/android/util/ObjectInputStream;->totalBytesRead:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/xiaomi/infra/galaxy/fds/android/util/ObjectInputStream;->totalBytesRead:J

    const/4 p2, 0x1

    .line 3
    invoke-direct {p0, p2}, Lcom/xiaomi/infra/galaxy/fds/android/util/ObjectInputStream;->notifyListener(Z)V

    :cond_0
    return p1
.end method

.method public declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->reset()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/util/ObjectInputStream;->totalBytesRead:J

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0}, Lcom/xiaomi/infra/galaxy/fds/android/util/ObjectInputStream;->notifyListener(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
