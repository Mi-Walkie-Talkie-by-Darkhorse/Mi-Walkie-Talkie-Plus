package org.jboss.netty.handler.timeout;

public class ReadTimeoutException extends TimeoutException {
    private static final long serialVersionUID = -4596059237992273913L;

    public ReadTimeoutException() {
    }

    public ReadTimeoutException(String str, Throwable th) {
        super(str, th);
    }

    public ReadTimeoutException(String str) {
        super(str);
    }

    public ReadTimeoutException(Throwable th) {
        super(th);
    }
}
