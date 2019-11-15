package org.jboss.netty.handler.codec.http.websocket;

import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelHandler.Sharable;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.handler.codec.oneone.OneToOneEncoder;

@Deprecated
@Sharable
public class WebSocketFrameEncoder extends OneToOneEncoder {
    /* access modifiers changed from: protected */
    public Object encode(ChannelHandlerContext channelHandlerContext, Channel channel, Object obj) throws Exception {
        if (!(obj instanceof WebSocketFrame)) {
            return obj;
        }
        WebSocketFrame webSocketFrame = (WebSocketFrame) obj;
        int type = webSocketFrame.getType();
        if (webSocketFrame.isText()) {
            ChannelBuffer binaryData = webSocketFrame.getBinaryData();
            ChannelBuffer buffer = channel.getConfig().getBufferFactory().getBuffer(binaryData.order(), binaryData.readableBytes() + 2);
            buffer.writeByte((byte) type);
            buffer.writeBytes(binaryData, binaryData.readerIndex(), binaryData.readableBytes());
            buffer.writeByte(-1);
            return buffer;
        }
        ChannelBuffer binaryData2 = webSocketFrame.getBinaryData();
        int readableBytes = binaryData2.readableBytes();
        ChannelBuffer buffer2 = channel.getConfig().getBufferFactory().getBuffer(binaryData2.order(), readableBytes + 5);
        buffer2.writeByte((byte) type);
        int i = (readableBytes >>> 28) & 127;
        int i2 = (readableBytes >>> 14) & 127;
        int i3 = (readableBytes >>> 7) & 127;
        int i4 = readableBytes & 127;
        if (i != 0) {
            buffer2.writeByte(i | 128);
            buffer2.writeByte(i2 | 128);
            buffer2.writeByte(i3 | 128);
            buffer2.writeByte(i4);
        } else if (i2 != 0) {
            buffer2.writeByte(i2 | 128);
            buffer2.writeByte(i3 | 128);
            buffer2.writeByte(i4);
        } else if (i3 == 0) {
            buffer2.writeByte(i4);
        } else {
            buffer2.writeByte(i3 | 128);
            buffer2.writeByte(i4);
        }
        buffer2.writeBytes(binaryData2, binaryData2.readerIndex(), readableBytes);
        return buffer2;
    }
}
