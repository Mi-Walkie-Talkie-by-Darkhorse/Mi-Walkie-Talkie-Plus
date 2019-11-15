package org.jboss.netty.handler.codec.embedder;

public class CodecEmbedderException extends RuntimeException {
    private static final long serialVersionUID = -6283302594160331474L;

    public CodecEmbedderException() {
    }

    public CodecEmbedderException(String str, Throwable th) {
        super(str, th);
    }

    public CodecEmbedderException(String str) {
        super(str);
    }

    public CodecEmbedderException(Throwable th) {
        super(th);
    }
}
