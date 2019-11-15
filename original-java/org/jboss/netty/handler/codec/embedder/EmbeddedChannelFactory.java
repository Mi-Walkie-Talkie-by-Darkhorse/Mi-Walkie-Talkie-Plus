package org.jboss.netty.handler.codec.embedder;

import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelFactory;
import org.jboss.netty.channel.ChannelPipeline;

final class EmbeddedChannelFactory implements ChannelFactory {
    static final ChannelFactory INSTANCE = new EmbeddedChannelFactory();

    private EmbeddedChannelFactory() {
    }

    public Channel newChannel(ChannelPipeline channelPipeline) {
        throw new UnsupportedOperationException();
    }

    public void releaseExternalResources() {
    }

    public void shutdown() {
    }
}
