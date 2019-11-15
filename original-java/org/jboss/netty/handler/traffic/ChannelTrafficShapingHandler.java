package org.jboss.netty.handler.traffic;

import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.channel.ChannelStateEvent;
import org.jboss.netty.util.ObjectSizeEstimator;
import org.jboss.netty.util.Timer;

public class ChannelTrafficShapingHandler extends AbstractTrafficShapingHandler {
    public ChannelTrafficShapingHandler(Timer timer, long j, long j2, long j3) {
        super(timer, j, j2, j3);
    }

    public ChannelTrafficShapingHandler(Timer timer, long j, long j2) {
        super(timer, j, j2);
    }

    public ChannelTrafficShapingHandler(Timer timer, long j) {
        super(timer, j);
    }

    public ChannelTrafficShapingHandler(Timer timer) {
        super(timer);
    }

    public ChannelTrafficShapingHandler(ObjectSizeEstimator objectSizeEstimator, Timer timer, long j, long j2, long j3) {
        super(objectSizeEstimator, timer, j, j2, j3);
    }

    public ChannelTrafficShapingHandler(ObjectSizeEstimator objectSizeEstimator, Timer timer, long j, long j2) {
        super(objectSizeEstimator, timer, j, j2);
    }

    public ChannelTrafficShapingHandler(ObjectSizeEstimator objectSizeEstimator, Timer timer, long j) {
        super(objectSizeEstimator, timer, j);
    }

    public ChannelTrafficShapingHandler(ObjectSizeEstimator objectSizeEstimator, Timer timer) {
        super(objectSizeEstimator, timer);
    }

    public void channelClosed(ChannelHandlerContext channelHandlerContext, ChannelStateEvent channelStateEvent) throws Exception {
        if (this.trafficCounter != null) {
            this.trafficCounter.stop();
        }
        super.channelClosed(channelHandlerContext, channelStateEvent);
    }

    public void channelConnected(ChannelHandlerContext channelHandlerContext, ChannelStateEvent channelStateEvent) throws Exception {
        channelHandlerContext.setAttachment(Boolean.TRUE);
        channelHandlerContext.getChannel().setReadable(false);
        if (this.trafficCounter == null && this.timer != null) {
            this.trafficCounter = new TrafficCounter(this, this.timer, "ChannelTC" + channelHandlerContext.getChannel().getId(), this.checkInterval);
        }
        if (this.trafficCounter != null) {
            this.trafficCounter.start();
        }
        super.channelConnected(channelHandlerContext, channelStateEvent);
        channelHandlerContext.setAttachment(null);
        channelHandlerContext.getChannel().setReadable(true);
    }
}
