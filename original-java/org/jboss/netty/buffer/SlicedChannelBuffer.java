package org.jboss.netty.buffer;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.GatheringByteChannel;
import java.nio.channels.ScatteringByteChannel;

public class SlicedChannelBuffer extends AbstractChannelBuffer implements WrappedChannelBuffer {
    private final int adjustment;
    private final ChannelBuffer buffer;
    private final int length;

    public SlicedChannelBuffer(ChannelBuffer channelBuffer, int i, int i2) {
        if (i < 0 || i > channelBuffer.capacity()) {
            throw new IndexOutOfBoundsException("Invalid index of " + i + ", maximum is " + channelBuffer.capacity());
        } else if (i + i2 > channelBuffer.capacity()) {
            throw new IndexOutOfBoundsException("Invalid combined index of " + (i + i2) + ", maximum is " + channelBuffer.capacity());
        } else {
            this.buffer = channelBuffer;
            this.adjustment = i;
            this.length = i2;
            writerIndex(i2);
        }
    }

    public ChannelBuffer unwrap() {
        return this.buffer;
    }

    public ChannelBufferFactory factory() {
        return this.buffer.factory();
    }

    public ByteOrder order() {
        return this.buffer.order();
    }

    public boolean isDirect() {
        return this.buffer.isDirect();
    }

    public int capacity() {
        return this.length;
    }

    public boolean hasArray() {
        return this.buffer.hasArray();
    }

    public byte[] array() {
        return this.buffer.array();
    }

    public int arrayOffset() {
        return this.buffer.arrayOffset() + this.adjustment;
    }

    public byte getByte(int i) {
        checkIndex(i);
        return this.buffer.getByte(this.adjustment + i);
    }

    public short getShort(int i) {
        checkIndex(i, 2);
        return this.buffer.getShort(this.adjustment + i);
    }

    public int getUnsignedMedium(int i) {
        checkIndex(i, 3);
        return this.buffer.getUnsignedMedium(this.adjustment + i);
    }

    public int getInt(int i) {
        checkIndex(i, 4);
        return this.buffer.getInt(this.adjustment + i);
    }

    public long getLong(int i) {
        checkIndex(i, 8);
        return this.buffer.getLong(this.adjustment + i);
    }

    public ChannelBuffer duplicate() {
        SlicedChannelBuffer slicedChannelBuffer = new SlicedChannelBuffer(this.buffer, this.adjustment, this.length);
        slicedChannelBuffer.setIndex(readerIndex(), writerIndex());
        return slicedChannelBuffer;
    }

    public ChannelBuffer copy(int i, int i2) {
        checkIndex(i, i2);
        return this.buffer.copy(this.adjustment + i, i2);
    }

    public ChannelBuffer slice(int i, int i2) {
        checkIndex(i, i2);
        if (i2 == 0) {
            return ChannelBuffers.EMPTY_BUFFER;
        }
        return new SlicedChannelBuffer(this.buffer, this.adjustment + i, i2);
    }

    public void getBytes(int i, ChannelBuffer channelBuffer, int i2, int i3) {
        checkIndex(i, i3);
        this.buffer.getBytes(this.adjustment + i, channelBuffer, i2, i3);
    }

    public void getBytes(int i, byte[] bArr, int i2, int i3) {
        checkIndex(i, i3);
        this.buffer.getBytes(this.adjustment + i, bArr, i2, i3);
    }

    public void getBytes(int i, ByteBuffer byteBuffer) {
        checkIndex(i, byteBuffer.remaining());
        this.buffer.getBytes(this.adjustment + i, byteBuffer);
    }

    public void setByte(int i, int i2) {
        checkIndex(i);
        this.buffer.setByte(this.adjustment + i, i2);
    }

    public void setShort(int i, int i2) {
        checkIndex(i, 2);
        this.buffer.setShort(this.adjustment + i, i2);
    }

    public void setMedium(int i, int i2) {
        checkIndex(i, 3);
        this.buffer.setMedium(this.adjustment + i, i2);
    }

    public void setInt(int i, int i2) {
        checkIndex(i, 4);
        this.buffer.setInt(this.adjustment + i, i2);
    }

    public void setLong(int i, long j) {
        checkIndex(i, 8);
        this.buffer.setLong(this.adjustment + i, j);
    }

    public void setBytes(int i, byte[] bArr, int i2, int i3) {
        checkIndex(i, i3);
        this.buffer.setBytes(this.adjustment + i, bArr, i2, i3);
    }

    public void setBytes(int i, ChannelBuffer channelBuffer, int i2, int i3) {
        checkIndex(i, i3);
        this.buffer.setBytes(this.adjustment + i, channelBuffer, i2, i3);
    }

    public void setBytes(int i, ByteBuffer byteBuffer) {
        checkIndex(i, byteBuffer.remaining());
        this.buffer.setBytes(this.adjustment + i, byteBuffer);
    }

    public void getBytes(int i, OutputStream outputStream, int i2) throws IOException {
        checkIndex(i, i2);
        this.buffer.getBytes(this.adjustment + i, outputStream, i2);
    }

    public int getBytes(int i, GatheringByteChannel gatheringByteChannel, int i2) throws IOException {
        checkIndex(i, i2);
        return this.buffer.getBytes(this.adjustment + i, gatheringByteChannel, i2);
    }

    public int setBytes(int i, InputStream inputStream, int i2) throws IOException {
        checkIndex(i, i2);
        return this.buffer.setBytes(this.adjustment + i, inputStream, i2);
    }

    public int setBytes(int i, ScatteringByteChannel scatteringByteChannel, int i2) throws IOException {
        checkIndex(i, i2);
        return this.buffer.setBytes(this.adjustment + i, scatteringByteChannel, i2);
    }

    public ByteBuffer toByteBuffer(int i, int i2) {
        checkIndex(i, i2);
        return this.buffer.toByteBuffer(this.adjustment + i, i2);
    }

    private void checkIndex(int i) {
        if (i < 0 || i >= capacity()) {
            throw new IndexOutOfBoundsException("Invalid index: " + i + ", maximum is " + capacity());
        }
    }

    private void checkIndex(int i, int i2) {
        if (i2 < 0) {
            throw new IllegalArgumentException("length is negative: " + i2);
        } else if (i < 0) {
            throw new IndexOutOfBoundsException("startIndex cannot be negative");
        } else if (i + i2 > capacity()) {
            throw new IndexOutOfBoundsException("Index too big - Bytes needed: " + (i + i2) + ", maximum is " + capacity());
        }
    }
}
