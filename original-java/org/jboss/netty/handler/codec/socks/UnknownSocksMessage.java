package org.jboss.netty.handler.codec.socks;

import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.handler.codec.socks.SocksMessage.MessageType;

public final class UnknownSocksMessage extends SocksMessage {
    public UnknownSocksMessage() {
        super(MessageType.UNKNOWN);
    }

    public void encodeAsByteBuf(ChannelBuffer channelBuffer) {
    }
}
