package org.jboss.netty.channel;

import com.mi.milinkforgame.sdk.data.Const;
import java.util.concurrent.TimeUnit;
import org.jboss.netty.logging.InternalLogger;
import org.jboss.netty.logging.InternalLoggerFactory;

public abstract class CompleteChannelFuture implements ChannelFuture {
    private static final InternalLogger logger = InternalLoggerFactory.getInstance(CompleteChannelFuture.class);
    private final Channel channel;

    protected CompleteChannelFuture(Channel channel2) {
        if (channel2 == null) {
            throw new NullPointerException(Const.PARAM_CHANNEL);
        }
        this.channel = channel2;
    }

    public void addListener(ChannelFutureListener channelFutureListener) {
        try {
            channelFutureListener.operationComplete(this);
        } catch (Throwable th) {
            if (logger.isWarnEnabled()) {
                logger.warn("An exception was thrown by " + ChannelFutureListener.class.getSimpleName() + '.', th);
            }
        }
    }

    public void removeListener(ChannelFutureListener channelFutureListener) {
    }

    public ChannelFuture await() throws InterruptedException {
        if (!Thread.interrupted()) {
            return this;
        }
        throw new InterruptedException();
    }

    public boolean await(long j, TimeUnit timeUnit) throws InterruptedException {
        if (!Thread.interrupted()) {
            return true;
        }
        throw new InterruptedException();
    }

    public boolean await(long j) throws InterruptedException {
        if (!Thread.interrupted()) {
            return true;
        }
        throw new InterruptedException();
    }

    public ChannelFuture awaitUninterruptibly() {
        return this;
    }

    public boolean awaitUninterruptibly(long j, TimeUnit timeUnit) {
        return true;
    }

    public boolean awaitUninterruptibly(long j) {
        return true;
    }

    public Channel getChannel() {
        return this.channel;
    }

    public boolean isDone() {
        return true;
    }

    public boolean setProgress(long j, long j2, long j3) {
        return false;
    }

    public boolean setFailure(Throwable th) {
        return false;
    }

    public boolean setSuccess() {
        return false;
    }

    public boolean cancel() {
        return false;
    }

    public boolean isCancelled() {
        return false;
    }
}
