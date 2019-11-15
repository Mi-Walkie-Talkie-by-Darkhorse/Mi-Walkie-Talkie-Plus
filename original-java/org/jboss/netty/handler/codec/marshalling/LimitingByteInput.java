package org.jboss.netty.handler.codec.marshalling;

import java.io.IOException;
import org.jboss.marshalling.ByteInput;

class LimitingByteInput implements ByteInput {
    private static final TooBigObjectException EXCEPTION = new TooBigObjectException();
    private final ByteInput input;
    private final long limit;
    private long read;

    static final class TooBigObjectException extends IOException {
        private static final long serialVersionUID = 1;

        TooBigObjectException() {
        }
    }

    public LimitingByteInput(ByteInput byteInput, long j) {
        if (j <= 0) {
            throw new IllegalArgumentException("The limit MUST be > 0");
        }
        this.input = byteInput;
        this.limit = j;
    }

    public void close() throws IOException {
    }

    public int available() throws IOException {
        return readable(this.input.available());
    }

    public int read() throws IOException {
        if (readable(1) > 0) {
            int read2 = this.input.read();
            this.read++;
            return read2;
        }
        throw EXCEPTION;
    }

    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    public int read(byte[] bArr, int i, int i2) throws IOException {
        int readable = readable(i2);
        if (readable > 0) {
            int read2 = this.input.read(bArr, i, readable);
            this.read += (long) read2;
            return read2;
        }
        throw EXCEPTION;
    }

    public long skip(long j) throws IOException {
        int readable = readable((int) j);
        if (readable > 0) {
            long skip = this.input.skip((long) readable);
            this.read += skip;
            return skip;
        }
        throw EXCEPTION;
    }

    private int readable(int i) {
        return (int) Math.min((long) i, this.limit - this.read);
    }
}
