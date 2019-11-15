.class public Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "MemoryAwareThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$1;,
        Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Limiter;,
        Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$MemoryAwareRunnable;,
        Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$NewThreadRunsPolicy;,
        Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;
    }
.end annotation


# static fields
.field private static final logger:Lorg/jboss/netty/logging/InternalLogger;

.field private static final misuseDetector:Lorg/jboss/netty/util/internal/SharedResourceMisuseDetector;


# instance fields
.field private final channelCounters:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lorg/jboss/netty/channel/Channel;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation
.end field

.field private volatile notifyOnShutdown:Z

.field private volatile settings:Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;

.field private final totalLimiter:Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Limiter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->logger:Lorg/jboss/netty/logging/InternalLogger;

    new-instance v0, Lorg/jboss/netty/util/internal/SharedResourceMisuseDetector;

    const-class v1, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;

    invoke-direct {v0, v1}, Lorg/jboss/netty/util/internal/SharedResourceMisuseDetector;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->misuseDetector:Lorg/jboss/netty/util/internal/SharedResourceMisuseDetector;

    return-void
.end method

.method public constructor <init>(IJJ)V
    .locals 10

    const-wide/16 v6, 0x1e

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v8}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;-><init>(IJJJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(IJJJLjava/util/concurrent/TimeUnit;)V
    .locals 10

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v9

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;-><init>(IJJJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V

    return-void
.end method

.method public constructor <init>(IJJJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V
    .locals 12

    new-instance v9, Lorg/jboss/netty/util/DefaultObjectSizeEstimator;

    invoke-direct {v9}, Lorg/jboss/netty/util/DefaultObjectSizeEstimator;-><init>()V

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;-><init>(IJJJLjava/util/concurrent/TimeUnit;Lorg/jboss/netty/util/ObjectSizeEstimator;Ljava/util/concurrent/ThreadFactory;)V

    return-void
.end method

.method public constructor <init>(IJJJLjava/util/concurrent/TimeUnit;Lorg/jboss/netty/util/ObjectSizeEstimator;Ljava/util/concurrent/ThreadFactory;)V
    .locals 12

    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v9}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v11, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$NewThreadRunsPolicy;

    const/4 v2, 0x0

    invoke-direct {v11, v2}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$NewThreadRunsPolicy;-><init>(Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$1;)V

    move-object v3, p0

    move v4, p1

    move v5, p1

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v10, p10

    invoke-direct/range {v3 .. v11}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    new-instance v2, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;

    invoke-direct {v2}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;-><init>()V

    iput-object v2, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->channelCounters:Ljava/util/concurrent/ConcurrentMap;

    if-nez p9, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "objectSizeEstimator"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gez v2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "maxChannelMemorySize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-gez v2, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "maxTotalMemorySize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "allowCoreThreadTimeOut"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v5, v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v2, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;

    move-object/from16 v0, p9

    invoke-direct {v2, v0, p2, p3}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;-><init>(Lorg/jboss/netty/util/ObjectSizeEstimator;J)V

    iput-object v2, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->settings:Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;

    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->totalLimiter:Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Limiter;

    :goto_1
    sget-object v2, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->misuseDetector:Lorg/jboss/netty/util/internal/SharedResourceMisuseDetector;

    invoke-virtual {v2}, Lorg/jboss/netty/util/internal/SharedResourceMisuseDetector;->increase()V

    return-void

    :catch_0
    move-exception v2

    sget-object v2, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v3, "ThreadPoolExecutor.allowCoreThreadTimeOut() is not supported in this platform."

    invoke-interface {v2, v3}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v2, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Limiter;

    move-wide/from16 v0, p4

    invoke-direct {v2, v0, v1}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Limiter;-><init>(J)V

    iput-object v2, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->totalLimiter:Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Limiter;

    goto :goto_1
.end method

.method private getChannelCounter(Lorg/jboss/netty/channel/Channel;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->channelCounters:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    if-nez v0, :cond_0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iget-object v0, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->channelCounters:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v0, :cond_2

    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/jboss/netty/channel/Channel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->channelCounters:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 0

    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    invoke-virtual {p0, p2}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->decreaseCounter(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected decreaseCounter(Ljava/lang/Runnable;)V
    .locals 9

    const/4 v8, 0x1

    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->shouldCount(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->settings:Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;

    iget-wide v2, v0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;->maxChannelMemorySize:J

    instance-of v0, p1, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;

    iget v0, v0, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;->estimatedSize:I

    :goto_1
    iget-object v1, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->totalLimiter:Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Limiter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->totalLimiter:Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Limiter;

    int-to-long v4, v0

    invoke-virtual {v1, v4, v5}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Limiter;->decrease(J)V

    :cond_2
    instance-of v1, p1, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;

    if-eqz v1, :cond_0

    check-cast p1, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;

    invoke-virtual {p1}, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;->getEvent()Lorg/jboss/netty/channel/ChannelEvent;

    move-result-object v1

    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->getChannelCounter(Lorg/jboss/netty/channel/Channel;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v4

    neg-int v0, v0

    int-to-long v6, v0

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-eqz v0, :cond_0

    cmp-long v0, v4, v2

    if-gez v0, :cond_0

    invoke-interface {v1}, Lorg/jboss/netty/channel/Channel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Lorg/jboss/netty/channel/Channel;->isReadable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;->getContext()Lorg/jboss/netty/channel/ChannelHandlerContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v2

    instance-of v2, v2, Lorg/jboss/netty/handler/execution/ExecutionHandler;

    if-eqz v2, :cond_4

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getAttachment()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->setAttachment(Ljava/lang/Object;)V

    invoke-interface {v1, v8}, Lorg/jboss/netty/channel/Channel;->setReadable(Z)Lorg/jboss/netty/channel/ChannelFuture;

    goto :goto_0

    :cond_3
    move-object v0, p1

    check-cast v0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$MemoryAwareRunnable;

    iget v0, v0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$MemoryAwareRunnable;->estimatedSize:I

    goto :goto_1

    :cond_4
    invoke-interface {v1, v8}, Lorg/jboss/netty/channel/Channel;->setReadable(Z)Lorg/jboss/netty/channel/ChannelFuture;

    goto :goto_0
.end method

.method protected doExecute(Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->doUnorderedExecute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final doUnorderedExecute(Ljava/lang/Runnable;)V
    .locals 0

    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 2

    instance-of v0, p1, Lorg/jboss/netty/handler/execution/ChannelDownstreamEventRunnable;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    const-string v1, "command must be enclosed with an upstream event."

    invoke-direct {v0, v1}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    instance-of v0, p1, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;

    if-nez v0, :cond_1

    new-instance v0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$MemoryAwareRunnable;

    invoke-direct {v0, p1}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$MemoryAwareRunnable;-><init>(Ljava/lang/Runnable;)V

    move-object p1, v0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->increaseCounter(Ljava/lang/Runnable;)V

    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->doExecute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getMaxChannelMemorySize()J
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->settings:Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;

    iget-wide v0, v0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;->maxChannelMemorySize:J

    return-wide v0
.end method

.method public getMaxTotalMemorySize()J
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->totalLimiter:Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Limiter;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->totalLimiter:Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Limiter;

    iget-wide v0, v0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Limiter;->limit:J

    goto :goto_0
.end method

.method public getNotifyChannelFuturesOnShutdown()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->notifyOnShutdown:Z

    return v0
.end method

.method public getObjectSizeEstimator()Lorg/jboss/netty/util/ObjectSizeEstimator;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->settings:Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;

    iget-object v0, v0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;->objectSizeEstimator:Lorg/jboss/netty/util/ObjectSizeEstimator;

    return-object v0
.end method

.method protected increaseCounter(Ljava/lang/Runnable;)V
    .locals 8

    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->shouldCount(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->settings:Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;

    iget-wide v2, v0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;->maxChannelMemorySize:J

    iget-object v0, v0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;->objectSizeEstimator:Lorg/jboss/netty/util/ObjectSizeEstimator;

    invoke-interface {v0, p1}, Lorg/jboss/netty/util/ObjectSizeEstimator;->estimateSize(Ljava/lang/Object;)I

    move-result v0

    instance-of v1, p1, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;

    if-eqz v1, :cond_4

    check-cast p1, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;

    iput v0, p1, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;->estimatedSize:I

    invoke-virtual {p1}, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;->getEvent()Lorg/jboss/netty/channel/ChannelEvent;

    move-result-object v1

    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->getChannelCounter(Lorg/jboss/netty/channel/Channel;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v4

    int-to-long v6, v0

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_3

    cmp-long v2, v4, v2

    if-ltz v2, :cond_3

    invoke-interface {v1}, Lorg/jboss/netty/channel/Channel;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Lorg/jboss/netty/channel/Channel;->isReadable()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;->getContext()Lorg/jboss/netty/channel/ChannelHandlerContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v3

    instance-of v3, v3, Lorg/jboss/netty/handler/execution/ExecutionHandler;

    if-eqz v3, :cond_2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v3}, Lorg/jboss/netty/channel/ChannelHandlerContext;->setAttachment(Ljava/lang/Object;)V

    :cond_2
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/jboss/netty/channel/Channel;->setReadable(Z)Lorg/jboss/netty/channel/ChannelFuture;

    :cond_3
    :goto_1
    iget-object v1, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->totalLimiter:Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Limiter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->totalLimiter:Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Limiter;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Limiter;->increase(J)V

    goto :goto_0

    :cond_4
    check-cast p1, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$MemoryAwareRunnable;

    iput v0, p1, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$MemoryAwareRunnable;->estimatedSize:I

    goto :goto_1
.end method

.method public remove(Ljava/lang/Runnable;)Z
    .locals 1

    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->decreaseCounter(Ljava/lang/Runnable;)V

    :cond_0
    return v0
.end method

.method public setMaxChannelMemorySize(J)V
    .locals 5

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxChannelMemorySize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->getTaskCount()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be changed after a task is executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;

    iget-object v1, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->settings:Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;

    iget-object v1, v1, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;->objectSizeEstimator:Lorg/jboss/netty/util/ObjectSizeEstimator;

    invoke-direct {v0, v1, p1, p2}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;-><init>(Lorg/jboss/netty/util/ObjectSizeEstimator;J)V

    iput-object v0, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->settings:Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;

    return-void
.end method

.method public setMaxTotalMemorySize(J)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxTotalMemorySize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->getTaskCount()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be changed after a task is executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public setNotifyChannelFuturesOnShutdown(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->notifyOnShutdown:Z

    return-void
.end method

.method public setObjectSizeEstimator(Lorg/jboss/netty/util/ObjectSizeEstimator;)V
    .locals 4

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "objectSizeEstimator"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;

    iget-object v1, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->settings:Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;

    iget-wide v2, v1, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;->maxChannelMemorySize:J

    invoke-direct {v0, p1, v2, v3}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;-><init>(Lorg/jboss/netty/util/ObjectSizeEstimator;J)V

    iput-object v0, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->settings:Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;

    return-void
.end method

.method protected shouldCount(Ljava/lang/Runnable;)Z
    .locals 3

    const/4 v1, 0x0

    instance-of v0, p1, Lorg/jboss/netty/handler/execution/ChannelUpstreamEventRunnable;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/jboss/netty/handler/execution/ChannelUpstreamEventRunnable;

    invoke-virtual {p1}, Lorg/jboss/netty/handler/execution/ChannelUpstreamEventRunnable;->getEvent()Lorg/jboss/netty/channel/ChannelEvent;

    move-result-object v0

    instance-of v2, v0, Lorg/jboss/netty/channel/WriteCompletionEvent;

    if-eqz v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    instance-of v2, v0, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-eqz v2, :cond_1

    check-cast v0, Lorg/jboss/netty/channel/ChannelStateEvent;

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v0

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->INTEREST_OPS:Lorg/jboss/netty/channel/ChannelState;

    if-ne v0, v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->notifyOnShutdown:Z

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->shutdownNow(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public shutdownNow(Z)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v1

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    instance-of v5, v0, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;

    if-eqz v5, :cond_5

    if-nez v2, :cond_1

    new-instance v2, Ljava/io/IOException;

    const-string v5, "Unable to process queued event"

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    :cond_1
    check-cast v0, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;->getEvent()Lorg/jboss/netty/channel/ChannelEvent;

    move-result-object v5

    invoke-interface {v5}, Lorg/jboss/netty/channel/ChannelEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    invoke-interface {v0, v2}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    if-nez v1, :cond_4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_2
    invoke-interface {v5}, Lorg/jboss/netty/channel/ChannelEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v1, v2

    :goto_3
    move-object v2, v1

    move-object v1, v0

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/Channel;

    invoke-static {v0, v2}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaughtLater(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    goto :goto_4

    :cond_3
    move-object v0, v3

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_2

    :cond_5
    move-object v0, v1

    move-object v1, v2

    goto :goto_3
.end method

.method protected terminated()V
    .locals 1

    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->terminated()V

    sget-object v0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->misuseDetector:Lorg/jboss/netty/util/internal/SharedResourceMisuseDetector;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/SharedResourceMisuseDetector;->decrease()V

    return-void
.end method
