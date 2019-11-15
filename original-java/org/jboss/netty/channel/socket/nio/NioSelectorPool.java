package org.jboss.netty.channel.socket.nio;

public interface NioSelectorPool {
    void rebuildSelectors();

    void shutdown();
}
