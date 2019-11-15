package com.ifengyu.im.protobuf.base;

import com.ifengyu.im.utils.Logger;
import java.nio.charset.Charset;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.ChannelBuffers;

public class DataBuffer {
    private static Logger logger = Logger.getLogger(DataBuffer.class);
    public ChannelBuffer buffer;

    public DataBuffer() {
        this.buffer = ChannelBuffers.dynamicBuffer();
    }

    public DataBuffer(ChannelBuffer channelBuffer) {
        this.buffer = channelBuffer;
    }

    public DataBuffer(int i) {
        this.buffer = ChannelBuffers.buffer(i);
    }

    public byte[] array() {
        return this.buffer.array();
    }

    public void setOrignalBuffer(ChannelBuffer channelBuffer) {
        this.buffer = channelBuffer;
    }

    public ChannelBuffer getOrignalBuffer() {
        return this.buffer;
    }

    public void writeByte(int i) {
        this.buffer.writeByte(i);
    }

    public byte readByte() {
        return this.buffer.readByte();
    }

    public byte[] readBytes(int i) {
        byte[] bArr = new byte[i];
        this.buffer.readBytes(bArr);
        return bArr;
    }

    public int readInt() {
        if (this.buffer.readable()) {
            return this.buffer.readInt();
        }
        return 0;
    }

    public void writeShort(short s) {
        this.buffer.writeShort(s);
    }

    public short readShort() {
        if (this.buffer.readable()) {
            return this.buffer.readShort();
        }
        return 0;
    }

    public void writeInt(int i) {
        this.buffer.writeInt(i);
    }

    public char readChar() {
        return this.buffer.readChar();
    }

    public void writeChar(char c) {
        this.buffer.writeChar(c);
    }

    public long readLong() {
        return this.buffer.readLong();
    }

    public void writeLong(long j) {
        this.buffer.writeLong(j);
    }

    public double readDouble() {
        return this.buffer.readDouble();
    }

    public void writeDouble(double d) {
        this.buffer.writeDouble(d);
    }

    public String readString() {
        return new String(readBytes(readInt()), Charset.forName("utf8"));
    }

    public String readString(int i) {
        return new String(readBytes(i));
    }

    public void writeBytes(byte[] bArr) {
        this.buffer.writeBytes(bArr);
    }

    public void writeSourceBytes(byte[] bArr) {
        writeInt(bArr.length);
        this.buffer.writeBytes(bArr);
    }

    public int[] readIntArray() {
        int readInt = readInt();
        int[] iArr = new int[readInt];
        for (int i = 0; i < readInt; i++) {
            iArr[i] = readInt();
        }
        return iArr;
    }

    public void writeIntArray(int[] iArr) {
        writeInt(r1);
        for (int writeInt : iArr) {
            writeInt(writeInt);
        }
    }

    public int readableBytes() {
        return this.buffer.readableBytes();
    }

    public DataBuffer readDataBuffer() {
        if (this.buffer == null || this.buffer.readableBytes() == 0) {
            return new DataBuffer(0);
        }
        int readInt = readInt();
        DataBuffer dataBuffer = new DataBuffer(0);
        dataBuffer.setOrignalBuffer(this.buffer.readBytes(readInt));
        return dataBuffer;
    }

    public void writeDataBuffer(DataBuffer dataBuffer) {
        if (dataBuffer != null && dataBuffer.readableBytes() != 0) {
            this.buffer.writeBytes(dataBuffer.buffer);
        }
    }

    public void resetReaderIndex() {
        this.buffer.resetReaderIndex();
    }

    public void resetWriterIndex() {
        this.buffer.resetWriterIndex();
    }
}
