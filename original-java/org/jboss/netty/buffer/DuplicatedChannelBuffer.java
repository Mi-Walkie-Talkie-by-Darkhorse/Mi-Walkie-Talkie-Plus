package org.jboss.netty.buffer;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.GatheringByteChannel;
import java.nio.channels.ScatteringByteChannel;

public class DuplicatedChannelBuffer extends AbstractChannelBuffer implements WrappedChannelBuffer {
    private final ChannelBuffer buffer;

    public DuplicatedChannelBuffer(ChannelBuffer channelBuffer) {
        if (channelBuffer == null) {
            throw new NullPointerException("buffer");
        }
        this.buffer = channelBuffer;
        setIndex(channelBuffer.readerIndex(), channelBuffer.writerIndex());
    }

    private DuplicatedChannelBuffer(DuplicatedChannelBuffer duplicatedChannelBuffer) {
        this.buffer = duplicatedChannelBuffer.buffer;
        setIndex(duplicatedChannelBuffer.readerIndex(), duplicatedChannelBuffer.writerIndex());
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

    public ChannelBuffer duplicate() {
        return new DuplicatedChannelBuffer(this);
    }

    public ChannelBuffer copy(int i, int i2) {
        return this.buffer.copy(i, i2);
    }

    public ChannelBuffer slice(int i, int i2) {
        return this.buffer.slice(i, i2);
    }

    public void getBytes(int i, ChannelBuffer channelBuffer, int i2, int i3) {
        this.buffer.getBytes(i, channelBuffer, i2, i3);
    }

    public void getBytes(int i, byte[] bArr, int i2, int i3) {
        this.buffer.getBytes(i, bArr, i2, i3);
    }

    public void getBytes(int i, ByteBuffer byteBuffer) {
        this.buffer.getBytes(i, byteBuffer);
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

    public void getBytes(int i, OutputStream outputStream, int i2) throws IOException {
        this.buffer.getBytes(i, outputStream, i2);
    }

    public int getBytes(int i, GatheringByteChannel gatheringByteChannel, int i2) throws IOException {
        return this.buffer.getBytes(i, gatheringByteChannel, i2);
    }

    public int setBytes(int i, InputStream inputStream, int i2) throws IOException {
        return this.buffer.setBytes(i, inputStream, i2);
    }

    public int setBytes(int i, ScatteringByteChannel scatteringByteChannel, int i2) throws IOException {
        return this.buffer.setBytes(i, scatteringByteChannel, i2);
    }

    public ByteBuffer toByteBuffer(int i, int i2) {
        return this.buffer.toByteBuffer(i, i2);
    }
}
