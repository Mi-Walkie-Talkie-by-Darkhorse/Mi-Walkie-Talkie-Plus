package org.jboss.netty.channel;

public interface ReceiveBufferSizePredictor {
    int nextReceiveBufferSize();

    void previousReceiveBufferSize(int i);
}
