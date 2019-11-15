package org.jboss.netty.channel.socket.nio;

import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelFuture;

public interface NioSelector extends Runnable {
    void rebuildSelector();

    void register(Channel channel, ChannelFuture channelFuture);

    void shutdown();
}
