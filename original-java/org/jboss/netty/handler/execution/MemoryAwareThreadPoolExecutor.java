package org.jboss.netty.handler.execution;

import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelEvent;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.channel.ChannelState;
import org.jboss.netty.channel.ChannelStateEvent;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.channel.WriteCompletionEvent;
import org.jboss.netty.logging.InternalLogger;
import org.jboss.netty.logging.InternalLoggerFactory;
import org.jboss.netty.util.DefaultObjectSizeEstimator;
import org.jboss.netty.util.ObjectSizeEstimator;
import org.jboss.netty.util.internal.ConcurrentIdentityHashMap;
import org.jboss.netty.util.internal.SharedResourceMisuseDetector;

public class MemoryAwareThreadPoolExecutor extends ThreadPoolExecutor {
    private static final InternalLogger logger = InternalLoggerFactory.getInstance(MemoryAwareThreadPoolExecutor.class);
    private static final SharedResourceMisuseDetector misuseDetector = new SharedResourceMisuseDetector(MemoryAwareThreadPoolExecutor.class);
    private final ConcurrentMap<Channel, AtomicLong> channelCounters;
    private volatile boolean notifyOnShutdown;
    private volatile Settings settings;
    private final Limiter totalLimiter;

    private static class Limiter {
        private long counter;
        final long limit;
        private int waiters;

        Limiter(long j) {
            this.limit = j;
        }

        /* JADX INFO: finally extract failed */
        /* access modifiers changed from: 0000 */
        public synchronized void increase(long j) {
            while (this.counter >= this.limit) {
                this.waiters++;
                try {
                    wait();
                    this.waiters--;
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                    this.waiters--;
                } catch (Throwable th) {
                    this.waiters--;
                    throw th;
                }
            }
            this.counter += j;
        }

        /* access modifiers changed from: 0000 */
        public synchronized void decrease(long j) {
            this.counter -= j;
            if (this.counter < this.limit && this.waiters > 0) {
                notifyAll();
            }
        }
    }

    private static final class MemoryAwareRunnable implements Runnable {
        int estimatedSize;
        final Runnable task;

        MemoryAwareRunnable(Runnable runnable) {
            this.task = runnable;
        }

        public void run() {
            this.task.run();
        }
    }

    private static final class NewThreadRunsPolicy implements RejectedExecutionHandler {
        private NewThreadRunsPolicy() {
        }

