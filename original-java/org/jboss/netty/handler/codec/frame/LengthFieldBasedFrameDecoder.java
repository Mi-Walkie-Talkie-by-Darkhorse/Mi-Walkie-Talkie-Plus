package org.jboss.netty.handler.codec.frame;

import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.channel.Channels;

public class LengthFieldBasedFrameDecoder extends FrameDecoder {
    private long bytesToDiscard;
    private boolean discardingTooLongFrame;
    private final boolean failFast;
    private final int initialBytesToStrip;
    private final int lengthAdjustment;
    private final int lengthFieldEndOffset;
    private final int lengthFieldLength;
    private final int lengthFieldOffset;
    private final int maxFrameLength;
    private long tooLongFrameLength;

    public LengthFieldBasedFrameDecoder(int i, int i2, int i3) {
        this(i, i2, i3, 0, 0);
    }

    public LengthFieldBasedFrameDecoder(int i, int i2, int i3, int i4, int i5) {
        this(i, i2, i3, i4, i5, false);
    }

    public LengthFieldBasedFrameDecoder(int i, int i2, int i3, int i4, int i5, boolean z) {
        if (i <= 0) {
            throw new IllegalArgumentException("maxFrameLength must be a positive integer: " + i);
        } else if (i2 < 0) {
            throw new IllegalArgumentException("lengthFieldOffset must be a non-negative integer: " + i2);
        } else if (i5 < 0) {
            throw new IllegalArgumentException("initialBytesToStrip must be a non-negative integer: " + i5);
        } else if (i3 != 1 && i3 != 2 && i3 != 3 && i3 != 4 && i3 != 8) {
            throw new IllegalArgumentException("lengthFieldLength must be either 1, 2, 3, 4, or 8: " + i3);
        } else if (i2 > i - i3) {
            throw new IllegalArgumentException("maxFrameLength (" + i + ") " + "must be equal to or greater than " + "lengthFieldOffset (" + i2 + ") + " + "lengthFieldLength (" + i3 + ").");
        } else {
            this.maxFrameLength = i;
            this.lengthFieldOffset = i2;
            this.lengthFieldLength = i3;
            this.lengthAdjustment = i4;
            this.lengthFieldEndOffset = i2 + i3;
            this.initialBytesToStrip = i5;
            this.failFast = z;
        }
    }

    /* access modifiers changed from: protected */
    public Object decode(ChannelHandlerContext channelHandlerContext, Channel channel, ChannelBuffer channelBuffer) throws Exception {
        long j;
        if (this.discardingTooLongFrame) {
            long j2 = this.bytesToDiscard;
            int min = (int) Math.min(j2, (long) channelBuffer.readableBytes());
            channelBuffer.skipBytes(min);
            this.bytesToDiscard = j2 - ((long) min);
            failIfNecessary(channelHandlerContext, false);
            return null;
        } else if (channelBuffer.readableBytes() < this.lengthFieldEndOffset) {
            return null;
        } else {
            int readerIndex = channelBuffer.readerIndex() + this.lengthFieldOffset;
            switch (this.lengthFieldLength) {
                case 1:
                    j = (long) channelBuffer.getUnsignedByte(readerIndex);
                    break;
                case 2:
                    j = (long) channelBuffer.getUnsignedShort(readerIndex);
                    break;
                case 3:
                    j = (long) channelBuffer.getUnsignedMedium(readerIndex);
                    break;
                case 4:
                    j = channelBuffer.getUnsignedInt(readerIndex);
                    break;
                case 8:
                    j = channelBuffer.getLong(readerIndex);
                    break;
                default:
                    throw new Error("should not reach here");
            }
            if (j < 0) {
                channelBuffer.skipBytes(this.lengthFieldEndOffset);
                throw new CorruptedFrameException("negative pre-adjustment length field: " + j);
            }
            long j3 = j + ((long) (this.lengthAdjustment + this.lengthFieldEndOffset));
            if (j3 < ((long) this.lengthFieldEndOffset)) {
                channelBuffer.skipBytes(this.lengthFieldEndOffset);
                throw new CorruptedFrameException("Adjusted frame length (" + j3 + ") is less " + "than lengthFieldEndOffset: " + this.lengthFieldEndOffset);
            } else if (j3 > ((long) this.maxFrameLength)) {
                this.discardingTooLongFrame = true;
                this.tooLongFrameLength = j3;
                this.bytesToDiscard = j3 - ((long) channelBuffer.readableBytes());
                channelBuffer.skipBytes(channelBuffer.readableBytes());
                failIfNecessary(channelHandlerContext, true);
                return null;
            } else {
                int i = (int) j3;
                if (channelBuffer.readableBytes() < i) {
                    return null;
                }
                if (this.initialBytesToStrip > i) {
                    channelBuffer.skipBytes(i);
                    throw new CorruptedFrameException("Adjusted frame length (" + j3 + ") is less " + "than initialBytesToStrip: " + this.initialBytesToStrip);
                }
                channelBuffer.skipBytes(this.initialBytesToStrip);
                int readerIndex2 = channelBuffer.readerIndex();
                int i2 = i - this.initialBytesToStrip;
                ChannelBuffer extractFrame = extractFrame(channelBuffer, readerIndex2, i2);
                channelBuffer.readerIndex(i2 + readerIndex2);
                return extractFrame;
            }
        }
    }

    private void failIfNecessary(ChannelHandlerContext channelHandlerContext, boolean z) {
        if (this.bytesToDiscard == 0) {
            long j = this.tooLongFrameLength;
            this.tooLongFrameLength = 0;
            this.discardingTooLongFrame = false;
            if (!this.failFast || (this.failFast && z)) {
                fail(channelHandlerContext, j);
            }
        } else if (this.failFast && z) {
            fail(channelHandlerContext, this.tooLongFrameLength);
        }
    }

    private void fail(ChannelHandlerContext channelHandlerContext, long j) {
        if (j > 0) {
            Channels.fireExceptionCaught(channelHandlerContext.getChannel(), (Throwable) new TooLongFrameException("Adjusted frame length exceeds " + this.maxFrameLength + ": " + j + " - discarded"));
        } else {
            Channels.fireExceptionCaught(channelHandlerContext.getChannel(), (Throwable) new TooLongFrameException("Adjusted frame length exceeds " + this.maxFrameLength + " - discarding"));
        }
    }
}
