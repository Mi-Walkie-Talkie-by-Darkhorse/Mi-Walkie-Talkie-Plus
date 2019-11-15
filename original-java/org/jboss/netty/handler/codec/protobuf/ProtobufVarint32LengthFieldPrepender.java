package org.jboss.netty.handler.codec.protobuf;

import com.google.protobuf.CodedOutputStream;
import java.io.OutputStream;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.ChannelBufferOutputStream;
import org.jboss.netty.buffer.ChannelBuffers;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelHandler.Sharable;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.handler.codec.oneone.OneToOneEncoder;

@Sharable
public class ProtobufVarint32LengthFieldPrepender extends OneToOneEncoder {
    /* access modifiers changed from: protected */
    public Object encode(ChannelHandlerContext channelHandlerContext, Channel channel, Object obj) throws Exception {
        if (!(obj instanceof ChannelBuffer)) {
            return obj;
        }
        ChannelBuffer channelBuffer = (ChannelBuffer) obj;
        int readableBytes = channelBuffer.readableBytes();
        ChannelBuffer buffer = channel.getConfig().getBufferFactory().getBuffer(channelBuffer.order(), CodedOutputStream.computeRawVarint32Size(readableBytes));
        CodedOutputStream newInstance = CodedOutputStream.newInstance((OutputStream) new ChannelBufferOutputStream(buffer));
        newInstance.writeRawVarint32(readableBytes);
        newInstance.flush();
        return ChannelBuffers.wrappedBuffer(buffer, channelBuffer);
    }
}
