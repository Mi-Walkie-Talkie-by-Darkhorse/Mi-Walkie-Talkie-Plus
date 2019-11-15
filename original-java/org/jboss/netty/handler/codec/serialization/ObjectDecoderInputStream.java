package org.jboss.netty.handler.codec.serialization;

import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInput;
import java.io.StreamCorruptedException;

public class ObjectDecoderInputStream extends InputStream implements ObjectInput {
    private final ClassResolver classResolver;
    private final DataInputStream in;
    private final int maxObjectSize;

    public ObjectDecoderInputStream(InputStream inputStream) {
        this(inputStream, (ClassLoader) null);
    }

    public ObjectDecoderInputStream(InputStream inputStream, ClassLoader classLoader) {
        this(inputStream, classLoader, 1048576);
    }

    public ObjectDecoderInputStream(InputStream inputStream, int i) {
        this(inputStream, null, i);
    }

    public ObjectDecoderInputStream(InputStream inputStream, ClassLoader classLoader, int i) {
        if (inputStream == null) {
            throw new NullPointerException("in");
        } else if (i <= 0) {
            throw new IllegalArgumentException("maxObjectSize: " + i);
        } else {
            if (inputStream instanceof DataInputStream) {
                this.in = (DataInputStream) inputStream;
            } else {
                this.in = new DataInputStream(inputStream);
            }
            this.classResolver = ClassResolvers.weakCachingResolver(classLoader);
            this.maxObjectSize = i;
        }
    }

    public Object readObject() throws ClassNotFoundException, IOException {
        int readInt = readInt();
        if (readInt <= 0) {
            throw new StreamCorruptedException("invalid data length: " + readInt);
        } else if (readInt <= this.maxObjectSize) {
            return new CompactObjectInputStream(this.in, this.classResolver).readObject();
        } else {
            throw new StreamCorruptedException("data length too big: " + readInt + " (max: " + this.maxObjectSize + ')');
        }
    }

    public int available() throws IOException {
        return this.in.available();
    }

    public void close() throws IOException {
        this.in.close();
    }

    public void mark(int i) {
        this.in.mark(i);
    }

    public boolean markSupported() {
        return this.in.markSupported();
    }

    public int read() throws IOException {
        return this.in.read();
    }

    public final int read(byte[] bArr, int i, int i2) throws IOException {
        return this.in.read(bArr, i, i2);
    }

    public final int read(byte[] bArr) throws IOException {
        return this.in.read(bArr);
    }

    public final boolean readBoolean() throws IOException {
        return this.in.readBoolean();
    }

    public final byte readByte() throws IOException {
        return this.in.readByte();
    }

    public final char readChar() throws IOException {
        return this.in.readChar();
    }

    public final double readDouble() throws IOException {
        return this.in.readDouble();
    }

    public final float readFloat() throws IOException {
        return this.in.readFloat();
    }

    public final void readFully(byte[] bArr, int i, int i2) throws IOException {
        this.in.readFully(bArr, i, i2);
    }

    public final void readFully(byte[] bArr) throws IOException {
        this.in.readFully(bArr);
    }

    public final int readInt() throws IOException {
        return this.in.readInt();
    }

    @Deprecated
    public final String readLine() throws IOException {
        return this.in.readLine();
    }

    public final long readLong() throws IOException {
        return this.in.readLong();
    }

    public final short readShort() throws IOException {
        return this.in.readShort();
    }

    public final int readUnsignedByte() throws IOException {
        return this.in.readUnsignedByte();
    }

    public final int readUnsignedShort() throws IOException {
        return this.in.readUnsignedShort();
    }

    public final String readUTF() throws IOException {
        return this.in.readUTF();
    }

    public void reset() throws IOException {
        this.in.reset();
    }

    public long skip(long j) throws IOException {
        return this.in.skip(j);
    }

    public final int skipBytes(int i) throws IOException {
        return this.in.skipBytes(i);
    }
}
