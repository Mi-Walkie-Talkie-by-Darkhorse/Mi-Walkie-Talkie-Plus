package org.jboss.netty.channel.local;

import java.util.concurrent.ConcurrentMap;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.util.internal.ConcurrentHashMap;

final class LocalChannelRegistry {
    private static final ConcurrentMap<LocalAddress, Channel> map = new ConcurrentHashMap();

    static boolean isRegistered(LocalAddress localAddress) {
        return map.containsKey(localAddress);
    }

    static Channel getChannel(LocalAddress localAddress) {
        return (Channel) map.get(localAddress);
    }

    static boolean register(LocalAddress localAddress, Channel channel) {
        return map.putIfAbsent(localAddress, channel) == null;
    }

    static boolean unregister(LocalAddress localAddress) {
        return map.remove(localAddress) != null;
    }

    private LocalChannelRegistry() {
    }
}
