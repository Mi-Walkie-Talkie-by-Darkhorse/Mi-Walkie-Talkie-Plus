package org.jboss.netty.channel.socket.nio;

import java.util.concurrent.Executor;
import org.jboss.netty.util.ThreadNameDeterminer;

public class NioWorkerPool extends AbstractNioWorkerPool<NioWorker> {
    private final ThreadNameDeterminer determiner;

    public NioWorkerPool(Executor executor, int i) {
        this(executor, i, null);
    }

    public NioWorkerPool(Executor executor, int i, ThreadNameDeterminer threadNameDeterminer) {
        super(executor, i, false);
        this.determiner = threadNameDeterminer;
        init();
    }

    /* access modifiers changed from: protected */
    @Deprecated
    public NioWorker createWorker(Executor executor) {
        return new NioWorker(executor, this.determiner);
    }
}
