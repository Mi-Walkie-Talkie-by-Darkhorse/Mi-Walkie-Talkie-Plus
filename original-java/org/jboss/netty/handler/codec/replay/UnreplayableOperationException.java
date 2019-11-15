package org.jboss.netty.handler.codec.replay;

public class UnreplayableOperationException extends UnsupportedOperationException {
    private static final long serialVersionUID = 8577363912862364021L;

    public UnreplayableOperationException() {
    }

    public UnreplayableOperationException(String str) {
        super(str);
    }

    public UnreplayableOperationException(Throwable th) {
        super(th);
    }

    public UnreplayableOperationException(String str, Throwable th) {
        super(str, th);
    }
}
