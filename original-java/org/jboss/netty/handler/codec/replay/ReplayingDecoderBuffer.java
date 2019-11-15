package org.jboss.netty.handler.codec.replay;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.GatheringByteChannel;
import java.nio.channels.ScatteringByteChannel;
import java.nio.charset.Charset;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.ChannelBufferFactory;
import org.jboss.netty.buffer.ChannelBufferIndexFinder;

class ReplayingDecoderBuffer implements ChannelBuffer {
    private static final Error REPLAY = new ReplayError();
    private final ReplayingDecoder<?> parent;
    private boolean terminated;

    ReplayingDecoderBuffer(ReplayingDecoder<?> replayingDecoder) {
        this.parent = replayingDecoder;
    }

    private ChannelBuffer buf() {
        return this.parent.internalBuffer();
    }

    /* access modifiers changed from: 0000 */
    public void terminate() {
        this.terminated = true;
    }

    public int capacity() {
        if (this.terminated) {
            return buf().capacity();
        }
        return Integer.MAX_VALUE;
    }

    public boolean isDirect() {
        return buf().isDirect();
    }

    public boolean hasArray() {
        return false;
    }

    public byte[] array() {
        throw new UnsupportedOperationException();
    }

    public int arrayOffset() {
        throw new UnsupportedOperationException();
    }

    public void clear() {
        throw new UnreplayableOperationException();
    }

    public boolean equals(Object obj) {
        return this == obj;
    }

    public int compareTo(ChannelBuffer channelBuffer) {
        throw new UnreplayableOperationException();
    }

    public ChannelBuffer copy() {
        throw new UnreplayableOperationException();
    }

    public ChannelBuffer copy(int i, int i2) {
        checkIndex(i, i2);
        return buf().copy(i, i2);
    }

    public void discardReadBytes() {
        throw new UnreplayableOperationException();
    }

    public void ensureWritableBytes(int i) {
        throw new UnreplayableOperationException();
    }

    public ChannelBuffer duplicate() {
        throw new UnreplayableOperationException();
    }

    public byte getByte(int i) {
        checkIndex(i, 1);
        return buf().getByte(i);
    }

    public short getUnsignedByte(int i) {
        checkIndex(i, 1);
        return buf().getUnsignedByte(i);
    }

    public void getBytes(int i, byte[] bArr, int i2, int i3) {
        checkIndex(i, i3);
        buf().getBytes(i, bArr, i2, i3);
    }

    public void getBytes(int i, byte[] bArr) {
        checkIndex(i, bArr.length);
        buf().getBytes(i, bArr);
    }

    public void getBytes(int i, ByteBuffer byteBuffer) {
        throw new UnreplayableOperationException();
    }

    public void getBytes(int i, ChannelBuffer channelBuffer, int i2, int i3) {
        checkIndex(i, i3);
        buf().getBytes(i, channelBuffer, i2, i3);
    }

    public void getBytes(int i, ChannelBuffer channelBuffer, int i2) {
        throw new UnreplayableOperationException();
    }

    public void getBytes(int i, ChannelBuffer channelBuffer) {
        throw new UnreplayableOperationException();
    }

    public int getBytes(int i, GatheringByteChannel gatheringByteChannel, int i2) throws IOException {
        throw new UnreplayableOperationException();
    }

    public void getBytes(int i, OutputStream outputStream, int i2) throws IOException {
        throw new UnreplayableOperationException();
    }

    public int getInt(int i) {
        checkIndex(i, 4);
        return buf().getInt(i);
    }

    public long getUnsignedInt(int i) {
        checkIndex(i, 4);
        return buf().getUnsignedInt(i);
    }

    public long getLong(int i) {
        checkIndex(i, 8);
        return buf().getLong(i);
    }

    public int getMedium(int i) {
        checkIndex(i, 3);
        return buf().getMedium(i);
    }

    public int getUnsignedMedium(int i) {
        checkIndex(i, 3);
        return buf().getUnsignedMedium(i);
    }

    public short getShort(int i) {
        checkIndex(i, 2);
        return buf().getShort(i);
    }

    public int getUnsignedShort(int i) {
        checkIndex(i, 2);
        return buf().getUnsignedShort(i);
    }

    public char getChar(int i) {
        checkIndex(i, 2);
        return buf().getChar(i);
    }

