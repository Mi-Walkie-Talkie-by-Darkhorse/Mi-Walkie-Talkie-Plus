package org.jboss.netty.buffer;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.GatheringByteChannel;
import java.nio.channels.ScatteringByteChannel;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.jboss.netty.util.internal.DetectionUtil;

public class CompositeChannelBuffer extends AbstractChannelBuffer {
    static final /* synthetic */ boolean $assertionsDisabled = (!CompositeChannelBuffer.class.desiredAssertionStatus());
    private ChannelBuffer[] components;
    private final boolean gathering;
    private int[] indices;
    private int lastAccessedComponentId;
    private final ByteOrder order;

    public CompositeChannelBuffer(ByteOrder byteOrder, List<ChannelBuffer> list, boolean z) {
        this.order = byteOrder;
        this.gathering = z;
        setComponents(list);
    }

    public boolean useGathering() {
        return this.gathering && DetectionUtil.javaVersion() >= 7;
    }

    public List<ChannelBuffer> decompose(int i, int i2) {
        if (i2 == 0) {
            return Collections.emptyList();
        }
        if (i + i2 > capacity()) {
            throw new IndexOutOfBoundsException("Too many bytes to decompose - Need " + (i + i2) + ", capacity is " + capacity());
        }
        int componentId = componentId(i);
        ArrayList arrayList = new ArrayList(this.components.length);
        ChannelBuffer duplicate = this.components[componentId].duplicate();
        duplicate.readerIndex(i - this.indices[componentId]);
        while (true) {
            int readableBytes = duplicate.readableBytes();
            if (i2 > readableBytes) {
                arrayList.add(duplicate);
                i2 -= readableBytes;
                componentId++;
                duplicate = this.components[componentId].duplicate();
                if (i2 <= 0) {
                    break;
                }
            } else {
                duplicate.writerIndex(duplicate.readerIndex() + i2);
                arrayList.add(duplicate);
                break;
            }
        }
        int i3 = 0;
        while (true) {
            int i4 = i3;
            if (i4 >= arrayList.size()) {
                return arrayList;
            }
            arrayList.set(i4, ((ChannelBuffer) arrayList.get(i4)).slice());
            i3 = i4 + 1;
        }
    }

    private void setComponents(List<ChannelBuffer> list) {
        if ($assertionsDisabled || !list.isEmpty()) {
            this.lastAccessedComponentId = 0;
            this.components = new ChannelBuffer[list.size()];
            int i = 0;
            while (i < this.components.length) {
                ChannelBuffer channelBuffer = (ChannelBuffer) list.get(i);
                if (channelBuffer.order() != order()) {
                    throw new IllegalArgumentException("All buffers must have the same endianness.");
                } else if (!$assertionsDisabled && channelBuffer.readerIndex() != 0) {
                    throw new AssertionError();
                } else if ($assertionsDisabled || channelBuffer.writerIndex() == channelBuffer.capacity()) {
                    this.components[i] = channelBuffer;
                    i++;
                } else {
                    throw new AssertionError();
                }
            }
            this.indices = new int[(this.components.length + 1)];
            this.indices[0] = 0;
            for (int i2 = 1; i2 <= this.components.length; i2++) {
                this.indices[i2] = this.indices[i2 - 1] + this.components[i2 - 1].capacity();
            }
            setIndex(0, capacity());
            return;
        }
        throw new AssertionError();
    }

    private CompositeChannelBuffer(CompositeChannelBuffer compositeChannelBuffer) {
        this.order = compositeChannelBuffer.order;
        this.gathering = compositeChannelBuffer.gathering;
        this.components = (ChannelBuffer[]) compositeChannelBuffer.components.clone();
        this.indices = (int[]) compositeChannelBuffer.indices.clone();
        setIndex(compositeChannelBuffer.readerIndex(), compositeChannelBuffer.writerIndex());
    }

    public ChannelBufferFactory factory() {
        return HeapChannelBufferFactory.getInstance(order());
    }

    public ByteOrder order() {
        return this.order;
    }

