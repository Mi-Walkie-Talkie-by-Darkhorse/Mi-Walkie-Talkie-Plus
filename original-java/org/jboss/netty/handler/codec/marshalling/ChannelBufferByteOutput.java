package org.jboss.netty.handler.codec.marshalling;

import java.io.IOException;
import org.jboss.marshalling.ByteOutput;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.ChannelBufferFactory;
import org.jboss.netty.buffer.ChannelBuffers;

class ChannelBufferByteOutput implements ByteOutput {
    private final ChannelBuffer buffer;

    public ChannelBufferByteOutput(ChannelBuffer channelBuffer) {
        this.buffer = channelBuffer;
    }

    public ChannelBufferByteOutput(ChannelBufferFactory channelBufferFactory, int i) {
        this(ChannelBuffers.dynamicBuffer(i, channelBufferFactory));
    }

    public void close() throws IOException {
    }

    public void flush() throws IOException {
    }

    public void write(int i) throws IOException {
        this.buffer.writeByte(i);
    }

    public void write(byte[] bArr) throws IOException {
        this.buffer.writeBytes(bArr);
    }

    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.buffer.writeBytes(bArr, i, i2);
    }

    public ChannelBuffer getBuffer() {
        return this.buffer;
    }
}
