package org.jboss.netty.handler.codec.socks;

import org.jboss.netty.handler.codec.socks.SocksMessage.MessageType;

public abstract class SocksRequest extends SocksMessage {
    private final SocksRequestType socksRequestType;

    public enum SocksRequestType {
        INIT,
        AUTH,
        CMD,
        UNKNOWN
    }

    protected SocksRequest(SocksRequestType socksRequestType2) {
        super(MessageType.REQUEST);
        if (socksRequestType2 == null) {
            throw new NullPointerException("socksRequestType");
        }
        this.socksRequestType = socksRequestType2;
    }

    public SocksRequestType getSocksRequestType() {
        return this.socksRequestType;
    }
}
