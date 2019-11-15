package org.apache.http.conn;

import java.io.InterruptedIOException;

@Deprecated
public class ConnectTimeoutException extends InterruptedIOException {
    public ConnectTimeoutException() {
        throw new RuntimeException("Stub!");
    }

    public ConnectTimeoutException(String str) {
        throw new RuntimeException("Stub!");
    }
}
