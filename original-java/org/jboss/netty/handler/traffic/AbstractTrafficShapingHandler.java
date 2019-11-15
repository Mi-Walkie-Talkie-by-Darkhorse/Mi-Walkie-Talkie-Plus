package org.jboss.netty.handler.traffic;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelEvent;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.channel.ChannelState;
import org.jboss.netty.channel.ChannelStateEvent;
import org.jboss.netty.channel.MessageEvent;
import org.jboss.netty.channel.SimpleChannelHandler;
import org.jboss.netty.logging.InternalLogger;
import org.jboss.netty.logging.InternalLoggerFactory;
import org.jboss.netty.util.DefaultObjectSizeEstimator;
import org.jboss.netty.util.ExternalResourceReleasable;
import org.jboss.netty.util.ObjectSizeEstimator;
import org.jboss.netty.util.Timeout;
import org.jboss.netty.util.Timer;
import org.jboss.netty.util.TimerTask;

public abstract class AbstractTrafficShapingHandler extends SimpleChannelHandler implements ExternalResourceReleasable {
    public static final long DEFAULT_CHECK_INTERVAL = 1000;
    private static final long MINIMAL_WAIT = 10;
    static InternalLogger logger = InternalLoggerFactory.getInstance(AbstractTrafficShapingHandler.class);
    protected long checkInterval = 1000;
    private ObjectSizeEstimator objectSizeEstimator;
    private long readLimit;
    final AtomicBoolean release = new AtomicBoolean(false);
    private volatile Timeout timeout;
    protected Timer timer;
    protected TrafficCounter trafficCounter;
    private long writeLimit;

    private class ReopenReadTimerTask implements TimerTask {
        final ChannelHandlerContext ctx;

        ReopenReadTimerTask(ChannelHandlerContext channelHandlerContext) {
            this.ctx = channelHandlerContext;
        }

        public void run(Timeout timeout) throws Exception {
            if (!AbstractTrafficShapingHandler.this.release.get() && this.ctx != null && this.ctx.getChannel() != null && this.ctx.getChannel().isConnected()) {
                this.ctx.setAttachment(null);
                this.ctx.getChannel().setReadable(true);
            }
        }
    }

    private void init(ObjectSizeEstimator objectSizeEstimator2, Timer timer2, long j, long j2, long j3) {
        this.objectSizeEstimator = objectSizeEstimator2;
        this.timer = timer2;
        this.writeLimit = j;
        this.readLimit = j2;
        this.checkInterval = j3;
    }

    /* access modifiers changed from: 0000 */
    public void setTrafficCounter(TrafficCounter trafficCounter2) {
        this.trafficCounter = trafficCounter2;
    }

    protected AbstractTrafficShapingHandler(Timer timer2, long j, long j2, long j3) {
        init(new DefaultObjectSizeEstimator(), timer2, j, j2, j3);
    }

    protected AbstractTrafficShapingHandler(ObjectSizeEstimator objectSizeEstimator2, Timer timer2, long j, long j2, long j3) {
        init(objectSizeEstimator2, timer2, j, j2, j3);
    }

    protected AbstractTrafficShapingHandler(Timer timer2, long j, long j2) {
        init(new DefaultObjectSizeEstimator(), timer2, j, j2, 1000);
    }

    protected AbstractTrafficShapingHandler(ObjectSizeEstimator objectSizeEstimator2, Timer timer2, long j, long j2) {
        init(objectSizeEstimator2, timer2, j, j2, 1000);
    }

    protected AbstractTrafficShapingHandler(Timer timer2) {
        init(new DefaultObjectSizeEstimator(), timer2, 0, 0, 1000);
    }

    protected AbstractTrafficShapingHandler(ObjectSizeEstimator objectSizeEstimator2, Timer timer2) {
        init(objectSizeEstimator2, timer2, 0, 0, 1000);
    }

    protected AbstractTrafficShapingHandler(Timer timer2, long j) {
        init(new DefaultObjectSizeEstimator(), timer2, 0, 0, j);
    }

    protected AbstractTrafficShapingHandler(ObjectSizeEstimator objectSizeEstimator2, Timer timer2, long j) {
        init(objectSizeEstimator2, timer2, 0, 0, j);
    }

    public void configure(long j, long j2, long j3) {
        configure(j, j2);
        configure(j3);
    }

