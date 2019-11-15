package org.jboss.netty.channel.socket;

import org.jboss.netty.channel.ChannelFactory;
import org.jboss.netty.channel.ChannelPipeline;

public interface DatagramChannelFactory extends ChannelFactory {
    DatagramChannel newChannel(ChannelPipeline channelPipeline);
}
