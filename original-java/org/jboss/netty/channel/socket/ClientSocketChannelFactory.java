package org.jboss.netty.channel.socket;

import org.jboss.netty.channel.ChannelFactory;
import org.jboss.netty.channel.ChannelPipeline;

public interface ClientSocketChannelFactory extends ChannelFactory {
    SocketChannel newChannel(ChannelPipeline channelPipeline);
}
