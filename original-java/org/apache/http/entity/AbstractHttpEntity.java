package org.apache.http.entity;

import java.io.IOException;
import org.apache.http.Header;
import org.apache.http.HttpEntity;

@Deprecated
public abstract class AbstractHttpEntity implements HttpEntity {
    protected boolean chunked;
    protected Header contentEncoding;
    protected Header contentType;

    protected AbstractHttpEntity() {
        throw new RuntimeException("Stub!");
    }

    public Header getContentType() {
        throw new RuntimeException("Stub!");
    }

    public Header getContentEncoding() {
        throw new RuntimeException("Stub!");
    }

    public boolean isChunked() {
        throw new RuntimeException("Stub!");
    }

    public void setContentType(Header header) {
        throw new RuntimeException("Stub!");
    }

    public void setContentType(String str) {
        throw new RuntimeException("Stub!");
    }

    public void setContentEncoding(Header header) {
        throw new RuntimeException("Stub!");
    }

    public void setContentEncoding(String str) {
        throw new RuntimeException("Stub!");
    }

    public void setChunked(boolean z) {
        throw new RuntimeException("Stub!");
    }

    public void consumeContent() throws IOException, UnsupportedOperationException {
        throw new RuntimeException("Stub!");
    }
}
