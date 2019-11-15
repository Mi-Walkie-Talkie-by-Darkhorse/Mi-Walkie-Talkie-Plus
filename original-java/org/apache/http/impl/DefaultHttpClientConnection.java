package org.apache.http.impl;

import java.io.IOException;
import java.net.Socket;
import org.apache.http.params.HttpParams;

@Deprecated
public class DefaultHttpClientConnection extends SocketHttpClientConnection {
    public DefaultHttpClientConnection() {
        throw new RuntimeException("Stub!");
    }

    public void bind(Socket socket, HttpParams httpParams) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }
}
