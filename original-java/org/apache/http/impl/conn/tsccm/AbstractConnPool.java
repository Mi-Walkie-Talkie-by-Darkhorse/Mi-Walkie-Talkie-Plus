package org.apache.http.impl.conn.tsccm;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;
import org.apache.http.conn.ConnectionPoolTimeoutException;
import org.apache.http.conn.OperatedClientConnection;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.impl.conn.IdleConnectionHandler;

@Deprecated
public abstract class AbstractConnPool implements RefQueueHandler {
    protected IdleConnectionHandler idleConnHandler;
    protected volatile boolean isShutDown;
    protected Set<BasicPoolEntryRef> issuedConnections;
    protected int numConnections;
    protected final Lock poolLock;
    protected ReferenceQueue<Object> refQueue;

    public abstract void deleteClosedConnections();

    public abstract void freeEntry(BasicPoolEntry basicPoolEntry, boolean z, long j, TimeUnit timeUnit);

    /* access modifiers changed from: protected */
    public abstract void handleLostEntry(HttpRoute httpRoute);

    public abstract PoolEntryRequest requestPoolEntry(HttpRoute httpRoute, Object obj);

    protected AbstractConnPool() {
        throw new RuntimeException("Stub!");
    }

    public void enableConnectionGC() throws IllegalStateException {
        throw new RuntimeException("Stub!");
    }

    public final BasicPoolEntry getEntry(HttpRoute httpRoute, Object obj, long j, TimeUnit timeUnit) throws ConnectionPoolTimeoutException, InterruptedException {
        throw new RuntimeException("Stub!");
    }

    public void handleReference(Reference reference) {
        throw new RuntimeException("Stub!");
    }

    public void closeIdleConnections(long j, TimeUnit timeUnit) {
        throw new RuntimeException("Stub!");
    }

    public void closeExpiredConnections() {
        throw new RuntimeException("Stub!");
    }

    public void shutdown() {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public void closeConnection(OperatedClientConnection operatedClientConnection) {
        throw new RuntimeException("Stub!");
    }
}
