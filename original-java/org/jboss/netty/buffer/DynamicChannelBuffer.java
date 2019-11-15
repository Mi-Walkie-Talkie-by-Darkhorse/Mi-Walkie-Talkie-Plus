package org.jboss.netty.buffer;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.GatheringByteChannel;
import java.nio.channels.ScatteringByteChannel;

public class DynamicChannelBuffer extends AbstractChannelBuffer {
    private ChannelBuffer buffer;
    private final ByteOrder endianness;
    private final ChannelBufferFactory factory;

    public DynamicChannelBuffer(int i) {
        this(ByteOrder.BIG_ENDIAN, i);
    }

    public DynamicChannelBuffer(ByteOrder byteOrder, int i) {
        this(byteOrder, i, HeapChannelBufferFactory.getInstance(byteOrder));
    }

    public DynamicChannelBuffer(ByteOrder byteOrder, int i, ChannelBufferFactory channelBufferFactory) {
        if (i < 0) {
            throw new IllegalArgumentException("estimatedLength: " + i);
        } else if (byteOrder == null) {
            throw new NullPointerException("endianness");
        } else if (channelBufferFactory == null) {
            throw new NullPointerException("factory");
        } else {
            this.factory = channelBufferFactory;
            this.endianness = byteOrder;
            this.buffer = channelBufferFactory.getBuffer(order(), i);
        }
    }

    public void ensureWritableBytes(int i) {
        int capacity;
        if (i > writableBytes()) {
            if (capacity() == 0) {
                capacity = 1;
            } else {
                capacity = capacity();
            }
            int writerIndex = writerIndex() + i;
            while (capacity < writerIndex) {
                capacity <<= 1;
                if (capacity == 0) {
                    throw new IllegalStateException("Maximum size of 2gb exceeded");
                }
            }
            ChannelBuffer buffer2 = factory().getBuffer(order(), capacity);
            buffer2.writeBytes(this.buffer, 0, writerIndex());
            this.buffer = buffer2;
        }
    }

    public ChannelBufferFactory factory() {
        return this.factory;
    }

    public ByteOrder order() {
        return this.endianness;
    }

    public boolean isDirect() {
        return this.buffer.isDirect();
    }

    public int capacity() {
        return this.buffer.capacity();
    }

    public boolean hasArray() {
        return this.buffer.hasArray();
    }

    public byte[] array() {
        return this.buffer.array();
    }

    public int arrayOffset() {
        return this.buffer.arrayOffset();
    }

    public byte getByte(int i) {
        return this.buffer.getByte(i);
    }

    public short getShort(int i) {
        return this.buffer.getShort(i);
    }

    public int getUnsignedMedium(int i) {
        return this.buffer.getUnsignedMedium(i);
    }

    public int getInt(int i) {
        return this.buffer.getInt(i);
    }

    public long getLong(int i) {
        return this.buffer.getLong(i);
    }

    public void getBytes(int i, byte[] bArr, int i2, int i3) {
        this.buffer.getBytes(i, bArr, i2, i3);
    }

    public void getBytes(int i, ChannelBuffer channelBuffer, int i2, int i3) {
        this.buffer.getBytes(i, channelBuffer, i2, i3);
    }

    public void getBytes(int i, ByteBuffer byteBuffer) {
        this.buffer.getBytes(i, byteBuffer);
    }

    public int getBytes(int i, GatheringByteChannel gatheringByteChannel, int i2) throws IOException {
        return this.buffer.getBytes(i, gatheringByteChannel, i2);
    }

    public void getBytes(int i, OutputStream outputStream, int i2) throws IOException {
        this.buffer.getBytes(i, outputStream, i2);
    }

    public void setByte(int i, int i2) {
        this.buffer.setByte(i, i2);
    }

    public void setShort(int i, int i2) {
        this.buffer.setShort(i, i2);
    }

    public void setMedium(int i, int i2) {
        this.buffer.setMedium(i, i2);
    }

    public void setInt(int i, int i2) {
        this.buffer.setInt(i, i2);
    }

    public void setLong(int i, long j) {
        this.buffer.setLong(i, j);
    }

    public void setBytes(int i, byte[] bArr, int i2, int i3) {
        this.buffer.setBytes(i, bArr, i2, i3);
    }

    public void setBytes(int i, ChannelBuffer channelBuffer, int i2, int i3) {
        this.buffer.setBytes(i, channelBuffer, i2, i3);
    }

    public void setBytes(int i, ByteBuffer byteBuffer) {
        this.buffer.setBytes(i, byteBuffer);
    }

    public int setBytes(int i, InputStream inputStream, int i2) throws IOException {
        return this.buffer.setBytes(i, inputStream, i2);
    }

    public int setBytes(int i, ScatteringByteChannel scatteringByteChannel, int i2) throws IOException {
        return this.buffer.setBytes(i, scatteringByteChannel, i2);
    }

    public void writeByte(int i) {
        ensureWritableBytes(1);
        super.writeByte(i);
    }

    public void writeShort(int i) {
        ensureWritableBytes(2);
        super.writeShort(i);
    }

    public void writeMedium(int i) {
        ensureWritableBytes(3);
        super.writeMedium(i);
    }

    public void writeInt(int i) {
        ensureWritableBytes(4);
        super.writeInt(i);
    }

    public void writeLong(long j) {
        ensureWritableBytes(8);
        super.writeLong(j);
    }

    public void writeBytes(byte[] bArr, int i, int i2) {
        ensureWritableBytes(i2);
        super.writeBytes(bArr, i, i2);
    }

    public void writeBytes(ChannelBuffer channelBuffer, int i, int i2) {
        ensureWritableBytes(i2);
        super.writeBytes(channelBuffer, i, i2);
    }

    public void writeBytes(ByteBuffer byteBuffer) {
        ensureWritableBytes(byteBuffer.remaining());
        super.writeBytes(byteBuffer);
    }

    public int writeBytes(InputStream inputStream, int i) throws IOException {
        ensureWritableBytes(i);
        return super.writeBytes(inputStream, i);
    }

    public int writeBytes(ScatteringByteChannel scatteringByteChannel, int i) throws IOException {
        ensureWritableBytes(i);
        return super.writeBytes(scatteringByteChannel, i);
    }

    public void writeZero(int i) {
        ensureWritableBytes(i);
        super.writeZero(i);
    }

    public ChannelBuffer duplicate() {
        return new DuplicatedChannelBuffer((ChannelBuffer) this);
    }

    public ChannelBuffer copy(int i, int i2) {
        DynamicChannelBuffer dynamicChannelBuffer = new DynamicChannelBuffer(order(), Math.max(i2, 64), factory());
        dynamicChannelBuffer.buffer = this.buffer.copy(i, i2);
        dynamicChannelBuffer.setIndex(0, i2);
        return dynamicChannelBuffer;
    }

    public ChannelBuffer slice(int i, int i2) {
        if (i == 0) {
            if (i2 == 0) {
                return ChannelBuffers.EMPTY_BUFFER;
            }
            return new TruncatedChannelBuffer(this, i2);
        } else if (i2 == 0) {
            return ChannelBuffers.EMPTY_BUFFER;
        } else {
            return new SlicedChannelBuffer(this, i, i2);
        }
    }

    public ByteBuffer toByteBuffer(int i, int i2) {
        return this.buffer.toByteBuffer(i, i2);
    }
}
