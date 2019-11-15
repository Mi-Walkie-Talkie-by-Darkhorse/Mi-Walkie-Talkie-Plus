package org.jboss.netty.handler.traffic;

import org.jboss.netty.channel.ChannelHandler.Sharable;
import org.jboss.netty.util.ObjectSizeEstimator;
import org.jboss.netty.util.Timer;

@Sharable
public class GlobalTrafficShapingHandler extends AbstractTrafficShapingHandler {
    /* access modifiers changed from: 0000 */
    public void createGlobalTrafficCounter() {
        if (this.timer != null) {
            TrafficCounter trafficCounter = new TrafficCounter(this, this.timer, "GlobalTC", this.checkInterval);
            setTrafficCounter(trafficCounter);
            trafficCounter.start();
        }
    }

    public GlobalTrafficShapingHandler(Timer timer, long j, long j2, long j3) {
        super(timer, j, j2, j3);
        createGlobalTrafficCounter();
    }

    public GlobalTrafficShapingHandler(Timer timer, long j, long j2) {
        super(timer, j, j2);
        createGlobalTrafficCounter();
    }

    public GlobalTrafficShapingHandler(Timer timer, long j) {
        super(timer, j);
        createGlobalTrafficCounter();
    }

    public GlobalTrafficShapingHandler(Timer timer) {
        super(timer);
        createGlobalTrafficCounter();
    }

    public GlobalTrafficShapingHandler(ObjectSizeEstimator objectSizeEstimator, Timer timer, long j, long j2, long j3) {
        super(objectSizeEstimator, timer, j, j2, j3);
        createGlobalTrafficCounter();
    }

    public GlobalTrafficShapingHandler(ObjectSizeEstimator objectSizeEstimator, Timer timer, long j, long j2) {
        super(objectSizeEstimator, timer, j, j2);
        createGlobalTrafficCounter();
    }

    public GlobalTrafficShapingHandler(ObjectSizeEstimator objectSizeEstimator, Timer timer, long j) {
        super(objectSizeEstimator, timer, j);
        createGlobalTrafficCounter();
    }

    public GlobalTrafficShapingHandler(ObjectSizeEstimator objectSizeEstimator, Timer timer) {
        super(objectSizeEstimator, timer);
        createGlobalTrafficCounter();
    }
}
