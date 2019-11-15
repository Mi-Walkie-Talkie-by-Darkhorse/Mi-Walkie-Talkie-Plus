package org.apache.http.impl.conn.tsccm;

import java.util.concurrent.TimeUnit;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.ClientConnectionOperator;
import org.apache.http.conn.ClientConnectionRequest;
import org.apache.http.conn.ManagedClientConnection;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.params.HttpParams;

@Deprecated
public class ThreadSafeClientConnManager implements ClientConnectionManager {
    protected ClientConnectionOperator connOperator;
    protected final AbstractConnPool connectionPool;
    protected SchemeRegistry schemeRegistry;

    public ThreadSafeClientConnManager(HttpParams httpParams, SchemeRegistry schemeRegistry2) {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public void finalize() throws Throwable {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public AbstractConnPool createConnectionPool(HttpParams httpParams) {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public ClientConnectionOperator createConnectionOperator(SchemeRegistry schemeRegistry2) {
        throw new RuntimeException("Stub!");
    }

    public SchemeRegistry getSchemeRegistry() {
        throw new RuntimeException("Stub!");
    }

    public ClientConnectionRequest requestConnection(HttpRoute httpRoute, Object obj) {
        throw new RuntimeException("Stub!");
    }

    public void releaseConnection(ManagedClientConnection managedClientConnection, long j, TimeUnit timeUnit) {
        throw new RuntimeException("Stub!");
    }

    public void shutdown() {
        throw new RuntimeException("Stub!");
    }

    public int getConnectionsInPool(HttpRoute httpRoute) {
        throw new RuntimeException("Stub!");
    }

    public int getConnectionsInPool() {
        throw new RuntimeException("Stub!");
    }

    public void closeIdleConnections(long j, TimeUnit timeUnit) {
        throw new RuntimeException("Stub!");
    }

    public void closeExpiredConnections() {
        throw new RuntimeException("Stub!");
    }
}
