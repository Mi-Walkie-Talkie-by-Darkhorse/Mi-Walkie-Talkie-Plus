package org.jboss.netty.channel;

import java.util.EventListener;

public interface ChannelFutureListener extends EventListener {
    public static final ChannelFutureListener CLOSE = new ChannelFutureListener() {
        public void operationComplete(ChannelFuture channelFuture) {
            channelFuture.getChannel().close();
        }
    };
    public static final ChannelFutureListener CLOSE_ON_FAILURE = new ChannelFutureListener() {
        public void operationComplete(ChannelFuture channelFuture) {
            if (!channelFuture.isSuccess()) {
                channelFuture.getChannel().close();
            }
        }
    };

    void operationComplete(ChannelFuture channelFuture) throws Exception;
}
