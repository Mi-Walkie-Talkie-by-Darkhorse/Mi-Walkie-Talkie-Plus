package org.jboss.netty.handler.codec.frame;

import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.ChannelBufferFactory;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelHandlerContext;

public class FixedLengthFrameDecoder extends FrameDecoder {
    private final boolean allocateFullBuffer;
    private final int frameLength;

    public FixedLengthFrameDecoder(int i) {
        this(i, false);
    }

    public FixedLengthFrameDecoder(int i, boolean z) {
        if (i <= 0) {
            throw new IllegalArgumentException("frameLength must be a positive integer: " + i);
        }
        this.frameLength = i;
        this.allocateFullBuffer = z;
    }

    /* access modifiers changed from: protected */
    public Object decode(ChannelHandlerContext channelHandlerContext, Channel channel, ChannelBuffer channelBuffer) throws Exception {
        if (channelBuffer.readableBytes() < this.frameLength) {
            return null;
        }
        ChannelBuffer extractFrame = extractFrame(channelBuffer, channelBuffer.readerIndex(), this.frameLength);
        channelBuffer.skipBytes(this.frameLength);
        return extractFrame;
    }

    /* access modifiers changed from: protected */
    public ChannelBuffer newCumulationBuffer(ChannelHandlerContext channelHandlerContext, int i) {
        ChannelBufferFactory bufferFactory = channelHandlerContext.getChannel().getConfig().getBufferFactory();
        if (this.allocateFullBuffer) {
            return bufferFactory.getBuffer(this.frameLength);
        }
        return super.newCumulationBuffer(channelHandlerContext, i);
    }
}
