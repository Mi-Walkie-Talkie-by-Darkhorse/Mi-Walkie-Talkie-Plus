.class public Lorg/jboss/netty/handler/execution/ExecutionHandler;
.super Ljava/lang/Object;
.source "ExecutionHandler.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelDownstreamHandler;
.implements Lorg/jboss/netty/channel/ChannelUpstreamHandler;
.implements Lorg/jboss/netty/util/ExternalResourceReleasable;


# annotations
.annotation runtime Lorg/jboss/netty/channel/ChannelHandler$Sharable;
.end annotation


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final handleDownstream:Z

.field private final handleUpstream:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/jboss/netty/handler/execution/ExecutionHandler;-><init>(Ljava/util/concurrent/Executor;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/jboss/netty/handler/execution/ExecutionHandler;-><init>(Ljava/util/concurrent/Executor;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;ZZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "executor"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must handle at least handle one event type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lorg/jboss/netty/handler/execution/ExecutionHandler;->executor:Ljava/util/concurrent/Executor;

    iput-boolean p2, p0, Lorg/jboss/netty/handler/execution/ExecutionHandler;->handleDownstream:Z

    iput-boolean p3, p0, Lorg/jboss/netty/handler/execution/ExecutionHandler;->handleUpstream:Z

    return-void
.end method


# virtual methods
.method public getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/execution/ExecutionHandler;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public handleDownstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/handler/execution/ExecutionHandler;->handleReadSuspend(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/jboss/netty/handler/execution/ExecutionHandler;->handleDownstream:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/handler/execution/ExecutionHandler;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/jboss/netty/handler/execution/ChannelDownstreamEventRunnable;

    iget-object v2, p0, Lorg/jboss/netty/handler/execution/ExecutionHandler;->executor:Ljava/util/concurrent/Executor;

    invoke-direct {v1, p1, p2, v2}, Lorg/jboss/netty/handler/execution/ChannelDownstreamEventRunnable;-><init>(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_0
.end method

.method protected handleReadSuspend(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    instance-of v0, p2, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lorg/jboss/netty/channel/ChannelStateEvent;

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v3

    sget-object v4, Lorg/jboss/netty/channel/ChannelState;->INTEREST_OPS:Lorg/jboss/netty/channel/ChannelState;

    if-ne v3, v4, :cond_1

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getAttachment()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    move v0, v1

    :goto_1
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public handleUpstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/jboss/netty/handler/execution/ExecutionHandler;->handleUpstream:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/execution/ExecutionHandler;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/jboss/netty/handler/execution/ChannelUpstreamEventRunnable;

    iget-object v2, p0, Lorg/jboss/netty/handler/execution/ExecutionHandler;->executor:Ljava/util/concurrent/Executor;

    invoke-direct {v1, p1, p2, v2}, Lorg/jboss/netty/handler/execution/ChannelUpstreamEventRunnable;-><init>(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_0
.end method

.method public releaseExternalResources()V
    .locals 2

    invoke-virtual {p0}, Lorg/jboss/netty/handler/execution/ExecutionHandler;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    instance-of v0, v1, Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_0
    instance-of v0, v1, Lorg/jboss/netty/util/ExternalResourceReleasable;

    if-eqz v0, :cond_1

    check-cast v1, Lorg/jboss/netty/util/ExternalResourceReleasable;

    invoke-interface {v1}, Lorg/jboss/netty/util/ExternalResourceReleasable;->releaseExternalResources()V

    :cond_1
    return-void
.end method
