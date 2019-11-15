package org.jboss.netty.handler.codec.frame;

import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.ChannelBuffers;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelHandler.Sharable;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.handler.codec.oneone.OneToOneEncoder;

@Sharable
public class LengthFieldPrepender extends OneToOneEncoder {
    private final int lengthFieldLength;
    private final boolean lengthIncludesLengthFieldLength;

    public LengthFieldPrepender(int i) {
        this(i, false);
    }

    public LengthFieldPrepender(int i, boolean z) {
        if (i == 1 || i == 2 || i == 3 || i == 4 || i == 8) {
            this.lengthFieldLength = i;
            this.lengthIncludesLengthFieldLength = z;
            return;
        }
        throw new IllegalArgumentException("lengthFieldLength must be either 1, 2, 3, 4, or 8: " + i);
    }

    /* access modifiers changed from: protected */
    public Object encode(ChannelHandlerContext channelHandlerContext, Channel channel, Object obj) throws Exception {
        if (!(obj instanceof ChannelBuffer)) {
            return obj;
        }
        ChannelBuffer channelBuffer = (ChannelBuffer) obj;
        ChannelBuffer buffer = channel.getConfig().getBufferFactory().getBuffer(channelBuffer.order(), this.lengthFieldLength);
        int readableBytes = this.lengthIncludesLengthFieldLength ? channelBuffer.readableBytes() + this.lengthFieldLength : channelBuffer.readableBytes();
        switch (this.lengthFieldLength) {
            case 1:
                if (readableBytes < 256) {
                    buffer.writeByte((byte) readableBytes);
                    break;
                } else {
                    throw new IllegalArgumentException("length does not fit into a byte: " + readableBytes);
                }
            case 2:
                if (readableBytes < 65536) {
                    buffer.writeShort((short) readableBytes);
                    break;
                } else {
                    throw new IllegalArgumentException("length does not fit into a short integer: " + readableBytes);
                }
            case 3:
                if (readableBytes < 16777216) {
                    buffer.writeMedium(readableBytes);
                    break;
                } else {
                    throw new IllegalArgumentException("length does not fit into a medium integer: " + readableBytes);
                }
            case 4:
                buffer.writeInt(readableBytes);
                break;
            case 8:
                buffer.writeLong((long) readableBytes);
                break;
            default:
                throw new Error("should not reach here");
        }
        return ChannelBuffers.wrappedBuffer(buffer, channelBuffer);
    }
}
