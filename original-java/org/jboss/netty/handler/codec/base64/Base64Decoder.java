package org.jboss.netty.handler.codec.base64;

import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.ChannelBuffers;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelHandler.Sharable;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.handler.codec.oneone.OneToOneDecoder;
import org.jboss.netty.util.CharsetUtil;

@Sharable
public class Base64Decoder extends OneToOneDecoder {
    private final Base64Dialect dialect;

    public Base64Decoder() {
        this(Base64Dialect.STANDARD);
    }

    public Base64Decoder(Base64Dialect base64Dialect) {
        if (base64Dialect == null) {
            throw new NullPointerException("dialect");
        }
        this.dialect = base64Dialect;
    }

    /* access modifiers changed from: protected */
    public Object decode(ChannelHandlerContext channelHandlerContext, Channel channel, Object obj) throws Exception {
        Object obj2;
        if (obj instanceof String) {
            obj2 = ChannelBuffers.copiedBuffer((CharSequence) (String) obj, CharsetUtil.US_ASCII);
        } else if (!(obj instanceof ChannelBuffer)) {
            return obj;
        } else {
            obj2 = obj;
        }
        ChannelBuffer channelBuffer = (ChannelBuffer) obj2;
        return Base64.decode(channelBuffer, channelBuffer.readerIndex(), channelBuffer.readableBytes(), this.dialect);
    }
}
