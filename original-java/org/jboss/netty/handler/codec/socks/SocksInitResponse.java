package org.jboss.netty.handler.codec.socks;

import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.handler.codec.socks.SocksMessage.AuthScheme;
import org.jboss.netty.handler.codec.socks.SocksResponse.SocksResponseType;

public final class SocksInitResponse extends SocksResponse {
    private final AuthScheme authScheme;

    public SocksInitResponse(AuthScheme authScheme2) {
        super(SocksResponseType.INIT);
        if (authScheme2 == null) {
            throw new NullPointerException("authScheme");
        }
        this.authScheme = authScheme2;
    }

    public AuthScheme getAuthScheme() {
        return this.authScheme;
    }

    public void encodeAsByteBuf(ChannelBuffer channelBuffer) {
        channelBuffer.writeByte(getProtocolVersion().getByteValue());
        channelBuffer.writeByte(this.authScheme.getByteValue());
    }
}
