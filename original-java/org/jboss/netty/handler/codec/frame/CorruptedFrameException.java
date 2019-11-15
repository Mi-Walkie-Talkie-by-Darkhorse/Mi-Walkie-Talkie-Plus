package org.jboss.netty.handler.codec.frame;

public class CorruptedFrameException extends Exception {
    private static final long serialVersionUID = 3918052232492988408L;

    public CorruptedFrameException() {
    }

    public CorruptedFrameException(String str, Throwable th) {
        super(str, th);
    }

    public CorruptedFrameException(String str) {
        super(str);
    }

    public CorruptedFrameException(Throwable th) {
        super(th);
    }
}
