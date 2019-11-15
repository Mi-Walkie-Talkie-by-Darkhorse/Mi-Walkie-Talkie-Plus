package org.jboss.netty.handler.codec.protobuf;

import com.google.protobuf.MessageLite;
import com.google.protobuf.MessageLite.Builder;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelHandler.Sharable;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.handler.codec.oneone.OneToOneEncoder;

@Sharable
public class ProtobufEncoder extends OneToOneEncoder {
    /* access modifiers changed from: protected */
    public Object encode(ChannelHandlerContext channelHandlerContext, Channel channel, Object obj) throws Exception {
        if (obj instanceof MessageLite) {
            byte[] byteArray = ((MessageLite) obj).toByteArray();
            return channelHandlerContext.getChannel().getConfig().getBufferFactory().getBuffer(byteArray, 0, byteArray.length);
        } else if (!(obj instanceof Builder)) {
            return obj;
        } else {
            byte[] byteArray2 = ((Builder) obj).build().toByteArray();
            return channelHandlerContext.getChannel().getConfig().getBufferFactory().getBuffer(byteArray2, 0, byteArray2.length);
        }
    }
}
