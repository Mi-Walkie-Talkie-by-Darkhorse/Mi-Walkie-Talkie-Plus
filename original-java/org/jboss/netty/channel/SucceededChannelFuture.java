package org.jboss.netty.channel;

public class SucceededChannelFuture extends CompleteChannelFuture {
    public SucceededChannelFuture(Channel channel) {
        super(channel);
    }

    public Throwable getCause() {
        return null;
    }

    public boolean isSuccess() {
        return true;
    }

    @Deprecated
    public ChannelFuture rethrowIfFailed() throws Exception {
        return this;
    }

    public ChannelFuture sync() throws InterruptedException {
        return this;
    }

    public ChannelFuture syncUninterruptibly() {
        return this;
    }
}
