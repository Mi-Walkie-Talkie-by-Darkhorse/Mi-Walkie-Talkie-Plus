.class public Lcom/liulishuo/okdownload/SpeedCalculator;
.super Ljava/lang/Object;
.source "SpeedCalculator.java"


# instance fields
.field allIncreaseBytes:J

.field beginTimestamp:J

.field bytesPerSecond:J

.field endTimestamp:J

.field increaseBytes:J

.field timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static humanReadableSpeed(JZ)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1, p2}, Lcom/liulishuo/okdownload/core/Util;->humanReadableBytes(JZ)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/s"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public averageSpeed()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/liulishuo/okdownload/SpeedCalculator;->speedFromBegin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized downloading(J)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/liulishuo/okdownload/SpeedCalculator;->timestamp:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/liulishuo/okdownload/SpeedCalculator;->nowMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/liulishuo/okdownload/SpeedCalculator;->timestamp:J

    .line 3
    iput-wide v0, p0, Lcom/liulishuo/okdownload/SpeedCalculator;->beginTimestamp:J

    .line 4
    :cond_0
    iget-wide v0, p0, Lcom/liulishuo/okdownload/SpeedCalculator;->increaseBytes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/liulishuo/okdownload/SpeedCalculator;->increaseBytes:J

    .line 5
    iget-wide v0, p0, Lcom/liulishuo/okdownload/SpeedCalculator;->allIncreaseBytes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/liulishuo/okdownload/SpeedCalculator;->allIncreaseBytes:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized endTask()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/liulishuo/okdownload/SpeedCalculator;->nowMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/liulishuo/okdownload/SpeedCalculator;->endTimestamp:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/liulishuo/okdownload/SpeedCalculator;->nowMillis()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lcom/liulishuo/okdownload/SpeedCalculator;->increaseBytes:J

    const-wide/16 v4, 0x1

    .line 3
    iget-wide v6, p0, Lcom/liulishuo/okdownload/SpeedCalculator;->timestamp:J

    sub-long v6, v0, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    .line 4
    iput-wide v6, p0, Lcom/liulishuo/okdownload/SpeedCalculator;->increaseBytes:J

    .line 5
    iput-wide v0, p0, Lcom/liulishuo/okdownload/SpeedCalculator;->timestamp:J

    long-to-float v0, v2

    long-to-float v1, v4

    div-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float v0, v0, v1

    float-to-long v0, v0

    .line 6
    iput-wide v0, p0, Lcom/liulishuo/okdownload/SpeedCalculator;->bytesPerSecond:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBytesPerSecondAndFlush()J
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/liulishuo/okdownload/SpeedCalculator;->nowMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/liulishuo/okdownload/SpeedCalculator;->timestamp:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v2

    if-gez v6, :cond_0

    .line 2
    iget-wide v2, p0, Lcom/liulishuo/okdownload/SpeedCalculator;->bytesPerSecond:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    monitor-exit p0

    return-wide v2

    .line 3
    :cond_0
    :try_start_1
    iget-wide v2, p0, Lcom/liulishuo/okdownload/SpeedCalculator;->bytesPerSecond:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    const-wide/16 v2, 0x1f4

    cmp-long v6, v0, v2

    if-gez v6, :cond_1

    monitor-exit p0

    return-wide v4

    .line 4
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/liulishuo/okdownload/SpeedCalculator;->getInstantBytesPerSecondAndFlush()J

    move-result-wide v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBytesPerSecondFromBegin()J
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/liulishuo/okdownload/SpeedCalculator;->endTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/SpeedCalculator;->nowMillis()J

    move-result-wide v0

    .line 2
    :cond_0
    iget-wide v2, p0, Lcom/liulishuo/okdownload/SpeedCalculator;->allIncreaseBytes:J

    const-wide/16 v4, 0x1

    .line 3
    iget-wide v6, p0, Lcom/liulishuo/okdownload/SpeedCalculator;->beginTimestamp:J

    sub-long/2addr v0, v6

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-float v2, v2

    long-to-float v0, v0

    div-float/2addr v2, v0

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float v2, v2, v0

    float-to-long v0, v2

    .line 4
    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInstantBytesPerSecondAndFlush()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/liulishuo/okdownload/SpeedCalculator;->flush()V

    .line 2
    iget-wide v0, p0, Lcom/liulishuo/okdownload/SpeedCalculator;->bytesPerSecond:J

    return-wide v0
.end method

.method public declared-synchronized getInstantSpeedDurationMillis()J
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/liulishuo/okdownload/SpeedCalculator;->nowMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/liulishuo/okdownload/SpeedCalculator;->timestamp:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v0, v2

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSpeedWithBinaryAndFlush()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/liulishuo/okdownload/SpeedCalculator;->getInstantBytesPerSecondAndFlush()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/liulishuo/okdownload/SpeedCalculator;->humanReadableSpeed(JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpeedWithSIAndFlush()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/liulishuo/okdownload/SpeedCalculator;->getInstantBytesPerSecondAndFlush()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/liulishuo/okdownload/SpeedCalculator;->humanReadableSpeed(JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public instantSpeed()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/liulishuo/okdownload/SpeedCalculator;->getSpeedWithSIAndFlush()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public lastSpeed()Ljava/lang/String;
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/liulishuo/okdownload/SpeedCalculator;->bytesPerSecond:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/liulishuo/okdownload/SpeedCalculator;->humanReadableSpeed(JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method nowMillis()J
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized reset()V
    .locals 2

    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 1
    :try_start_0
    iput-wide v0, p0, Lcom/liulishuo/okdownload/SpeedCalculator;->timestamp:J

    .line 2
    iput-wide v0, p0, Lcom/liulishuo/okdownload/SpeedCalculator;->increaseBytes:J

    .line 3
    iput-wide v0, p0, Lcom/liulishuo/okdownload/SpeedCalculator;->bytesPerSecond:J

    .line 4
    iput-wide v0, p0, Lcom/liulishuo/okdownload/SpeedCalculator;->beginTimestamp:J

    .line 5
    iput-wide v0, p0, Lcom/liulishuo/okdownload/SpeedCalculator;->endTimestamp:J

    .line 6
    iput-wide v0, p0, Lcom/liulishuo/okdownload/SpeedCalculator;->allIncreaseBytes:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public speed()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/liulishuo/okdownload/SpeedCalculator;->getBytesPerSecondAndFlush()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/liulishuo/okdownload/SpeedCalculator;->humanReadableSpeed(JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public speedFromBegin()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/liulishuo/okdownload/SpeedCalculator;->getBytesPerSecondFromBegin()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/liulishuo/okdownload/SpeedCalculator;->humanReadableSpeed(JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