    public float getFloat(int i) {
        checkIndex(i, 4);
        return buf().getFloat(i);
    }

    public double getDouble(int i) {
        checkIndex(i, 8);
        return buf().getDouble(i);
    }

    public int hashCode() {
        throw new UnreplayableOperationException();
    }

    public int indexOf(int i, int i2, byte b) {
        int indexOf = buf().indexOf(i, i2, b);
        if (indexOf >= 0) {
            return indexOf;
        }
        throw REPLAY;
    }

    public int indexOf(int i, int i2, ChannelBufferIndexFinder channelBufferIndexFinder) {
        int indexOf = buf().indexOf(i, i2, channelBufferIndexFinder);
        if (indexOf >= 0) {
            return indexOf;
        }
        throw REPLAY;
    }

    public int bytesBefore(byte b) {
        int bytesBefore = buf().bytesBefore(b);
        if (bytesBefore >= 0) {
            return bytesBefore;
        }
        throw REPLAY;
    }

    public int bytesBefore(ChannelBufferIndexFinder channelBufferIndexFinder) {
        int bytesBefore = buf().bytesBefore(channelBufferIndexFinder);
        if (bytesBefore >= 0) {
            return bytesBefore;
        }
        throw REPLAY;
    }

    public int bytesBefore(int i, byte b) {
        checkReadableBytes(i);
        int bytesBefore = buf().bytesBefore(i, b);
        if (bytesBefore >= 0) {
            return bytesBefore;
        }
        throw REPLAY;
    }

    public int bytesBefore(int i, ChannelBufferIndexFinder channelBufferIndexFinder) {
        checkReadableBytes(i);
        int bytesBefore = buf().bytesBefore(i, channelBufferIndexFinder);
        if (bytesBefore >= 0) {
            return bytesBefore;
        }
        throw REPLAY;
    }

    public int bytesBefore(int i, int i2, byte b) {
        int bytesBefore = buf().bytesBefore(i, i2, b);
        if (bytesBefore >= 0) {
            return bytesBefore;
        }
        throw REPLAY;
    }

    public int bytesBefore(int i, int i2, ChannelBufferIndexFinder channelBufferIndexFinder) {
        int bytesBefore = buf().bytesBefore(i, i2, channelBufferIndexFinder);
        if (bytesBefore >= 0) {
            return bytesBefore;
        }
        throw REPLAY;
    }

    public void markReaderIndex() {
        buf().markReaderIndex();
    }

    public void markWriterIndex() {
        throw new UnreplayableOperationException();
    }

    public ChannelBufferFactory factory() {
        return buf().factory();
    }

    public ByteOrder order() {
        return buf().order();
    }

    public boolean readable() {
        if (this.terminated) {
            return buf().readable();
        }
        return true;
    }

    public int readableBytes() {
        if (this.terminated) {
            return buf().readableBytes();
        }
        return Integer.MAX_VALUE - buf().readerIndex();
    }

    public byte readByte() {
        checkReadableBytes(1);
        return buf().readByte();
    }

    public short readUnsignedByte() {
        checkReadableBytes(1);
        return buf().readUnsignedByte();
    }

    public void readBytes(byte[] bArr, int i, int i2) {
        checkReadableBytes(i2);
        buf().readBytes(bArr, i, i2);
    }

    public void readBytes(byte[] bArr) {
        checkReadableBytes(bArr.length);
        buf().readBytes(bArr);
    }

    public void readBytes(ByteBuffer byteBuffer) {
        throw new UnreplayableOperationException();
    }

    public void readBytes(ChannelBuffer channelBuffer, int i, int i2) {
        checkReadableBytes(i2);
        buf().readBytes(channelBuffer, i, i2);
    }

    public void readBytes(ChannelBuffer channelBuffer, int i) {
        throw new UnreplayableOperationException();
    }

    public void readBytes(ChannelBuffer channelBuffer) {
        throw new UnreplayableOperationException();
    }

    @Deprecated
    public ChannelBuffer readBytes(ChannelBufferIndexFinder channelBufferIndexFinder) {
        int indexOf = buf().indexOf(buf().readerIndex(), buf().writerIndex(), channelBufferIndexFinder);
        if (indexOf >= 0) {
            return buf().readBytes(indexOf - buf().readerIndex());
        }
        throw REPLAY;
    }

