package org.jboss.netty.handler.codec.base64;

import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelHandler.Sharable;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.handler.codec.oneone.OneToOneEncoder;

@Sharable
public class Base64Encoder extends OneToOneEncoder {
    private final boolean breakLines;
    private final Base64Dialect dialect;

    public Base64Encoder() {
        this(true);
    }

    public Base64Encoder(boolean z) {
        this(z, Base64Dialect.STANDARD);
    }

    public Base64Encoder(boolean z, Base64Dialect base64Dialect) {
        if (base64Dialect == null) {
            throw new NullPointerException("dialect");
        }
        this.breakLines = z;
        this.dialect = base64Dialect;
    }

    /* access modifiers changed from: protected */
    public Object encode(ChannelHandlerContext channelHandlerContext, Channel channel, Object obj) throws Exception {
        if (!(obj instanceof ChannelBuffer)) {
            return obj;
        }
        ChannelBuffer channelBuffer = (ChannelBuffer) obj;
        return Base64.encode(channelBuffer, channelBuffer.readerIndex(), channelBuffer.readableBytes(), this.breakLines, this.dialect);
    }
}
