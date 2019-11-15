.class public Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;
.super Lorg/jboss/netty/channel/SimpleChannelUpstreamHandler;
.source "ReadTimeoutHandler.java"

# interfaces
.implements Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;
.implements Lorg/jboss/netty/util/ExternalResourceReleasable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$State;,
        Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$ReadTimeoutTask;
    }
.end annotation

.annotation runtime Lorg/jboss/netty/channel/ChannelHandler$Sharable;
.end annotation


# static fields
.field static final EXCEPTION:Lorg/jboss/netty/handler/timeout/ReadTimeoutException;


# instance fields
.field final timeoutMillis:J

.field final timer:Lorg/jboss/netty/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/timeout/ReadTimeoutException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/timeout/ReadTimeoutException;-><init>()V

    sput-object v0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->EXCEPTION:Lorg/jboss/netty/handler/timeout/ReadTimeoutException;

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/util/Timer;I)V
    .locals 3

    int-to-long v0, p2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;-><init>(Lorg/jboss/netty/util/Timer;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/util/Timer;JLjava/util/concurrent/TimeUnit;)V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelUpstreamHandler;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "timer"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p4, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "unit"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->timer:Lorg/jboss/netty/util/Timer;

    cmp-long v0, p2, v2

    if-gtz v0, :cond_2

    iput-wide v2, p0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->timeoutMillis:J

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->timeoutMillis:J

    goto :goto_0
.end method

.method private static destroy(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 3

    invoke-static {p0}, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->state(Lorg/jboss/netty/channel/ChannelHandlerContext;)Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$State;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget v0, v1, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$State;->state:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    monitor-exit v1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    iput v0, v1, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$State;->state:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$State;->timeout:Lorg/jboss/netty/util/Timeout;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$State;->timeout:Lorg/jboss/netty/util/Timeout;

    invoke-interface {v0}, Lorg/jboss/netty/util/Timeout;->cancel()V

    const/4 v0, 0x0

    iput-object v0, v1, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$State;->timeout:Lorg/jboss/netty/util/Timeout;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private initialize(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 6

    invoke-static {p1}, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->state(Lorg/jboss/netty/channel/ChannelHandlerContext;)Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$State;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget v0, v1, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$State;->state:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    iput v0, v1, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$State;->state:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-wide v2, p0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->timeoutMillis:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->timer:Lorg/jboss/netty/util/Timer;

    new-instance v2, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$ReadTimeoutTask;

    invoke-direct {v2, p0, p1}, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$ReadTimeoutTask;-><init>(Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    iget-wide v4, p0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->timeoutMillis:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v4, v5, v3}, Lorg/jboss/netty/util/Timer;->newTimeout(Lorg/jboss/netty/util/TimerTask;JLjava/util/concurrent/TimeUnit;)Lorg/jboss/netty/util/Timeout;

    move-result-object v0

    iput-object v0, v1, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$State;->timeout:Lorg/jboss/netty/util/Timeout;

    :cond_0
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

.method private static state(Lorg/jboss/netty/channel/ChannelHandlerContext;)Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$State;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getAttachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$State;

    if-eqz v0, :cond_0

    monitor-exit p0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$State;

    invoke-direct {v0}, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$State;-><init>()V

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

    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->initialize(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

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

    invoke-static {p1}, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->destroy(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

.method public channelClosed(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p1}, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->destroy(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    return-void
.end method

.method public channelOpen(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->initialize(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    return-void
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

    check-cast v0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$State;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$State;->lastReadTime:J

    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    return-void
.end method

.method protected readTimedOut(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->EXCEPTION:Lorg/jboss/netty/handler/timeout/ReadTimeoutException;

    invoke-static {p1, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    return-void
.end method

.method public releaseExternalResources()V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;->timer:Lorg/jboss/netty/util/Timer;

    invoke-interface {v0}, Lorg/jboss/netty/util/Timer;->stop()Ljava/util/Set;

    return-void
.end method
