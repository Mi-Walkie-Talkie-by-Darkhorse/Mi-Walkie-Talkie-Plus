package org.apache.http;

import java.io.IOException;

@Deprecated
public class ConnectionClosedException extends IOException {
    public ConnectionClosedException(String str) {
        throw new RuntimeException("Stub!");
    }
}
