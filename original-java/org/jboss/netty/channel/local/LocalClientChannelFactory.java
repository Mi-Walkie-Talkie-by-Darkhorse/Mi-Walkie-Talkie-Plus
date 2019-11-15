package org.jboss.netty.channel.local;

import org.jboss.netty.channel.ChannelFactory;
import org.jboss.netty.channel.ChannelPipeline;

public interface LocalClientChannelFactory extends ChannelFactory {
    LocalChannel newChannel(ChannelPipeline channelPipeline);
}
