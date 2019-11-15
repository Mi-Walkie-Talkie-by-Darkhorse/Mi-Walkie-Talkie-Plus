package org.jboss.netty.buffer;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public interface ChannelBufferFactory {
    ChannelBuffer getBuffer(int i);

    ChannelBuffer getBuffer(ByteBuffer byteBuffer);

    ChannelBuffer getBuffer(ByteOrder byteOrder, int i);

    ChannelBuffer getBuffer(ByteOrder byteOrder, byte[] bArr, int i, int i2);

    ChannelBuffer getBuffer(byte[] bArr, int i, int i2);

    ByteOrder getDefaultOrder();
}
