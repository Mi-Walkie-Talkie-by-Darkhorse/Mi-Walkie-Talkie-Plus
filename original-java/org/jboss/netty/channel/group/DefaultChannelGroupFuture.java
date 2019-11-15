package org.jboss.netty.channel.group;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.ChannelFutureListener;
import org.jboss.netty.logging.InternalLogger;
import org.jboss.netty.logging.InternalLoggerFactory;
import org.jboss.netty.util.internal.DeadLockProofWorker;

public class DefaultChannelGroupFuture implements ChannelGroupFuture {
    private static final InternalLogger logger = InternalLoggerFactory.getInstance(DefaultChannelGroupFuture.class);
    private final ChannelFutureListener childListener = new ChannelFutureListener() {
        static final /* synthetic */ boolean $assertionsDisabled = (!DefaultChannelGroupFuture.class.desiredAssertionStatus());

        public void operationComplete(ChannelFuture channelFuture) throws Exception {
            boolean z;
            boolean isSuccess = channelFuture.isSuccess();
            synchronized (DefaultChannelGroupFuture.this) {
                if (isSuccess) {
                    DefaultChannelGroupFuture.this.successCount++;
                } else {
                    DefaultChannelGroupFuture.this.failureCount++;
                }
                z = DefaultChannelGroupFuture.this.successCount + DefaultChannelGroupFuture.this.failureCount == DefaultChannelGroupFuture.this.futures.size();
                if (!$assertionsDisabled && DefaultChannelGroupFuture.this.successCount + DefaultChannelGroupFuture.this.failureCount > DefaultChannelGroupFuture.this.futures.size()) {
                    throw new AssertionError();
                }
            }
            if (z) {
                DefaultChannelGroupFuture.this.setDone();
            }
        }
    };
    private boolean done;
    int failureCount;
    private ChannelGroupFutureListener firstListener;
    final Map<Integer, ChannelFuture> futures;
    private final ChannelGroup group;
    private List<ChannelGroupFutureListener> otherListeners;
    int successCount;
    private int waiters;

    public DefaultChannelGroupFuture(ChannelGroup channelGroup, Collection<ChannelFuture> collection) {
        if (channelGroup == null) {
            throw new NullPointerException("group");
        } else if (collection == null) {
            throw new NullPointerException("futures");
        } else {
            this.group = channelGroup;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (ChannelFuture channelFuture : collection) {
                linkedHashMap.put(channelFuture.getChannel().getId(), channelFuture);
            }
            this.futures = Collections.unmodifiableMap(linkedHashMap);
            for (ChannelFuture addListener : this.futures.values()) {
                addListener.addListener(this.childListener);
            }
            if (this.futures.isEmpty()) {
                setDone();
            }
        }
    }

    DefaultChannelGroupFuture(ChannelGroup channelGroup, Map<Integer, ChannelFuture> map) {
        this.group = channelGroup;
        this.futures = Collections.unmodifiableMap(map);
        for (ChannelFuture addListener : this.futures.values()) {
            addListener.addListener(this.childListener);
        }
        if (this.futures.isEmpty()) {
            setDone();
        }
    }

    public ChannelGroup getGroup() {
        return this.group;
    }

    public ChannelFuture find(Integer num) {
        return (ChannelFuture) this.futures.get(num);
    }

    public ChannelFuture find(Channel channel) {
        return (ChannelFuture) this.futures.get(channel.getId());
    }

    public Iterator<ChannelFuture> iterator() {
        return this.futures.values().iterator();
    }

    public synchronized boolean isDone() {
        return this.done;
    }

    public synchronized boolean isCompleteSuccess() {
        return this.successCount == this.futures.size();
    }

    public synchronized boolean isPartialSuccess() {
        return (this.successCount == 0 || this.successCount == this.futures.size()) ? false : true;
    }

    public synchronized boolean isPartialFailure() {
        return (this.failureCount == 0 || this.failureCount == this.futures.size()) ? false : true;
    }

    public synchronized boolean isCompleteFailure() {
        int size;
        size = this.futures.size();
        return size != 0 && this.failureCount == size;
    }

    public void addListener(ChannelGroupFutureListener channelGroupFutureListener) {
        boolean z = true;
        if (channelGroupFutureListener == null) {
            throw new NullPointerException("listener");
        }
        synchronized (this) {
            if (!this.done) {
                if (this.firstListener == null) {
                    this.firstListener = channelGroupFutureListener;
                    z = false;
                } else {
                    if (this.otherListeners == null) {
                        this.otherListeners = new ArrayList(1);
                    }
                    this.otherListeners.add(channelGroupFutureListener);
                    z = false;
                }
            }
        }
        if (z) {
            notifyListener(channelGroupFutureListener);
        }
    }

    public void removeListener(ChannelGroupFutureListener channelGroupFutureListener) {
        if (channelGroupFutureListener == null) {
            throw new NullPointerException("listener");
        }
        synchronized (this) {
            if (!this.done) {
                if (channelGroupFutureListener == this.firstListener) {
                    if (this.otherListeners == null || this.otherListeners.isEmpty()) {
                        this.firstListener = null;
                    } else {
                        this.firstListener = (ChannelGroupFutureListener) this.otherListeners.remove(0);
                    }
                } else if (this.otherListeners != null) {
                    this.otherListeners.remove(channelGroupFutureListener);
                }
            }
        }
    }

    /* JADX INFO: finally extract failed */
    public ChannelGroupFuture await() throws InterruptedException {
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

    public ChannelGroupFuture awaitUninterruptibly() {
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
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.channel.group.DefaultChannelGroupFuture.await0(long, boolean):boolean");
    }

    private static void checkDeadLock() {
        if (DeadLockProofWorker.PARENT.get() != null) {
            throw new IllegalStateException("await*() in I/O thread causes a dead lock or sudden performance drop. Use addListener() instead or call await*() from a different thread.");
        }
    }

    /* access modifiers changed from: 0000 */
    public boolean setDone() {
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

    private void notifyListeners() {
        if (this.firstListener != null) {
            notifyListener(this.firstListener);
            this.firstListener = null;
            if (this.otherListeners != null) {
                for (ChannelGroupFutureListener notifyListener : this.otherListeners) {
                    notifyListener(notifyListener);
                }
                this.otherListeners = null;
            }
        }
    }

    private void notifyListener(ChannelGroupFutureListener channelGroupFutureListener) {
        try {
            channelGroupFutureListener.operationComplete(this);
        } catch (Throwable th) {
            if (logger.isWarnEnabled()) {
                logger.warn("An exception was thrown by " + ChannelFutureListener.class.getSimpleName() + '.', th);
            }
        }
    }
}
