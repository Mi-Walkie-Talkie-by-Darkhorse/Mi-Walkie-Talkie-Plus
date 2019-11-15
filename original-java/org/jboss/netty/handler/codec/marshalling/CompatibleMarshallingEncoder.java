package org.jboss.netty.handler.codec.marshalling;

import org.jboss.marshalling.Marshaller;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelHandler.Sharable;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.handler.codec.oneone.OneToOneEncoder;

@Sharable
public class CompatibleMarshallingEncoder extends OneToOneEncoder {
    private final MarshallerProvider provider;

    public CompatibleMarshallingEncoder(MarshallerProvider marshallerProvider) {
        this.provider = marshallerProvider;
    }

    /* access modifiers changed from: protected */
    public Object encode(ChannelHandlerContext channelHandlerContext, Channel channel, Object obj) throws Exception {
        Marshaller marshaller = this.provider.getMarshaller(channelHandlerContext);
        ChannelBufferByteOutput channelBufferByteOutput = new ChannelBufferByteOutput(channelHandlerContext.getChannel().getConfig().getBufferFactory(), 256);
        marshaller.start(channelBufferByteOutput);
        marshaller.writeObject(obj);
        marshaller.finish();
        marshaller.close();
        return channelBufferByteOutput.getBuffer();
    }
}
