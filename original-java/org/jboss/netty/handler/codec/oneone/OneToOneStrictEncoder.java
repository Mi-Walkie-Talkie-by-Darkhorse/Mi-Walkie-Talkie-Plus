package org.jboss.netty.handler.codec.oneone;

import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.channel.MessageEvent;

public abstract class OneToOneStrictEncoder extends OneToOneEncoder {
    /* access modifiers changed from: protected */
    public boolean doEncode(ChannelHandlerContext channelHandlerContext, MessageEvent messageEvent) throws Exception {
        boolean doEncode;
        synchronized (channelHandlerContext.getChannel()) {
            doEncode = super.doEncode(channelHandlerContext, messageEvent);
        }
        return doEncode;
    }
}
