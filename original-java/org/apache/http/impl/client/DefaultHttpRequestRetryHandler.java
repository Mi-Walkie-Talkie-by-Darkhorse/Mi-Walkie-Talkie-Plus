package org.apache.http.impl.client;

import java.io.IOException;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.protocol.HttpContext;

@Deprecated
public class DefaultHttpRequestRetryHandler implements HttpRequestRetryHandler {
    public DefaultHttpRequestRetryHandler(int i, boolean z) {
        throw new RuntimeException("Stub!");
    }

    public DefaultHttpRequestRetryHandler() {
        throw new RuntimeException("Stub!");
    }

    public boolean retryRequest(IOException iOException, int i, HttpContext httpContext) {
        throw new RuntimeException("Stub!");
    }

    public boolean isRequestSentRetryEnabled() {
        throw new RuntimeException("Stub!");
    }

    public int getRetryCount() {
        throw new RuntimeException("Stub!");
    }
}
