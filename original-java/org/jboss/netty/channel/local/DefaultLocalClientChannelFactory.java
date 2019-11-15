package org.jboss.netty.channel.local;

import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.channel.ChannelSink;

public class DefaultLocalClientChannelFactory implements LocalClientChannelFactory {
    private final ChannelSink sink = new LocalClientChannelSink();

    public LocalChannel newChannel(ChannelPipeline channelPipeline) {
        return new DefaultLocalChannel(null, this, channelPipeline, this.sink, null);
    }

    public void releaseExternalResources() {
    }

    public void shutdown() {
    }
}
