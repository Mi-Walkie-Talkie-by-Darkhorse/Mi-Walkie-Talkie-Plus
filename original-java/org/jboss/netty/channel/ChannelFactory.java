package org.jboss.netty.channel;

import org.jboss.netty.util.ExternalResourceReleasable;

public interface ChannelFactory extends ExternalResourceReleasable {
    Channel newChannel(ChannelPipeline channelPipeline);

    void releaseExternalResources();

    void shutdown();
}
