package org.jboss.netty.channel;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.jboss.netty.logging.InternalLogger;
import org.jboss.netty.logging.InternalLoggerFactory;
import org.jboss.netty.util.internal.DeadLockProofWorker;

public class DefaultChannelFuture implements ChannelFuture {
    private static final Throwable CANCELLED = new Throwable();
    private static boolean disabledDeadLockCheckerOnce;
    private static final InternalLogger logger = InternalLoggerFactory.getInstance(DefaultChannelFuture.class);
    private static volatile boolean useDeadLockChecker = true;
    private final boolean cancellable;
    private Throwable cause;
    private final Channel channel;
    private boolean done;
    private ChannelFutureListener firstListener;
    private List<ChannelFutureListener> otherListeners;
    private List<ChannelFutureProgressListener> progressListeners;
    private int waiters;

    public static boolean isUseDeadLockChecker() {
        return useDeadLockChecker;
    }

    public static void setUseDeadLockChecker(boolean z) {
        if (!z && !disabledDeadLockCheckerOnce) {
            disabledDeadLockCheckerOnce = true;
            if (logger.isDebugEnabled()) {
                logger.debug("The dead lock checker in " + DefaultChannelFuture.class.getSimpleName() + " has been disabled as requested at your own risk.");
            }
        }
        useDeadLockChecker = z;
    }

    public DefaultChannelFuture(Channel channel2, boolean z) {
        this.channel = channel2;
        this.cancellable = z;
    }

    public Channel getChannel() {
        return this.channel;
    }

    public synchronized boolean isDone() {
        return this.done;
    }

    public synchronized boolean isSuccess() {
        return this.done && this.cause == null;
    }

    public synchronized Throwable getCause() {
        Throwable th;
        if (this.cause != CANCELLED) {
            th = this.cause;
        } else {
            th = null;
        }
        return th;
    }

    public synchronized boolean isCancelled() {
        return this.cause == CANCELLED;
    }

    public void addListener(ChannelFutureListener channelFutureListener) {
        boolean z = true;
        if (channelFutureListener == null) {
            throw new NullPointerException("listener");
        }
        synchronized (this) {
            if (!this.done) {
                if (this.firstListener == null) {
                    this.firstListener = channelFutureListener;
                } else {
                    if (this.otherListeners == null) {
                        this.otherListeners = new ArrayList(1);
                    }
                    this.otherListeners.add(channelFutureListener);
                }
                if (channelFutureListener instanceof ChannelFutureProgressListener) {
                    if (this.progressListeners == null) {
                        this.progressListeners = new ArrayList(1);
                    }
                    this.progressListeners.add((ChannelFutureProgressListener) channelFutureListener);
                }
                z = false;
            }
        }
        if (z) {
            notifyListener(channelFutureListener);
        }
    }

    public void removeListener(ChannelFutureListener channelFutureListener) {
        if (channelFutureListener == null) {
            throw new NullPointerException("listener");
        }
        synchronized (this) {
            if (!this.done) {
                if (channelFutureListener == this.firstListener) {
                    if (this.otherListeners == null || this.otherListeners.isEmpty()) {
                        this.firstListener = null;
                    } else {
                        this.firstListener = (ChannelFutureListener) this.otherListeners.remove(0);
                    }
                } else if (this.otherListeners != null) {
                    this.otherListeners.remove(channelFutureListener);
                }
                if (channelFutureListener instanceof ChannelFutureProgressListener) {
                    this.progressListeners.remove(channelFutureListener);
                }
            }
        }
    }

    @Deprecated
    public ChannelFuture rethrowIfFailed() throws Exception {
        if (isDone()) {
            Throwable cause2 = getCause();
            if (cause2 != null) {
                if (cause2 instanceof Exception) {
                    throw ((Exception) cause2);
                } else if (cause2 instanceof Error) {
                    throw ((Error) cause2);
                } else {
                    throw new RuntimeException(cause2);
                }
            }
        }
        return this;
    }

    public ChannelFuture sync() throws InterruptedException {
        await();
        rethrowIfFailed0();
        return this;
    }

    public ChannelFuture syncUninterruptibly() {
        awaitUninterruptibly();
        rethrowIfFailed0();
        return this;
    }

