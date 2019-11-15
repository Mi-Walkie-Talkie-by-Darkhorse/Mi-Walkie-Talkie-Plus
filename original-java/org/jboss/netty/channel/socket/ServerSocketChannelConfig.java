package org.jboss.netty.channel.socket;

import org.jboss.netty.channel.ChannelConfig;

public interface ServerSocketChannelConfig extends ChannelConfig {
    int getBacklog();

    int getReceiveBufferSize();

    boolean isReuseAddress();

    void setBacklog(int i);

    void setPerformancePreferences(int i, int i2, int i3);

    void setReceiveBufferSize(int i);

    void setReuseAddress(boolean z);
}
