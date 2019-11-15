package org.jboss.netty.channel.socket;

import java.net.InetAddress;
import java.net.NetworkInterface;
import org.jboss.netty.channel.ChannelConfig;
import org.jboss.netty.channel.ReceiveBufferSizePredictor;
import org.jboss.netty.channel.ReceiveBufferSizePredictorFactory;

public interface DatagramChannelConfig extends ChannelConfig {
    InetAddress getInterface();

    NetworkInterface getNetworkInterface();

    int getReceiveBufferSize();

    ReceiveBufferSizePredictor getReceiveBufferSizePredictor();

    ReceiveBufferSizePredictorFactory getReceiveBufferSizePredictorFactory();

    int getSendBufferSize();

    int getTimeToLive();

    int getTrafficClass();

    boolean isBroadcast();

    boolean isLoopbackModeDisabled();

    boolean isReuseAddress();

    void setBroadcast(boolean z);

    void setInterface(InetAddress inetAddress);

    void setLoopbackModeDisabled(boolean z);

    void setNetworkInterface(NetworkInterface networkInterface);

    void setReceiveBufferSize(int i);

    void setReceiveBufferSizePredictor(ReceiveBufferSizePredictor receiveBufferSizePredictor);

    void setReceiveBufferSizePredictorFactory(ReceiveBufferSizePredictorFactory receiveBufferSizePredictorFactory);

    void setReuseAddress(boolean z);

    void setSendBufferSize(int i);

    void setTimeToLive(int i);

    void setTrafficClass(int i);
}
