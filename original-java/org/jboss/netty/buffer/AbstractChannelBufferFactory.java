package org.jboss.netty.buffer;

import java.nio.ByteOrder;

public abstract class AbstractChannelBufferFactory implements ChannelBufferFactory {
    private final ByteOrder defaultOrder;

    protected AbstractChannelBufferFactory() {
        this(ByteOrder.BIG_ENDIAN);
    }

    protected AbstractChannelBufferFactory(ByteOrder byteOrder) {
        if (byteOrder == null) {
            throw new NullPointerException("defaultOrder");
        }
        this.defaultOrder = byteOrder;
    }

    public ChannelBuffer getBuffer(int i) {
        return getBuffer(getDefaultOrder(), i);
    }

    public ChannelBuffer getBuffer(byte[] bArr, int i, int i2) {
        return getBuffer(getDefaultOrder(), bArr, i, i2);
    }

    public ByteOrder getDefaultOrder() {
        return this.defaultOrder;
    }
}
