package org.apache.http.entity;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;

@Deprecated
public class HttpEntityWrapper implements HttpEntity {
    protected HttpEntity wrappedEntity;

    public HttpEntityWrapper(HttpEntity httpEntity) {
        throw new RuntimeException("Stub!");
    }

    public boolean isRepeatable() {
        throw new RuntimeException("Stub!");
    }

    public boolean isChunked() {
        throw new RuntimeException("Stub!");
    }

    public long getContentLength() {
        throw new RuntimeException("Stub!");
    }

    public Header getContentType() {
        throw new RuntimeException("Stub!");
    }

    public Header getContentEncoding() {
        throw new RuntimeException("Stub!");
    }

    public InputStream getContent() throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void writeTo(OutputStream outputStream) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public boolean isStreaming() {
        throw new RuntimeException("Stub!");
    }

    public void consumeContent() throws IOException {
        throw new RuntimeException("Stub!");
    }
}
