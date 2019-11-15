package org.jboss.netty.handler.execution;

import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import org.jboss.netty.channel.ChannelEvent;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.ChannelFutureListener;
import org.jboss.netty.util.ObjectSizeEstimator;

public final class OrderedDownstreamThreadPoolExecutor extends OrderedMemoryAwareThreadPoolExecutor {
    public OrderedDownstreamThreadPoolExecutor(int i) {
        super(i, 0, 0);
    }

    public OrderedDownstreamThreadPoolExecutor(int i, long j, TimeUnit timeUnit) {
        super(i, 0, 0, j, timeUnit);
    }

    public OrderedDownstreamThreadPoolExecutor(int i, long j, TimeUnit timeUnit, ThreadFactory threadFactory) {
        super(i, 0, 0, j, timeUnit, threadFactory);
    }

    public ObjectSizeEstimator getObjectSizeEstimator() {
        return null;
    }

    public void setObjectSizeEstimator(ObjectSizeEstimator objectSizeEstimator) {
        throw new UnsupportedOperationException("Not supported by this implementation");
    }

    public long getMaxChannelMemorySize() {
        return 0;
    }

    public void setMaxChannelMemorySize(long j) {
        throw new UnsupportedOperationException("Not supported by this implementation");
    }

    public long getMaxTotalMemorySize() {
        return 0;
    }

    @Deprecated
    public void setMaxTotalMemorySize(long j) {
        throw new UnsupportedOperationException("Not supported by this implementation");
    }

    /* access modifiers changed from: protected */
    public boolean shouldCount(Runnable runnable) {
        return false;
    }

    public void execute(Runnable runnable) {
        if (runnable instanceof ChannelUpstreamEventRunnable) {
            throw new RejectedExecutionException("command must be enclosed with an downstream event.");
        }
        doExecute(runnable);
    }

    /* access modifiers changed from: protected */
    public Executor getChildExecutor(ChannelEvent channelEvent) {
        final Object childExecutorKey = getChildExecutorKey(channelEvent);
        Executor executor = (Executor) this.childExecutors.get(childExecutorKey);
        if (executor != null) {
            return executor;
        }
        ChildExecutor childExecutor = new ChildExecutor();
        Executor executor2 = (Executor) this.childExecutors.putIfAbsent(childExecutorKey, childExecutor);
        if (executor2 != null) {
            return executor2;
        }
        channelEvent.getChannel().getCloseFuture().addListener(new ChannelFutureListener() {
            public void operationComplete(ChannelFuture channelFuture) throws Exception {
                OrderedDownstreamThreadPoolExecutor.this.removeChildExecutor(childExecutorKey);
            }
        });
        return childExecutor;
    }
}
