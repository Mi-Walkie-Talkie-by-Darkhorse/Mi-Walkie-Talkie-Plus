package org.jboss.netty.channel;

public class ChannelException extends RuntimeException {
    private static final long serialVersionUID = 2908618315971075004L;

    public ChannelException() {
    }

    public ChannelException(String str, Throwable th) {
        super(str, th);
    }

    public ChannelException(String str) {
        super(str);
    }

    public ChannelException(Throwable th) {
        super(th);
    }
}
