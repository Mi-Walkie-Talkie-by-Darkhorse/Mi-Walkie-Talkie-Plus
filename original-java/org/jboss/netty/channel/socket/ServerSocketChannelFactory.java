package org.jboss.netty.channel.socket;

import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.channel.ServerChannelFactory;

public interface ServerSocketChannelFactory extends ServerChannelFactory {
    ServerSocketChannel newChannel(ChannelPipeline channelPipeline);
}
