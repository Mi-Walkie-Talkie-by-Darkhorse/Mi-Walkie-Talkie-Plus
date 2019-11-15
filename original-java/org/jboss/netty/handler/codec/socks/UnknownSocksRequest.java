package org.jboss.netty.handler.codec.socks;

import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.handler.codec.socks.SocksRequest.SocksRequestType;

public final class UnknownSocksRequest extends SocksRequest {
    public UnknownSocksRequest() {
        super(SocksRequestType.UNKNOWN);
    }

    public void encodeAsByteBuf(ChannelBuffer channelBuffer) {
    }
}
