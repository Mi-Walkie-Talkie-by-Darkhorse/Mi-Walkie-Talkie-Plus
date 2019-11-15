package org.jboss.netty.handler.codec.socks;

import org.jboss.netty.handler.codec.socks.SocksMessage.MessageType;

public abstract class SocksResponse extends SocksMessage {
    private final SocksResponseType socksResponseType;

    public enum SocksResponseType {
        INIT,
        AUTH,
        CMD,
        UNKNOWN
    }

    protected SocksResponse(SocksResponseType socksResponseType2) {
        super(MessageType.RESPONSE);
        if (socksResponseType2 == null) {
            throw new NullPointerException("socksResponseType");
        }
        this.socksResponseType = socksResponseType2;
    }

    public SocksResponseType getSocksResponseType() {
        return this.socksResponseType;
    }
}
