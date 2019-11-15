package org.jboss.netty.handler.stream;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import org.jboss.netty.buffer.ChannelBuffers;

public class ChunkedNioFile implements ChunkedInput {
    private final int chunkSize;
    private final long endOffset;
    private final FileChannel in;
    private long offset;
    private final long startOffset;

    public ChunkedNioFile(File file) throws IOException {
        this(new FileInputStream(file).getChannel());
    }

    public ChunkedNioFile(File file, int i) throws IOException {
        this(new FileInputStream(file).getChannel(), i);
    }

    public ChunkedNioFile(FileChannel fileChannel) throws IOException {
        this(fileChannel, 8192);
    }

    public ChunkedNioFile(FileChannel fileChannel, int i) throws IOException {
        this(fileChannel, 0, fileChannel.size(), i);
    }

    public ChunkedNioFile(FileChannel fileChannel, long j, long j2, int i) throws IOException {
        if (fileChannel == null) {
            throw new NullPointerException("in");
        } else if (j < 0) {
            throw new IllegalArgumentException("offset: " + j + " (expected: 0 or greater)");
        } else if (j2 < 0) {
            throw new IllegalArgumentException("length: " + j2 + " (expected: 0 or greater)");
        } else if (i <= 0) {
            throw new IllegalArgumentException("chunkSize: " + i + " (expected: a positive integer)");
        } else {
            if (j != 0) {
                fileChannel.position(j);
            }
            this.in = fileChannel;
            this.chunkSize = i;
            this.startOffset = j;
            this.offset = j;
            this.endOffset = j + j2;
        }
    }

    public long getStartOffset() {
        return this.startOffset;
    }

    public long getEndOffset() {
        return this.endOffset;
    }

    public long getCurrentOffset() {
        return this.offset;
    }

    public boolean hasNextChunk() throws Exception {
        return this.offset < this.endOffset && this.in.isOpen();
    }

    public boolean isEndOfInput() throws Exception {
        return !hasNextChunk();
    }

    public void close() throws Exception {
        this.in.close();
    }

    public Object nextChunk() throws Exception {
        long j = this.offset;
        if (j >= this.endOffset) {
            return null;
        }
        int min = (int) Math.min((long) this.chunkSize, this.endOffset - j);
        byte[] bArr = new byte[min];
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        int i = 0;
        do {
            int read = this.in.read(wrap);
            if (read < 0) {
                break;
            }
            i += read;
        } while (i != min);
        this.offset = ((long) i) + this.offset;
        return ChannelBuffers.wrappedBuffer(bArr);
    }
}
