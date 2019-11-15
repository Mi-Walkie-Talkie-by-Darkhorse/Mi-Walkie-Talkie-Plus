package org.jboss.netty.channel;

public interface LifeCycleAwareChannelHandler extends ChannelHandler {
    void afterAdd(ChannelHandlerContext channelHandlerContext) throws Exception;

    void afterRemove(ChannelHandlerContext channelHandlerContext) throws Exception;

    void beforeAdd(ChannelHandlerContext channelHandlerContext) throws Exception;

    void beforeRemove(ChannelHandlerContext channelHandlerContext) throws Exception;
}
