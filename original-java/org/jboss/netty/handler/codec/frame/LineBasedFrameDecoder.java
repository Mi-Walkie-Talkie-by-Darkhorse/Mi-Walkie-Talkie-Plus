package org.jboss.netty.handler.codec.frame;

import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.channel.Channels;

public class LineBasedFrameDecoder extends FrameDecoder {
    private int discardedBytes;
    private boolean discarding;
    private final boolean failFast;
    private final int maxLength;
    private final boolean stripDelimiter;

    public LineBasedFrameDecoder(int i) {
        this(i, true, false);
    }

    public LineBasedFrameDecoder(int i, boolean z, boolean z2) {
        this.maxLength = i;
        this.failFast = z2;
        this.stripDelimiter = z;
    }

    /* JADX INFO: finally extract failed */
    /* access modifiers changed from: protected */
    public Object decode(ChannelHandlerContext channelHandlerContext, Channel channel, ChannelBuffer channelBuffer) throws Exception {
        ChannelBuffer extractFrame;
        int i = 2;
        int findEndOfLine = findEndOfLine(channelBuffer);
        if (this.discarding) {
            if (findEndOfLine >= 0) {
                int readerIndex = (this.discardedBytes + findEndOfLine) - channelBuffer.readerIndex();
                if (channelBuffer.getByte(findEndOfLine) != 13) {
                    i = 1;
                }
                channelBuffer.readerIndex(i + findEndOfLine);
                this.discardedBytes = 0;
                this.discarding = false;
                if (!this.failFast) {
                    fail(channelHandlerContext, readerIndex);
                }
            } else {
                this.discardedBytes = channelBuffer.readableBytes();
                channelBuffer.readerIndex(channelBuffer.writerIndex());
            }
            return null;
        } else if (findEndOfLine >= 0) {
            int readerIndex2 = findEndOfLine - channelBuffer.readerIndex();
            if (channelBuffer.getByte(findEndOfLine) != 13) {
                i = 1;
            }
            if (readerIndex2 > this.maxLength) {
                channelBuffer.readerIndex(i + findEndOfLine);
                fail(channelHandlerContext, readerIndex2);
                return null;
            }
            try {
                if (this.stripDelimiter) {
                    extractFrame = extractFrame(channelBuffer, channelBuffer.readerIndex(), readerIndex2);
                } else {
                    extractFrame = extractFrame(channelBuffer, channelBuffer.readerIndex(), readerIndex2 + i);
                }
                channelBuffer.skipBytes(i + readerIndex2);
                return extractFrame;
            } catch (Throwable th) {
                channelBuffer.skipBytes(i + readerIndex2);
                throw th;
            }
        } else {
            int readableBytes = channelBuffer.readableBytes();
            if (readableBytes > this.maxLength) {
                this.discardedBytes = readableBytes;
                channelBuffer.readerIndex(channelBuffer.writerIndex());
                this.discarding = true;
                if (this.failFast) {
                    fail(channelHandlerContext, "over " + this.discardedBytes);
                }
            }
            return null;
        }
    }

    private void fail(ChannelHandlerContext channelHandlerContext, int i) {
        fail(channelHandlerContext, String.valueOf(i));
    }

    private void fail(ChannelHandlerContext channelHandlerContext, String str) {
        Channels.fireExceptionCaught(channelHandlerContext.getChannel(), (Throwable) new TooLongFrameException("frame length (" + str + ") exceeds the allowed maximum (" + this.maxLength + ')'));
    }

    private static int findEndOfLine(ChannelBuffer channelBuffer) {
        int writerIndex = channelBuffer.writerIndex();
        for (int readerIndex = channelBuffer.readerIndex(); readerIndex < writerIndex; readerIndex++) {
            byte b = channelBuffer.getByte(readerIndex);
            if (b == 10) {
                return readerIndex;
            }
            if (b == 13 && readerIndex < writerIndex - 1 && channelBuffer.getByte(readerIndex + 1) == 10) {
                return readerIndex;
            }
        }
        return -1;
    }
}