    public int readBytes(GatheringByteChannel gatheringByteChannel, int i) throws IOException {
        throw new UnreplayableOperationException();
    }

    public ChannelBuffer readBytes(int i) {
        checkReadableBytes(i);
        return buf().readBytes(i);
    }

    @Deprecated
    public ChannelBuffer readSlice(ChannelBufferIndexFinder channelBufferIndexFinder) {
        int indexOf = buf().indexOf(buf().readerIndex(), buf().writerIndex(), channelBufferIndexFinder);
        if (indexOf >= 0) {
            return buf().readSlice(indexOf - buf().readerIndex());
        }
        throw REPLAY;
    }

    public ChannelBuffer readSlice(int i) {
        checkReadableBytes(i);
        return buf().readSlice(i);
    }

    public void readBytes(OutputStream outputStream, int i) throws IOException {
        throw new UnreplayableOperationException();
    }

    public int readerIndex() {
        return buf().readerIndex();
    }

    public void readerIndex(int i) {
        buf().readerIndex(i);
    }

    public int readInt() {
        checkReadableBytes(4);
        return buf().readInt();
    }

    public long readUnsignedInt() {
        checkReadableBytes(4);
        return buf().readUnsignedInt();
    }

    public long readLong() {
        checkReadableBytes(8);
        return buf().readLong();
    }

    public int readMedium() {
        checkReadableBytes(3);
        return buf().readMedium();
    }

    public int readUnsignedMedium() {
        checkReadableBytes(3);
        return buf().readUnsignedMedium();
    }

    public short readShort() {
        checkReadableBytes(2);
        return buf().readShort();
    }

    public int readUnsignedShort() {
        checkReadableBytes(2);
        return buf().readUnsignedShort();
    }

    public char readChar() {
        checkReadableBytes(2);
        return buf().readChar();
    }

    public float readFloat() {
        checkReadableBytes(4);
        return buf().readFloat();
    }

    public double readDouble() {
        checkReadableBytes(8);
        return buf().readDouble();
    }

    public void resetReaderIndex() {
        buf().resetReaderIndex();
    }

    public void resetWriterIndex() {
        throw new UnreplayableOperationException();
    }

    public void setByte(int i, int i2) {
        throw new UnreplayableOperationException();
    }

    public void setBytes(int i, byte[] bArr, int i2, int i3) {
        throw new UnreplayableOperationException();
    }

    public void setBytes(int i, byte[] bArr) {
        throw new UnreplayableOperationException();
    }

    public void setBytes(int i, ByteBuffer byteBuffer) {
        throw new UnreplayableOperationException();
    }

    public void setBytes(int i, ChannelBuffer channelBuffer, int i2, int i3) {
        throw new UnreplayableOperationException();
    }

    public void setBytes(int i, ChannelBuffer channelBuffer, int i2) {
        throw new UnreplayableOperationException();
    }

    public void setBytes(int i, ChannelBuffer channelBuffer) {
        throw new UnreplayableOperationException();
    }

    public int setBytes(int i, InputStream inputStream, int i2) throws IOException {
        throw new UnreplayableOperationException();
    }

    public void setZero(int i, int i2) {
        throw new UnreplayableOperationException();
    }

    public int setBytes(int i, ScatteringByteChannel scatteringByteChannel, int i2) throws IOException {
        throw new UnreplayableOperationException();
    }

    public void setIndex(int i, int i2) {
        throw new UnreplayableOperationException();
    }

    public void setInt(int i, int i2) {
        throw new UnreplayableOperationException();
    }

    public void setLong(int i, long j) {
        throw new UnreplayableOperationException();
    }

    public void setMedium(int i, int i2) {
        throw new UnreplayableOperationException();
    }

    public void setShort(int i, int i2) {
        throw new UnreplayableOperationException();
    }

    public void setChar(int i, int i2) {
        throw new UnreplayableOperationException();
    }

    public void setFloat(int i, float f) {
        throw new UnreplayableOperationException();
    }

    public void setDouble(int i, double d) {
        throw new UnreplayableOperationException();
    }

