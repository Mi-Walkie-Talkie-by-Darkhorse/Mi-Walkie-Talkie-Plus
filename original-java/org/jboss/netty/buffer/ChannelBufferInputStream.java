package org.jboss.netty.buffer;

import java.io.DataInput;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;

public class ChannelBufferInputStream extends InputStream implements DataInput {
    private final ChannelBuffer buffer;
    private final int endIndex;
    private final StringBuilder lineBuf;
    private final int startIndex;

    public ChannelBufferInputStream(ChannelBuffer channelBuffer) {
        this(channelBuffer, channelBuffer.readableBytes());
    }

    public ChannelBufferInputStream(ChannelBuffer channelBuffer, int i) {
        this.lineBuf = new StringBuilder();
        if (channelBuffer == null) {
            throw new NullPointerException("buffer");
        } else if (i < 0) {
            throw new IllegalArgumentException("length: " + i);
        } else if (i > channelBuffer.readableBytes()) {
            throw new IndexOutOfBoundsException("Too many bytes to be read - Needs " + i + ", maximum is " + channelBuffer.readableBytes());
        } else {
            this.buffer = channelBuffer;
            this.startIndex = channelBuffer.readerIndex();
            this.endIndex = this.startIndex + i;
            channelBuffer.markReaderIndex();
        }
    }

    public int readBytes() {
        return this.buffer.readerIndex() - this.startIndex;
    }

    public int available() throws IOException {
        return this.endIndex - this.buffer.readerIndex();
    }

    public void mark(int i) {
        this.buffer.markReaderIndex();
    }

    public boolean markSupported() {
        return true;
    }

    public int read() throws IOException {
        if (!this.buffer.readable()) {
            return -1;
        }
        return this.buffer.readByte() & 255;
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

    public void reset() throws IOException {
        this.buffer.resetReaderIndex();
    }

    public long skip(long j) throws IOException {
        if (j > 2147483647L) {
            return (long) skipBytes(Integer.MAX_VALUE);
        }
        return (long) skipBytes((int) j);
    }

    public boolean readBoolean() throws IOException {
        checkAvailable(1);
        if (read() != 0) {
            return true;
        }
        return false;
    }

    public byte readByte() throws IOException {
        if (this.buffer.readable()) {
            return this.buffer.readByte();
        }
        throw new EOFException();
    }

    public char readChar() throws IOException {
        return (char) readShort();
    }

    public double readDouble() throws IOException {
        return Double.longBitsToDouble(readLong());
    }

    public float readFloat() throws IOException {
        return Float.intBitsToFloat(readInt());
    }

    public void readFully(byte[] bArr) throws IOException {
        readFully(bArr, 0, bArr.length);
    }

    public void readFully(byte[] bArr, int i, int i2) throws IOException {
        checkAvailable(i2);
        this.buffer.readBytes(bArr, i, i2);
    }

    public int readInt() throws IOException {
        checkAvailable(4);
        return this.buffer.readInt();
    }

    public String readLine() throws IOException {
        this.lineBuf.setLength(0);
        while (true) {
            int read = read();
            if (read >= 0 && read != 10) {
                this.lineBuf.append((char) read);
            }
        }
        if (this.lineBuf.length() > 0) {
            while (this.lineBuf.charAt(this.lineBuf.length() - 1) == 13) {
                this.lineBuf.setLength(this.lineBuf.length() - 1);
            }
        }
        return this.lineBuf.toString();
    }

    public long readLong() throws IOException {
        checkAvailable(8);
        return this.buffer.readLong();
    }

    public short readShort() throws IOException {
        checkAvailable(2);
        return this.buffer.readShort();
    }

    public String readUTF() throws IOException {
        return DataInputStream.readUTF(this);
    }

    public int readUnsignedByte() throws IOException {
        return readByte() & 255;
    }

    public int readUnsignedShort() throws IOException {
        return readShort() & 65535;
    }

    public int skipBytes(int i) throws IOException {
        int min = Math.min(available(), i);
        this.buffer.skipBytes(min);
        return min;
    }

    private void checkAvailable(int i) throws IOException {
        if (i < 0) {
            throw new IndexOutOfBoundsException("fieldSize cannot be a negative number");
        } else if (i > available()) {
            throw new EOFException("fieldSize is too long! Length is " + i + ", but maximum is " + available());
        }
    }
}
