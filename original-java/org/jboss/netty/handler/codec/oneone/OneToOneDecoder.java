package org.jboss.netty.handler.codec.oneone;

import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelEvent;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.channel.ChannelUpstreamHandler;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.channel.MessageEvent;

public abstract class OneToOneDecoder implements ChannelUpstreamHandler {
    /* access modifiers changed from: protected */
    public abstract Object decode(ChannelHandlerContext channelHandlerContext, Channel channel, Object obj) throws Exception;

    protected OneToOneDecoder() {
    }

    public void handleUpstream(ChannelHandlerContext channelHandlerContext, ChannelEvent channelEvent) throws Exception {
        if (!(channelEvent instanceof MessageEvent)) {
            channelHandlerContext.sendUpstream(channelEvent);
            return;
        }
        MessageEvent messageEvent = (MessageEvent) channelEvent;
        Object message = messageEvent.getMessage();
        Object decode = decode(channelHandlerContext, messageEvent.getChannel(), message);
        if (message == decode) {
            channelHandlerContext.sendUpstream(channelEvent);
        } else if (decode != null) {
            Channels.fireMessageReceived(channelHandlerContext, decode, messageEvent.getRemoteAddress());
        }
    }
}
