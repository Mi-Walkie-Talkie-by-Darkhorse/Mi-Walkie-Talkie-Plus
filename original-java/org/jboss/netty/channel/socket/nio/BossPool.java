package org.jboss.netty.channel.socket.nio;

import org.jboss.netty.channel.socket.nio.Boss;

public interface BossPool<E extends Boss> extends NioSelectorPool {
    E nextBoss();
}
