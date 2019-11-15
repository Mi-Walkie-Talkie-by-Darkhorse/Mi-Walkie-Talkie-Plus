package org.jboss.netty.channel;

public interface ChannelDownstreamHandler extends ChannelHandler {
    void handleDownstream(ChannelHandlerContext channelHandlerContext, ChannelEvent channelEvent) throws Exception;
}
