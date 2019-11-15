package org.jboss.netty.handler.codec.serialization;

import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.ChannelBufferOutputStream;
import org.jboss.netty.buffer.ChannelBuffers;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelHandler.Sharable;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.handler.codec.oneone.OneToOneEncoder;

@Sharable
public class ObjectEncoder extends OneToOneEncoder {
    private static final byte[] LENGTH_PLACEHOLDER = new byte[4];
    private final int estimatedLength;

    public ObjectEncoder() {
        this(512);
    }

    public ObjectEncoder(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("estimatedLength: " + i);
        }
        this.estimatedLength = i;
    }

    /* access modifiers changed from: protected */
    public Object encode(ChannelHandlerContext channelHandlerContext, Channel channel, Object obj) throws Exception {
        ChannelBufferOutputStream channelBufferOutputStream = new ChannelBufferOutputStream(ChannelBuffers.dynamicBuffer(this.estimatedLength, channelHandlerContext.getChannel().getConfig().getBufferFactory()));
        channelBufferOutputStream.write(LENGTH_PLACEHOLDER);
        CompactObjectOutputStream compactObjectOutputStream = new CompactObjectOutputStream(channelBufferOutputStream);
        compactObjectOutputStream.writeObject(obj);
        compactObjectOutputStream.flush();
        compactObjectOutputStream.close();
        ChannelBuffer buffer = channelBufferOutputStream.buffer();
        buffer.setInt(0, buffer.writerIndex() - 4);
        return buffer;
    }
}
