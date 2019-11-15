package org.jboss.netty.channel.socket;

import org.jboss.netty.channel.ChannelConfig;

public interface SocketChannelConfig extends ChannelConfig {
    int getReceiveBufferSize();

    int getSendBufferSize();

    int getSoLinger();

    int getTrafficClass();

    boolean isKeepAlive();

    boolean isReuseAddress();

    boolean isTcpNoDelay();

    void setKeepAlive(boolean z);

    void setPerformancePreferences(int i, int i2, int i3);

    void setReceiveBufferSize(int i);

    void setReuseAddress(boolean z);

    void setSendBufferSize(int i);

    void setSoLinger(int i);

    void setTcpNoDelay(boolean z);

    void setTrafficClass(int i);
}
