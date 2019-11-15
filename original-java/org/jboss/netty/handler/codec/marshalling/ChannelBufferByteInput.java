package org.jboss.netty.handler.codec.marshalling;

import java.io.IOException;
import org.jboss.marshalling.ByteInput;
import org.jboss.netty.buffer.ChannelBuffer;

class ChannelBufferByteInput implements ByteInput {
    private final ChannelBuffer buffer;

    public ChannelBufferByteInput(ChannelBuffer channelBuffer) {
        this.buffer = channelBuffer;
    }

    public void close() throws IOException {
    }

    public int available() throws IOException {
        return this.buffer.readableBytes();
    }

    public int read() throws IOException {
        if (this.buffer.readable()) {
            return this.buffer.readByte() & 255;
        }
        return -1;
    }

    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    public int read(byte[] bArr, int i, int i2) throws IOException {
        int available = available();
        if (available == 0) {
            return -1;
        }
        int min = Math.min(available, i2);
        this.buffer.readBytes(bArr, i, min);
        return min;
    }

    public long skip(long j) throws IOException {
        int readableBytes = this.buffer.readableBytes();
        if (((long) readableBytes) < j) {
            j = (long) readableBytes;
        }
        this.buffer.readerIndex((int) (((long) this.buffer.readerIndex()) + j));
        return j;
    }
}
