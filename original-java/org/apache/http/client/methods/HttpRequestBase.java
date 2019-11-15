package org.apache.http.client.methods;

import java.io.IOException;
import java.net.URI;
import org.apache.http.ProtocolVersion;
import org.apache.http.RequestLine;
import org.apache.http.conn.ClientConnectionRequest;
import org.apache.http.conn.ConnectionReleaseTrigger;
import org.apache.http.message.AbstractHttpMessage;

@Deprecated
public abstract class HttpRequestBase extends AbstractHttpMessage implements AbortableHttpRequest, HttpUriRequest {
    public abstract String getMethod();

    public HttpRequestBase() {
        throw new RuntimeException("Stub!");
    }

    public ProtocolVersion getProtocolVersion() {
        throw new RuntimeException("Stub!");
    }

    public URI getURI() {
        throw new RuntimeException("Stub!");
    }

    public RequestLine getRequestLine() {
        throw new RuntimeException("Stub!");
    }

    public void setURI(URI uri) {
        throw new RuntimeException("Stub!");
    }

    public void setConnectionRequest(ClientConnectionRequest clientConnectionRequest) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void setReleaseTrigger(ConnectionReleaseTrigger connectionReleaseTrigger) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void abort() {
        throw new RuntimeException("Stub!");
    }

    public boolean isAborted() {
        throw new RuntimeException("Stub!");
    }

    public Object clone() throws CloneNotSupportedException {
        throw new RuntimeException("Stub!");
    }
}
