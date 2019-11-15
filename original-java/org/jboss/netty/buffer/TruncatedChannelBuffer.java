package org.jboss.netty.buffer;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.GatheringByteChannel;
import java.nio.channels.ScatteringByteChannel;

public class TruncatedChannelBuffer extends AbstractChannelBuffer implements WrappedChannelBuffer {
    private final ChannelBuffer buffer;
    private final int length;

    public TruncatedChannelBuffer(ChannelBuffer channelBuffer, int i) {
        if (i > channelBuffer.capacity()) {
            throw new IndexOutOfBoundsException("Length is too large, got " + i + " but can't go higher than " + channelBuffer.capacity());
        }
        this.buffer = channelBuffer;
        this.length = i;
        writerIndex(i);
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
        return this.buffer.arrayOffset();
    }

    public byte getByte(int i) {
        checkIndex(i);
        return this.buffer.getByte(i);
    }

    public short getShort(int i) {
        checkIndex(i, 2);
        return this.buffer.getShort(i);
    }

    public int getUnsignedMedium(int i) {
        checkIndex(i, 3);
        return this.buffer.getUnsignedMedium(i);
    }

    public int getInt(int i) {
        checkIndex(i, 4);
        return this.buffer.getInt(i);
    }

    public long getLong(int i) {
        checkIndex(i, 8);
        return this.buffer.getLong(i);
    }

    public ChannelBuffer duplicate() {
        TruncatedChannelBuffer truncatedChannelBuffer = new TruncatedChannelBuffer(this.buffer, this.length);
        truncatedChannelBuffer.setIndex(readerIndex(), writerIndex());
        return truncatedChannelBuffer;
    }

    public ChannelBuffer copy(int i, int i2) {
        checkIndex(i, i2);
        return this.buffer.copy(i, i2);
    }

    public ChannelBuffer slice(int i, int i2) {
        checkIndex(i, i2);
        if (i2 == 0) {
            return ChannelBuffers.EMPTY_BUFFER;
        }
        return this.buffer.slice(i, i2);
    }

    public void getBytes(int i, ChannelBuffer channelBuffer, int i2, int i3) {
        checkIndex(i, i3);
        this.buffer.getBytes(i, channelBuffer, i2, i3);
    }

    public void getBytes(int i, byte[] bArr, int i2, int i3) {
        checkIndex(i, i3);
        this.buffer.getBytes(i, bArr, i2, i3);
    }

    public void getBytes(int i, ByteBuffer byteBuffer) {
        checkIndex(i, byteBuffer.remaining());
        this.buffer.getBytes(i, byteBuffer);
    }

    public void setByte(int i, int i2) {
        checkIndex(i);
        this.buffer.setByte(i, i2);
    }

    public void setShort(int i, int i2) {
        checkIndex(i, 2);
        this.buffer.setShort(i, i2);
    }

    public void setMedium(int i, int i2) {
        checkIndex(i, 3);
        this.buffer.setMedium(i, i2);
    }

    public void setInt(int i, int i2) {
        checkIndex(i, 4);
        this.buffer.setInt(i, i2);
    }

    public void setLong(int i, long j) {
        checkIndex(i, 8);
        this.buffer.setLong(i, j);
    }

    public void setBytes(int i, byte[] bArr, int i2, int i3) {
        checkIndex(i, i3);
        this.buffer.setBytes(i, bArr, i2, i3);
    }

    public void setBytes(int i, ChannelBuffer channelBuffer, int i2, int i3) {
        checkIndex(i, i3);
        this.buffer.setBytes(i, channelBuffer, i2, i3);
    }

    public void setBytes(int i, ByteBuffer byteBuffer) {
        checkIndex(i, byteBuffer.remaining());
        this.buffer.setBytes(i, byteBuffer);
    }

    public void getBytes(int i, OutputStream outputStream, int i2) throws IOException {
        checkIndex(i, i2);
        this.buffer.getBytes(i, outputStream, i2);
    }

    public int getBytes(int i, GatheringByteChannel gatheringByteChannel, int i2) throws IOException {
        checkIndex(i, i2);
        return this.buffer.getBytes(i, gatheringByteChannel, i2);
    }

    public int setBytes(int i, InputStream inputStream, int i2) throws IOException {
        checkIndex(i, i2);
        return this.buffer.setBytes(i, inputStream, i2);
    }

    public int setBytes(int i, ScatteringByteChannel scatteringByteChannel, int i2) throws IOException {
        checkIndex(i, i2);
        return this.buffer.setBytes(i, scatteringByteChannel, i2);
    }

    public ByteBuffer toByteBuffer(int i, int i2) {
        checkIndex(i, i2);
        return this.buffer.toByteBuffer(i, i2);
    }

    private void checkIndex(int i) {
        if (i < 0 || i >= capacity()) {
            throw new IndexOutOfBoundsException("Invalid index of " + i + ", maximum is " + capacity());
        }
    }

    private void checkIndex(int i, int i2) {
        if (i2 < 0) {
            throw new IllegalArgumentException("length is negative: " + i2);
        } else if (i + i2 > capacity()) {
            throw new IndexOutOfBoundsException("Invalid index of " + (i + i2) + ", maximum is " + capacity());
        }
    }
}
