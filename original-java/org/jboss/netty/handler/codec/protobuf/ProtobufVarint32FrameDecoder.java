package org.jboss.netty.handler.codec.protobuf;

import com.google.protobuf.CodedInputStream;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.handler.codec.frame.CorruptedFrameException;
import org.jboss.netty.handler.codec.frame.FrameDecoder;

public class ProtobufVarint32FrameDecoder extends FrameDecoder {
    /* access modifiers changed from: protected */
    public Object decode(ChannelHandlerContext channelHandlerContext, Channel channel, ChannelBuffer channelBuffer) throws Exception {
        channelBuffer.markReaderIndex();
        byte[] bArr = new byte[5];
        int i = 0;
        while (i < bArr.length) {
            if (!channelBuffer.readable()) {
                channelBuffer.resetReaderIndex();
                return null;
            }
            bArr[i] = channelBuffer.readByte();
            if (bArr[i] >= 0) {
                int readRawVarint32 = CodedInputStream.newInstance(bArr, 0, i + 1).readRawVarint32();
                if (readRawVarint32 < 0) {
                    throw new CorruptedFrameException("negative length: " + readRawVarint32);
                } else if (channelBuffer.readableBytes() >= readRawVarint32) {
                    return channelBuffer.readBytes(readRawVarint32);
                } else {
                    channelBuffer.resetReaderIndex();
                    return null;
                }
            } else {
                i++;
            }
        }
        throw new CorruptedFrameException("length wider than 32-bit");
    }
}
