package org.jboss.netty.channel;

public interface ChannelPipelineFactory {
    ChannelPipeline getPipeline() throws Exception;
}
