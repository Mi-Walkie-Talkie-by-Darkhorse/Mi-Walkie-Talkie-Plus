.class public Lorg/jboss/netty/handler/traffic/GlobalTrafficShapingHandler;
.super Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;
.source "GlobalTrafficShapingHandler.java"


# annotations
.annotation runtime Lorg/jboss/netty/channel/ChannelHandler$Sharable;
.end annotation


# direct methods
.method public constructor <init>(Lorg/jboss/netty/util/ObjectSizeEstimator;Lorg/jboss/netty/util/Timer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;-><init>(Lorg/jboss/netty/util/ObjectSizeEstimator;Lorg/jboss/netty/util/Timer;)V

    invoke-virtual {p0}, Lorg/jboss/netty/handler/traffic/GlobalTrafficShapingHandler;->createGlobalTrafficCounter()V

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/util/ObjectSizeEstimator;Lorg/jboss/netty/util/Timer;J)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;-><init>(Lorg/jboss/netty/util/ObjectSizeEstimator;Lorg/jboss/netty/util/Timer;J)V

    invoke-virtual {p0}, Lorg/jboss/netty/handler/traffic/GlobalTrafficShapingHandler;->createGlobalTrafficCounter()V

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/util/ObjectSizeEstimator;Lorg/jboss/netty/util/Timer;JJ)V
    .locals 1

    invoke-direct/range {p0 .. p6}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;-><init>(Lorg/jboss/netty/util/ObjectSizeEstimator;Lorg/jboss/netty/util/Timer;JJ)V

    invoke-virtual {p0}, Lorg/jboss/netty/handler/traffic/GlobalTrafficShapingHandler;->createGlobalTrafficCounter()V

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/util/ObjectSizeEstimator;Lorg/jboss/netty/util/Timer;JJJ)V
    .locals 1

    invoke-direct/range {p0 .. p8}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;-><init>(Lorg/jboss/netty/util/ObjectSizeEstimator;Lorg/jboss/netty/util/Timer;JJJ)V

    invoke-virtual {p0}, Lorg/jboss/netty/handler/traffic/GlobalTrafficShapingHandler;->createGlobalTrafficCounter()V

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/util/Timer;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;-><init>(Lorg/jboss/netty/util/Timer;)V

    invoke-virtual {p0}, Lorg/jboss/netty/handler/traffic/GlobalTrafficShapingHandler;->createGlobalTrafficCounter()V

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/util/Timer;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;-><init>(Lorg/jboss/netty/util/Timer;J)V

    invoke-virtual {p0}, Lorg/jboss/netty/handler/traffic/GlobalTrafficShapingHandler;->createGlobalTrafficCounter()V

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/util/Timer;JJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;-><init>(Lorg/jboss/netty/util/Timer;JJ)V

    invoke-virtual {p0}, Lorg/jboss/netty/handler/traffic/GlobalTrafficShapingHandler;->createGlobalTrafficCounter()V

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/util/Timer;JJJ)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;-><init>(Lorg/jboss/netty/util/Timer;JJJ)V

    invoke-virtual {p0}, Lorg/jboss/netty/handler/traffic/GlobalTrafficShapingHandler;->createGlobalTrafficCounter()V

    return-void
.end method


# virtual methods
.method createGlobalTrafficCounter()V
    .locals 6

    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/GlobalTrafficShapingHandler;->timer:Lorg/jboss/netty/util/Timer;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/jboss/netty/handler/traffic/TrafficCounter;

    iget-object v2, p0, Lorg/jboss/netty/handler/traffic/GlobalTrafficShapingHandler;->timer:Lorg/jboss/netty/util/Timer;

    const-string v3, "GlobalTC"

    iget-wide v4, p0, Lorg/jboss/netty/handler/traffic/GlobalTrafficShapingHandler;->checkInterval:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/handler/traffic/TrafficCounter;-><init>(Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;Lorg/jboss/netty/util/Timer;Ljava/lang/String;J)V

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/traffic/GlobalTrafficShapingHandler;->setTrafficCounter(Lorg/jboss/netty/handler/traffic/TrafficCounter;)V

    invoke-virtual {v0}, Lorg/jboss/netty/handler/traffic/TrafficCounter;->start()V

    :cond_0
    return-void
.end method
