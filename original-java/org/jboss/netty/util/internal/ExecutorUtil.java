package org.jboss.netty.util.internal;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;

public final class ExecutorUtil {
    public static void shutdownNow(Executor executor) {
        if (executor instanceof ExecutorService) {
            ExecutorService executorService = (ExecutorService) executor;
            try {
                executorService.shutdownNow();
            } catch (SecurityException e) {
                try {
                    executorService.shutdown();
                } catch (NullPointerException | SecurityException e2) {
                }
            } catch (NullPointerException e3) {
            }
        }
    }

    public static boolean isShutdown(Executor executor) {
        if (!(executor instanceof ExecutorService) || !((ExecutorService) executor).isShutdown()) {
            return false;
        }
        return true;
    }

    public static void terminate(Executor... executorArr) {
        terminate(DeadLockProofWorker.PARENT, executorArr);
    }

    public static void terminate(ThreadLocal<Executor> threadLocal, Executor... executorArr) {
        boolean z = false;
        if (executorArr == null) {
            throw new NullPointerException("executors");
        }
        Executor[] executorArr2 = new Executor[executorArr.length];
        for (int i = 0; i < executorArr.length; i++) {
            if (executorArr[i] == null) {
                throw new NullPointerException("executors[" + i + ']');
            }
            executorArr2[i] = executorArr[i];
        }
        Executor executor = (Executor) threadLocal.get();
        if (executor != null) {
            for (Executor executor2 : executorArr2) {
                if (executor2 == executor) {
                    throw new IllegalStateException("An Executor cannot be shut down from the thread acquired from itself.  Please make sure you are not calling releaseExternalResources() from an I/O worker thread.");
                }
            }
        }
        for (Executor executor3 : executorArr2) {
            if (executor3 instanceof ExecutorService) {
                ExecutorService executorService = (ExecutorService) executor3;
                while (true) {
                    shutdownNow(executorService);
                    try {
                        if (executorService.awaitTermination(100, TimeUnit.MILLISECONDS)) {
                            break;
                        }
                    } catch (InterruptedException e) {
                        z = true;
                    }
                }
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
    }

    private ExecutorUtil() {
    }
}
