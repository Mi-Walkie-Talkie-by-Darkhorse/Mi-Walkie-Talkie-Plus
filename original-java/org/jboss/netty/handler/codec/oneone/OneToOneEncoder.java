package org.jboss.netty.handler.codec.oneone;

import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelDownstreamHandler;
import org.jboss.netty.channel.ChannelEvent;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.channel.MessageEvent;

public abstract class OneToOneEncoder implements ChannelDownstreamHandler {
    /* access modifiers changed from: protected */
    public abstract Object encode(ChannelHandlerContext channelHandlerContext, Channel channel, Object obj) throws Exception;

    protected OneToOneEncoder() {
    }

    public void handleDownstream(ChannelHandlerContext channelHandlerContext, ChannelEvent channelEvent) throws Exception {
        if (!(channelEvent instanceof MessageEvent)) {
            channelHandlerContext.sendDownstream(channelEvent);
            return;
        }
        MessageEvent messageEvent = (MessageEvent) channelEvent;
        if (!doEncode(channelHandlerContext, messageEvent)) {
            channelHandlerContext.sendDownstream(messageEvent);
        }
    }

    /* access modifiers changed from: protected */
    public boolean doEncode(ChannelHandlerContext channelHandlerContext, MessageEvent messageEvent) throws Exception {
        Object message = messageEvent.getMessage();
        Object encode = encode(channelHandlerContext, messageEvent.getChannel(), message);
        if (message == encode) {
            return false;
        }
        if (encode != null) {
            Channels.write(channelHandlerContext, messageEvent.getFuture(), encode, messageEvent.getRemoteAddress());
        }
        return true;
    }
}
