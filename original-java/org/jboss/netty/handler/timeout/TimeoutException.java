package org.jboss.netty.handler.timeout;

import org.jboss.netty.channel.ChannelException;

public class TimeoutException extends ChannelException {
    private static final long serialVersionUID = 4673641882869672533L;

    public TimeoutException() {
    }

    public TimeoutException(String str, Throwable th) {
        super(str, th);
    }

    public TimeoutException(String str) {
        super(str);
    }

    public TimeoutException(Throwable th) {
        super(th);
    }
}
