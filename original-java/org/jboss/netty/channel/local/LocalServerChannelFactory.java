package org.jboss.netty.channel.local;

import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.channel.ServerChannelFactory;

public interface LocalServerChannelFactory extends ServerChannelFactory {
    LocalServerChannel newChannel(ChannelPipeline channelPipeline);
}
