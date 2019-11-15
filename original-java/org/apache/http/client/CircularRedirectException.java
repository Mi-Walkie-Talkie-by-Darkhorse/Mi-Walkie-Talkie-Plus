package org.apache.http.client;

@Deprecated
public class CircularRedirectException extends RedirectException {
    public CircularRedirectException() {
        throw new RuntimeException("Stub!");
    }

    public CircularRedirectException(String str) {
        throw new RuntimeException("Stub!");
    }

    public CircularRedirectException(String str, Throwable th) {
        throw new RuntimeException("Stub!");
    }
}
