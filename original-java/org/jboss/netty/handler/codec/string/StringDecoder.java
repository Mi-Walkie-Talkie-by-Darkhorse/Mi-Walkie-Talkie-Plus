package org.jboss.netty.handler.codec.string;

import java.nio.charset.Charset;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelHandler.Sharable;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.handler.codec.oneone.OneToOneDecoder;

@Sharable
public class StringDecoder extends OneToOneDecoder {
    private final Charset charset;

    public StringDecoder() {
        this(Charset.defaultCharset());
    }

    public StringDecoder(Charset charset2) {
        if (charset2 == null) {
            throw new NullPointerException("charset");
        }
        this.charset = charset2;
    }

    @Deprecated
    public StringDecoder(String str) {
        this(Charset.forName(str));
    }

    /* access modifiers changed from: protected */
    public Object decode(ChannelHandlerContext channelHandlerContext, Channel channel, Object obj) throws Exception {
        return !(obj instanceof ChannelBuffer) ? obj : ((ChannelBuffer) obj).toString(this.charset);
    }
}
