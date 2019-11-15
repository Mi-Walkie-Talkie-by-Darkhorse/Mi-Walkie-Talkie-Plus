package org.jboss.netty.handler.codec.socks;

import java.util.Collections;
import java.util.List;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.handler.codec.socks.SocksMessage.AuthScheme;
import org.jboss.netty.handler.codec.socks.SocksRequest.SocksRequestType;

public final class SocksInitRequest extends SocksRequest {
    private final List<AuthScheme> authSchemes;

    public SocksInitRequest(List<AuthScheme> list) {
        super(SocksRequestType.INIT);
        if (list == null) {
            throw new NullPointerException("authSchemes");
        }
        this.authSchemes = list;
    }

    public List<AuthScheme> getAuthSchemes() {
        return Collections.unmodifiableList(this.authSchemes);
    }

    public void encodeAsByteBuf(ChannelBuffer channelBuffer) {
        channelBuffer.writeByte(getProtocolVersion().getByteValue());
        channelBuffer.writeByte(this.authSchemes.size());
        for (AuthScheme byteValue : this.authSchemes) {
            channelBuffer.writeByte(byteValue.getByteValue());
        }
    }
}
