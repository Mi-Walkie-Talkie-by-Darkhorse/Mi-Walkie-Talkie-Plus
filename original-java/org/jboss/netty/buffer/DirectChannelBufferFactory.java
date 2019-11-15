package org.jboss.netty.buffer;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public class DirectChannelBufferFactory extends AbstractChannelBufferFactory {
    private static final DirectChannelBufferFactory INSTANCE_BE = new DirectChannelBufferFactory(ByteOrder.BIG_ENDIAN);
    private static final DirectChannelBufferFactory INSTANCE_LE = new DirectChannelBufferFactory(ByteOrder.LITTLE_ENDIAN);
    private final Object bigEndianLock;
    private final Object littleEndianLock;
    private ChannelBuffer preallocatedBEBuf;
    private int preallocatedBEBufPos;
    private final int preallocatedBufCapacity;
    private ChannelBuffer preallocatedLEBuf;
    private int preallocatedLEBufPos;

    public static ChannelBufferFactory getInstance() {
        return INSTANCE_BE;
    }

    public static ChannelBufferFactory getInstance(ByteOrder byteOrder) {
        if (byteOrder == ByteOrder.BIG_ENDIAN) {
            return INSTANCE_BE;
        }
        if (byteOrder == ByteOrder.LITTLE_ENDIAN) {
            return INSTANCE_LE;
        }
        if (byteOrder == null) {
            throw new NullPointerException("defaultEndianness");
        }
        throw new IllegalStateException("Should not reach here");
    }

    public DirectChannelBufferFactory() {
        this(ByteOrder.BIG_ENDIAN);
    }

    public DirectChannelBufferFactory(int i) {
        this(ByteOrder.BIG_ENDIAN, i);
    }

    public DirectChannelBufferFactory(ByteOrder byteOrder) {
        this(byteOrder, 1048576);
    }

    public DirectChannelBufferFactory(ByteOrder byteOrder, int i) {
        super(byteOrder);
        this.bigEndianLock = new Object();
        this.littleEndianLock = new Object();
        if (i <= 0) {
            throw new IllegalArgumentException("preallocatedBufCapacity must be greater than 0: " + i);
        }
        this.preallocatedBufCapacity = i;
    }

    public ChannelBuffer getBuffer(ByteOrder byteOrder, int i) {
        ChannelBuffer allocateLittleEndianBuffer;
        if (byteOrder == null) {
            throw new NullPointerException("order");
        } else if (i < 0) {
            throw new IllegalArgumentException("capacity: " + i);
        } else if (i == 0) {
            return ChannelBuffers.EMPTY_BUFFER;
        } else {
            if (i >= this.preallocatedBufCapacity) {
                return ChannelBuffers.directBuffer(byteOrder, i);
            }
            if (byteOrder == ByteOrder.BIG_ENDIAN) {
                allocateLittleEndianBuffer = allocateBigEndianBuffer(i);
            } else {
                allocateLittleEndianBuffer = allocateLittleEndianBuffer(i);
            }
            allocateLittleEndianBuffer.clear();
            return allocateLittleEndianBuffer;
        }
    }

    public ChannelBuffer getBuffer(ByteOrder byteOrder, byte[] bArr, int i, int i2) {
        if (bArr == null) {
            throw new NullPointerException("array");
        } else if (i < 0) {
            throw new IndexOutOfBoundsException("offset: " + i);
        } else if (i2 == 0) {
            return ChannelBuffers.EMPTY_BUFFER;
        } else {
            if (i + i2 > bArr.length) {
                throw new IndexOutOfBoundsException("length: " + i2);
            }
            ChannelBuffer buffer = getBuffer(byteOrder, i2);
            buffer.writeBytes(bArr, i, i2);
            return buffer;
        }
    }

    public ChannelBuffer getBuffer(ByteBuffer byteBuffer) {
        if (!byteBuffer.isReadOnly() && byteBuffer.isDirect()) {
            return ChannelBuffers.wrappedBuffer(byteBuffer);
        }
        ChannelBuffer buffer = getBuffer(byteBuffer.order(), byteBuffer.remaining());
        int position = byteBuffer.position();
        buffer.writeBytes(byteBuffer);
        byteBuffer.position(position);
        return buffer;
    }

    private ChannelBuffer allocateBigEndianBuffer(int i) {
        ChannelBuffer slice;
        synchronized (this.bigEndianLock) {
            if (this.preallocatedBEBuf == null) {
                this.preallocatedBEBuf = ChannelBuffers.directBuffer(ByteOrder.BIG_ENDIAN, this.preallocatedBufCapacity);
                slice = this.preallocatedBEBuf.slice(0, i);
                this.preallocatedBEBufPos = i;
            } else if (this.preallocatedBEBuf.capacity() - this.preallocatedBEBufPos >= i) {
                slice = this.preallocatedBEBuf.slice(this.preallocatedBEBufPos, i);
                this.preallocatedBEBufPos += i;
            } else {
                this.preallocatedBEBuf = ChannelBuffers.directBuffer(ByteOrder.BIG_ENDIAN, this.preallocatedBufCapacity);
                slice = this.preallocatedBEBuf.slice(0, i);
                this.preallocatedBEBufPos = i;
            }
        }
        return slice;
    }

    private ChannelBuffer allocateLittleEndianBuffer(int i) {
        ChannelBuffer slice;
        synchronized (this.littleEndianLock) {
            if (this.preallocatedLEBuf == null) {
                this.preallocatedLEBuf = ChannelBuffers.directBuffer(ByteOrder.LITTLE_ENDIAN, this.preallocatedBufCapacity);
                slice = this.preallocatedLEBuf.slice(0, i);
                this.preallocatedLEBufPos = i;
            } else if (this.preallocatedLEBuf.capacity() - this.preallocatedLEBufPos >= i) {
                slice = this.preallocatedLEBuf.slice(this.preallocatedLEBufPos, i);
                this.preallocatedLEBufPos += i;
            } else {
                this.preallocatedLEBuf = ChannelBuffers.directBuffer(ByteOrder.LITTLE_ENDIAN, this.preallocatedBufCapacity);
                slice = this.preallocatedLEBuf.slice(0, i);
                this.preallocatedLEBufPos = i;
            }
        }
        return slice;
    }
}
