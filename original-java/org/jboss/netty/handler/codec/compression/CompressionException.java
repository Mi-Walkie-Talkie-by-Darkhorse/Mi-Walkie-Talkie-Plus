package org.jboss.netty.handler.codec.compression;

public class CompressionException extends RuntimeException {
    private static final long serialVersionUID = 5603413481274811897L;

    public CompressionException() {
    }

    public CompressionException(String str, Throwable th) {
        super(str, th);
    }

    public CompressionException(String str) {
        super(str);
    }

    public CompressionException(Throwable th) {
        super(th);
    }
}
