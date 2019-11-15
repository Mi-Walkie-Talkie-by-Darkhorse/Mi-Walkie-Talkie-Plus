package org.jboss.netty.handler.timeout;

import java.util.concurrent.TimeUnit;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.ChannelFutureListener;
import org.jboss.netty.channel.ChannelHandler.Sharable;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.channel.MessageEvent;
import org.jboss.netty.channel.SimpleChannelDownstreamHandler;
import org.jboss.netty.util.ExternalResourceReleasable;
import org.jboss.netty.util.Timeout;
import org.jboss.netty.util.Timer;
import org.jboss.netty.util.TimerTask;

@Sharable
public class WriteTimeoutHandler extends SimpleChannelDownstreamHandler implements ExternalResourceReleasable {
    static final WriteTimeoutException EXCEPTION = new WriteTimeoutException();
    private final long timeoutMillis;
    private final Timer timer;

    private static final class TimeoutCanceller implements ChannelFutureListener {
        private final Timeout timeout;

        TimeoutCanceller(Timeout timeout2) {
            this.timeout = timeout2;
        }

        public void operationComplete(ChannelFuture channelFuture) throws Exception {
            this.timeout.cancel();
        }
    }

    private final class WriteTimeoutTask implements TimerTask {
        private final ChannelHandlerContext ctx;
        private final ChannelFuture future;

        WriteTimeoutTask(ChannelHandlerContext channelHandlerContext, ChannelFuture channelFuture) {
            this.ctx = channelHandlerContext;
            this.future = channelFuture;
        }

        public void run(Timeout timeout) throws Exception {
            if (!timeout.isCancelled() && this.ctx.getChannel().isOpen() && this.future.setFailure(WriteTimeoutHandler.EXCEPTION)) {
                fireWriteTimeOut(this.ctx);
            }
        }

        private void fireWriteTimeOut(final ChannelHandlerContext channelHandlerContext) {
            channelHandlerContext.getPipeline().execute(new Runnable() {
                public void run() {
                    try {
                        WriteTimeoutHandler.this.writeTimedOut(channelHandlerContext);
                    } catch (Throwable th) {
                        Channels.fireExceptionCaught(channelHandlerContext, th);
                    }
                }
            });
        }
    }

    public WriteTimeoutHandler(Timer timer2, int i) {
        this(timer2, (long) i, TimeUnit.SECONDS);
    }

    public WriteTimeoutHandler(Timer timer2, long j, TimeUnit timeUnit) {
        if (timer2 == null) {
            throw new NullPointerException("timer");
        } else if (timeUnit == null) {
            throw new NullPointerException("unit");
        } else {
            this.timer = timer2;
            if (j <= 0) {
                this.timeoutMillis = 0;
            } else {
                this.timeoutMillis = Math.max(timeUnit.toMillis(j), 1);
            }
        }
    }

    public void releaseExternalResources() {
        this.timer.stop();
    }

    /* access modifiers changed from: protected */
    public long getTimeoutMillis(MessageEvent messageEvent) {
        return this.timeoutMillis;
    }

    public void writeRequested(ChannelHandlerContext channelHandlerContext, MessageEvent messageEvent) throws Exception {
        long timeoutMillis2 = getTimeoutMillis(messageEvent);
        if (timeoutMillis2 > 0) {
            ChannelFuture future = messageEvent.getFuture();
            future.addListener(new TimeoutCanceller(this.timer.newTimeout(new WriteTimeoutTask(channelHandlerContext, future), timeoutMillis2, TimeUnit.MILLISECONDS)));
        }
        super.writeRequested(channelHandlerContext, messageEvent);
    }

    /* access modifiers changed from: protected */
    public void writeTimedOut(ChannelHandlerContext channelHandlerContext) throws Exception {
        Channels.fireExceptionCaught(channelHandlerContext, (Throwable) EXCEPTION);
    }
}
