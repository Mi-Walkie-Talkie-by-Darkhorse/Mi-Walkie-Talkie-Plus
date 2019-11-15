package org.jboss.netty.handler.codec.spdy;

import java.nio.ByteOrder;
import java.util.Set;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.ChannelBuffers;
import org.jboss.netty.channel.ChannelDownstreamHandler;
import org.jboss.netty.channel.ChannelEvent;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.channel.ChannelStateEvent;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.channel.MessageEvent;
import org.jboss.netty.handler.codec.http.HttpConstants;

public class SpdyFrameEncoder implements ChannelDownstreamHandler {
    private volatile boolean finished;
    private final SpdyHeaderBlockCompressor headerBlockCompressor;
    private final int version;

    @Deprecated
    public SpdyFrameEncoder() {
        this(2, 6, 15, 8);
    }

    public SpdyFrameEncoder(int i) {
        this(i, 6, 15, 8);
    }

    @Deprecated
    public SpdyFrameEncoder(int i, int i2, int i3) {
        this(2, i, i2, i3);
    }

    public SpdyFrameEncoder(int i, int i2, int i3, int i4) {
        if (i < 2 || i > 3) {
            throw new IllegalArgumentException("unknown version: " + i);
        }
        this.version = i;
        this.headerBlockCompressor = SpdyHeaderBlockCompressor.newInstance(i, i2, i3, i4);
    }

