.class public Lorg/jboss/netty/handler/traffic/ChannelTrafficShapingHandler;
.super Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;
.source "ChannelTrafficShapingHandler.java"


# direct methods
.method public constructor <init>(Lorg/jboss/netty/util/ObjectSizeEstimator;Lorg/jboss/netty/util/Timer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;-><init>(Lorg/jboss/netty/util/ObjectSizeEstimator;Lorg/jboss/netty/util/Timer;)V

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/util/ObjectSizeEstimator;Lorg/jboss/netty/util/Timer;J)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;-><init>(Lorg/jboss/netty/util/ObjectSizeEstimator;Lorg/jboss/netty/util/Timer;J)V

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/util/ObjectSizeEstimator;Lorg/jboss/netty/util/Timer;JJ)V
    .locals 1

    invoke-direct/range {p0 .. p6}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;-><init>(Lorg/jboss/netty/util/ObjectSizeEstimator;Lorg/jboss/netty/util/Timer;JJ)V

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/util/ObjectSizeEstimator;Lorg/jboss/netty/util/Timer;JJJ)V
    .locals 1

    invoke-direct/range {p0 .. p8}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;-><init>(Lorg/jboss/netty/util/ObjectSizeEstimator;Lorg/jboss/netty/util/Timer;JJJ)V

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/util/Timer;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;-><init>(Lorg/jboss/netty/util/Timer;)V

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/util/Timer;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;-><init>(Lorg/jboss/netty/util/Timer;J)V

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/util/Timer;JJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;-><init>(Lorg/jboss/netty/util/Timer;JJ)V

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/util/Timer;JJJ)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;-><init>(Lorg/jboss/netty/util/Timer;JJJ)V

    return-void
.end method


# virtual methods
.method public channelClosed(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/ChannelTrafficShapingHandler;->trafficCounter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/ChannelTrafficShapingHandler;->trafficCounter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/traffic/TrafficCounter;->stop()V

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->channelClosed(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V

    return-void
.end method

.method public channelConnected(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->setAttachment(Ljava/lang/Object;)V

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/Channel;->setReadable(Z)Lorg/jboss/netty/channel/ChannelFuture;

    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/ChannelTrafficShapingHandler;->trafficCounter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/ChannelTrafficShapingHandler;->timer:Lorg/jboss/netty/util/Timer;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/jboss/netty/handler/traffic/TrafficCounter;

    iget-object v2, p0, Lorg/jboss/netty/handler/traffic/ChannelTrafficShapingHandler;->timer:Lorg/jboss/netty/util/Timer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ChannelTC"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v3

    invoke-interface {v3}, Lorg/jboss/netty/channel/Channel;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lorg/jboss/netty/handler/traffic/ChannelTrafficShapingHandler;->checkInterval:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/handler/traffic/TrafficCounter;-><init>(Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;Lorg/jboss/netty/util/Timer;Ljava/lang/String;J)V

    iput-object v0, p0, Lorg/jboss/netty/handler/traffic/ChannelTrafficShapingHandler;->trafficCounter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/ChannelTrafficShapingHandler;->trafficCounter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/ChannelTrafficShapingHandler;->trafficCounter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/traffic/TrafficCounter;->start()V

    :cond_1
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->channelConnected(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->setAttachment(Ljava/lang/Object;)V

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/Channel;->setReadable(Z)Lorg/jboss/netty/channel/ChannelFuture;

    return-void
.end method
