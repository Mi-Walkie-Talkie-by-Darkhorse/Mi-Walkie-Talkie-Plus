package org.jboss.netty.channel;

public interface ServerChannelFactory extends ChannelFactory {
    ServerChannel newChannel(ChannelPipeline channelPipeline);
}