    public void handleDownstream(ChannelHandlerContext channelHandlerContext, ChannelEvent channelEvent) throws Exception {
        byte b;
        int i;
        int i2 = 8;
        int i3 = 1;
        if (channelEvent instanceof ChannelStateEvent) {
            ChannelStateEvent channelStateEvent = (ChannelStateEvent) channelEvent;
            switch (channelStateEvent.getState()) {
                case OPEN:
                case CONNECTED:
                case BOUND:
                    if (Boolean.FALSE.equals(channelStateEvent.getValue()) || channelStateEvent.getValue() == null) {
                        synchronized (this.headerBlockCompressor) {
                            this.finished = true;
                            this.headerBlockCompressor.end();
                        }
                        break;
                    }
            }
        }
        if (!(channelEvent instanceof MessageEvent)) {
            channelHandlerContext.sendDownstream(channelEvent);
            return;
        }
        MessageEvent messageEvent = (MessageEvent) channelEvent;
        Object message = messageEvent.getMessage();
        if (message instanceof SpdyDataFrame) {
            SpdyDataFrame spdyDataFrame = (SpdyDataFrame) message;
            ChannelBuffer data = spdyDataFrame.getData();
            int i4 = spdyDataFrame.isLast() ? 1 : 0;
            ChannelBuffer buffer = ChannelBuffers.buffer(ByteOrder.BIG_ENDIAN, 8);
            buffer.writeInt(spdyDataFrame.getStreamId() & Integer.MAX_VALUE);
            buffer.writeByte(i4);
            buffer.writeMedium(data.readableBytes());
            Channels.write(channelHandlerContext, messageEvent.getFuture(), ChannelBuffers.wrappedBuffer(buffer, data), messageEvent.getRemoteAddress());
        } else if (message instanceof SpdySynStreamFrame) {
            synchronized (this.headerBlockCompressor) {
                SpdySynStreamFrame spdySynStreamFrame = (SpdySynStreamFrame) message;
                ChannelBuffer compressHeaderBlock = compressHeaderBlock(encodeHeaderBlock(this.version, spdySynStreamFrame));
                int i5 = spdySynStreamFrame.isLast() ? 1 : 0;
                if (spdySynStreamFrame.isUnidirectional()) {
                    i = (byte) (i5 | 2);
                } else {
                    i = i5;
                }
                int readableBytes = compressHeaderBlock.readableBytes();
                int i6 = this.version < 3 ? readableBytes == 0 ? 12 : readableBytes + 10 : readableBytes + 10;
                ChannelBuffer buffer2 = ChannelBuffers.buffer(ByteOrder.BIG_ENDIAN, 20);
                buffer2.writeShort(this.version | 32768);
                buffer2.writeShort(1);
                buffer2.writeByte(i);
                buffer2.writeMedium(i6);
                buffer2.writeInt(spdySynStreamFrame.getStreamId());
                buffer2.writeInt(spdySynStreamFrame.getAssociatedToStreamId());
                if (this.version < 3) {
                    byte priority = spdySynStreamFrame.getPriority();
                    if (priority > 3) {
                        priority = 3;
                    }
                    buffer2.writeShort((priority & 255) << 14);
                } else {
                    buffer2.writeShort((spdySynStreamFrame.getPriority() & 255) << HttpConstants.CR);
                }
                if (this.version < 3 && compressHeaderBlock.readableBytes() == 0) {
                    buffer2.writeShort(0);
                }
                Channels.write(channelHandlerContext, messageEvent.getFuture(), ChannelBuffers.wrappedBuffer(buffer2, compressHeaderBlock), messageEvent.getRemoteAddress());
            }
        } else if (message instanceof SpdySynReplyFrame) {
            synchronized (this.headerBlockCompressor) {
                SpdySynReplyFrame spdySynReplyFrame = (SpdySynReplyFrame) message;
                ChannelBuffer compressHeaderBlock2 = compressHeaderBlock(encodeHeaderBlock(this.version, spdySynReplyFrame));
                if (!spdySynReplyFrame.isLast()) {
                    i3 = 0;
                }
                int readableBytes2 = compressHeaderBlock2.readableBytes();
                int i7 = this.version < 3 ? readableBytes2 == 0 ? 8 : readableBytes2 + 6 : readableBytes2 + 4;
                ChannelBuffer buffer3 = ChannelBuffers.buffer(ByteOrder.BIG_ENDIAN, 16);
                buffer3.writeShort(this.version | 32768);
                buffer3.writeShort(2);
                buffer3.writeByte(i3);
                buffer3.writeMedium(i7);
                buffer3.writeInt(spdySynReplyFrame.getStreamId());
                if (this.version < 3) {
                    if (compressHeaderBlock2.readableBytes() == 0) {
                        buffer3.writeInt(0);
                    } else {
                        buffer3.writeShort(0);
                    }
                }
                Channels.write(channelHandlerContext, messageEvent.getFuture(), ChannelBuffers.wrappedBuffer(buffer3, compressHeaderBlock2), messageEvent.getRemoteAddress());
            }
        } else if (message instanceof SpdyRstStreamFrame) {
            SpdyRstStreamFrame spdyRstStreamFrame = (SpdyRstStreamFrame) message;
            ChannelBuffer buffer4 = ChannelBuffers.buffer(ByteOrder.BIG_ENDIAN, 16);
            buffer4.writeShort(this.version | 32768);
            buffer4.writeShort(3);
            buffer4.writeInt(8);
            buffer4.writeInt(spdyRstStreamFrame.getStreamId());
            buffer4.writeInt(spdyRstStreamFrame.getStatus().getCode());
            Channels.write(channelHandlerContext, messageEvent.getFuture(), buffer4, messageEvent.getRemoteAddress());
        } else if (message instanceof SpdySettingsFrame) {
            SpdySettingsFrame spdySettingsFrame = (SpdySettingsFrame) message;
            int i8 = spdySettingsFrame.clearPreviouslyPersistedSettings() ? 1 : 0;
            Set<Integer> ids = spdySettingsFrame.getIds();
            int size = ids.size();
            int i9 = (size * 8) + 4;
            ChannelBuffer buffer5 = ChannelBuffers.buffer(ByteOrder.BIG_ENDIAN, i9 + 8);
            buffer5.writeShort(this.version | 32768);
            buffer5.writeShort(4);
            buffer5.writeByte(i8);
            buffer5.writeMedium(i9);
            buffer5.writeInt(size);
            for (Integer intValue : ids) {
                int intValue2 = intValue.intValue();
                if (spdySettingsFrame.isPersistValue(intValue2)) {
                    b = (byte) 1;
                } else {
                    b = 0;
                }
                if (spdySettingsFrame.isPersisted(intValue2)) {
                    b = (byte) (b | 2);
                }
                if (this.version < 3) {
                    buffer5.writeByte(intValue2 & 255);
                    buffer5.writeByte((intValue2 >> 8) & 255);
                    buffer5.writeByte((intValue2 >> 16) & 255);
                    buffer5.writeByte(b);
                } else {
                    buffer5.writeByte(b);
                    buffer5.writeMedium(intValue2);
                }
                buffer5.writeInt(spdySettingsFrame.getValue(intValue2));
            }
            Channels.write(channelHandlerContext, messageEvent.getFuture(), buffer5, messageEvent.getRemoteAddress());
        } else if (message instanceof SpdyNoOpFrame) {
            ChannelBuffer buffer6 = ChannelBuffers.buffer(ByteOrder.BIG_ENDIAN, 8);
            buffer6.writeShort(this.version | 32768);
            buffer6.writeShort(5);
            buffer6.writeInt(0);
            Channels.write(channelHandlerContext, messageEvent.getFuture(), buffer6, messageEvent.getRemoteAddress());
        } else if (message instanceof SpdyPingFrame) {
            SpdyPingFrame spdyPingFrame = (SpdyPingFrame) message;
            ChannelBuffer buffer7 = ChannelBuffers.buffer(ByteOrder.BIG_ENDIAN, 12);
            buffer7.writeShort(this.version | 32768);
            buffer7.writeShort(6);
            buffer7.writeInt(4);
            buffer7.writeInt(spdyPingFrame.getId());
            Channels.write(channelHandlerContext, messageEvent.getFuture(), buffer7, messageEvent.getRemoteAddress());
        } else if (message instanceof SpdyGoAwayFrame) {
            SpdyGoAwayFrame spdyGoAwayFrame = (SpdyGoAwayFrame) message;
            if (this.version < 3) {
                i2 = 4;
            }
            ChannelBuffer buffer8 = ChannelBuffers.buffer(ByteOrder.BIG_ENDIAN, i2 + 8);
            buffer8.writeShort(this.version | 32768);
            buffer8.writeShort(7);
            buffer8.writeInt(i2);
            buffer8.writeInt(spdyGoAwayFrame.getLastGoodStreamId());
            if (this.version >= 3) {
                buffer8.writeInt(spdyGoAwayFrame.getStatus().getCode());
            }
            Channels.write(channelHandlerContext, messageEvent.getFuture(), buffer8, messageEvent.getRemoteAddress());
        } else if (message instanceof SpdyHeadersFrame) {
            synchronized (this.headerBlockCompressor) {
                SpdyHeadersFrame spdyHeadersFrame = (SpdyHeadersFrame) message;
                ChannelBuffer compressHeaderBlock3 = compressHeaderBlock(encodeHeaderBlock(this.version, spdyHeadersFrame));
                if (!spdyHeadersFrame.isLast()) {
                    i3 = 0;
                }
                int readableBytes3 = compressHeaderBlock3.readableBytes();
                int i10 = this.version < 3 ? readableBytes3 == 0 ? 4 : readableBytes3 + 6 : readableBytes3 + 4;
                ChannelBuffer buffer9 = ChannelBuffers.buffer(ByteOrder.BIG_ENDIAN, i10 + 8);
                buffer9.writeShort(this.version | 32768);
                buffer9.writeShort(8);
                buffer9.writeByte(i3);
                buffer9.writeMedium(i10);
                buffer9.writeInt(spdyHeadersFrame.getStreamId());
                if (this.version < 3 && compressHeaderBlock3.readableBytes() != 0) {
                    buffer9.writeShort(0);
                }
                Channels.write(channelHandlerContext, messageEvent.getFuture(), ChannelBuffers.wrappedBuffer(buffer9, compressHeaderBlock3), messageEvent.getRemoteAddress());
            }
        } else if (message instanceof SpdyWindowUpdateFrame) {
            SpdyWindowUpdateFrame spdyWindowUpdateFrame = (SpdyWindowUpdateFrame) message;
            ChannelBuffer buffer10 = ChannelBuffers.buffer(ByteOrder.BIG_ENDIAN, 16);
            buffer10.writeShort(this.version | 32768);
            buffer10.writeShort(9);
            buffer10.writeInt(8);
            buffer10.writeInt(spdyWindowUpdateFrame.getStreamId());
            buffer10.writeInt(spdyWindowUpdateFrame.getDeltaWindowSize());
            Channels.write(channelHandlerContext, messageEvent.getFuture(), buffer10, messageEvent.getRemoteAddress());
        } else {
            channelHandlerContext.sendDownstream(channelEvent);
        }
    }

