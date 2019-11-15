package org.jboss.netty.handler.codec.marshalling;

import org.jboss.marshalling.MarshallerFactory;
import org.jboss.marshalling.MarshallingConfiguration;
import org.jboss.marshalling.Unmarshaller;
import org.jboss.netty.channel.ChannelHandlerContext;

public class ContextBoundUnmarshallerProvider extends DefaultUnmarshallerProvider {
    public ContextBoundUnmarshallerProvider(MarshallerFactory marshallerFactory, MarshallingConfiguration marshallingConfiguration) {
        super(marshallerFactory, marshallingConfiguration);
    }

    public Unmarshaller getUnmarshaller(ChannelHandlerContext channelHandlerContext) throws Exception {
        Unmarshaller unmarshaller = (Unmarshaller) channelHandlerContext.getAttachment();
        if (unmarshaller != null) {
            return unmarshaller;
        }
        Unmarshaller unmarshaller2 = super.getUnmarshaller(channelHandlerContext);
        channelHandlerContext.setAttachment(unmarshaller2);
        return unmarshaller2;
    }
}
