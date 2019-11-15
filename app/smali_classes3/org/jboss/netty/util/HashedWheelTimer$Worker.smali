.class final Lorg/jboss/netty/util/HashedWheelTimer$Worker;
.super Ljava/lang/Object;
.source "HashedWheelTimer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/util/HashedWheelTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Worker"
.end annotation


# instance fields
.field private startTime:J

.field final synthetic this$0:Lorg/jboss/netty/util/HashedWheelTimer;

.field private tick:J


# direct methods
.method constructor <init>(Lorg/jboss/netty/util/HashedWheelTimer;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->this$0:Lorg/jboss/netty/util/HashedWheelTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private fetchExpiredTimeouts(Ljava/util/List;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;",
            ">;J)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->this$0:Lorg/jboss/netty/util/HashedWheelTimer;

    iget-object v0, v0, Lorg/jboss/netty/util/HashedWheelTimer;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->this$0:Lorg/jboss/netty/util/HashedWheelTimer;

    iget-object v1, p0, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->this$0:Lorg/jboss/netty/util/HashedWheelTimer;

    iget v1, v1, Lorg/jboss/netty/util/HashedWheelTimer;->wheelCursor:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->this$0:Lorg/jboss/netty/util/HashedWheelTimer;

    iget v2, v2, Lorg/jboss/netty/util/HashedWheelTimer;->mask:I

    and-int/2addr v1, v2

    iput v1, v0, Lorg/jboss/netty/util/HashedWheelTimer;->wheelCursor:I

    iget-object v0, p0, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->this$0:Lorg/jboss/netty/util/HashedWheelTimer;

    iget-object v0, v0, Lorg/jboss/netty/util/HashedWheelTimer;->iterators:[Lorg/jboss/netty/util/internal/ReusableIterator;

    aget-object v0, v0, v1

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->fetchExpiredTimeouts(Ljava/util/List;Lorg/jboss/netty/util/internal/ReusableIterator;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->this$0:Lorg/jboss/netty/util/HashedWheelTimer;

    iget-object v0, v0, Lorg/jboss/netty/util/HashedWheelTimer;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->this$0:Lorg/jboss/netty/util/HashedWheelTimer;

    iget-object v1, v1, Lorg/jboss/netty/util/HashedWheelTimer;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private fetchExpiredTimeouts(Ljava/util/List;Lorg/jboss/netty/util/internal/ReusableIterator;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;",
            ">;",
            "Lorg/jboss/netty/util/internal/ReusableIterator",
            "<",
            "Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;",
            ">;J)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-interface {p2}, Lorg/jboss/netty/util/internal/ReusableIterator;->rewind()V

    :goto_0
    invoke-interface {p2}, Lorg/jboss/netty/util/internal/ReusableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Lorg/jboss/netty/util/internal/ReusableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;

    iget-wide v2, v0, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;->remainingRounds:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    invoke-interface {p2}, Lorg/jboss/netty/util/internal/ReusableIterator;->remove()V

    iget-wide v2, v0, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;->deadline:J

    cmp-long v2, v2, p3

    if-gtz v2, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-wide v2, v0, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;->remainingRounds:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;->remainingRounds:J

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;

    iget-object v2, p0, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->this$0:Lorg/jboss/netty/util/HashedWheelTimer;

    iget-wide v4, v0, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;->deadline:J

    sub-long/2addr v4, p3

    invoke-virtual {v2, v0, v4, v5}, Lorg/jboss/netty/util/HashedWheelTimer;->scheduleTimeout(Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;J)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method private notifyExpiredTimeouts(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;

    invoke-virtual {v0}, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;->expire()V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method private waitForNextTick()J
    .locals 12

    const-wide/16 v10, 0xa

    const-wide/high16 v2, -0x8000000000000000L

    iget-wide v0, p0, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->startTime:J

    iget-object v4, p0, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->this$0:Lorg/jboss/netty/util/HashedWheelTimer;

    iget-wide v4, v4, Lorg/jboss/netty/util/HashedWheelTimer;->tickDuration:J

    iget-wide v6, p0, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->tick:J

    mul-long/2addr v4, v6

    add-long v6, v0, v4

    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long v4, v6, v0

    const-wide/32 v8, 0xf423f

    add-long/2addr v4, v8

    const-wide/32 v8, 0xf4240

    div-long/2addr v4, v8

    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-gtz v8, :cond_2

    iget-wide v4, p0, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->tick:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->tick:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :cond_1
    :goto_1
    return-wide v0

    :cond_2
    invoke-static {}, Lorg/jboss/netty/util/internal/DetectionUtil;->isWindows()Z

    move-result v0

    if-eqz v0, :cond_3

    div-long v0, v4, v10

    mul-long/2addr v0, v10

    :goto_2
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->this$0:Lorg/jboss/netty/util/HashedWheelTimer;

    iget-object v0, v0, Lorg/jboss/netty/util/HashedWheelTimer;->workerState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    move-wide v0, v2

    goto :goto_1

    :cond_3
    move-wide v0, v4

    goto :goto_2
.end method


# virtual methods
.method public run()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->startTime:J

    const-wide/16 v2, 0x1

    iput-wide v2, p0, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->tick:J

    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->this$0:Lorg/jboss/netty/util/HashedWheelTimer;

    iget-object v1, v1, Lorg/jboss/netty/util/HashedWheelTimer;->workerState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->waitForNextTick()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    invoke-direct {p0, v0, v2, v3}, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->fetchExpiredTimeouts(Ljava/util/List;J)V

    invoke-direct {p0, v0}, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->notifyExpiredTimeouts(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    return-void
.end method