    @Deprecated
    public int skipBytes(ChannelBufferIndexFinder channelBufferIndexFinder) {
        int readerIndex = buf().readerIndex();
        int indexOf = buf().indexOf(readerIndex, buf().writerIndex(), channelBufferIndexFinder);
        if (indexOf < 0) {
            throw REPLAY;
        }
        buf().readerIndex(indexOf);
        return indexOf - readerIndex;
    }

    public void skipBytes(int i) {
        checkReadableBytes(i);
        buf().skipBytes(i);
    }

    public ChannelBuffer slice() {
        throw new UnreplayableOperationException();
    }

    public ChannelBuffer slice(int i, int i2) {
        checkIndex(i, i2);
        return buf().slice(i, i2);
    }

    public ByteBuffer toByteBuffer() {
        throw new UnreplayableOperationException();
    }

    public ByteBuffer toByteBuffer(int i, int i2) {
        checkIndex(i, i2);
        return buf().toByteBuffer(i, i2);
    }

    public ByteBuffer[] toByteBuffers() {
        throw new UnreplayableOperationException();
    }

    public ByteBuffer[] toByteBuffers(int i, int i2) {
        checkIndex(i, i2);
        return buf().toByteBuffers(i, i2);
    }

    public String toString(int i, int i2, Charset charset) {
        checkIndex(i, i2);
        return buf().toString(i, i2, charset);
    }

    public String toString(Charset charset) {
        throw new UnreplayableOperationException();
    }

    @Deprecated
    public String toString(int i, int i2, String str) {
        checkIndex(i, i2);
        return buf().toString(i, i2, str);
    }

    @Deprecated
    public String toString(int i, int i2, String str, ChannelBufferIndexFinder channelBufferIndexFinder) {
        checkIndex(i, i2);
        return buf().toString(i, i2, str, channelBufferIndexFinder);
    }

    @Deprecated
    public String toString(String str) {
        throw new UnreplayableOperationException();
    }

    @Deprecated
    public String toString(String str, ChannelBufferIndexFinder channelBufferIndexFinder) {
        throw new UnreplayableOperationException();
    }

    public String toString() {
        return getClass().getSimpleName() + '(' + "ridx=" + readerIndex() + ", " + "widx=" + writerIndex() + ')';
    }

    public boolean writable() {
        return false;
    }

    public int writableBytes() {
        return 0;
    }

    public void writeByte(int i) {
        throw new UnreplayableOperationException();
    }

    public void writeBytes(byte[] bArr, int i, int i2) {
        throw new UnreplayableOperationException();
    }

    public void writeBytes(byte[] bArr) {
        throw new UnreplayableOperationException();
    }

    public void writeBytes(ByteBuffer byteBuffer) {
        throw new UnreplayableOperationException();
    }

    public void writeBytes(ChannelBuffer channelBuffer, int i, int i2) {
        throw new UnreplayableOperationException();
    }

    public void writeBytes(ChannelBuffer channelBuffer, int i) {
        throw new UnreplayableOperationException();
    }

    public void writeBytes(ChannelBuffer channelBuffer) {
        throw new UnreplayableOperationException();
    }

    public int writeBytes(InputStream inputStream, int i) throws IOException {
        throw new UnreplayableOperationException();
    }

    public int writeBytes(ScatteringByteChannel scatteringByteChannel, int i) throws IOException {
        throw new UnreplayableOperationException();
    }

    public void writeInt(int i) {
        throw new UnreplayableOperationException();
    }

    public void writeLong(long j) {
        throw new UnreplayableOperationException();
    }

    public void writeMedium(int i) {
        throw new UnreplayableOperationException();
    }

    public void writeZero(int i) {
        throw new UnreplayableOperationException();
    }

    public int writerIndex() {
        return buf().writerIndex();
    }

    public void writerIndex(int i) {
        throw new UnreplayableOperationException();
    }

    public void writeShort(int i) {
        throw new UnreplayableOperationException();
    }

    public void writeChar(int i) {
        throw new UnreplayableOperationException();
    }

    public void writeFloat(float f) {
        throw new UnreplayableOperationException();
    }

    public void writeDouble(double d) {
        throw new UnreplayableOperationException();
    }

    private void checkIndex(int i, int i2) {
        if (i + i2 > buf().writerIndex()) {
            throw REPLAY;
        }
    }

    private void checkReadableBytes(int i) {
        if (buf().readableBytes() < i) {
            throw REPLAY;
        }
    }
}
