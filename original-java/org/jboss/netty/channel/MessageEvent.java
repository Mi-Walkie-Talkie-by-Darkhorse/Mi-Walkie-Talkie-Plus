package org.jboss.netty.channel;

import java.net.SocketAddress;

public interface MessageEvent extends ChannelEvent {
    Object getMessage();

    SocketAddress getRemoteAddress();
}
