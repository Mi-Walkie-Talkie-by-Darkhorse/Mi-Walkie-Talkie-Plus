package org.jboss.netty.util.internal;

import java.util.concurrent.Executor;

public class UnterminatableExecutor implements Executor {
    private final Executor executor;

    public UnterminatableExecutor(Executor executor2) {
        if (executor2 == null) {
            throw new NullPointerException("executor");
        }
        this.executor = executor2;
    }

    public void execute(Runnable runnable) {
        this.executor.execute(runnable);
    }
}
