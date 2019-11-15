.class public Lorg/jboss/netty/handler/traffic/TrafficCounter;
.super Ljava/lang/Object;
.source "TrafficCounter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/traffic/TrafficCounter$TrafficMonitoringTask;
    }
.end annotation


# instance fields
.field final checkInterval:Ljava/util/concurrent/atomic/AtomicLong;

.field private final cumulativeReadBytes:Ljava/util/concurrent/atomic/AtomicLong;

.field private final cumulativeWrittenBytes:Ljava/util/concurrent/atomic/AtomicLong;

.field private final currentReadBytes:Ljava/util/concurrent/atomic/AtomicLong;

.field private final currentWrittenBytes:Ljava/util/concurrent/atomic/AtomicLong;

.field private lastCumulativeTime:J

.field private lastReadBytes:J

.field private lastReadThroughput:J

.field private final lastTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private lastWriteThroughput:J

.field private lastWrittenBytes:J

.field final monitorActive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final name:Ljava/lang/String;

.field private volatile timeout:Lorg/jboss/netty/util/Timeout;

.field private final timer:Lorg/jboss/netty/util/Timer;

.field private timerTask:Lorg/jboss/netty/util/TimerTask;

.field private final trafficShapingHandler:Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;


# direct methods
.method public constructor <init>(Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;Lorg/jboss/netty/util/Timer;Ljava/lang/String;J)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->currentWrittenBytes:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->currentReadBytes:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->cumulativeWrittenBytes:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->cumulativeReadBytes:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->lastTime:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x3e8

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->checkInterval:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->monitorActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->trafficShapingHandler:Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;

    iput-object p2, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->timer:Lorg/jboss/netty/util/Timer;

    iput-object p3, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->name:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->lastCumulativeTime:J

    invoke-virtual {p0, p4, p5}, Lorg/jboss/netty/handler/traffic/TrafficCounter;->configure(J)V

    return-void
.end method

.method static synthetic access$000(Lorg/jboss/netty/handler/traffic/TrafficCounter;)Lorg/jboss/netty/util/Timer;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->timer:Lorg/jboss/netty/util/Timer;

    return-object v0
.end method


# virtual methods
.method bytesRecvFlowControl(J)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->currentReadBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->cumulativeReadBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    return-void
.end method

.method bytesWriteFlowControl(J)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->currentWrittenBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->cumulativeWrittenBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    return-void
.end method

.method public configure(J)V
    .locals 5

    const-wide/16 v2, 0xa

    div-long v0, p1, v2

    mul-long/2addr v0, v2

    iget-object v2, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->checkInterval:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->checkInterval:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Lorg/jboss/netty/handler/traffic/TrafficCounter;->stop()V

    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->lastTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/jboss/netty/handler/traffic/TrafficCounter;->start()V

    goto :goto_0
.end method

.method public getCheckInterval()J
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->checkInterval:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCumulativeReadBytes()J
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->cumulativeReadBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCumulativeWrittenBytes()J
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->cumulativeWrittenBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentReadBytes()J
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->currentReadBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentWrittenBytes()J
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->currentWrittenBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastCumulativeTime()J
    .locals 2

    iget-wide v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->lastCumulativeTime:J

    return-wide v0
.end method

.method public getLastReadBytes()J
    .locals 2

    iget-wide v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->lastReadBytes:J

    return-wide v0
.end method

.method public getLastReadThroughput()J
    .locals 2

    iget-wide v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->lastReadThroughput:J

    return-wide v0
.end method

.method public getLastTime()J
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->lastTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastWriteThroughput()J
    .locals 2

    iget-wide v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->lastWriteThroughput:J

    return-wide v0
.end method

.method public getLastWrittenBytes()J
    .locals 2

    iget-wide v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->lastWrittenBytes:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->name:Ljava/lang/String;

    return-object v0
.end method

.method resetAccounting(J)V
    .locals 9

    const-wide/16 v6, 0x3e8

    const-wide/16 v4, 0x0

    iget-object v1, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->lastTime:Ljava/util/concurrent/atomic/AtomicLong;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->lastTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v2

    sub-long v2, p1, v2

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->currentReadBytes:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->lastReadBytes:J

    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->currentWrittenBytes:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->lastWrittenBytes:J

    iget-wide v4, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->lastReadBytes:J

    div-long/2addr v4, v2

    mul-long/2addr v4, v6

    iput-wide v4, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->lastReadThroughput:J

    iget-wide v4, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->lastWrittenBytes:J

    div-long v2, v4, v2

    mul-long/2addr v2, v6

    iput-wide v2, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->lastWriteThroughput:J

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resetCumulativeTime()V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->lastCumulativeTime:J

    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->cumulativeReadBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->cumulativeWrittenBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method public start()V
    .locals 6

    iget-object v1, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->lastTime:Ljava/util/concurrent/atomic/AtomicLong;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->monitorActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->lastTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->checkInterval:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->monitorActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Lorg/jboss/netty/handler/traffic/TrafficCounter$TrafficMonitoringTask;

    iget-object v2, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->trafficShapingHandler:Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;

    invoke-direct {v0, v2, p0}, Lorg/jboss/netty/handler/traffic/TrafficCounter$TrafficMonitoringTask;-><init>(Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;Lorg/jboss/netty/handler/traffic/TrafficCounter;)V

    iput-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->timerTask:Lorg/jboss/netty/util/TimerTask;

    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->timer:Lorg/jboss/netty/util/Timer;

    iget-object v2, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->timerTask:Lorg/jboss/netty/util/TimerTask;

    iget-object v3, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->checkInterval:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v4, v5, v3}, Lorg/jboss/netty/util/Timer;->newTimeout(Lorg/jboss/netty/util/TimerTask;JLjava/util/concurrent/TimeUnit;)Lorg/jboss/netty/util/Timeout;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->timeout:Lorg/jboss/netty/util/Timeout;

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stop()V
    .locals 4

    iget-object v1, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->lastTime:Ljava/util/concurrent/atomic/AtomicLong;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->monitorActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->monitorActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/jboss/netty/handler/traffic/TrafficCounter;->resetAccounting(J)V

    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->trafficShapingHandler:Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->trafficShapingHandler:Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;

    invoke-virtual {v0, p0}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->doAccounting(Lorg/jboss/netty/handler/traffic/TrafficCounter;)V

    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->timeout:Lorg/jboss/netty/util/Timeout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->timeout:Lorg/jboss/netty/util/Timeout;

    invoke-interface {v0}, Lorg/jboss/netty/util/Timeout;->cancel()V

    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/16 v4, 0xa

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Monitor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Current Speed Read: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->lastReadThroughput:J

    shr-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " KB/s, Write: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->lastWriteThroughput:J

    shr-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " KB/s Current Read: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->currentReadBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    shr-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " KB Current Write: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->currentWrittenBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    shr-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
