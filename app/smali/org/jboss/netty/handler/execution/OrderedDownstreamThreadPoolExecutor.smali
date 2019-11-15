.class public final Lorg/jboss/netty/handler/execution/OrderedDownstreamThreadPoolExecutor;
.super Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;
.source "OrderedDownstreamThreadPoolExecutor.java"


# direct methods
.method public constructor <init>(I)V
    .locals 6

    const-wide/16 v2, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;-><init>(IJJ)V

    return-void
.end method

.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;)V
    .locals 10

    const-wide/16 v2, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v4, v2

    move-wide v6, p2

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;-><init>(IJJJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V
    .locals 10

    const-wide/16 v2, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v4, v2

    move-wide v6, p2

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v0 .. v9}, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;-><init>(IJJJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 2

    instance-of v0, p1, Lorg/jboss/netty/handler/execution/ChannelUpstreamEventRunnable;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    const-string v1, "command must be enclosed with an downstream event."

    invoke-direct {v0, v1}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/execution/OrderedDownstreamThreadPoolExecutor;->doExecute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected getChildExecutor(Lorg/jboss/netty/channel/ChannelEvent;)Ljava/util/concurrent/Executor;
    .locals 4

    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/execution/OrderedDownstreamThreadPoolExecutor;->getChildExecutorKey(Lorg/jboss/netty/channel/ChannelEvent;)Ljava/lang/Object;

    move-result-object v2

    iget-object v0, p0, Lorg/jboss/netty/handler/execution/OrderedDownstreamThreadPoolExecutor;->childExecutors:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    new-instance v1, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor$ChildExecutor;

    invoke-direct {v1, p0}, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor$ChildExecutor;-><init>(Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;)V

    iget-object v0, p0, Lorg/jboss/netty/handler/execution/OrderedDownstreamThreadPoolExecutor;->childExecutors:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v2, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->getCloseFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    new-instance v3, Lorg/jboss/netty/handler/execution/OrderedDownstreamThreadPoolExecutor$1;

    invoke-direct {v3, p0, v2}, Lorg/jboss/netty/handler/execution/OrderedDownstreamThreadPoolExecutor$1;-><init>(Lorg/jboss/netty/handler/execution/OrderedDownstreamThreadPoolExecutor;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public getMaxChannelMemorySize()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMaxTotalMemorySize()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getObjectSizeEstimator()Lorg/jboss/netty/util/ObjectSizeEstimator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setMaxChannelMemorySize(J)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported by this implementation"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMaxTotalMemorySize(J)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported by this implementation"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setObjectSizeEstimator(Lorg/jboss/netty/util/ObjectSizeEstimator;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported by this implementation"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected shouldCount(Ljava/lang/Runnable;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