    public boolean isDirect() {
        return false;
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

    public int capacity() {
        return this.indices[this.components.length];
    }

    public int numComponents() {
        return this.components.length;
    }

    public byte getByte(int i) {
        int componentId = componentId(i);
        return this.components[componentId].getByte(i - this.indices[componentId]);
    }

    public short getShort(int i) {
        int componentId = componentId(i);
        if (i + 2 <= this.indices[componentId + 1]) {
            return this.components[componentId].getShort(i - this.indices[componentId]);
        }
        if (order() == ByteOrder.BIG_ENDIAN) {
            return (short) (((getByte(i) & 255) << 8) | (getByte(i + 1) & 255));
        }
        return (short) ((getByte(i) & 255) | ((getByte(i + 1) & 255) << 8));
    }

    public int getUnsignedMedium(int i) {
        int componentId = componentId(i);
        if (i + 3 <= this.indices[componentId + 1]) {
            return this.components[componentId].getUnsignedMedium(i - this.indices[componentId]);
        }
        if (order() == ByteOrder.BIG_ENDIAN) {
            return ((getShort(i) & 65535) << 8) | (getByte(i + 2) & 255);
        }
        return (getShort(i) & 65535) | ((getByte(i + 2) & 255) << Tnaf.POW_2_WIDTH);
    }

    public int getInt(int i) {
        int componentId = componentId(i);
        if (i + 4 <= this.indices[componentId + 1]) {
            return this.components[componentId].getInt(i - this.indices[componentId]);
        }
        if (order() == ByteOrder.BIG_ENDIAN) {
            return ((getShort(i) & 65535) << 16) | (getShort(i + 2) & 65535);
        }
        return (getShort(i) & 65535) | ((getShort(i + 2) & 65535) << 16);
    }

    public long getLong(int i) {
        int componentId = componentId(i);
        if (i + 8 <= this.indices[componentId + 1]) {
            return this.components[componentId].getLong(i - this.indices[componentId]);
        }
        if (order() == ByteOrder.BIG_ENDIAN) {
            return ((((long) getInt(i)) & 4294967295L) << 32) | (((long) getInt(i + 4)) & 4294967295L);
        }
        return (((long) getInt(i)) & 4294967295L) | ((((long) getInt(i + 4)) & 4294967295L) << 32);
    }

    public void getBytes(int i, byte[] bArr, int i2, int i3) {
        if (i > capacity() - i3 || i2 > bArr.length - i3) {
            throw new IndexOutOfBoundsException("Too many bytes to read - Needs " + (i + i3) + ", maximum is " + capacity() + " or " + bArr.length);
        } else if (i < 0) {
            throw new IndexOutOfBoundsException("Index must be >= 0");
        } else if (i3 != 0) {
            int componentId = componentId(i);
            while (i3 > 0) {
                ChannelBuffer channelBuffer = this.components[componentId];
                int i4 = this.indices[componentId];
                int min = Math.min(i3, channelBuffer.capacity() - (i - i4));
                channelBuffer.getBytes(i - i4, bArr, i2, min);
                i += min;
                i2 += min;
                i3 -= min;
                componentId++;
            }
        }
    }

    public void getBytes(int i, ByteBuffer byteBuffer) {
        int componentId = componentId(i);
        int limit = byteBuffer.limit();
        int remaining = byteBuffer.remaining();
        if (i > capacity() - remaining) {
            throw new IndexOutOfBoundsException("Too many bytes to be read - Needs " + (remaining + i) + ", maximum is " + capacity());
        } else if (i < 0) {
            throw new IndexOutOfBoundsException("Index must be >= 0");
        } else {
            while (remaining > 0) {
                try {
                    ChannelBuffer channelBuffer = this.components[componentId];
                    int i2 = this.indices[componentId];
                    int min = Math.min(remaining, channelBuffer.capacity() - (i - i2));
                    byteBuffer.limit(byteBuffer.position() + min);
                    channelBuffer.getBytes(i - i2, byteBuffer);
                    i += min;
                    remaining -= min;
                    componentId++;
                } catch (Throwable th) {
                    byteBuffer.limit(limit);
                    throw th;
                }
            }
            byteBuffer.limit(limit);
        }
    }

    public void getBytes(int i, ChannelBuffer channelBuffer, int i2, int i3) {
        if (i > capacity() - i3 || i2 > channelBuffer.capacity() - i3) {
            throw new IndexOutOfBoundsException("Too many bytes to be read - Needs " + (i + i3) + " or " + (i2 + i3) + ", maximum is " + capacity() + " or " + channelBuffer.capacity());
        } else if (i < 0) {
            throw new IndexOutOfBoundsException("Index must be >= 0");
        } else if (i3 != 0) {
            int componentId = componentId(i);
            while (i3 > 0) {
                ChannelBuffer channelBuffer2 = this.components[componentId];
                int i4 = this.indices[componentId];
                int min = Math.min(i3, channelBuffer2.capacity() - (i - i4));
                channelBuffer2.getBytes(i - i4, channelBuffer, i2, min);
                i += min;
                i2 += min;
                i3 -= min;
                componentId++;
            }
        }
    }

    public int getBytes(int i, GatheringByteChannel gatheringByteChannel, int i2) throws IOException {
        if (useGathering()) {
            return (int) gatheringByteChannel.write(toByteBuffers(i, i2));
        }
        return gatheringByteChannel.write(toByteBuffer(i, i2));
    }

    public void getBytes(int i, OutputStream outputStream, int i2) throws IOException {
        if (i > capacity() - i2) {
            throw new IndexOutOfBoundsException("Too many bytes to be read - needs " + (i + i2) + ", maximum of " + capacity());
        } else if (i < 0) {
            throw new IndexOutOfBoundsException("Index must be >= 0");
        } else if (i2 != 0) {
            int componentId = componentId(i);
            while (i2 > 0) {
                ChannelBuffer channelBuffer = this.components[componentId];
                int i3 = this.indices[componentId];
                int min = Math.min(i2, channelBuffer.capacity() - (i - i3));
                channelBuffer.getBytes(i - i3, outputStream, min);
                i += min;
                i2 -= min;
                componentId++;
            }
        }
    }

    public void setByte(int i, int i2) {
        int componentId = componentId(i);
        this.components[componentId].setByte(i - this.indices[componentId], i2);
    }

    public void setShort(int i, int i2) {
        int componentId = componentId(i);
        if (i + 2 <= this.indices[componentId + 1]) {
            this.components[componentId].setShort(i - this.indices[componentId], i2);
        } else if (order() == ByteOrder.BIG_ENDIAN) {
            setByte(i, (byte) (i2 >>> 8));
            setByte(i + 1, (byte) i2);
        } else {
            setByte(i, (byte) i2);
            setByte(i + 1, (byte) (i2 >>> 8));
        }
    }

    public void setMedium(int i, int i2) {
        int componentId = componentId(i);
        if (i + 3 <= this.indices[componentId + 1]) {
            this.components[componentId].setMedium(i - this.indices[componentId], i2);
        } else if (order() == ByteOrder.BIG_ENDIAN) {
            setShort(i, (short) (i2 >> 8));
            setByte(i + 2, (byte) i2);
        } else {
            setShort(i, (short) i2);
            setByte(i + 2, (byte) (i2 >>> 16));
        }
    }

    public void setInt(int i, int i2) {
        int componentId = componentId(i);
        if (i + 4 <= this.indices[componentId + 1]) {
            this.components[componentId].setInt(i - this.indices[componentId], i2);
        } else if (order() == ByteOrder.BIG_ENDIAN) {
            setShort(i, (short) (i2 >>> 16));
            setShort(i + 2, (short) i2);
        } else {
            setShort(i, (short) i2);
            setShort(i + 2, (short) (i2 >>> 16));
        }
    }

    public void setLong(int i, long j) {
        int componentId = componentId(i);
        if (i + 8 <= this.indices[componentId + 1]) {
            this.components[componentId].setLong(i - this.indices[componentId], j);
        } else if (order() == ByteOrder.BIG_ENDIAN) {
            setInt(i, (int) (j >>> 32));
            setInt(i + 4, (int) j);
        } else {
            setInt(i, (int) j);
            setInt(i + 4, (int) (j >>> 32));
        }
    }

    public void setBytes(int i, byte[] bArr, int i2, int i3) {
        int componentId = componentId(i);
        if (i > capacity() - i3 || i2 > bArr.length - i3) {
            throw new IndexOutOfBoundsException("Too many bytes to read - needs " + (i + i3) + " or " + (i2 + i3) + ", maximum is " + capacity() + " or " + bArr.length);
        }
        while (i3 > 0) {
            ChannelBuffer channelBuffer = this.components[componentId];
            int i4 = this.indices[componentId];
            int min = Math.min(i3, channelBuffer.capacity() - (i - i4));
            channelBuffer.setBytes(i - i4, bArr, i2, min);
            i += min;
            i2 += min;
            i3 -= min;
            componentId++;
        }
    }

    public void setBytes(int i, ByteBuffer byteBuffer) {
        int componentId = componentId(i);
        int limit = byteBuffer.limit();
        int remaining = byteBuffer.remaining();
        if (i > capacity() - remaining) {
            throw new IndexOutOfBoundsException("Too many bytes to be written - Needs " + (remaining + i) + ", maximum is " + capacity());
        }
        while (remaining > 0) {
            try {
                ChannelBuffer channelBuffer = this.components[componentId];
                int i2 = this.indices[componentId];
                int min = Math.min(remaining, channelBuffer.capacity() - (i - i2));
                byteBuffer.limit(byteBuffer.position() + min);
                channelBuffer.setBytes(i - i2, byteBuffer);
                i += min;
                remaining -= min;
                componentId++;
            } catch (Throwable th) {
                byteBuffer.limit(limit);
                throw th;
            }
        }
        byteBuffer.limit(limit);
    }

    public void setBytes(int i, ChannelBuffer channelBuffer, int i2, int i3) {
        int componentId = componentId(i);
        if (i > capacity() - i3 || i2 > channelBuffer.capacity() - i3) {
            throw new IndexOutOfBoundsException("Too many bytes to be written - Needs " + (i + i3) + " or " + (i2 + i3) + ", maximum is " + capacity() + " or " + channelBuffer.capacity());
        }
        while (i3 > 0) {
            ChannelBuffer channelBuffer2 = this.components[componentId];
            int i4 = this.indices[componentId];
            int min = Math.min(i3, channelBuffer2.capacity() - (i - i4));
            channelBuffer2.setBytes(i - i4, channelBuffer, i2, min);
            i += min;
            i2 += min;
            i3 -= min;
            componentId++;
        }
    }

    public int setBytes(int i, InputStream inputStream, int i2) throws IOException {
        int componentId = componentId(i);
        if (i > capacity() - i2) {
            throw new IndexOutOfBoundsException("Too many bytes to write - Needs " + (i + i2) + ", maximum is " + capacity());
        }
        int i3 = 0;
        do {
            ChannelBuffer channelBuffer = this.components[componentId];
            int i4 = this.indices[componentId];
            int min = Math.min(i2, channelBuffer.capacity() - (i - i4));
            int bytes = channelBuffer.setBytes(i - i4, inputStream, min);
            if (bytes < 0) {
                if (i3 == 0) {
                    return -1;
                }
                return i3;
            } else if (bytes == min) {
                i += min;
                i2 -= min;
                i3 += min;
                componentId++;
                continue;
            } else {
                i += bytes;
                i2 -= bytes;
                i3 += bytes;
                continue;
            }
        } while (i2 > 0);
        return i3;
    }

    public int setBytes(int i, ScatteringByteChannel scatteringByteChannel, int i2) throws IOException {
        int componentId = componentId(i);
        if (i > capacity() - i2) {
            throw new IndexOutOfBoundsException("Too many bytes to write - Needs " + (i + i2) + ", maximum is " + capacity());
        }
        int i3 = 0;
        do {
            ChannelBuffer channelBuffer = this.components[componentId];
            int i4 = this.indices[componentId];
            int min = Math.min(i2, channelBuffer.capacity() - (i - i4));
            int bytes = channelBuffer.setBytes(i - i4, scatteringByteChannel, min);
            if (bytes == 0) {
                return i3;
            }
            if (bytes < 0) {
                if (i3 == 0) {
                    return -1;
                }
                return i3;
            } else if (bytes == min) {
                i += min;
                i2 -= min;
                i3 += min;
                componentId++;
                continue;
            } else {
                i += bytes;
                i2 -= bytes;
                i3 += bytes;
                continue;
            }
        } while (i2 > 0);
        return i3;
    }

    public ChannelBuffer duplicate() {
        CompositeChannelBuffer compositeChannelBuffer = new CompositeChannelBuffer(this);
        compositeChannelBuffer.setIndex(readerIndex(), writerIndex());
        return compositeChannelBuffer;
    }

    public ChannelBuffer copy(int i, int i2) {
        int componentId = componentId(i);
        if (i > capacity() - i2) {
            throw new IndexOutOfBoundsException("Too many bytes to copy - Needs " + (i + i2) + ", maximum is " + capacity());
        }
        ChannelBuffer buffer = factory().getBuffer(order(), i2);
        copyTo(i, i2, componentId, buffer);
        return buffer;
    }

    private void copyTo(int i, int i2, int i3, ChannelBuffer channelBuffer) {
        int i4 = 0;
        while (i2 > 0) {
            ChannelBuffer channelBuffer2 = this.components[i3];
            int i5 = this.indices[i3];
            int min = Math.min(i2, channelBuffer2.capacity() - (i - i5));
            channelBuffer2.getBytes(i - i5, channelBuffer, i4, min);
            i += min;
            i4 += min;
            i2 -= min;
            i3++;
        }
        channelBuffer.writerIndex(channelBuffer.capacity());
    }

    public ChannelBuffer getBuffer(int i) {
        if (i >= 0 && i < capacity()) {
            return this.components[componentId(i)];
        }
        throw new IndexOutOfBoundsException("Invalid index: " + i + " - Bytes needed: " + i + ", maximum is " + capacity());
    }

    public ChannelBuffer slice(int i, int i2) {
        if (i == 0) {
            if (i2 == 0) {
                return ChannelBuffers.EMPTY_BUFFER;
            }
        } else if (i < 0 || i > capacity() - i2) {
            throw new IndexOutOfBoundsException("Invalid index: " + i + " - Bytes needed: " + (i + i2) + ", maximum is " + capacity());
        } else if (i2 == 0) {
            return ChannelBuffers.EMPTY_BUFFER;
        }
        List decompose = decompose(i, i2);
        switch (decompose.size()) {
            case 0:
                return ChannelBuffers.EMPTY_BUFFER;
            case 1:
                return (ChannelBuffer) decompose.get(0);
            default:
                return new CompositeChannelBuffer(order(), decompose, this.gathering);
        }
    }

    public ByteBuffer toByteBuffer(int i, int i2) {
        if (this.components.length == 1) {
            return this.components[0].toByteBuffer(i, i2);
        }
        ByteBuffer[] byteBuffers = toByteBuffers(i, i2);
        ByteBuffer order2 = ByteBuffer.allocate(i2).order(order());
        for (ByteBuffer put : byteBuffers) {
            order2.put(put);
        }
        order2.flip();
        return order2;
    }

    public ByteBuffer[] toByteBuffers(int i, int i2) {
        if (i + i2 > capacity()) {
            throw new IndexOutOfBoundsException("Too many bytes to convert - Needs" + (i + i2) + ", maximum is " + capacity());
        } else if (i < 0) {
            throw new IndexOutOfBoundsException("Index must be >= 0");
        } else if (i2 == 0) {
            return new ByteBuffer[0];
        } else {
            ArrayList arrayList = new ArrayList(this.components.length);
            int componentId = componentId(i);
            while (i2 > 0) {
                ChannelBuffer channelBuffer = this.components[componentId];
                int i3 = this.indices[componentId];
                int min = Math.min(i2, channelBuffer.capacity() - (i - i3));
                arrayList.add(channelBuffer.toByteBuffer(i - i3, min));
                i += min;
                i2 -= min;
                componentId++;
            }
            return (ByteBuffer[]) arrayList.toArray(new ByteBuffer[arrayList.size()]);
        }
    }

    private int componentId(int i) {
        int i2 = this.lastAccessedComponentId;
        if (i < this.indices[i2]) {
            i2--;
            while (i2 >= 0) {
                if (i >= this.indices[i2]) {
                    this.lastAccessedComponentId = i2;
                } else {
                    i2--;
                }
            }
            throw new IndexOutOfBoundsException("Invalid index: " + i + ", maximum: " + this.indices.length);
        } else if (i >= this.indices[i2 + 1]) {
            while (true) {
                i2++;
                if (i2 >= this.components.length) {
                    break;
                } else if (i < this.indices[i2 + 1]) {
                    this.lastAccessedComponentId = i2;
                    break;
                }
            }
        }
        return i2;
    }

    public void discardReadBytes() {
        int i;
        int i2;
        int readerIndex = readerIndex();
        if (readerIndex != 0) {
            int writerIndex = writerIndex();
            List decompose = decompose(readerIndex, capacity() - readerIndex);
            if (decompose.isEmpty()) {
                decompose = new ArrayList(1);
            }
            ChannelBuffer buffer = ChannelBuffers.buffer(order(), readerIndex);
            buffer.writerIndex(readerIndex);
            decompose.add(buffer);
            try {
                resetReaderIndex();
                i = readerIndex();
            } catch (IndexOutOfBoundsException e) {
                i = readerIndex;
            }
            try {
                resetWriterIndex();
                i2 = writerIndex();
            } catch (IndexOutOfBoundsException e2) {
                i2 = writerIndex;
            }
            setComponents(decompose);
            setIndex(Math.max(i - readerIndex, 0), Math.max(i2 - readerIndex, 0));
            markReaderIndex();
            markWriterIndex();
            setIndex(0, Math.max(writerIndex - readerIndex, 0));
        }
    }

    public String toString() {
        String abstractChannelBuffer = super.toString();
        return abstractChannelBuffer.substring(0, abstractChannelBuffer.length() - 1) + ", components=" + this.components.length + ')';
    }
}
