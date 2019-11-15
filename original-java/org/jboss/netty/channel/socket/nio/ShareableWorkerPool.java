package org.jboss.netty.channel.socket.nio;

import org.jboss.netty.channel.socket.Worker;
import org.jboss.netty.util.ExternalResourceReleasable;

public final class ShareableWorkerPool<E extends Worker> implements WorkerPool<E> {
    private final WorkerPool<E> wrapped;

    public ShareableWorkerPool(WorkerPool<E> workerPool) {
        this.wrapped = workerPool;
    }

    public E nextWorker() {
        return this.wrapped.nextWorker();
    }

    public void rebuildSelectors() {
        this.wrapped.rebuildSelectors();
    }

    public void destroy() {
        this.wrapped.shutdown();
        if (this.wrapped instanceof ExternalResourceReleasable) {
            ((ExternalResourceReleasable) this.wrapped).releaseExternalResources();
        }
    }

    public void shutdown() {
    }
}
