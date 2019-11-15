package org.jboss.netty.util;

import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Set;
import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;

public class VirtualExecutorService extends AbstractExecutorService {
    final Set<Thread> activeThreads = new MapBackedSet(new IdentityHashMap());
    private final Executor e;
    private final ExecutorService s;
    volatile boolean shutdown;
    final Object startStopLock = new Object();

    private class ChildExecutorRunnable implements Runnable {
        static final /* synthetic */ boolean $assertionsDisabled = (!VirtualExecutorService.class.desiredAssertionStatus());
        private final Runnable runnable;

        ChildExecutorRunnable(Runnable runnable2) {
            this.runnable = runnable2;
        }

        public void run() {
            Thread currentThread = Thread.currentThread();
            synchronized (VirtualExecutorService.this.startStopLock) {
                VirtualExecutorService.this.activeThreads.add(currentThread);
            }
            try {
                this.runnable.run();
                synchronized (VirtualExecutorService.this.startStopLock) {
                    boolean remove = VirtualExecutorService.this.activeThreads.remove(currentThread);
                    if (!$assertionsDisabled && !remove) {
                        throw new AssertionError();
                    } else if (VirtualExecutorService.this.isTerminated()) {
                        VirtualExecutorService.this.startStopLock.notifyAll();
                    }
                }
            } catch (Throwable th) {
                synchronized (VirtualExecutorService.this.startStopLock) {
                    boolean remove2 = VirtualExecutorService.this.activeThreads.remove(currentThread);
                    if ($assertionsDisabled || remove2) {
                        if (VirtualExecutorService.this.isTerminated()) {
                            VirtualExecutorService.this.startStopLock.notifyAll();
                        }
                        throw th;
                    }
                    throw new AssertionError();
                }
            }
        }
    }

    public VirtualExecutorService(Executor executor) {
        if (executor == null) {
            throw new NullPointerException("parent");
        } else if (executor instanceof ExecutorService) {
            this.e = null;
            this.s = (ExecutorService) executor;
        } else {
            this.e = executor;
            this.s = null;
        }
    }

    public boolean isShutdown() {
        boolean z;
        synchronized (this.startStopLock) {
            z = this.shutdown;
        }
        return z;
    }

    public boolean isTerminated() {
        boolean z;
        synchronized (this.startStopLock) {
            z = this.shutdown && this.activeThreads.isEmpty();
        }
        return z;
    }

    public void shutdown() {
        synchronized (this.startStopLock) {
            if (!this.shutdown) {
                this.shutdown = true;
            }
        }
    }

    public List<Runnable> shutdownNow() {
        synchronized (this.startStopLock) {
            if (!isTerminated()) {
                shutdown();
                for (Thread interrupt : this.activeThreads) {
                    interrupt.interrupt();
                }
            }
        }
        return Collections.emptyList();
    }

    public boolean awaitTermination(long j, TimeUnit timeUnit) throws InterruptedException {
        boolean isTerminated;
        synchronized (this.startStopLock) {
            if (!isTerminated()) {
                this.startStopLock.wait(TimeUnit.MILLISECONDS.convert(j, timeUnit));
            }
            isTerminated = isTerminated();
        }
        return isTerminated;
    }

    public void execute(Runnable runnable) {
        if (runnable == null) {
            throw new NullPointerException("command");
        } else if (this.shutdown) {
            throw new RejectedExecutionException();
        } else if (this.s != null) {
            this.s.execute(new ChildExecutorRunnable(runnable));
        } else {
            this.e.execute(new ChildExecutorRunnable(runnable));
        }
    }
}
