package org.apache.http.impl.conn;

import java.io.IOException;
import java.util.concurrent.TimeUnit;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.ClientConnectionOperator;
import org.apache.http.conn.ClientConnectionRequest;
import org.apache.http.conn.ManagedClientConnection;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.params.HttpParams;

@Deprecated
public class SingleClientConnManager implements ClientConnectionManager {
    public static final String MISUSE_MESSAGE = "Invalid use of SingleClientConnManager: connection still allocated.\nMake sure to release the connection before allocating another one.";
    protected boolean alwaysShutDown;
    protected ClientConnectionOperator connOperator;
    protected long connectionExpiresTime;
    protected volatile boolean isShutDown;
    protected long lastReleaseTime;
    protected ConnAdapter managedConn;
    protected SchemeRegistry schemeRegistry;
    protected PoolEntry uniquePoolEntry;

    protected class ConnAdapter extends AbstractPooledConnAdapter {
        protected ConnAdapter(PoolEntry poolEntry, HttpRoute httpRoute) {
            super(null, null);
            throw new RuntimeException("Stub!");
        }
    }

    protected class PoolEntry extends AbstractPoolEntry {
        protected PoolEntry() {
            super(null, null);
            throw new RuntimeException("Stub!");
        }

        /* access modifiers changed from: protected */
        public void close() throws IOException {
            throw new RuntimeException("Stub!");
        }

        /* access modifiers changed from: protected */
        public void shutdown() throws IOException {
            throw new RuntimeException("Stub!");
        }
    }

    public SingleClientConnManager(HttpParams httpParams, SchemeRegistry schemeRegistry2) {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public void finalize() throws Throwable {
        throw new RuntimeException("Stub!");
    }

    public SchemeRegistry getSchemeRegistry() {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public ClientConnectionOperator createConnectionOperator(SchemeRegistry schemeRegistry2) {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public final void assertStillUp() throws IllegalStateException {
        throw new RuntimeException("Stub!");
    }

    public final ClientConnectionRequest requestConnection(HttpRoute httpRoute, Object obj) {
        throw new RuntimeException("Stub!");
    }

    public ManagedClientConnection getConnection(HttpRoute httpRoute, Object obj) {
        throw new RuntimeException("Stub!");
    }

    public void releaseConnection(ManagedClientConnection managedClientConnection, long j, TimeUnit timeUnit) {
        throw new RuntimeException("Stub!");
    }

    public void closeExpiredConnections() {
        throw new RuntimeException("Stub!");
    }

    public void closeIdleConnections(long j, TimeUnit timeUnit) {
        throw new RuntimeException("Stub!");
    }

    public void shutdown() {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public void revokeConnection() {
        throw new RuntimeException("Stub!");
    }
}
