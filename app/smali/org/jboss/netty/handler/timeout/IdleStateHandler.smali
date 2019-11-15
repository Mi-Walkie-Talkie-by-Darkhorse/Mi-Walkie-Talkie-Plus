.class public Lorg/jboss/netty/handler/timeout/IdleStateHandler;
.super Lorg/jboss/netty/channel/SimpleChannelUpstreamHandler;
.source "IdleStateHandler.java"

# interfaces
.implements Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;
.implements Lorg/jboss/netty/util/ExternalResourceReleasable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;,
        Lorg/jboss/netty/handler/timeout/IdleStateHandler$AllIdleTimeoutTask;,
        Lorg/jboss/netty/handler/timeout/IdleStateHandler$WriterIdleTimeoutTask;,
        Lorg/jboss/netty/handler/timeout/IdleStateHandler$ReaderIdleTimeoutTask;
    }
.end annotation

.annotation runtime Lorg/jboss/netty/channel/ChannelHandler$Sharable;
.end annotation


# instance fields
.field final allIdleTimeMillis:J

.field final readerIdleTimeMillis:J

.field final timer:Lorg/jboss/netty/util/Timer;

.field final writerIdleTimeMillis:J


# direct methods
.method public constructor <init>(Lorg/jboss/netty/util/Timer;III)V
    .locals 9

    int-to-long v2, p2

    int-to-long v4, p3

    int-to-long v6, p4

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lorg/jboss/netty/handler/timeout/IdleStateHandler;-><init>(Lorg/jboss/netty/util/Timer;JJJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/util/Timer;JJJLjava/util/concurrent/TimeUnit;)V
    .locals 6

    const-wide/16 v4, 0x1

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelUpstreamHandler;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "timer"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p8, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "unit"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->timer:Lorg/jboss/netty/util/Timer;

    cmp-long v0, p2, v2

    if-gtz v0, :cond_2

    iput-wide v2, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->readerIdleTimeMillis:J

    :goto_0
    cmp-long v0, p4, v2

    if-gtz v0, :cond_3

    iput-wide v2, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->writerIdleTimeMillis:J

    :goto_1
    cmp-long v0, p6, v2

    if-gtz v0, :cond_4

    iput-wide v2, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->allIdleTimeMillis:J

    :goto_2
    return-void

    :cond_2
    invoke-virtual {p8, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->readerIdleTimeMillis:J

    goto :goto_0

    :cond_3
    invoke-virtual {p8, p4, p5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->writerIdleTimeMillis:J

    goto :goto_1

    :cond_4
    invoke-virtual {p8, p6, p7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->allIdleTimeMillis:J

    goto :goto_2
.end method

.method static synthetic access$000(Lorg/jboss/netty/handler/timeout/IdleStateHandler;Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/handler/timeout/IdleState;J)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->fireChannelIdle(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/handler/timeout/IdleState;J)V

    return-void
.end method

.method private static destroy(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p0}, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->state(Lorg/jboss/netty/channel/ChannelHandlerContext;)Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget v0, v1, Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;->state:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    monitor-exit v1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    iput v0, v1, Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;->state:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;->readerIdleTimeout:Lorg/jboss/netty/util/Timeout;

    if-eqz v0, :cond_2

    iget-object v0, v1, Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;->readerIdleTimeout:Lorg/jboss/netty/util/Timeout;

    invoke-interface {v0}, Lorg/jboss/netty/util/Timeout;->cancel()V

    iput-object v3, v1, Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;->readerIdleTimeout:Lorg/jboss/netty/util/Timeout;

    :cond_2
    iget-object v0, v1, Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;->writerIdleTimeout:Lorg/jboss/netty/util/Timeout;

    if-eqz v0, :cond_3

    iget-object v0, v1, Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;->writerIdleTimeout:Lorg/jboss/netty/util/Timeout;

    invoke-interface {v0}, Lorg/jboss/netty/util/Timeout;->cancel()V

    iput-object v3, v1, Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;->writerIdleTimeout:Lorg/jboss/netty/util/Timeout;

    :cond_3
    iget-object v0, v1, Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;->allIdleTimeout:Lorg/jboss/netty/util/Timeout;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;->allIdleTimeout:Lorg/jboss/netty/util/Timeout;

    invoke-interface {v0}, Lorg/jboss/netty/util/Timeout;->cancel()V

    iput-object v3, v1, Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;->allIdleTimeout:Lorg/jboss/netty/util/Timeout;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private fireChannelIdle(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/handler/timeout/IdleState;J)V
    .locals 7

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v6

    new-instance v0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/handler/timeout/IdleStateHandler$1;-><init>(Lorg/jboss/netty/handler/timeout/IdleStateHandler;Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/handler/timeout/IdleState;J)V

    invoke-interface {v6, v0}, Lorg/jboss/netty/channel/ChannelPipeline;->execute(Ljava/lang/Runnable;)Lorg/jboss/netty/channel/ChannelFuture;

    return-void
.end method

.method private initialize(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 8

    const-wide/16 v6, 0x0

    invoke-static {p1}, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->state(Lorg/jboss/netty/channel/ChannelHandlerContext;)Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget v0, v1, Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;->state:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    iput v0, v1, Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;->state:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;->lastWriteTime:J

    iput-wide v2, v1, Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;->lastReadTime:J

    iget-wide v2, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->readerIdleTimeMillis:J

    cmp-long v0, v2, v6

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->timer:Lorg/jboss/netty/util/Timer;

    new-instance v2, Lorg/jboss/netty/handler/timeout/IdleStateHandler$ReaderIdleTimeoutTask;

    invoke-direct {v2, p0, p1}, Lorg/jboss/netty/handler/timeout/IdleStateHandler$ReaderIdleTimeoutTask;-><init>(Lorg/jboss/netty/handler/timeout/IdleStateHandler;Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    iget-wide v4, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->readerIdleTimeMillis:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v4, v5, v3}, Lorg/jboss/netty/util/Timer;->newTimeout(Lorg/jboss/netty/util/TimerTask;JLjava/util/concurrent/TimeUnit;)Lorg/jboss/netty/util/Timeout;

    move-result-object v0

    iput-object v0, v1, Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;->readerIdleTimeout:Lorg/jboss/netty/util/Timeout;

    :cond_0
    iget-wide v2, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->writerIdleTimeMillis:J

    cmp-long v0, v2, v6

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->timer:Lorg/jboss/netty/util/Timer;

    new-instance v2, Lorg/jboss/netty/handler/timeout/IdleStateHandler$WriterIdleTimeoutTask;

    invoke-direct {v2, p0, p1}, Lorg/jboss/netty/handler/timeout/IdleStateHandler$WriterIdleTimeoutTask;-><init>(Lorg/jboss/netty/handler/timeout/IdleStateHandler;Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    iget-wide v4, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->writerIdleTimeMillis:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v4, v5, v3}, Lorg/jboss/netty/util/Timer;->newTimeout(Lorg/jboss/netty/util/TimerTask;JLjava/util/concurrent/TimeUnit;)Lorg/jboss/netty/util/Timeout;

    move-result-object v0

    iput-object v0, v1, Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;->writerIdleTimeout:Lorg/jboss/netty/util/Timeout;

    :cond_1
    iget-wide v2, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->allIdleTimeMillis:J

    cmp-long v0, v2, v6

    if-lez v0, :cond_2

    iget-object v0, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->timer:Lorg/jboss/netty/util/Timer;

    new-instance v2, Lorg/jboss/netty/handler/timeout/IdleStateHandler$AllIdleTimeoutTask;

    invoke-direct {v2, p0, p1}, Lorg/jboss/netty/handler/timeout/IdleStateHandler$AllIdleTimeoutTask;-><init>(Lorg/jboss/netty/handler/timeout/IdleStateHandler;Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    iget-wide v4, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->allIdleTimeMillis:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v4, v5, v3}, Lorg/jboss/netty/util/Timer;->newTimeout(Lorg/jboss/netty/util/TimerTask;JLjava/util/concurrent/TimeUnit;)Lorg/jboss/netty/util/Timeout;

    move-result-object v0

    iput-object v0, v1, Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;->allIdleTimeout:Lorg/jboss/netty/util/Timeout;

    :cond_2
    :goto_0
    return-void

    :pswitch_0
    :try_start_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static state(Lorg/jboss/netty/channel/ChannelHandlerContext;)Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getAttachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;

    if-eqz v0, :cond_0

    monitor-exit p0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;

    invoke-direct {v0}, Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;-><init>()V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->setAttachment(Ljava/lang/Object;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public afterAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public afterRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public beforeAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelPipeline;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->initialize(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    :cond_0
    return-void
.end method

.method public beforeRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p1}, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->destroy(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

.method public channelClosed(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p1}, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->destroy(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    return-void
.end method

.method protected channelIdle(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/handler/timeout/IdleState;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lorg/jboss/netty/handler/timeout/DefaultIdleStateEvent;

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3, p4}, Lorg/jboss/netty/handler/timeout/DefaultIdleStateEvent;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/handler/timeout/IdleState;J)V

    invoke-interface {p1, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    return-void
.end method

.method public channelOpen(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->initialize(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    return-void
.end method

.method public getAllIdleTimeInMillis()J
    .locals 2

    iget-wide v0, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->allIdleTimeMillis:J

    return-wide v0
.end method

.method public getReaderIdleTimeInMillis()J
    .locals 2

    iget-wide v0, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->readerIdleTimeMillis:J

    return-wide v0
.end method

.method public getWriterIdleTimeInMillis()J
    .locals 2

    iget-wide v0, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->writerIdleTimeMillis:J

    return-wide v0
.end method

.method public messageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getAttachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;->lastReadTime:J

    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    return-void
.end method

.method public releaseExternalResources()V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->timer:Lorg/jboss/netty/util/Timer;

    invoke-interface {v0}, Lorg/jboss/netty/util/Timer;->stop()Ljava/util/Set;

    return-void
.end method

.method public writeComplete(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/WriteCompletionEvent;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p2}, Lorg/jboss/netty/channel/WriteCompletionEvent;->getWrittenAmount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getAttachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;->lastWriteTime:J

    :cond_0
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    return-void
.end method
