package org.jboss.netty.channel;

public class FixedReceiveBufferSizePredictor implements ReceiveBufferSizePredictor {
    private final int bufferSize;

    public FixedReceiveBufferSizePredictor(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("bufferSize must greater than 0: " + i);
        }
        this.bufferSize = i;
    }

    public int nextReceiveBufferSize() {
        return this.bufferSize;
    }

    public void previousReceiveBufferSize(int i) {
    }
}
