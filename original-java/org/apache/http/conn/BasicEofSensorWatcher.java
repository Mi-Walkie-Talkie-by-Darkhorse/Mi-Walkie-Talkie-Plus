package org.apache.http.conn;

import java.io.IOException;
import java.io.InputStream;

@Deprecated
public class BasicEofSensorWatcher implements EofSensorWatcher {
    protected boolean attemptReuse;
    protected ManagedClientConnection managedConn;

    public BasicEofSensorWatcher(ManagedClientConnection managedClientConnection, boolean z) {
        throw new RuntimeException("Stub!");
    }

    public boolean eofDetected(InputStream inputStream) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public boolean streamClosed(InputStream inputStream) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public boolean streamAbort(InputStream inputStream) throws IOException {
        throw new RuntimeException("Stub!");
    }
}