        public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
            try {
                new Thread(runnable, "Temporary task executor").start();
            } catch (Throwable th) {
                throw new RejectedExecutionException("Failed to start a new thread", th);
            }
        }
    }

    private static final class Settings {
        final long maxChannelMemorySize;
        final ObjectSizeEstimator objectSizeEstimator;

        Settings(ObjectSizeEstimator objectSizeEstimator2, long j) {
            this.objectSizeEstimator = objectSizeEstimator2;
            this.maxChannelMemorySize = j;
        }
    }

    public MemoryAwareThreadPoolExecutor(int i, long j, long j2) {
        this(i, j, j2, 30, TimeUnit.SECONDS);
    }

    public MemoryAwareThreadPoolExecutor(int i, long j, long j2, long j3, TimeUnit timeUnit) {
        this(i, j, j2, j3, timeUnit, Executors.defaultThreadFactory());
    }

    public MemoryAwareThreadPoolExecutor(int i, long j, long j2, long j3, TimeUnit timeUnit, ThreadFactory threadFactory) {
        this(i, j, j2, j3, timeUnit, new DefaultObjectSizeEstimator(), threadFactory);
    }

    public MemoryAwareThreadPoolExecutor(int i, long j, long j2, long j3, TimeUnit timeUnit, ObjectSizeEstimator objectSizeEstimator, ThreadFactory threadFactory) {
        super(i, i, j3, timeUnit, new LinkedBlockingQueue(), threadFactory, new NewThreadRunsPolicy());
        this.channelCounters = new ConcurrentIdentityHashMap();
        if (objectSizeEstimator == null) {
            throw new NullPointerException("objectSizeEstimator");
        } else if (j < 0) {
            throw new IllegalArgumentException("maxChannelMemorySize: " + j);
        } else if (j2 < 0) {
            throw new IllegalArgumentException("maxTotalMemorySize: " + j2);
        } else {
            try {
                getClass().getMethod("allowCoreThreadTimeOut", new Class[]{Boolean.TYPE}).invoke(this, new Object[]{Boolean.TRUE});
            } catch (Throwable th) {
                logger.debug("ThreadPoolExecutor.allowCoreThreadTimeOut() is not supported in this platform.");
            }
            this.settings = new Settings(objectSizeEstimator, j);
            if (j2 == 0) {
                this.totalLimiter = null;
            } else {
                this.totalLimiter = new Limiter(j2);
            }
            misuseDetector.increase();
        }
    }

    /* access modifiers changed from: protected */
    public void terminated() {
        super.terminated();
        misuseDetector.decrease();
    }

    public List<Runnable> shutdownNow() {
        return shutdownNow(this.notifyOnShutdown);
    }

    public List<Runnable> shutdownNow(boolean z) {
        Set set;
        Set<Channel> set2 = null;
        if (!z) {
            return super.shutdownNow();
        }
        List<Runnable> shutdownNow = super.shutdownNow();
        Throwable th = null;
        for (Runnable runnable : shutdownNow) {
            if (runnable instanceof ChannelEventRunnable) {
                if (th == null) {
                    th = new IOException("Unable to process queued event");
                }
                ChannelEvent event = ((ChannelEventRunnable) runnable).getEvent();
                event.getFuture().setFailure(th);
                if (set2 == null) {
                    set = new HashSet();
                } else {
                    set = set2;
                }
                set.add(event.getChannel());
            } else {
                set = set2;
            }
            th = th;
            set2 = set;
        }
        if (set2 != null) {
            for (Channel fireExceptionCaughtLater : set2) {
                Channels.fireExceptionCaughtLater(fireExceptionCaughtLater, th);
            }
        }
        return shutdownNow;
    }

    public ObjectSizeEstimator getObjectSizeEstimator() {
        return this.settings.objectSizeEstimator;
    }

    public void setObjectSizeEstimator(ObjectSizeEstimator objectSizeEstimator) {
        if (objectSizeEstimator == null) {
            throw new NullPointerException("objectSizeEstimator");
        }
        this.settings = new Settings(objectSizeEstimator, this.settings.maxChannelMemorySize);
    }

    public long getMaxChannelMemorySize() {
        return this.settings.maxChannelMemorySize;
    }

    public void setMaxChannelMemorySize(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("maxChannelMemorySize: " + j);
        } else if (getTaskCount() > 0) {
            throw new IllegalStateException("can't be changed after a task is executed");
        } else {
            this.settings = new Settings(this.settings.objectSizeEstimator, j);
        }
    }

    public long getMaxTotalMemorySize() {
        if (this.totalLimiter == null) {
            return 0;
        }
        return this.totalLimiter.limit;
    }

    @Deprecated
    public void setMaxTotalMemorySize(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("maxTotalMemorySize: " + j);
        } else if (getTaskCount() > 0) {
            throw new IllegalStateException("can't be changed after a task is executed");
        }
    }

    public void setNotifyChannelFuturesOnShutdown(boolean z) {
        this.notifyOnShutdown = z;
    }

    public boolean getNotifyChannelFuturesOnShutdown() {
        return this.notifyOnShutdown;
    }

    public void execute(Runnable runnable) {
        if (runnable instanceof ChannelDownstreamEventRunnable) {
            throw new RejectedExecutionException("command must be enclosed with an upstream event.");
        }
        if (!(runnable instanceof ChannelEventRunnable)) {
            runnable = new MemoryAwareRunnable(runnable);
        }
        increaseCounter(runnable);
        doExecute(runnable);
    }

    /* access modifiers changed from: protected */
    public void doExecute(Runnable runnable) {
        doUnorderedExecute(runnable);
    }

    /* access modifiers changed from: protected */
    public final void doUnorderedExecute(Runnable runnable) {
        super.execute(runnable);
    }

    public boolean remove(Runnable runnable) {
        boolean remove = super.remove(runnable);
        if (remove) {
            decreaseCounter(runnable);
        }
        return remove;
    }

    /* access modifiers changed from: protected */
    public void beforeExecute(Thread thread, Runnable runnable) {
        super.beforeExecute(thread, runnable);
        decreaseCounter(runnable);
    }

    /* access modifiers changed from: protected */
    public void increaseCounter(Runnable runnable) {
        if (shouldCount(runnable)) {
            Settings settings2 = this.settings;
            long j = settings2.maxChannelMemorySize;
            int estimateSize = settings2.objectSizeEstimator.estimateSize(runnable);
            if (runnable instanceof ChannelEventRunnable) {
                ChannelEventRunnable channelEventRunnable = (ChannelEventRunnable) runnable;
                channelEventRunnable.estimatedSize = estimateSize;
                Channel channel = channelEventRunnable.getEvent().getChannel();
                long addAndGet = getChannelCounter(channel).addAndGet((long) estimateSize);
                if (j != 0 && addAndGet >= j && channel.isOpen() && channel.isReadable()) {
                    ChannelHandlerContext context = channelEventRunnable.getContext();
                    if (context.getHandler() instanceof ExecutionHandler) {
                        context.setAttachment(Boolean.TRUE);
                    }
                    channel.setReadable(false);
                }
            } else {
                ((MemoryAwareRunnable) runnable).estimatedSize = estimateSize;
            }
            if (this.totalLimiter != null) {
                this.totalLimiter.increase((long) estimateSize);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void decreaseCounter(Runnable runnable) {
        int i;
        if (shouldCount(runnable)) {
            long j = this.settings.maxChannelMemorySize;
            if (runnable instanceof ChannelEventRunnable) {
                i = ((ChannelEventRunnable) runnable).estimatedSize;
            } else {
                i = ((MemoryAwareRunnable) runnable).estimatedSize;
            }
            if (this.totalLimiter != null) {
                this.totalLimiter.decrease((long) i);
            }
            if (runnable instanceof ChannelEventRunnable) {
                ChannelEventRunnable channelEventRunnable = (ChannelEventRunnable) runnable;
                Channel channel = channelEventRunnable.getEvent().getChannel();
                long addAndGet = getChannelCounter(channel).addAndGet((long) (-i));
                if (j != 0 && addAndGet < j && channel.isOpen() && !channel.isReadable()) {
                    ChannelHandlerContext context = channelEventRunnable.getContext();
                    if (!(context.getHandler() instanceof ExecutionHandler)) {
                        channel.setReadable(true);
                    } else if (context.getAttachment() != null) {
                        context.setAttachment(null);
                        channel.setReadable(true);
                    }
                }
            }
        }
    }

    private AtomicLong getChannelCounter(Channel channel) {
        AtomicLong atomicLong = (AtomicLong) this.channelCounters.get(channel);
        if (atomicLong == null) {
            AtomicLong atomicLong2 = new AtomicLong();
            atomicLong = (AtomicLong) this.channelCounters.putIfAbsent(channel, atomicLong2);
            if (atomicLong == null) {
                atomicLong = atomicLong2;
            }
        }
        if (!channel.isOpen()) {
            this.channelCounters.remove(channel);
        }
        return atomicLong;
    }

    /* access modifiers changed from: protected */
    public boolean shouldCount(Runnable runnable) {
        if (runnable instanceof ChannelUpstreamEventRunnable) {
            ChannelEvent event = ((ChannelUpstreamEventRunnable) runnable).getEvent();
            if (event instanceof WriteCompletionEvent) {
                return false;
            }
            if ((event instanceof ChannelStateEvent) && ((ChannelStateEvent) event).getState() == ChannelState.INTEREST_OPS) {
                return false;
            }
        }
        return true;
    }
}
