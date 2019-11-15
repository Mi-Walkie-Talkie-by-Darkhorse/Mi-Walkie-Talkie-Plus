package org.jboss.netty.channel.socket.nio;

import java.net.ProtocolFamily;
import java.net.StandardProtocolFamily;
import org.jboss.netty.channel.socket.InternetProtocolFamily;

final class ProtocolFamilyConverter {
    private ProtocolFamilyConverter() {
    }

    public static ProtocolFamily convert(InternetProtocolFamily internetProtocolFamily) {
        switch (internetProtocolFamily) {
            case IPv4:
                return StandardProtocolFamily.INET;
            case IPv6:
                return StandardProtocolFamily.INET6;
            default:
                throw new IllegalArgumentException();
        }
    }
}
