package org.jboss.netty.channel.socket.nio;

import java.util.concurrent.Executor;

public class NioDatagramWorkerPool extends AbstractNioWorkerPool<NioDatagramWorker> {
    public NioDatagramWorkerPool(Executor executor, int i) {
        super(executor, i);
    }

    /* access modifiers changed from: protected */
    @Deprecated
    public NioDatagramWorker createWorker(Executor executor) {
        return new NioDatagramWorker(executor);
    }
}
