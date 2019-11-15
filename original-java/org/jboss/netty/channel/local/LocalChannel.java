package org.jboss.netty.channel.local;

import org.jboss.netty.channel.Channel;

public interface LocalChannel extends Channel {
    LocalAddress getLocalAddress();

    LocalAddress getRemoteAddress();
}
