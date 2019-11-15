.class Lorg/jboss/netty/handler/traffic/TrafficCounter$TrafficMonitoringTask;
.super Ljava/lang/Object;
.source "TrafficCounter.java"

# interfaces
.implements Lorg/jboss/netty/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/handler/traffic/TrafficCounter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TrafficMonitoringTask"
.end annotation


# instance fields
.field private final counter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

.field private final trafficShapingHandler1:Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;


# direct methods
.method protected constructor <init>(Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;Lorg/jboss/netty/handler/traffic/TrafficCounter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter$TrafficMonitoringTask;->trafficShapingHandler1:Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;

    iput-object p2, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter$TrafficMonitoringTask;->counter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    return-void
.end method


# virtual methods
.method public run(Lorg/jboss/netty/util/Timeout;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter$TrafficMonitoringTask;->counter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    iget-object v0, v0, Lorg/jboss/netty/handler/traffic/TrafficCounter;->monitorActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter$TrafficMonitoringTask;->counter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    invoke-virtual {v2, v0, v1}, Lorg/jboss/netty/handler/traffic/TrafficCounter;->resetAccounting(J)V

    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter$TrafficMonitoringTask;->trafficShapingHandler1:Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter$TrafficMonitoringTask;->trafficShapingHandler1:Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;

    iget-object v1, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter$TrafficMonitoringTask;->counter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    invoke-virtual {v0, v1}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->doAccounting(Lorg/jboss/netty/handler/traffic/TrafficCounter;)V

    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter$TrafficMonitoringTask;->counter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    invoke-static {v0}, Lorg/jboss/netty/handler/traffic/TrafficCounter;->access$000(Lorg/jboss/netty/handler/traffic/TrafficCounter;)Lorg/jboss/netty/util/Timer;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/handler/traffic/TrafficCounter$TrafficMonitoringTask;->counter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    iget-object v1, v1, Lorg/jboss/netty/handler/traffic/TrafficCounter;->checkInterval:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, v2, v3, v1}, Lorg/jboss/netty/util/Timer;->newTimeout(Lorg/jboss/netty/util/TimerTask;JLjava/util/concurrent/TimeUnit;)Lorg/jboss/netty/util/Timeout;

    goto :goto_0
.end method