    private void rethrowIfFailed0() {
        Throwable cause2 = getCause();
        if (cause2 != null) {
            if (cause2 instanceof RuntimeException) {
                throw ((RuntimeException) cause2);
            } else if (cause2 instanceof Error) {
                throw ((Error) cause2);
            } else {
                throw new ChannelException(cause2);
            }
        }
    }

    /* JADX INFO: finally extract failed */
    public ChannelFuture await() throws InterruptedException {
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        synchronized (this) {
            while (!this.done) {
                checkDeadLock();
                this.waiters++;
                try {
                    wait();
                    this.waiters--;
                } catch (Throwable th) {
                    this.waiters--;
                    throw th;
                }
            }
        }
        return this;
    }

    public boolean await(long j, TimeUnit timeUnit) throws InterruptedException {
        return await0(timeUnit.toNanos(j), true);
    }

    public boolean await(long j) throws InterruptedException {
        return await0(TimeUnit.MILLISECONDS.toNanos(j), true);
    }

    public ChannelFuture awaitUninterruptibly() {
        boolean z = false;
        synchronized (this) {
            while (!this.done) {
                checkDeadLock();
                this.waiters++;
                try {
                    wait();
                    this.waiters--;
                } catch (InterruptedException e) {
                    z = true;
                    this.waiters--;
                } catch (Throwable th) {
                    this.waiters--;
                    throw th;
                }
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return this;
    }

    public boolean awaitUninterruptibly(long j, TimeUnit timeUnit) {
        try {
            return await0(timeUnit.toNanos(j), false);
        } catch (InterruptedException e) {
            throw new InternalError();
        }
    }

    public boolean awaitUninterruptibly(long j) {
        try {
            return await0(TimeUnit.MILLISECONDS.toNanos(j), false);
        } catch (InterruptedException e) {
            throw new InternalError();
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:30:0x0048, code lost:
        r0 = true;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:?, code lost:
        r11.waiters--;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:34:0x0050, code lost:
        if (r2 == false) goto L_0x0025;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:35:0x0052, code lost:
        r1 = java.lang.Thread.currentThread();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:60:0x0085, code lost:
        r0 = r11.done;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:62:?, code lost:
        r11.waiters--;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:64:0x008e, code lost:
        if (r2 == false) goto L_0x0025;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:65:0x0090, code lost:
        r1 = java.lang.Thread.currentThread();
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private boolean await0(long r12, boolean r14) throws java.lang.InterruptedException {
        /*
            r11 = this;
            if (r14 == 0) goto L_0x000e
            boolean r0 = java.lang.Thread.interrupted()
            if (r0 == 0) goto L_0x000e
            java.lang.InterruptedException r0 = new java.lang.InterruptedException
            r0.<init>()
            throw r0
        L_0x000e:
            r0 = 0
            int r0 = (r12 > r0 ? 1 : (r12 == r0 ? 0 : -1))
            if (r0 > 0) goto L_0x0026
            r0 = 0
        L_0x0016:
            r2 = 0
            monitor-enter(r11)     // Catch:{ all -> 0x006b }
            boolean r3 = r11.done     // Catch:{ all -> 0x0095 }
            if (r3 != 0) goto L_0x0022
            r4 = 0
            int r3 = (r12 > r4 ? 1 : (r12 == r4 ? 0 : -1))
            if (r3 > 0) goto L_0x002b
        L_0x0022:
            boolean r0 = r11.done     // Catch:{ all -> 0x0095 }
            monitor-exit(r11)     // Catch:{ all -> 0x0095 }
        L_0x0025:
            return r0
        L_0x0026:
            long r0 = java.lang.System.nanoTime()
            goto L_0x0016
        L_0x002b:
            checkDeadLock()     // Catch:{ all -> 0x0095 }
            int r3 = r11.waiters     // Catch:{ all -> 0x0095 }
            int r3 = r3 + 1
            r11.waiters = r3     // Catch:{ all -> 0x0095 }
            r3 = r2
            r4 = r12
        L_0x0036:
            r6 = 1000000(0xf4240, double:4.940656E-318)
            long r6 = r4 / r6
            r8 = 1000000(0xf4240, double:4.940656E-318)
            long r4 = r4 % r8
            int r2 = (int) r4     // Catch:{ InterruptedException -> 0x005a }
            r11.wait(r6, r2)     // Catch:{ InterruptedException -> 0x005a }
            r2 = r3
        L_0x0044:
            boolean r3 = r11.done     // Catch:{ all -> 0x0097 }
            if (r3 == 0) goto L_0x0078
            r0 = 1
            int r1 = r11.waiters     // Catch:{ all -> 0x0095 }
            int r1 = r1 + -1
            r11.waiters = r1     // Catch:{ all -> 0x0095 }
            monitor-exit(r11)     // Catch:{ all -> 0x0095 }
            if (r2 == 0) goto L_0x0025
            java.lang.Thread r1 = java.lang.Thread.currentThread()
        L_0x0056:
            r1.interrupt()
            goto L_0x0025
        L_0x005a:
            r2 = move-exception
            if (r14 == 0) goto L_0x0076
            throw r2     // Catch:{ all -> 0x005e }
        L_0x005e:
            r0 = move-exception
            r1 = r3
        L_0x0060:
            int r2 = r11.waiters     // Catch:{ all -> 0x0067 }
            int r2 = r2 + -1
            r11.waiters = r2     // Catch:{ all -> 0x0067 }
            throw r0     // Catch:{ all -> 0x0067 }
        L_0x0067:
            r0 = move-exception
            r2 = r1
        L_0x0069:
            monitor-exit(r11)     // Catch:{ all -> 0x0095 }
            throw r0     // Catch:{ all -> 0x006b }
        L_0x006b:
            r0 = move-exception
            if (r2 == 0) goto L_0x0075
            java.lang.Thread r1 = java.lang.Thread.currentThread()
            r1.interrupt()
        L_0x0075:
            throw r0
        L_0x0076:
            r2 = 1
            goto L_0x0044
        L_0x0078:
            long r4 = java.lang.System.nanoTime()     // Catch:{ all -> 0x0097 }
            long r4 = r4 - r0
            long r4 = r12 - r4
            r6 = 0
            int r3 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r3 > 0) goto L_0x009a
            boolean r0 = r11.done     // Catch:{ all -> 0x0097 }
            int r1 = r11.waiters     // Catch:{ all -> 0x0095 }
            int r1 = r1 + -1
            r11.waiters = r1     // Catch:{ all -> 0x0095 }
            monitor-exit(r11)     // Catch:{ all -> 0x0095 }
            if (r2 == 0) goto L_0x0025
            java.lang.Thread r1 = java.lang.Thread.currentThread()
            goto L_0x0056
        L_0x0095:
            r0 = move-exception
            goto L_0x0069
        L_0x0097:
            r0 = move-exception
            r1 = r2
            goto L_0x0060
        L_0x009a:
            r3 = r2
            goto L_0x0036
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.channel.DefaultChannelFuture.await0(long, boolean):boolean");
    }

    private static void checkDeadLock() {
        if (isUseDeadLockChecker() && DeadLockProofWorker.PARENT.get() != null) {
            throw new IllegalStateException("await*() in I/O thread causes a dead lock or sudden performance drop. Use addListener() instead or call await*() from a different thread.");
        }
    }

    public boolean setSuccess() {
        boolean z = true;
        synchronized (this) {
            if (this.done) {
                z = false;
            } else {
                this.done = true;
                if (this.waiters > 0) {
                    notifyAll();
                }
                notifyListeners();
            }
        }
        return z;
    }

    public boolean setFailure(Throwable th) {
        boolean z = true;
        synchronized (this) {
            if (this.done) {
                z = false;
            } else {
                this.cause = th;
                this.done = true;
                if (this.waiters > 0) {
                    notifyAll();
                }
                notifyListeners();
            }
        }
        return z;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0020, code lost:
        notifyListeners();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:?, code lost:
        return true;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean cancel() {
        /*
            r3 = this;
            r1 = 1
            r0 = 0
            boolean r2 = r3.cancellable
            if (r2 != 0) goto L_0x0007
        L_0x0006:
            return r0
        L_0x0007:
            monitor-enter(r3)
            boolean r2 = r3.done     // Catch:{ all -> 0x000e }
            if (r2 == 0) goto L_0x0011
            monitor-exit(r3)     // Catch:{ all -> 0x000e }
            goto L_0x0006
        L_0x000e:
            r0 = move-exception
            monitor-exit(r3)     // Catch:{ all -> 0x000e }
            throw r0
        L_0x0011:
            java.lang.Throwable r0 = CANCELLED     // Catch:{ all -> 0x000e }
            r3.cause = r0     // Catch:{ all -> 0x000e }
            r0 = 1
            r3.done = r0     // Catch:{ all -> 0x000e }
            int r0 = r3.waiters     // Catch:{ all -> 0x000e }
            if (r0 <= 0) goto L_0x001f
            r3.notifyAll()     // Catch:{ all -> 0x000e }
        L_0x001f:
            monitor-exit(r3)     // Catch:{ all -> 0x000e }
            r3.notifyListeners()
            r0 = r1
            goto L_0x0006
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.channel.DefaultChannelFuture.cancel():boolean");
    }

    private void notifyListeners() {
        if (this.firstListener != null) {
            notifyListener(this.firstListener);
            this.firstListener = null;
            if (this.otherListeners != null) {
                for (ChannelFutureListener notifyListener : this.otherListeners) {
                    notifyListener(notifyListener);
                }
                this.otherListeners = null;
            }
        }
    }

    private void notifyListener(ChannelFutureListener channelFutureListener) {
        try {
            channelFutureListener.operationComplete(this);
        } catch (Throwable th) {
            if (logger.isWarnEnabled()) {
                logger.warn("An exception was thrown by " + ChannelFutureListener.class.getSimpleName() + '.', th);
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:19:0x0027, code lost:
        r12 = r10.length;
        r11 = 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x002a, code lost:
        if (r11 >= r12) goto L_0x003b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x002c, code lost:
        notifyProgressListener(r10[r11], r14, r16, r18);
        r11 = r11 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:?, code lost:
        return true;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean setProgress(long r14, long r16, long r18) {
        /*
            r13 = this;
            monitor-enter(r13)
            boolean r2 = r13.done     // Catch:{ all -> 0x0015 }
            if (r2 == 0) goto L_0x0008
            r2 = 0
            monitor-exit(r13)     // Catch:{ all -> 0x0015 }
        L_0x0007:
            return r2
        L_0x0008:
            java.util.List<org.jboss.netty.channel.ChannelFutureProgressListener> r2 = r13.progressListeners     // Catch:{ all -> 0x0015 }
            if (r2 == 0) goto L_0x0012
            boolean r3 = r2.isEmpty()     // Catch:{ all -> 0x0015 }
            if (r3 == 0) goto L_0x0018
        L_0x0012:
            r2 = 1
            monitor-exit(r13)     // Catch:{ all -> 0x0015 }
            goto L_0x0007
        L_0x0015:
            r2 = move-exception
            monitor-exit(r13)     // Catch:{ all -> 0x0015 }
            throw r2
        L_0x0018:
            int r3 = r2.size()     // Catch:{ all -> 0x0015 }
            org.jboss.netty.channel.ChannelFutureProgressListener[] r3 = new org.jboss.netty.channel.ChannelFutureProgressListener[r3]     // Catch:{ all -> 0x0015 }
            java.lang.Object[] r2 = r2.toArray(r3)     // Catch:{ all -> 0x0015 }
            r0 = r2
            org.jboss.netty.channel.ChannelFutureProgressListener[] r0 = (org.jboss.netty.channel.ChannelFutureProgressListener[]) r0     // Catch:{ all -> 0x0015 }
            r10 = r0
            monitor-exit(r13)     // Catch:{ all -> 0x0015 }
            int r12 = r10.length
            r2 = 0
            r11 = r2
        L_0x002a:
            if (r11 >= r12) goto L_0x003b
            r3 = r10[r11]
            r2 = r13
            r4 = r14
            r6 = r16
            r8 = r18
            r2.notifyProgressListener(r3, r4, r6, r8)
            int r2 = r11 + 1
            r11 = r2
            goto L_0x002a
        L_0x003b:
            r2 = 1
            goto L_0x0007
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.channel.DefaultChannelFuture.setProgress(long, long, long):boolean");
    }

    private void notifyProgressListener(ChannelFutureProgressListener channelFutureProgressListener, long j, long j2, long j3) {
        try {
            channelFutureProgressListener.operationProgressed(this, j, j2, j3);
        } catch (Throwable th) {
            if (logger.isWarnEnabled()) {
                logger.warn("An exception was thrown by " + ChannelFutureProgressListener.class.getSimpleName() + '.', th);
            }
        }
    }
}
