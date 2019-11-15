package org.jboss.netty.util.internal;

import java.util.concurrent.Executor;

public final class DeadLockProofWorker {
    public static final ThreadLocal<Executor> PARENT = new ThreadLocal<>();

    public static void start(final Executor executor, final Runnable runnable) {
        if (executor == null) {
            throw new NullPointerException("parent");
        } else if (runnable == null) {
            throw new NullPointerException("runnable");
        } else {
            executor.execute(new Runnable() {
                public void run() {
                    DeadLockProofWorker.PARENT.set(executor);
                    try {
                        runnable.run();
                    } finally {
                        DeadLockProofWorker.PARENT.remove();
                    }
                }
            });
        }
    }

    private DeadLockProofWorker() {
    }
}
