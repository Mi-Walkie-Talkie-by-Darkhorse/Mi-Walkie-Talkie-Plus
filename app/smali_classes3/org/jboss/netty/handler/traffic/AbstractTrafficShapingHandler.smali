.class public abstract Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;
.super Lorg/jboss/netty/channel/SimpleChannelHandler;
.source "AbstractTrafficShapingHandler.java"

# interfaces
.implements Lorg/jboss/netty/util/ExternalResourceReleasable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler$ReopenReadTimerTask;
    }
.end annotation


# static fields
.field public static final DEFAULT_CHECK_INTERVAL:J = 0x3e8L

.field private static final MINIMAL_WAIT:J = 0xaL

.field static logger:Lorg/jboss/netty/logging/InternalLogger;


# instance fields
.field protected checkInterval:J

.field private objectSizeEstimator:Lorg/jboss/netty/util/ObjectSizeEstimator;

.field private readLimit:J

.field final release:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile timeout:Lorg/jboss/netty/util/Timeout;

.field protected timer:Lorg/jboss/netty/util/Timer;

.field protected trafficCounter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

.field private writeLimit:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    return-void
.end method

.method protected constructor <init>(Lorg/jboss/netty/util/ObjectSizeEstimator;Lorg/jboss/netty/util/Timer;)V
    .locals 10

    const-wide/16 v8, 0x3e8

    const-wide/16 v4, 0x0

    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelHandler;-><init>()V

    iput-wide v8, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->checkInterval:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->release:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v6, v4

    invoke-direct/range {v1 .. v9}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->init(Lorg/jboss/netty/util/ObjectSizeEstimator;Lorg/jboss/netty/util/Timer;JJJ)V

    return-void
.end method

.method protected constructor <init>(Lorg/jboss/netty/util/ObjectSizeEstimator;Lorg/jboss/netty/util/Timer;J)V
    .locals 11

    const-wide/16 v4, 0x0

    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelHandler;-><init>()V

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->checkInterval:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->release:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v6, v4

    move-wide v8, p3

    invoke-direct/range {v1 .. v9}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->init(Lorg/jboss/netty/util/ObjectSizeEstimator;Lorg/jboss/netty/util/Timer;JJJ)V

    return-void
.end method

.method protected constructor <init>(Lorg/jboss/netty/util/ObjectSizeEstimator;Lorg/jboss/netty/util/Timer;JJ)V
    .locals 11

    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelHandler;-><init>()V

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->checkInterval:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->release:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v8, 0x3e8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-direct/range {v1 .. v9}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->init(Lorg/jboss/netty/util/ObjectSizeEstimator;Lorg/jboss/netty/util/Timer;JJJ)V

    return-void
.end method

.method protected constructor <init>(Lorg/jboss/netty/util/ObjectSizeEstimator;Lorg/jboss/netty/util/Timer;JJJ)V
    .locals 3

    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelHandler;-><init>()V

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->checkInterval:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->release:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct/range {p0 .. p8}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->init(Lorg/jboss/netty/util/ObjectSizeEstimator;Lorg/jboss/netty/util/Timer;JJJ)V

    return-void
.end method

.method protected constructor <init>(Lorg/jboss/netty/util/Timer;)V
    .locals 10

    const-wide/16 v8, 0x3e8

    const-wide/16 v4, 0x0

    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelHandler;-><init>()V

    iput-wide v8, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->checkInterval:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->release:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v2, Lorg/jboss/netty/util/DefaultObjectSizeEstimator;

    invoke-direct {v2}, Lorg/jboss/netty/util/DefaultObjectSizeEstimator;-><init>()V

    move-object v1, p0

    move-object v3, p1

    move-wide v6, v4

    invoke-direct/range {v1 .. v9}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->init(Lorg/jboss/netty/util/ObjectSizeEstimator;Lorg/jboss/netty/util/Timer;JJJ)V

    return-void
.end method

