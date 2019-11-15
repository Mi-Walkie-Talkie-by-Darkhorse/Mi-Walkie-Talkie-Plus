package org.jboss.netty.handler.ipfilter;

import java.net.InetSocketAddress;
import org.jboss.netty.channel.ChannelEvent;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.ChannelHandlerContext;

public interface IpFilterListener {
    ChannelFuture allowed(ChannelHandlerContext channelHandlerContext, ChannelEvent channelEvent, InetSocketAddress inetSocketAddress);

    boolean continues(ChannelHandlerContext channelHandlerContext, ChannelEvent channelEvent);

    ChannelFuture refused(ChannelHandlerContext channelHandlerContext, ChannelEvent channelEvent, InetSocketAddress inetSocketAddress);
}
