package org.jboss.netty.channel;

public final class ChannelFutureNotifier implements ChannelFutureListener {
    private final ChannelFuture future;

    public ChannelFutureNotifier(ChannelFuture channelFuture) {
        this.future = channelFuture;
    }

    public void operationComplete(ChannelFuture channelFuture) throws Exception {
        if (channelFuture.isSuccess()) {
            this.future.setSuccess();
        } else {
            this.future.setFailure(channelFuture.getCause());
        }
    }
}
