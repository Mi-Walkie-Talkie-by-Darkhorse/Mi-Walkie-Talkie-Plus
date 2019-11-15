package org.jboss.netty.handler.codec.frame;

import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.channel.Channels;

public class DelimiterBasedFrameDecoder extends FrameDecoder {
    private final ChannelBuffer[] delimiters;
    private boolean discardingTooLongFrame;
    private final boolean failFast;
    private final LineBasedFrameDecoder lineBasedDecoder;
    private final int maxFrameLength;
    private final boolean stripDelimiter;
    private int tooLongFrameLength;

    public DelimiterBasedFrameDecoder(int i, ChannelBuffer channelBuffer) {
        this(i, true, channelBuffer);
    }

    public DelimiterBasedFrameDecoder(int i, boolean z, ChannelBuffer channelBuffer) {
        this(i, z, false, channelBuffer);
    }

    public DelimiterBasedFrameDecoder(int i, boolean z, boolean z2, ChannelBuffer channelBuffer) {
        this(i, z, z2, channelBuffer.slice(channelBuffer.readerIndex(), channelBuffer.readableBytes()));
    }

    public DelimiterBasedFrameDecoder(int i, ChannelBuffer... channelBufferArr) {
        this(i, true, channelBufferArr);
    }

    public DelimiterBasedFrameDecoder(int i, boolean z, ChannelBuffer... channelBufferArr) {
        this(i, z, false, channelBufferArr);
    }

    public DelimiterBasedFrameDecoder(int i, boolean z, boolean z2, ChannelBuffer... channelBufferArr) {
        validateMaxFrameLength(i);
        if (channelBufferArr == null) {
            throw new NullPointerException("delimiters");
        } else if (channelBufferArr.length == 0) {
            throw new IllegalArgumentException("empty delimiters");
        } else {
            if (!isLineBased(channelBufferArr) || isSubclass()) {
                this.delimiters = new ChannelBuffer[channelBufferArr.length];
                for (int i2 = 0; i2 < channelBufferArr.length; i2++) {
                    ChannelBuffer channelBuffer = channelBufferArr[i2];
                    validateDelimiter(channelBuffer);
                    this.delimiters[i2] = channelBuffer.slice(channelBuffer.readerIndex(), channelBuffer.readableBytes());
                }
                this.lineBasedDecoder = null;
            } else {
                this.lineBasedDecoder = new LineBasedFrameDecoder(i, z, z2);
                this.delimiters = null;
            }
            this.maxFrameLength = i;
            this.stripDelimiter = z;
            this.failFast = z2;
        }
    }

    private static boolean isLineBased(ChannelBuffer[] channelBufferArr) {
        if (channelBufferArr.length != 2) {
            return false;
        }
        ChannelBuffer channelBuffer = channelBufferArr[0];
        ChannelBuffer channelBuffer2 = channelBufferArr[1];
        if (channelBuffer.capacity() < channelBuffer2.capacity()) {
            channelBuffer = channelBufferArr[1];
            channelBuffer2 = channelBufferArr[0];
        }
        return channelBuffer.capacity() == 2 && channelBuffer2.capacity() == 1 && channelBuffer.getByte(0) == 13 && channelBuffer.getByte(1) == 10 && channelBuffer2.getByte(0) == 10;
    }

    private boolean isSubclass() {
        return getClass() != DelimiterBasedFrameDecoder.class;
    }

    /* access modifiers changed from: protected */
    public Object decode(ChannelHandlerContext channelHandlerContext, Channel channel, ChannelBuffer channelBuffer) throws Exception {
        ChannelBuffer extractFrame;
        int i;
        if (this.lineBasedDecoder != null) {
            return this.lineBasedDecoder.decode(channelHandlerContext, channel, channelBuffer);
        }
        int i2 = Integer.MAX_VALUE;
        ChannelBuffer[] channelBufferArr = this.delimiters;
        int length = channelBufferArr.length;
        int i3 = 0;
        ChannelBuffer channelBuffer2 = null;
        while (i3 < length) {
            ChannelBuffer channelBuffer3 = channelBufferArr[i3];
            int indexOf = indexOf(channelBuffer, channelBuffer3);
            if (indexOf < 0 || indexOf >= i2) {
                channelBuffer3 = channelBuffer2;
                i = i2;
            } else {
                i = indexOf;
            }
            i3++;
            i2 = i;
            channelBuffer2 = channelBuffer3;
        }
        if (channelBuffer2 != null) {
            int capacity = channelBuffer2.capacity();
            if (this.discardingTooLongFrame) {
                this.discardingTooLongFrame = false;
                channelBuffer.skipBytes(i2 + capacity);
                int i4 = this.tooLongFrameLength;
                this.tooLongFrameLength = 0;
                if (!this.failFast) {
                    fail(channelHandlerContext, (long) i4);
                }
                return null;
            } else if (i2 > this.maxFrameLength) {
                channelBuffer.skipBytes(i2 + capacity);
                fail(channelHandlerContext, (long) i2);
                return null;
            } else {
                if (this.stripDelimiter) {
                    extractFrame = extractFrame(channelBuffer, channelBuffer.readerIndex(), i2);
                } else {
                    extractFrame = extractFrame(channelBuffer, channelBuffer.readerIndex(), i2 + capacity);
                }
                channelBuffer.skipBytes(capacity + i2);
                return extractFrame;
            }
        } else {
            if (this.discardingTooLongFrame) {
                this.tooLongFrameLength += channelBuffer.readableBytes();
                channelBuffer.skipBytes(channelBuffer.readableBytes());
            } else if (channelBuffer.readableBytes() > this.maxFrameLength) {
                this.tooLongFrameLength = channelBuffer.readableBytes();
                channelBuffer.skipBytes(channelBuffer.readableBytes());
                this.discardingTooLongFrame = true;
                if (this.failFast) {
                    fail(channelHandlerContext, (long) this.tooLongFrameLength);
                }
            }
            return null;
        }
    }

    private void fail(ChannelHandlerContext channelHandlerContext, long j) {
        if (j > 0) {
            Channels.fireExceptionCaught(channelHandlerContext.getChannel(), (Throwable) new TooLongFrameException("frame length exceeds " + this.maxFrameLength + ": " + j + " - discarded"));
        } else {
            Channels.fireExceptionCaught(channelHandlerContext.getChannel(), (Throwable) new TooLongFrameException("frame length exceeds " + this.maxFrameLength + " - discarding"));
        }
    }

    private static int indexOf(ChannelBuffer channelBuffer, ChannelBuffer channelBuffer2) {
        for (int readerIndex = channelBuffer.readerIndex(); readerIndex < channelBuffer.writerIndex(); readerIndex++) {
            int i = 0;
            int i2 = readerIndex;
            while (i < channelBuffer2.capacity() && channelBuffer.getByte(i2) == channelBuffer2.getByte(i)) {
                i2++;
                if (i2 == channelBuffer.writerIndex() && i != channelBuffer2.capacity() - 1) {
                    return -1;
                }
                i++;
            }
            if (i == channelBuffer2.capacity()) {
                return readerIndex - channelBuffer.readerIndex();
            }
        }
        return -1;
    }

    private static void validateDelimiter(ChannelBuffer channelBuffer) {
        if (channelBuffer == null) {
            throw new NullPointerException("delimiter");
        } else if (!channelBuffer.readable()) {
            throw new IllegalArgumentException("empty delimiter");
        }
    }

    private static void validateMaxFrameLength(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("maxFrameLength must be a positive integer: " + i);
        }
    }
}