.method protected constructor <init>(Lorg/jboss/netty/util/Timer;J)V
    .locals 10

    const-wide/16 v4, 0x0

    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelHandler;-><init>()V

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->checkInterval:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->release:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v2, Lorg/jboss/netty/util/DefaultObjectSizeEstimator;

    invoke-direct {v2}, Lorg/jboss/netty/util/DefaultObjectSizeEstimator;-><init>()V

    move-object v1, p0

    move-object v3, p1

    move-wide v6, v4

    move-wide v8, p2

    invoke-direct/range {v1 .. v9}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->init(Lorg/jboss/netty/util/ObjectSizeEstimator;Lorg/jboss/netty/util/Timer;JJJ)V

    return-void
.end method

.method protected constructor <init>(Lorg/jboss/netty/util/Timer;JJ)V
    .locals 10

    const-wide/16 v8, 0x3e8

    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelHandler;-><init>()V

    iput-wide v8, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->checkInterval:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->release:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v2, Lorg/jboss/netty/util/DefaultObjectSizeEstimator;

    invoke-direct {v2}, Lorg/jboss/netty/util/DefaultObjectSizeEstimator;-><init>()V

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v9}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->init(Lorg/jboss/netty/util/ObjectSizeEstimator;Lorg/jboss/netty/util/Timer;JJJ)V

    return-void
.end method

.method protected constructor <init>(Lorg/jboss/netty/util/Timer;JJJ)V
    .locals 10

    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelHandler;-><init>()V

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->checkInterval:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->release:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v2, Lorg/jboss/netty/util/DefaultObjectSizeEstimator;

    invoke-direct {v2}, Lorg/jboss/netty/util/DefaultObjectSizeEstimator;-><init>()V

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-wide/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->init(Lorg/jboss/netty/util/ObjectSizeEstimator;Lorg/jboss/netty/util/Timer;JJJ)V

    return-void
.end method

.method private static getTimeToWait(JJJJ)J
    .locals 8

    const-wide/16 v6, 0xa

    const-wide/16 v0, 0x0

    sub-long v2, p6, p4

    cmp-long v4, v2, v0

    if-gtz v4, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p2

    div-long/2addr v0, p0

    sub-long/2addr v0, v2

    div-long/2addr v0, v6

    mul-long/2addr v0, v6

    goto :goto_0
.end method

.method private init(Lorg/jboss/netty/util/ObjectSizeEstimator;Lorg/jboss/netty/util/Timer;JJJ)V
    .locals 1

    iput-object p1, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->objectSizeEstimator:Lorg/jboss/netty/util/ObjectSizeEstimator;

    iput-object p2, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->timer:Lorg/jboss/netty/util/Timer;

    iput-wide p3, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->writeLimit:J

    iput-wide p5, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->readLimit:J

    iput-wide p7, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->checkInterval:J

    return-void
.end method


# virtual methods
.method public configure(J)V
    .locals 5

    iput-wide p1, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->checkInterval:J

    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    iget-wide v2, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->checkInterval:J

    invoke-virtual {v0, v2, v3}, Lorg/jboss/netty/handler/traffic/TrafficCounter;->configure(J)V

    :cond_0
    return-void
.end method

.method public configure(JJ)V
    .locals 7

    iput-wide p1, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->writeLimit:J

    iput-wide p3, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->readLimit:J

    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lorg/jboss/netty/handler/traffic/TrafficCounter;->resetAccounting(J)V

    :cond_0
    return-void
.end method

.method public configure(JJJ)V
    .locals 1

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->configure(JJ)V

    invoke-virtual {p0, p5, p6}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->configure(J)V

    return-void
.end method

.method protected doAccounting(Lorg/jboss/netty/handler/traffic/TrafficCounter;)V
    .locals 0

    return-void
.end method

.method public getTrafficCounter()Lorg/jboss/netty/handler/traffic/TrafficCounter;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    return-object v0
.end method

.method public handleDownstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    instance-of v0, p2, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lorg/jboss/netty/channel/ChannelStateEvent;

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->INTEREST_OPS:Lorg/jboss/netty/channel/ChannelState;

    if-ne v1, v2, :cond_1

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

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/SimpleChannelHandler;->handleDownstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_1
.end method

