package org.jboss.netty.handler.codec.http.websocketx;

import java.nio.ByteBuffer;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.ChannelBuffers;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.handler.codec.frame.TooLongFrameException;
import org.jboss.netty.handler.codec.oneone.OneToOneEncoder;
import org.jboss.netty.logging.InternalLogger;
import org.jboss.netty.logging.InternalLoggerFactory;

public class WebSocket08FrameEncoder extends OneToOneEncoder {
    private static final byte OPCODE_BINARY = 2;
    private static final byte OPCODE_CLOSE = 8;
    private static final byte OPCODE_CONT = 0;
    private static final byte OPCODE_PING = 9;
    private static final byte OPCODE_PONG = 10;
    private static final byte OPCODE_TEXT = 1;
    private static final InternalLogger logger = InternalLoggerFactory.getInstance(WebSocket08FrameEncoder.class);
    private final boolean maskPayload;

    public WebSocket08FrameEncoder(boolean z) {
        this.maskPayload = z;
    }

    /* access modifiers changed from: protected */
    public Object encode(ChannelHandlerContext channelHandlerContext, Channel channel, Object obj) throws Exception {
        int i;
        ChannelBuffer channelBuffer;
        if (!(obj instanceof WebSocketFrame)) {
            return obj;
        }
        WebSocketFrame webSocketFrame = (WebSocketFrame) obj;
        ChannelBuffer binaryData = webSocketFrame.getBinaryData();
        if (binaryData == null) {
            binaryData = ChannelBuffers.EMPTY_BUFFER;
        }
        if (webSocketFrame instanceof TextWebSocketFrame) {
            i = 1;
        } else if (webSocketFrame instanceof PingWebSocketFrame) {
            i = 9;
        } else if (webSocketFrame instanceof PongWebSocketFrame) {
            i = 10;
        } else if (webSocketFrame instanceof CloseWebSocketFrame) {
            i = 8;
        } else if (webSocketFrame instanceof BinaryWebSocketFrame) {
            i = 2;
        } else if (webSocketFrame instanceof ContinuationWebSocketFrame) {
            i = 0;
        } else {
            throw new UnsupportedOperationException("Cannot encode frame of type: " + webSocketFrame.getClass().getName());
        }
        int readableBytes = binaryData.readableBytes();
        if (logger.isDebugEnabled()) {
            logger.debug("Encoding WebSocket Frame opCode=" + i + " length=" + readableBytes);
        }
        int i2 = 0;
        if (webSocketFrame.isFinalFragment()) {
            i2 = 128;
        }
        int rsv = (i % 128) | i2 | ((webSocketFrame.getRsv() % 8) << 4);
        if (i != 9 || readableBytes <= 125) {
            int i3 = this.maskPayload ? 4 : 0;
            if (readableBytes <= 125) {
                ChannelBuffer buffer = ChannelBuffers.buffer(i3 + 2);
                buffer.writeByte(rsv);
                buffer.writeByte((byte) (this.maskPayload ? ((byte) readableBytes) | 128 : (byte) readableBytes));
                channelBuffer = buffer;
            } else if (readableBytes <= 65535) {
                ChannelBuffer buffer2 = ChannelBuffers.buffer(i3 + 4);
                buffer2.writeByte(rsv);
                buffer2.writeByte(this.maskPayload ? 254 : 126);
                buffer2.writeByte((readableBytes >>> 8) & 255);
                buffer2.writeByte(readableBytes & 255);
                channelBuffer = buffer2;
            } else {
                ChannelBuffer buffer3 = ChannelBuffers.buffer(i3 + 10);
                buffer3.writeByte(rsv);
                buffer3.writeByte(this.maskPayload ? 255 : 127);
                buffer3.writeLong((long) readableBytes);
                channelBuffer = buffer3;
            }
            if (this.maskPayload) {
                byte[] array = ByteBuffer.allocate(4).putInt(Integer.valueOf((int) (Math.random() * 2.147483647E9d)).intValue()).array();
                channelBuffer.writeBytes(array);
                ChannelBuffer buffer4 = ChannelBuffers.buffer(readableBytes);
                int i4 = 0;
                while (binaryData.readableBytes() > 0) {
                    int i5 = i4 + 1;
                    buffer4.writeByte(array[i4 % 4] ^ binaryData.readByte());
                    i4 = i5;
                }
                binaryData = buffer4;
            }
            return ChannelBuffers.wrappedBuffer(channelBuffer, binaryData);
        }
        throw new TooLongFrameException("invalid payload for PING (payload length must be <= 125, was " + readableBytes);
    }
}
