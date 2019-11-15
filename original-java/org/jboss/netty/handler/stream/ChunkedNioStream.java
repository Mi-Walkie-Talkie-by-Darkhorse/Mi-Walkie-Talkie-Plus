package org.jboss.netty.handler.stream;

import java.nio.ByteBuffer;
import java.nio.channels.ReadableByteChannel;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.ChannelBuffers;

public class ChunkedNioStream implements ChunkedInput {
    private final ByteBuffer byteBuffer;
    private final int chunkSize;
    private final ReadableByteChannel in;
    private long offset;

    public ChunkedNioStream(ReadableByteChannel readableByteChannel) {
        this(readableByteChannel, 8192);
    }

    public ChunkedNioStream(ReadableByteChannel readableByteChannel, int i) {
        if (readableByteChannel == null) {
            throw new NullPointerException("in");
        } else if (i <= 0) {
            throw new IllegalArgumentException("chunkSize: " + i + " (expected: a positive integer)");
        } else {
            this.in = readableByteChannel;
            this.offset = 0;
            this.chunkSize = i;
            this.byteBuffer = ByteBuffer.allocate(i);
        }
    }

    public long getTransferredBytes() {
        return this.offset;
    }

    public boolean hasNextChunk() throws Exception {
        if (this.byteBuffer.position() > 0) {
            return true;
        }
        if (!this.in.isOpen()) {
            return false;
        }
        int read = this.in.read(this.byteBuffer);
        if (read < 0) {
            return false;
        }
        this.offset = ((long) read) + this.offset;
        return true;
    }

    public boolean isEndOfInput() throws Exception {
        return !hasNextChunk();
    }

    public void close() throws Exception {
        this.in.close();
    }

    public Object nextChunk() throws Exception {
        if (!hasNextChunk()) {
            return null;
        }
        int position = this.byteBuffer.position();
        do {
            int read = this.in.read(this.byteBuffer);
            if (read < 0) {
                break;
            }
            position += read;
            this.offset += (long) read;
        } while (position != this.chunkSize);
        this.byteBuffer.flip();
        ChannelBuffer copiedBuffer = ChannelBuffers.copiedBuffer(this.byteBuffer);
        this.byteBuffer.clear();
        return copiedBuffer;
    }
}