    private static void writeLengthField(int i, ChannelBuffer channelBuffer, int i2) {
        if (i < 3) {
            channelBuffer.writeShort(i2);
        } else {
            channelBuffer.writeInt(i2);
        }
    }

    private static void setLengthField(int i, ChannelBuffer channelBuffer, int i2, int i3) {
        if (i < 3) {
            channelBuffer.setShort(i2, i3);
        } else {
            channelBuffer.setInt(i2, i3);
        }
    }

    private static ChannelBuffer encodeHeaderBlock(int i, SpdyHeaderBlock spdyHeaderBlock) throws Exception {
        int i2;
        Set<String> headerNames = spdyHeaderBlock.getHeaderNames();
        int size = headerNames.size();
        if (size == 0) {
            return ChannelBuffers.EMPTY_BUFFER;
        }
        if (size > 65535) {
            throw new IllegalArgumentException("header block contains too many headers");
        }
        ChannelBuffer dynamicBuffer = ChannelBuffers.dynamicBuffer(ByteOrder.BIG_ENDIAN, 256);
        writeLengthField(i, dynamicBuffer, size);
        for (String str : headerNames) {
            byte[] bytes = str.getBytes("UTF-8");
            writeLengthField(i, dynamicBuffer, bytes.length);
            dynamicBuffer.writeBytes(bytes);
            int writerIndex = dynamicBuffer.writerIndex();
            writeLengthField(i, dynamicBuffer, 0);
            int i3 = 0;
            for (String bytes2 : spdyHeaderBlock.getHeaders(str)) {
                byte[] bytes3 = bytes2.getBytes("UTF-8");
                if (bytes3.length > 0) {
                    dynamicBuffer.writeBytes(bytes3);
                    dynamicBuffer.writeByte(0);
                    i2 = bytes3.length + 1 + i3;
                } else {
                    i2 = i3;
                }
                i3 = i2;
            }
            if (i3 != 0) {
                i3--;
            } else if (i < 3) {
                throw new IllegalArgumentException("header value cannot be empty: " + str);
            }
            if (i3 > 65535) {
                throw new IllegalArgumentException("header exceeds allowable length: " + str);
            } else if (i3 > 0) {
                setLengthField(i, dynamicBuffer, writerIndex, i3);
                dynamicBuffer.writerIndex(dynamicBuffer.writerIndex() - 1);
            }
        }
        return dynamicBuffer;
    }

    private ChannelBuffer compressHeaderBlock(ChannelBuffer channelBuffer) throws Exception {
        if (channelBuffer.readableBytes() == 0) {
            return ChannelBuffers.EMPTY_BUFFER;
        }
        ChannelBuffer dynamicBuffer = ChannelBuffers.dynamicBuffer();
        if (this.finished) {
            return dynamicBuffer;
        }
        this.headerBlockCompressor.setInput(channelBuffer);
        this.headerBlockCompressor.encode(dynamicBuffer);
        return dynamicBuffer;
    }
}
