package org.apache.http.impl.conn;

import java.io.IOException;
import org.apache.http.HttpHost;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.HttpContext;

@Deprecated
public abstract class AbstractPooledConnAdapter extends AbstractClientConnAdapter {
    protected volatile AbstractPoolEntry poolEntry;

    protected AbstractPooledConnAdapter(ClientConnectionManager clientConnectionManager, AbstractPoolEntry abstractPoolEntry) {
        super(null, null);
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public final void assertAttached() {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public void detach() {
        throw new RuntimeException("Stub!");
    }

    public HttpRoute getRoute() {
        throw new RuntimeException("Stub!");
    }

    public void open(HttpRoute httpRoute, HttpContext httpContext, HttpParams httpParams) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void tunnelTarget(boolean z, HttpParams httpParams) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void tunnelProxy(HttpHost httpHost, boolean z, HttpParams httpParams) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void layerProtocol(HttpContext httpContext, HttpParams httpParams) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void close() throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void shutdown() throws IOException {
        throw new RuntimeException("Stub!");
    }

    public Object getState() {
        throw new RuntimeException("Stub!");
    }

    public void setState(Object obj) {
        throw new RuntimeException("Stub!");
    }
}
