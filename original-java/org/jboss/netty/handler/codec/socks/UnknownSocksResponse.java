package org.jboss.netty.handler.codec.socks;

import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.handler.codec.socks.SocksResponse.SocksResponseType;

public final class UnknownSocksResponse extends SocksResponse {
    public UnknownSocksResponse() {
        super(SocksResponseType.UNKNOWN);
    }

    public void encodeAsByteBuf(ChannelBuffer channelBuffer) {
    }
}
