package org.jboss.netty.handler.queue;

import java.io.InterruptedIOException;

public class BlockingReadTimeoutException extends InterruptedIOException {
    private static final long serialVersionUID = 356009226872649493L;

    public BlockingReadTimeoutException() {
    }

    public BlockingReadTimeoutException(String str, Throwable th) {
        super(str);
        initCause(th);
    }

    public BlockingReadTimeoutException(String str) {
        super(str);
    }

    public BlockingReadTimeoutException(Throwable th) {
        initCause(th);
    }
}
