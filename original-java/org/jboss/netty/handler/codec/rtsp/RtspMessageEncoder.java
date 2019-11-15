package org.jboss.netty.handler.codec.rtsp;

import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelHandler.Sharable;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.handler.codec.http.HttpMessage;
import org.jboss.netty.handler.codec.http.HttpMessageEncoder;

@Sharable
public abstract class RtspMessageEncoder extends HttpMessageEncoder {
    protected RtspMessageEncoder() {
    }

    /* access modifiers changed from: protected */
    public Object encode(ChannelHandlerContext channelHandlerContext, Channel channel, Object obj) throws Exception {
        return !(obj instanceof HttpMessage) ? obj : super.encode(channelHandlerContext, channel, obj);
    }
}
