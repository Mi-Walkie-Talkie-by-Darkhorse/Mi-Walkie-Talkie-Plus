package org.apache.http.protocol;

@Deprecated
public class SyncBasicHttpContext extends BasicHttpContext {
    public SyncBasicHttpContext(HttpContext httpContext) {
        throw new RuntimeException("Stub!");
    }

    public synchronized Object getAttribute(String str) {
        throw new RuntimeException("Stub!");
    }

    public synchronized void setAttribute(String str, Object obj) {
        throw new RuntimeException("Stub!");
    }

    public synchronized Object removeAttribute(String str) {
        throw new RuntimeException("Stub!");
    }
}
