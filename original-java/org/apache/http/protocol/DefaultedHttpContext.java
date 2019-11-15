package org.apache.http.protocol;

@Deprecated
public final class DefaultedHttpContext implements HttpContext {
    public DefaultedHttpContext(HttpContext httpContext, HttpContext httpContext2) {
        throw new RuntimeException("Stub!");
    }

    public Object getAttribute(String str) {
        throw new RuntimeException("Stub!");
    }

    public Object removeAttribute(String str) {
        throw new RuntimeException("Stub!");
    }

    public void setAttribute(String str, Object obj) {
        throw new RuntimeException("Stub!");
    }

    public HttpContext getDefaults() {
        throw new RuntimeException("Stub!");
    }
}
