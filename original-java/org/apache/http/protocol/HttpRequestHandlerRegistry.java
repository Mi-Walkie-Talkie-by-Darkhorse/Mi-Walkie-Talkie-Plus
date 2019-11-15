package org.apache.http.protocol;

import java.util.Map;

@Deprecated
public class HttpRequestHandlerRegistry implements HttpRequestHandlerResolver {
    public HttpRequestHandlerRegistry() {
        throw new RuntimeException("Stub!");
    }

    public void register(String str, HttpRequestHandler httpRequestHandler) {
        throw new RuntimeException("Stub!");
    }

    public void unregister(String str) {
        throw new RuntimeException("Stub!");
    }

    public void setHandlers(Map map) {
        throw new RuntimeException("Stub!");
    }

    public HttpRequestHandler lookup(String str) {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    @Deprecated
    public boolean matchUriRequestPattern(String str, String str2) {
        throw new RuntimeException("Stub!");
    }
}
