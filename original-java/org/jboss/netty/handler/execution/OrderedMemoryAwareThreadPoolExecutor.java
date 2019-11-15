package org.jboss.netty.handler.execution;

import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.Executor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelEvent;
import org.jboss.netty.channel.ChannelState;
import org.jboss.netty.channel.ChannelStateEvent;
import org.jboss.netty.util.ObjectSizeEstimator;
import org.jboss.netty.util.internal.ConcurrentIdentityWeakKeyHashMap;

public class OrderedMemoryAwareThreadPoolExecutor extends MemoryAwareThreadPoolExecutor {
    protected final ConcurrentMap<Object, Executor> childExecutors = newChildExecutorMap();

    protected final class ChildExecutor implements Runnable, Executor {
        private final AtomicBoolean isRunning = new AtomicBoolean();
        private final Queue<Runnable> tasks = new ConcurrentLinkedQueue();

        protected ChildExecutor() {
        }

        public void execute(Runnable runnable) {
            this.tasks.add(runnable);
            if (!this.isRunning.get()) {
                OrderedMemoryAwareThreadPoolExecutor.this.doUnorderedExecute(this);
            }
        }

        /* JADX INFO: finally extract failed */
        public void run() {
            boolean z = true;
            if (this.isRunning.compareAndSet(false, true)) {
                try {
                    Thread currentThread = Thread.currentThread();
                    while (true) {
                        Runnable runnable = (Runnable) this.tasks.poll();
                        if (runnable == null) {
                            break;
                        }
                        OrderedMemoryAwareThreadPoolExecutor.this.beforeExecute(currentThread, runnable);
                        try {
                            runnable.run();
                            try {
                                OrderedMemoryAwareThreadPoolExecutor.this.onAfterExecute(runnable, null);
                            } catch (RuntimeException e) {
                                e = e;
                            }
                        } catch (RuntimeException e2) {
                            e = e2;
                            z = false;
                            if (!z) {
                                OrderedMemoryAwareThreadPoolExecutor.this.onAfterExecute(runnable, e);
                            }
                            throw e;
                        }
                    }
                    this.isRunning.set(false);
                    if (!this.isRunning.get() && this.tasks.peek() != null) {
                        OrderedMemoryAwareThreadPoolExecutor.this.doUnorderedExecute(this);
                    }
                } catch (Throwable th) {
                    this.isRunning.set(false);
                    throw th;
                }
            }
        }
    }

    public OrderedMemoryAwareThreadPoolExecutor(int i, long j, long j2) {
        super(i, j, j2);
    }

    public OrderedMemoryAwareThreadPoolExecutor(int i, long j, long j2, long j3, TimeUnit timeUnit) {
        super(i, j, j2, j3, timeUnit);
    }

    public OrderedMemoryAwareThreadPoolExecutor(int i, long j, long j2, long j3, TimeUnit timeUnit, ThreadFactory threadFactory) {
        super(i, j, j2, j3, timeUnit, threadFactory);
    }

    public OrderedMemoryAwareThreadPoolExecutor(int i, long j, long j2, long j3, TimeUnit timeUnit, ObjectSizeEstimator objectSizeEstimator, ThreadFactory threadFactory) {
        super(i, j, j2, j3, timeUnit, objectSizeEstimator, threadFactory);
    }

    /* access modifiers changed from: protected */
    public ConcurrentMap<Object, Executor> newChildExecutorMap() {
        return new ConcurrentIdentityWeakKeyHashMap();
    }

    /* access modifiers changed from: protected */
    public Object getChildExecutorKey(ChannelEvent channelEvent) {
        return channelEvent.getChannel();
    }

    /* access modifiers changed from: protected */
    public Set<Object> getChildExecutorKeySet() {
        return this.childExecutors.keySet();
    }

    /* access modifiers changed from: protected */
    public boolean removeChildExecutor(Object obj) {
        return this.childExecutors.remove(obj) != null;
    }

    /* access modifiers changed from: protected */
    public void doExecute(Runnable runnable) {
        if (!(runnable instanceof ChannelEventRunnable)) {
            doUnorderedExecute(runnable);
        } else {
            getChildExecutor(((ChannelEventRunnable) runnable).getEvent()).execute(runnable);
        }
    }

    /* access modifiers changed from: protected */
    public Executor getChildExecutor(ChannelEvent channelEvent) {
        Object childExecutorKey = getChildExecutorKey(channelEvent);
        Executor executor = (Executor) this.childExecutors.get(childExecutorKey);
        if (executor == null) {
            Executor childExecutor = new ChildExecutor();
            executor = (Executor) this.childExecutors.putIfAbsent(childExecutorKey, childExecutor);
            if (executor == null) {
                executor = childExecutor;
            }
        }
        if (channelEvent instanceof ChannelStateEvent) {
            Channel channel = channelEvent.getChannel();
            if (((ChannelStateEvent) channelEvent).getState() == ChannelState.OPEN && !channel.isOpen()) {
                removeChildExecutor(childExecutorKey);
            }
        }
        return executor;
    }

    /* access modifiers changed from: protected */
    public boolean shouldCount(Runnable runnable) {
        if (runnable instanceof ChildExecutor) {
            return false;
        }
        return super.shouldCount(runnable);
    }

    /* access modifiers changed from: 0000 */
    public void onAfterExecute(Runnable runnable, Throwable th) {
        afterExecute(runnable, th);
    }
}
