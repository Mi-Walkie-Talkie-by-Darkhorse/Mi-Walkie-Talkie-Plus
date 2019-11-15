.class public Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler;
.super Lorg/jboss/netty/channel/SimpleChannelDownstreamHandler;
.source "WriteTimeoutHandler.java"

# interfaces
.implements Lorg/jboss/netty/util/ExternalResourceReleasable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler$TimeoutCanceller;,
        Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;
    }
.end annotation

.annotation runtime Lorg/jboss/netty/channel/ChannelHandler$Sharable;
.end annotation


# static fields
.field static final EXCEPTION:Lorg/jboss/netty/handler/timeout/WriteTimeoutException;


# instance fields
.field private final timeoutMillis:J

.field private final timer:Lorg/jboss/netty/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/timeout/WriteTimeoutException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/timeout/WriteTimeoutException;-><init>()V

    sput-object v0, Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler;->EXCEPTION:Lorg/jboss/netty/handler/timeout/WriteTimeoutException;

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/util/Timer;I)V
    .locals 3

    int-to-long v0, p2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler;-><init>(Lorg/jboss/netty/util/Timer;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/util/Timer;JLjava/util/concurrent/TimeUnit;)V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelDownstreamHandler;-><init>()V

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
    iput-object p1, p0, Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler;->timer:Lorg/jboss/netty/util/Timer;

    cmp-long v0, p2, v2

    if-gtz v0, :cond_2

    iput-wide v2, p0, Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler;->timeoutMillis:J

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler;->timeoutMillis:J

    goto :goto_0
.end method


# virtual methods
.method protected getTimeoutMillis(Lorg/jboss/netty/channel/MessageEvent;)J
    .locals 2

    iget-wide v0, p0, Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler;->timeoutMillis:J

    return-wide v0
.end method

.method public releaseExternalResources()V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler;->timer:Lorg/jboss/netty/util/Timer;

    invoke-interface {v0}, Lorg/jboss/netty/util/Timer;->stop()Ljava/util/Set;

    return-void
.end method

.method public writeRequested(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler;->getTimeoutMillis(Lorg/jboss/netty/channel/MessageEvent;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    iget-object v3, p0, Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler;->timer:Lorg/jboss/netty/util/Timer;

    new-instance v4, Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;

    invoke-direct {v4, p0, p1, v2}, Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;-><init>(Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler;Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;)V

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v0, v1, v5}, Lorg/jboss/netty/util/Timer;->newTimeout(Lorg/jboss/netty/util/TimerTask;JLjava/util/concurrent/TimeUnit;)Lorg/jboss/netty/util/Timeout;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler$TimeoutCanceller;

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler$TimeoutCanceller;-><init>(Lorg/jboss/netty/util/Timeout;)V

    invoke-interface {v2, v1}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/SimpleChannelDownstreamHandler;->writeRequested(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V

    return-void
.end method

.method protected writeTimedOut(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler;->EXCEPTION:Lorg/jboss/netty/handler/timeout/WriteTimeoutException;

    invoke-static {p1, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    return-void
.end method
