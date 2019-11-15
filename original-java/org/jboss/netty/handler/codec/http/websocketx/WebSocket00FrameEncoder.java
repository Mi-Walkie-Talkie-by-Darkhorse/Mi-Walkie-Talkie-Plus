package org.jboss.netty.handler.codec.http.websocketx;

import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelHandler.Sharable;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.handler.codec.oneone.OneToOneEncoder;

@Sharable
public class WebSocket00FrameEncoder extends OneToOneEncoder {
    /* access modifiers changed from: protected */
    public Object encode(ChannelHandlerContext channelHandlerContext, Channel channel, Object obj) throws Exception {
        if (!(obj instanceof WebSocketFrame)) {
            return obj;
        }
        WebSocketFrame webSocketFrame = (WebSocketFrame) obj;
        if (webSocketFrame instanceof TextWebSocketFrame) {
            ChannelBuffer binaryData = webSocketFrame.getBinaryData();
            ChannelBuffer buffer = channel.getConfig().getBufferFactory().getBuffer(binaryData.order(), binaryData.readableBytes() + 2);
            buffer.writeByte(0);
            buffer.writeBytes(binaryData, binaryData.readerIndex(), binaryData.readableBytes());
            buffer.writeByte(-1);
            return buffer;
        } else if (webSocketFrame instanceof CloseWebSocketFrame) {
            ChannelBuffer buffer2 = channel.getConfig().getBufferFactory().getBuffer(webSocketFrame.getBinaryData().order(), 2);
            buffer2.writeByte(-1);
            buffer2.writeByte(0);
            return buffer2;
        } else {
            ChannelBuffer binaryData2 = webSocketFrame.getBinaryData();
            int readableBytes = binaryData2.readableBytes();
            ChannelBuffer buffer3 = channel.getConfig().getBufferFactory().getBuffer(binaryData2.order(), readableBytes + 5);
            buffer3.writeByte(-128);
            int i = (readableBytes >>> 28) & 127;
            int i2 = (readableBytes >>> 14) & 127;
            int i3 = (readableBytes >>> 7) & 127;
            int i4 = readableBytes & 127;
            if (i != 0) {
                buffer3.writeByte(i | 128);
                buffer3.writeByte(i2 | 128);
                buffer3.writeByte(i3 | 128);
                buffer3.writeByte(i4);
            } else if (i2 != 0) {
                buffer3.writeByte(i2 | 128);
                buffer3.writeByte(i3 | 128);
                buffer3.writeByte(i4);
            } else if (i3 == 0) {
                buffer3.writeByte(i4);
            } else {
                buffer3.writeByte(i3 | 128);
                buffer3.writeByte(i4);
            }
            buffer3.writeBytes(binaryData2, binaryData2.readerIndex(), readableBytes);
            return buffer3;
        }
    }
}
