package org.jboss.netty.handler.stream;

import java.io.InputStream;
import java.io.PushbackInputStream;
import org.jboss.netty.buffer.ChannelBuffers;

public class ChunkedStream implements ChunkedInput {
    static final int DEFAULT_CHUNK_SIZE = 8192;
    private final int chunkSize;
    private final PushbackInputStream in;
    private long offset;

    public ChunkedStream(InputStream inputStream) {
        this(inputStream, 8192);
    }

    public ChunkedStream(InputStream inputStream, int i) {
        if (inputStream == null) {
            throw new NullPointerException("in");
        } else if (i <= 0) {
            throw new IllegalArgumentException("chunkSize: " + i + " (expected: a positive integer)");
        } else {
            if (inputStream instanceof PushbackInputStream) {
                this.in = (PushbackInputStream) inputStream;
            } else {
                this.in = new PushbackInputStream(inputStream);
            }
            this.chunkSize = i;
        }
    }

    public long getTransferredBytes() {
        return this.offset;
    }

    public boolean hasNextChunk() throws Exception {
        int read = this.in.read();
        if (read < 0) {
            return false;
        }
        this.in.unread(read);
        return true;
    }

    public boolean isEndOfInput() throws Exception {
        return !hasNextChunk();
    }

    public void close() throws Exception {
        this.in.close();
    }

    public Object nextChunk() throws Exception {
        int min;
        if (!hasNextChunk()) {
            return null;
        }
        if (this.in.available() <= 0) {
            min = this.chunkSize;
        } else {
            min = Math.min(this.chunkSize, this.in.available());
        }
        byte[] bArr = new byte[min];
        int i = 0;
        do {
            int read = this.in.read(bArr, i, min - i);
            if (read < 0) {
                break;
            }
            i += read;
            this.offset = ((long) read) + this.offset;
        } while (i != min);
        return ChannelBuffers.wrappedBuffer(bArr, 0, i);
    }
}
