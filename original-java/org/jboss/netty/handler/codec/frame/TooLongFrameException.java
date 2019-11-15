package org.jboss.netty.handler.codec.frame;

public class TooLongFrameException extends Exception {
    private static final long serialVersionUID = -1995801950698951640L;

    public TooLongFrameException() {
    }

    public TooLongFrameException(String str, Throwable th) {
        super(str, th);
    }

    public TooLongFrameException(String str) {
        super(str);
    }

    public TooLongFrameException(Throwable th) {
        super(th);
    }
}
