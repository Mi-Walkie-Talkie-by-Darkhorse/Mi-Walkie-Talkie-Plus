package org.jboss.netty.handler.codec;

public class PrematureChannelClosureException extends Exception {
    private static final long serialVersionUID = 233460005724966593L;

    public PrematureChannelClosureException() {
    }

    public PrematureChannelClosureException(String str) {
        super(str);
    }

    public PrematureChannelClosureException(String str, Throwable th) {
        super(str, th);
    }

    public PrematureChannelClosureException(Throwable th) {
        super(th);
    }
}