    public void configure(long j, long j2) {
        this.writeLimit = j;
        this.readLimit = j2;
        if (this.trafficCounter != null) {
            this.trafficCounter.resetAccounting(System.currentTimeMillis() + 1);
        }
    }

    public void configure(long j) {
        this.checkInterval = j;
        if (this.trafficCounter != null) {
            this.trafficCounter.configure(this.checkInterval);
        }
    }

    /* access modifiers changed from: protected */
    public void doAccounting(TrafficCounter trafficCounter2) {
    }

    private static long getTimeToWait(long j, long j2, long j3, long j4) {
        long j5 = j4 - j3;
        if (j5 <= 0) {
            return 0;
        }
        return ((((1000 * j2) / j) - j5) / MINIMAL_WAIT) * MINIMAL_WAIT;
    }

    public void messageReceived(ChannelHandlerContext channelHandlerContext, MessageEvent messageEvent) throws Exception {
        try {
            long currentTimeMillis = System.currentTimeMillis();
            long estimateSize = (long) this.objectSizeEstimator.estimateSize(messageEvent.getMessage());
            if (this.trafficCounter != null) {
                this.trafficCounter.bytesRecvFlowControl(estimateSize);
                if (this.readLimit != 0) {
                    long timeToWait = getTimeToWait(this.readLimit, this.trafficCounter.getCurrentReadBytes(), this.trafficCounter.getLastTime(), currentTimeMillis);
                    if (timeToWait >= MINIMAL_WAIT) {
                        Channel channel = channelHandlerContext.getChannel();
                        if (channel == null || !channel.isConnected()) {
                            if (!this.release.get()) {
                                Thread.sleep(timeToWait);
                            }
                        } else if (this.timer == null) {
                            if (!this.release.get()) {
                                Thread.sleep(timeToWait);
                            }
                        } else if (channelHandlerContext.getAttachment() == null) {
                            channelHandlerContext.setAttachment(Boolean.TRUE);
                            channel.setReadable(false);
                            this.timeout = this.timer.newTimeout(new ReopenReadTimerTask(channelHandlerContext), timeToWait, TimeUnit.MILLISECONDS);
                        } else if (!this.release.get()) {
                            Thread.sleep(timeToWait);
                        }
                    }
                }
            }
        } finally {
            super.messageReceived(channelHandlerContext, messageEvent);
        }
    }

    public void writeRequested(ChannelHandlerContext channelHandlerContext, MessageEvent messageEvent) throws Exception {
        try {
            long currentTimeMillis = System.currentTimeMillis();
            long estimateSize = (long) this.objectSizeEstimator.estimateSize(messageEvent.getMessage());
            if (this.trafficCounter != null) {
                this.trafficCounter.bytesWriteFlowControl(estimateSize);
                if (this.writeLimit != 0) {
                    long timeToWait = getTimeToWait(this.writeLimit, this.trafficCounter.getCurrentWrittenBytes(), this.trafficCounter.getLastTime(), currentTimeMillis);
                    if (timeToWait >= MINIMAL_WAIT && !this.release.get()) {
                        Thread.sleep(timeToWait);
                    }
                }
            }
        } finally {
            super.writeRequested(channelHandlerContext, messageEvent);
        }
    }

    public void handleDownstream(ChannelHandlerContext channelHandlerContext, ChannelEvent channelEvent) throws Exception {
        if (channelEvent instanceof ChannelStateEvent) {
            ChannelStateEvent channelStateEvent = (ChannelStateEvent) channelEvent;
            if (channelStateEvent.getState() == ChannelState.INTEREST_OPS && (((Integer) channelStateEvent.getValue()).intValue() & 1) != 0) {
                if (channelHandlerContext.getAttachment() != null) {
                    channelEvent.getFuture().setSuccess();
                    return;
                }
            }
        }
        super.handleDownstream(channelHandlerContext, channelEvent);
    }

    public TrafficCounter getTrafficCounter() {
        return this.trafficCounter;
    }

    public void releaseExternalResources() {
        if (this.trafficCounter != null) {
            this.trafficCounter.stop();
        }
        this.release.set(true);
        if (this.timeout != null) {
            this.timeout.cancel();
        }
        this.timer.stop();
    }

    public String toString() {
        return "TrafficShaping with Write Limit: " + this.writeLimit + " Read Limit: " + this.readLimit + " and Counter: " + (this.trafficCounter != null ? this.trafficCounter.toString() : "none");
    }
}
