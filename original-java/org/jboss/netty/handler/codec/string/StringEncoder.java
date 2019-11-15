package org.jboss.netty.handler.codec.string;

import java.nio.charset.Charset;
import org.jboss.netty.buffer.ChannelBuffers;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelHandler.Sharable;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.handler.codec.oneone.OneToOneEncoder;

@Sharable
public class StringEncoder extends OneToOneEncoder {
    private final Charset charset;

    public StringEncoder() {
        this(Charset.defaultCharset());
    }

    public StringEncoder(Charset charset2) {
        if (charset2 == null) {
            throw new NullPointerException("charset");
        }
        this.charset = charset2;
    }

    @Deprecated
    public StringEncoder(String str) {
        this(Charset.forName(str));
    }

    /* access modifiers changed from: protected */
    public Object encode(ChannelHandlerContext channelHandlerContext, Channel channel, Object obj) throws Exception {
        if (obj instanceof String) {
            return ChannelBuffers.copiedBuffer(channelHandlerContext.getChannel().getConfig().getBufferFactory().getDefaultOrder(), (CharSequence) (String) obj, this.charset);
        }
        return obj;
    }
}
