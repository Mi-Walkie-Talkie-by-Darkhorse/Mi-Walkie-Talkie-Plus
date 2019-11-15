package org.apache.http.entity;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Serializable;

@Deprecated
public class SerializableEntity extends AbstractHttpEntity {
    public SerializableEntity(Serializable serializable, boolean z) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public InputStream getContent() throws IOException, IllegalStateException {
        throw new RuntimeException("Stub!");
    }

    public long getContentLength() {
        throw new RuntimeException("Stub!");
    }

    public boolean isRepeatable() {
        throw new RuntimeException("Stub!");
    }

    public boolean isStreaming() {
        throw new RuntimeException("Stub!");
    }

    public void writeTo(OutputStream outputStream) throws IOException {
        throw new RuntimeException("Stub!");
    }
}
