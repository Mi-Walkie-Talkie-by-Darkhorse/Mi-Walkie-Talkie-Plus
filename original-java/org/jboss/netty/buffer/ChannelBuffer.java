package org.jboss.netty.buffer;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.GatheringByteChannel;
import java.nio.channels.ScatteringByteChannel;
import java.nio.charset.Charset;

public interface ChannelBuffer extends Comparable<ChannelBuffer> {
    byte[] array();

    int arrayOffset();

    int bytesBefore(byte b);

    int bytesBefore(int i, byte b);

    int bytesBefore(int i, int i2, byte b);

    int bytesBefore(int i, int i2, ChannelBufferIndexFinder channelBufferIndexFinder);

    int bytesBefore(int i, ChannelBufferIndexFinder channelBufferIndexFinder);

    int bytesBefore(ChannelBufferIndexFinder channelBufferIndexFinder);

    int capacity();

    void clear();

    int compareTo(ChannelBuffer channelBuffer);

    ChannelBuffer copy();

    ChannelBuffer copy(int i, int i2);

    void discardReadBytes();

    ChannelBuffer duplicate();

    void ensureWritableBytes(int i);

    boolean equals(Object obj);

    ChannelBufferFactory factory();

    byte getByte(int i);

    int getBytes(int i, GatheringByteChannel gatheringByteChannel, int i2) throws IOException;

    void getBytes(int i, OutputStream outputStream, int i2) throws IOException;

    void getBytes(int i, ByteBuffer byteBuffer);

    void getBytes(int i, ChannelBuffer channelBuffer);

    void getBytes(int i, ChannelBuffer channelBuffer, int i2);

    void getBytes(int i, ChannelBuffer channelBuffer, int i2, int i3);

    void getBytes(int i, byte[] bArr);

    void getBytes(int i, byte[] bArr, int i2, int i3);

    char getChar(int i);

    double getDouble(int i);

    float getFloat(int i);

    int getInt(int i);

    long getLong(int i);

    int getMedium(int i);

    short getShort(int i);

    short getUnsignedByte(int i);

    long getUnsignedInt(int i);

    int getUnsignedMedium(int i);

    int getUnsignedShort(int i);

    boolean hasArray();

    int hashCode();

    int indexOf(int i, int i2, byte b);

    int indexOf(int i, int i2, ChannelBufferIndexFinder channelBufferIndexFinder);

    boolean isDirect();

    void markReaderIndex();

    void markWriterIndex();

    ByteOrder order();

    byte readByte();

    int readBytes(GatheringByteChannel gatheringByteChannel, int i) throws IOException;

    ChannelBuffer readBytes(int i);

    @Deprecated
    ChannelBuffer readBytes(ChannelBufferIndexFinder channelBufferIndexFinder);

    void readBytes(OutputStream outputStream, int i) throws IOException;

    void readBytes(ByteBuffer byteBuffer);

    void readBytes(ChannelBuffer channelBuffer);

    void readBytes(ChannelBuffer channelBuffer, int i);

    void readBytes(ChannelBuffer channelBuffer, int i, int i2);

    void readBytes(byte[] bArr);

    void readBytes(byte[] bArr, int i, int i2);

    char readChar();

    double readDouble();

    float readFloat();

    int readInt();

    long readLong();

    int readMedium();

    short readShort();

    ChannelBuffer readSlice(int i);

    @Deprecated
    ChannelBuffer readSlice(ChannelBufferIndexFinder channelBufferIndexFinder);

    short readUnsignedByte();

    long readUnsignedInt();

    int readUnsignedMedium();

    int readUnsignedShort();

    boolean readable();

    int readableBytes();

    int readerIndex();

    void readerIndex(int i);

    void resetReaderIndex();

    void resetWriterIndex();

    void setByte(int i, int i2);

    int setBytes(int i, InputStream inputStream, int i2) throws IOException;

    int setBytes(int i, ScatteringByteChannel scatteringByteChannel, int i2) throws IOException;

    void setBytes(int i, ByteBuffer byteBuffer);

    void setBytes(int i, ChannelBuffer channelBuffer);

    void setBytes(int i, ChannelBuffer channelBuffer, int i2);

    void setBytes(int i, ChannelBuffer channelBuffer, int i2, int i3);

    void setBytes(int i, byte[] bArr);

    void setBytes(int i, byte[] bArr, int i2, int i3);

    void setChar(int i, int i2);

    void setDouble(int i, double d);

    void setFloat(int i, float f);

    void setIndex(int i, int i2);

    void setInt(int i, int i2);

    void setLong(int i, long j);

    void setMedium(int i, int i2);

    void setShort(int i, int i2);

    void setZero(int i, int i2);

    @Deprecated
    int skipBytes(ChannelBufferIndexFinder channelBufferIndexFinder);

    void skipBytes(int i);

    ChannelBuffer slice();

    ChannelBuffer slice(int i, int i2);

    ByteBuffer toByteBuffer();

    ByteBuffer toByteBuffer(int i, int i2);

    ByteBuffer[] toByteBuffers();

    ByteBuffer[] toByteBuffers(int i, int i2);

    String toString();

    @Deprecated
    String toString(int i, int i2, String str);

    @Deprecated
    String toString(int i, int i2, String str, ChannelBufferIndexFinder channelBufferIndexFinder);

    String toString(int i, int i2, Charset charset);

    @Deprecated
    String toString(String str);

    @Deprecated
    String toString(String str, ChannelBufferIndexFinder channelBufferIndexFinder);

    String toString(Charset charset);

    boolean writable();

    int writableBytes();

    void writeByte(int i);

    int writeBytes(InputStream inputStream, int i) throws IOException;

    int writeBytes(ScatteringByteChannel scatteringByteChannel, int i) throws IOException;

    void writeBytes(ByteBuffer byteBuffer);

    void writeBytes(ChannelBuffer channelBuffer);

    void writeBytes(ChannelBuffer channelBuffer, int i);

    void writeBytes(ChannelBuffer channelBuffer, int i, int i2);

    void writeBytes(byte[] bArr);

    void writeBytes(byte[] bArr, int i, int i2);

    void writeChar(int i);

    void writeDouble(double d);

    void writeFloat(float f);

    void writeInt(int i);

    void writeLong(long j);

    void writeMedium(int i);

    void writeShort(int i);

    void writeZero(int i);

    int writerIndex();

    void writerIndex(int i);
}
