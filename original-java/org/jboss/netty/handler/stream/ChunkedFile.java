package org.jboss.netty.handler.stream;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import org.jboss.netty.buffer.ChannelBuffers;

public class ChunkedFile implements ChunkedInput {
    private final int chunkSize;
    private final long endOffset;
    private final RandomAccessFile file;
    private long offset;
    private final long startOffset;

    public ChunkedFile(File file2) throws IOException {
        this(file2, 8192);
    }

    public ChunkedFile(File file2, int i) throws IOException {
        this(new RandomAccessFile(file2, "r"), i);
    }

    public ChunkedFile(RandomAccessFile randomAccessFile) throws IOException {
        this(randomAccessFile, 8192);
    }

    public ChunkedFile(RandomAccessFile randomAccessFile, int i) throws IOException {
        this(randomAccessFile, 0, randomAccessFile.length(), i);
    }

    public ChunkedFile(RandomAccessFile randomAccessFile, long j, long j2, int i) throws IOException {
        if (randomAccessFile == null) {
            throw new NullPointerException(HttpPostBodyUtil.FILE);
        } else if (j < 0) {
            throw new IllegalArgumentException("offset: " + j + " (expected: 0 or greater)");
        } else if (j2 < 0) {
            throw new IllegalArgumentException("length: " + j2 + " (expected: 0 or greater)");
        } else if (i <= 0) {
            throw new IllegalArgumentException("chunkSize: " + i + " (expected: a positive integer)");
        } else {
            this.file = randomAccessFile;
            this.startOffset = j;
            this.offset = j;
            this.endOffset = j + j2;
            this.chunkSize = i;
            randomAccessFile.seek(j);
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
        return this.offset < this.endOffset && this.file.getChannel().isOpen();
    }

    public boolean isEndOfInput() throws Exception {
        return !hasNextChunk();
    }

    public void close() throws Exception {
        this.file.close();
    }

    public Object nextChunk() throws Exception {
        long j = this.offset;
        if (j >= this.endOffset) {
            return null;
        }
        int min = (int) Math.min((long) this.chunkSize, this.endOffset - j);
        byte[] bArr = new byte[min];
        this.file.readFully(bArr);
        this.offset = j + ((long) min);
        return ChannelBuffers.wrappedBuffer(bArr);
    }
}