.method public messageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->objectSizeEstimator:Lorg/jboss/netty/util/ObjectSizeEstimator;

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jboss/netty/util/ObjectSizeEstimator;->estimateSize(Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    invoke-virtual {v2, v0, v1}, Lorg/jboss/netty/handler/traffic/TrafficCounter;->bytesRecvFlowControl(J)V

    iget-wide v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->readLimit:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/SimpleChannelHandler;->messageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V

    return-void

    :cond_1
    :try_start_1
    iget-wide v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->readLimit:J

    iget-object v2, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    invoke-virtual {v2}, Lorg/jboss/netty/handler/traffic/TrafficCounter;->getCurrentReadBytes()J

    move-result-wide v2

    iget-object v4, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    invoke-virtual {v4}, Lorg/jboss/netty/handler/traffic/TrafficCounter;->getLastTime()J

    move-result-wide v4

    invoke-static/range {v0 .. v7}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->getTimeToWait(JJJJ)J

    move-result-wide v0

    const-wide/16 v2, 0xa

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2}, Lorg/jboss/netty/channel/Channel;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->timer:Lorg/jboss/netty/util/Timer;

    if-nez v3, :cond_2

    iget-object v2, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->release:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/SimpleChannelHandler;->messageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V

    throw v0

    :cond_2
    :try_start_2
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getAttachment()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v3}, Lorg/jboss/netty/channel/ChannelHandlerContext;->setAttachment(Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/jboss/netty/channel/Channel;->setReadable(Z)Lorg/jboss/netty/channel/ChannelFuture;

    new-instance v2, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler$ReopenReadTimerTask;

    invoke-direct {v2, p0, p1}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler$ReopenReadTimerTask;-><init>(Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    iget-object v3, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->timer:Lorg/jboss/netty/util/Timer;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v2, v0, v1, v4}, Lorg/jboss/netty/util/Timer;->newTimeout(Lorg/jboss/netty/util/TimerTask;JLjava/util/concurrent/TimeUnit;)Lorg/jboss/netty/util/Timeout;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->timeout:Lorg/jboss/netty/util/Timeout;

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->release:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->release:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public releaseExternalResources()V
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/traffic/TrafficCounter;->stop()V

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->release:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->timeout:Lorg/jboss/netty/util/Timeout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->timeout:Lorg/jboss/netty/util/Timeout;

    invoke-interface {v0}, Lorg/jboss/netty/util/Timeout;->cancel()V

    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->timer:Lorg/jboss/netty/util/Timer;

    invoke-interface {v0}, Lorg/jboss/netty/util/Timer;->stop()Ljava/util/Set;

    return-void
.end method

.method setTrafficCounter(Lorg/jboss/netty/handler/traffic/TrafficCounter;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TrafficShaping with Write Limit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->writeLimit:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Read Limit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->readLimit:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and Counter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/traffic/TrafficCounter;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "none"

    goto :goto_0
.end method

.method public writeRequested(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->objectSizeEstimator:Lorg/jboss/netty/util/ObjectSizeEstimator;

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jboss/netty/util/ObjectSizeEstimator;->estimateSize(Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    invoke-virtual {v2, v0, v1}, Lorg/jboss/netty/handler/traffic/TrafficCounter;->bytesWriteFlowControl(J)V

    iget-wide v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->writeLimit:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/SimpleChannelHandler;->writeRequested(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V

    return-void

    :cond_1
    :try_start_1
    iget-wide v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->writeLimit:J

    iget-object v2, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    invoke-virtual {v2}, Lorg/jboss/netty/handler/traffic/TrafficCounter;->getCurrentWrittenBytes()J

    move-result-wide v2

    iget-object v4, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    invoke-virtual {v4}, Lorg/jboss/netty/handler/traffic/TrafficCounter;->getLastTime()J

    move-result-wide v4

    invoke-static/range {v0 .. v7}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->getTimeToWait(JJJJ)J

    move-result-wide v0

    const-wide/16 v2, 0xa

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    iget-object v2, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->release:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/SimpleChannelHandler;->writeRequested(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V

    throw v0
.end method
