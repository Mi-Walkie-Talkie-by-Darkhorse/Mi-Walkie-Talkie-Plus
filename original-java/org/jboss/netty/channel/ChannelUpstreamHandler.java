package org.jboss.netty.channel;

public interface ChannelUpstreamHandler extends ChannelHandler {
    void handleUpstream(ChannelHandlerContext channelHandlerContext, ChannelEvent channelEvent) throws Exception;
}
