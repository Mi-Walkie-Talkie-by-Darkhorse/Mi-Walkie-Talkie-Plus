package org.jboss.netty.channel.socket.nio;

import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
import org.jboss.netty.channel.socket.nio.AbstractNioWorker;
import org.jboss.netty.util.ExternalResourceReleasable;
import org.jboss.netty.util.internal.ExecutorUtil;

public abstract class AbstractNioWorkerPool<E extends AbstractNioWorker> implements WorkerPool<E>, ExternalResourceReleasable {
    private volatile boolean initDone;
    private final Executor workerExecutor;
    private final AtomicInteger workerIndex;
    private final AbstractNioWorker[] workers;

    AbstractNioWorkerPool(Executor executor, int i) {
        this(executor, i, true);
    }

    AbstractNioWorkerPool(Executor executor, int i, boolean z) {
        this.workerIndex = new AtomicInteger();
        if (executor == null) {
            throw new NullPointerException("workerExecutor");
        } else if (i <= 0) {
            throw new IllegalArgumentException("workerCount (" + i + ") " + "must be a positive integer.");
        } else {
            this.workers = new AbstractNioWorker[i];
            this.workerExecutor = executor;
            if (z) {
                init();
            }
        }
    }

    /* access modifiers changed from: protected */
    public void init() {
        if (this.initDone) {
            throw new IllegalStateException("Init was done before");
        }
        this.initDone = true;
        for (int i = 0; i < this.workers.length; i++) {
            this.workers[i] = newWorker(this.workerExecutor);
        }
    }

    /* access modifiers changed from: protected */
    @Deprecated
    public E createWorker(Executor executor) {
        throw new IllegalStateException("This will be removed. Override this and the newWorker(..) method!");
    }

    /* access modifiers changed from: protected */
    public E newWorker(Executor executor) {
        return createWorker(executor);
    }

    public E nextWorker() {
        return this.workers[Math.abs(this.workerIndex.getAndIncrement() % this.workers.length)];
    }

    public void rebuildSelectors() {
        for (AbstractNioWorker rebuildSelector : this.workers) {
            rebuildSelector.rebuildSelector();
        }
    }

    public void releaseExternalResources() {
        shutdown();
        ExecutorUtil.shutdownNow(this.workerExecutor);
    }

    public void shutdown() {
        for (AbstractNioWorker shutdown : this.workers) {
            shutdown.shutdown();
        }
    }
}
