package okhttp3;

import java.lang.ref.Reference;
import java.net.Socket;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import okhttp3.internal.Util;
import okhttp3.internal.connection.RealConnection;
import okhttp3.internal.connection.RouteDatabase;
import okhttp3.internal.connection.StreamAllocation;
import okhttp3.internal.connection.StreamAllocation.StreamAllocationReference;
import okhttp3.internal.platform.Platform;

public final class ConnectionPool {
    static final /* synthetic */ boolean $assertionsDisabled = (!ConnectionPool.class.desiredAssertionStatus());
    private static final Executor executor = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60, TimeUnit.SECONDS, new SynchronousQueue(), Util.threadFactory("OkHttp ConnectionPool", true));
    private final Runnable cleanupRunnable;
    boolean cleanupRunning;
    private final Deque<RealConnection> connections;
    private final long keepAliveDurationNs;
    private final int maxIdleConnections;
    final RouteDatabase routeDatabase;

    public ConnectionPool() {
        this(5, 5, TimeUnit.MINUTES);
    }

    public ConnectionPool(int i, long j, TimeUnit timeUnit) {
        this.cleanupRunnable = new Runnable() {
            public void run() {
                while (true) {
                    long cleanup = ConnectionPool.this.cleanup(System.nanoTime());
                    if (cleanup != -1) {
                        if (cleanup > 0) {
                            long j = cleanup / 1000000;
                            long j2 = cleanup - (j * 1000000);
                            synchronized (ConnectionPool.this) {
                                try {
                                    ConnectionPool.this.wait(j, (int) j2);
                                } catch (InterruptedException e) {
                                }
                            }
                        }
                    } else {
                        return;
                    }
                }
            }
        };
        this.connections = new ArrayDeque();
        this.routeDatabase = new RouteDatabase();
        this.maxIdleConnections = i;
        this.keepAliveDurationNs = timeUnit.toNanos(j);
        if (j <= 0) {
            throw new IllegalArgumentException("keepAliveDuration <= 0: " + j);
        }
    }

    public synchronized int idleConnectionCount() {
        int i;
        int i2;
        i = 0;
        for (RealConnection realConnection : this.connections) {
            if (realConnection.allocations.isEmpty()) {
                i2 = i + 1;
            } else {
                i2 = i;
            }
            i = i2;
        }
        return i;
    }

    public synchronized int connectionCount() {
        return this.connections.size();
    }

    /* access modifiers changed from: 0000 */
    @Nullable
    public RealConnection get(Address address, StreamAllocation streamAllocation, Route route) {
        if ($assertionsDisabled || Thread.holdsLock(this)) {
            for (RealConnection realConnection : this.connections) {
                if (realConnection.isEligible(address, route)) {
                    streamAllocation.acquire(realConnection);
                    return realConnection;
                }
            }
            return null;
        }
        throw new AssertionError();
    }

    /* access modifiers changed from: 0000 */
    @Nullable
    public Socket deduplicate(Address address, StreamAllocation streamAllocation) {
        if ($assertionsDisabled || Thread.holdsLock(this)) {
            for (RealConnection realConnection : this.connections) {
                if (realConnection.isEligible(address, null) && realConnection.isMultiplexed() && realConnection != streamAllocation.connection()) {
                    return streamAllocation.releaseAndAcquire(realConnection);
                }
            }
            return null;
        }
        throw new AssertionError();
    }

    /* access modifiers changed from: 0000 */
    public void put(RealConnection realConnection) {
        if ($assertionsDisabled || Thread.holdsLock(this)) {
            if (!this.cleanupRunning) {
                this.cleanupRunning = true;
                executor.execute(this.cleanupRunnable);
            }
            this.connections.add(realConnection);
            return;
        }
        throw new AssertionError();
    }

    /* access modifiers changed from: 0000 */
    public boolean connectionBecameIdle(RealConnection realConnection) {
        if (!$assertionsDisabled && !Thread.holdsLock(this)) {
            throw new AssertionError();
        } else if (realConnection.noNewStreams || this.maxIdleConnections == 0) {
            this.connections.remove(realConnection);
            return true;
        } else {
            notifyAll();
            return false;
        }
    }

    public void evictAll() {
        ArrayList<RealConnection> arrayList = new ArrayList<>();
        synchronized (this) {
            Iterator it = this.connections.iterator();
            while (it.hasNext()) {
                RealConnection realConnection = (RealConnection) it.next();
                if (realConnection.allocations.isEmpty()) {
                    realConnection.noNewStreams = true;
                    arrayList.add(realConnection);
                    it.remove();
                }
            }
        }
        for (RealConnection socket : arrayList) {
            Util.closeQuietly(socket.socket());
        }
    }

    /* access modifiers changed from: 0000 */
    public long cleanup(long j) {
        RealConnection realConnection;
        long j2;
        RealConnection realConnection2 = null;
        long j3 = Long.MIN_VALUE;
        synchronized (this) {
            int i = 0;
            int i2 = 0;
            for (RealConnection realConnection3 : this.connections) {
                if (pruneAndGetAllocationCount(realConnection3, j) > 0) {
                    i2++;
                } else {
                    int i3 = i + 1;
                    long j4 = j - realConnection3.idleAtNanos;
                    if (j4 > j3) {
                        long j5 = j4;
                        realConnection = realConnection3;
                        j2 = j5;
                    } else {
                        realConnection = realConnection2;
                        j2 = j3;
                    }
                    j3 = j2;
                    realConnection2 = realConnection;
                    i = i3;
                }
            }
            if (j3 >= this.keepAliveDurationNs || i > this.maxIdleConnections) {
                this.connections.remove(realConnection2);
                Util.closeQuietly(realConnection2.socket());
                return 0;
            } else if (i > 0) {
                long j6 = this.keepAliveDurationNs - j3;
                return j6;
            } else if (i2 > 0) {
                long j7 = this.keepAliveDurationNs;
                return j7;
            } else {
                this.cleanupRunning = false;
                return -1;
            }
        }
    }

    private int pruneAndGetAllocationCount(RealConnection realConnection, long j) {
        List<Reference<StreamAllocation>> list = realConnection.allocations;
        int i = 0;
        while (i < list.size()) {
            Reference reference = (Reference) list.get(i);
            if (reference.get() != null) {
                i++;
            } else {
                StreamAllocationReference streamAllocationReference = (StreamAllocationReference) reference;
                Platform.get().logCloseableLeak("A connection to " + realConnection.route().address().url() + " was leaked. Did you forget to close a response body?", streamAllocationReference.callStackTrace);
                list.remove(i);
                realConnection.noNewStreams = true;
                if (list.isEmpty()) {
                    realConnection.idleAtNanos = j - this.keepAliveDurationNs;
                    return 0;
                }
            }
        }
        return list.size();
    }
}
