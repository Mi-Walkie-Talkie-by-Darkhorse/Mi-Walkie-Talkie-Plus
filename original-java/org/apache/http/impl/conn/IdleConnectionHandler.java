package org.apache.http.impl.conn;

import java.util.concurrent.TimeUnit;
import org.apache.http.HttpConnection;

@Deprecated
public class IdleConnectionHandler {
    public IdleConnectionHandler() {
        throw new RuntimeException("Stub!");
    }

    public void add(HttpConnection httpConnection, long j, TimeUnit timeUnit) {
        throw new RuntimeException("Stub!");
    }

    public boolean remove(HttpConnection httpConnection) {
        throw new RuntimeException("Stub!");
    }

    public void removeAll() {
        throw new RuntimeException("Stub!");
    }

    public void closeIdleConnections(long j) {
        throw new RuntimeException("Stub!");
    }

    public void closeExpiredConnections() {
        throw new RuntimeException("Stub!");
    }
}
