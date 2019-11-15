package org.jboss.netty.channel;

public class ChannelHandlerLifeCycleException extends RuntimeException {
    private static final long serialVersionUID = 8764799996088850672L;

    public ChannelHandlerLifeCycleException() {
    }

    public ChannelHandlerLifeCycleException(String str, Throwable th) {
        super(str, th);
    }

    public ChannelHandlerLifeCycleException(String str) {
        super(str);
    }

    public ChannelHandlerLifeCycleException(Throwable th) {
        super(th);
    }
}
