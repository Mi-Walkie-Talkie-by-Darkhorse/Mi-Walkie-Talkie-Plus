package org.jboss.netty.channel.socket.nio;

import java.io.IOException;
import java.lang.ref.SoftReference;
import java.net.SocketAddress;
import java.nio.ByteBuffer;
import java.nio.channels.DatagramChannel;
import java.nio.channels.GatheringByteChannel;
import java.nio.channels.WritableByteChannel;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.CompositeChannelBuffer;
import org.jboss.netty.channel.DefaultFileRegion;
import org.jboss.netty.channel.FileRegion;
import org.jboss.netty.util.ExternalResourceReleasable;
import org.jboss.netty.util.internal.ByteBufferUtil;

final class SocketSendBufferPool implements ExternalResourceReleasable {
    private static final int ALIGN_MASK = 15;
    private static final int ALIGN_SHIFT = 4;
    private static final int DEFAULT_PREALLOCATION_SIZE = 65536;
    private static final SendBuffer EMPTY_BUFFER = new EmptySendBuffer();
    /* access modifiers changed from: private */
    public Preallocation current = new Preallocation(65536);
    /* access modifiers changed from: private */
    public PreallocationRef poolHead;

    static final class EmptySendBuffer implements SendBuffer {
        EmptySendBuffer() {
        }

        public boolean finished() {
            return true;
        }

        public long writtenBytes() {
            return 0;
        }

        public long totalBytes() {
            return 0;
        }

        public long transferTo(WritableByteChannel writableByteChannel) {
            return 0;
        }

        public long transferTo(DatagramChannel datagramChannel, SocketAddress socketAddress) {
            return 0;
        }

        public void release() {
        }
    }

    final class FileSendBuffer implements SendBuffer {
        private final FileRegion file;
        private long writtenBytes;

        FileSendBuffer(FileRegion fileRegion) {
            this.file = fileRegion;
        }

        public boolean finished() {
            return this.writtenBytes >= this.file.getCount();
        }

        public long writtenBytes() {
            return this.writtenBytes;
        }

        public long totalBytes() {
            return this.file.getCount();
        }

        public long transferTo(WritableByteChannel writableByteChannel) throws IOException {
            long transferTo = this.file.transferTo(writableByteChannel, this.writtenBytes);
            this.writtenBytes += transferTo;
            return transferTo;
        }

        public long transferTo(DatagramChannel datagramChannel, SocketAddress socketAddress) {
            throw new UnsupportedOperationException();
        }

        public void release() {
            if ((this.file instanceof DefaultFileRegion) && ((DefaultFileRegion) this.file).releaseAfterTransfer()) {
                this.file.releaseExternalResources();
            }
        }
    }

    static class GatheringSendBuffer implements SendBuffer {
        private final ByteBuffer[] buffers;
        private final int last;
        private final int total;
        private long written;

        GatheringSendBuffer(ByteBuffer[] byteBufferArr) {
            this.buffers = byteBufferArr;
            this.last = byteBufferArr.length - 1;
            int i = 0;
            for (ByteBuffer remaining : byteBufferArr) {
                i += remaining.remaining();
            }
            this.total = i;
        }

        public boolean finished() {
            return !this.buffers[this.last].hasRemaining();
        }

        public long writtenBytes() {
            return this.written;
        }

        public long totalBytes() {
            return (long) this.total;
        }

        public long transferTo(WritableByteChannel writableByteChannel) throws IOException {
            ByteBuffer[] byteBufferArr;
            int i = 0;
            if (writableByteChannel instanceof GatheringByteChannel) {
                long write = ((GatheringByteChannel) writableByteChannel).write(this.buffers);
                this.written += write;
                return write;
            }
            for (ByteBuffer byteBuffer : this.buffers) {
                if (byteBuffer.hasRemaining()) {
                    int write2 = writableByteChannel.write(byteBuffer);
                    if (write2 == 0) {
                        break;
                    }
                    i += write2;
                }
            }
            this.written += (long) i;
            return (long) i;
        }

        public long transferTo(DatagramChannel datagramChannel, SocketAddress socketAddress) throws IOException {
            ByteBuffer[] byteBufferArr;
            int i = 0;
            for (ByteBuffer byteBuffer : this.buffers) {
                if (byteBuffer.hasRemaining()) {
                    int send = datagramChannel.send(byteBuffer, socketAddress);
                    if (send == 0) {
                        break;
                    }
                    i += send;
                }
            }
            this.written += (long) i;
            return (long) i;
        }

        public void release() {
        }
    }

    final class PooledSendBuffer extends UnpooledSendBuffer {
        private final Preallocation parent;

        PooledSendBuffer(Preallocation preallocation, ByteBuffer byteBuffer) {
            super(byteBuffer);
            this.parent = preallocation;
        }

        public void release() {
            Preallocation preallocation = this.parent;
            int i = preallocation.refCnt - 1;
            preallocation.refCnt = i;
            if (i == 0) {
                preallocation.buffer.clear();
                if (preallocation != SocketSendBufferPool.this.current) {
                    SocketSendBufferPool.this.poolHead = new PreallocationRef(preallocation, SocketSendBufferPool.this.poolHead);
                }
            }
        }
    }

    private static final class Preallocation {
        final ByteBuffer buffer;
        int refCnt;

        Preallocation(int i) {
            this.buffer = ByteBuffer.allocateDirect(i);
        }
    }

    private final class PreallocationRef extends SoftReference<Preallocation> {
        final PreallocationRef next;

        PreallocationRef(Preallocation preallocation, PreallocationRef preallocationRef) {
            super(preallocation);
            this.next = preallocationRef;
        }
    }

    interface SendBuffer {
        boolean finished();

        void release();

        long totalBytes();

        long transferTo(DatagramChannel datagramChannel, SocketAddress socketAddress) throws IOException;

        long transferTo(WritableByteChannel writableByteChannel) throws IOException;

        long writtenBytes();
    }

    static class UnpooledSendBuffer implements SendBuffer {
        final ByteBuffer buffer;
        final int initialPos;

        UnpooledSendBuffer(ByteBuffer byteBuffer) {
            this.buffer = byteBuffer;
            this.initialPos = byteBuffer.position();
        }

        public final boolean finished() {
            return !this.buffer.hasRemaining();
        }

        public final long writtenBytes() {
            return (long) (this.buffer.position() - this.initialPos);
        }

        public final long totalBytes() {
            return (long) (this.buffer.limit() - this.initialPos);
        }

        public final long transferTo(WritableByteChannel writableByteChannel) throws IOException {
            return (long) writableByteChannel.write(this.buffer);
        }

        public final long transferTo(DatagramChannel datagramChannel, SocketAddress socketAddress) throws IOException {
            return (long) datagramChannel.send(this.buffer, socketAddress);
        }

        public void release() {
        }
    }

    SocketSendBufferPool() {
    }

    /* access modifiers changed from: 0000 */
    public SendBuffer acquire(Object obj) {
        if (obj instanceof ChannelBuffer) {
            return acquire((ChannelBuffer) obj);
        }
        if (obj instanceof FileRegion) {
            return acquire((FileRegion) obj);
        }
        throw new IllegalArgumentException("unsupported message type: " + obj.getClass());
    }

    private SendBuffer acquire(FileRegion fileRegion) {
        if (fileRegion.getCount() == 0) {
            return EMPTY_BUFFER;
        }
        return new FileSendBuffer(fileRegion);
    }

    private SendBuffer acquire(ChannelBuffer channelBuffer) {
        PooledSendBuffer pooledSendBuffer;
        int readableBytes = channelBuffer.readableBytes();
        if (readableBytes == 0) {
            return EMPTY_BUFFER;
        }
        if ((channelBuffer instanceof CompositeChannelBuffer) && ((CompositeChannelBuffer) channelBuffer).useGathering()) {
            return new GatheringSendBuffer(channelBuffer.toByteBuffers());
        }
        if (channelBuffer.isDirect()) {
            return new UnpooledSendBuffer(channelBuffer.toByteBuffer());
        }
        if (channelBuffer.readableBytes() > 65536) {
            return new UnpooledSendBuffer(channelBuffer.toByteBuffer());
        }
        Preallocation preallocation = this.current;
        ByteBuffer byteBuffer = preallocation.buffer;
        int remaining = byteBuffer.remaining();
        if (readableBytes < remaining) {
            int position = readableBytes + byteBuffer.position();
            ByteBuffer duplicate = byteBuffer.duplicate();
            byteBuffer.position(align(position));
            duplicate.limit(position);
            preallocation.refCnt++;
            pooledSendBuffer = new PooledSendBuffer(preallocation, duplicate);
        } else if (readableBytes > remaining) {
            Preallocation preallocation2 = getPreallocation();
            this.current = preallocation2;
            ByteBuffer byteBuffer2 = preallocation2.buffer;
            ByteBuffer duplicate2 = byteBuffer2.duplicate();
            byteBuffer2.position(align(readableBytes));
            duplicate2.limit(readableBytes);
            preallocation2.refCnt++;
            pooledSendBuffer = new PooledSendBuffer(preallocation2, duplicate2);
        } else {
            preallocation.refCnt++;
            this.current = getPreallocation0();
            pooledSendBuffer = new PooledSendBuffer(preallocation, preallocation.buffer);
        }
        ByteBuffer byteBuffer3 = pooledSendBuffer.buffer;
        byteBuffer3.mark();
        channelBuffer.getBytes(channelBuffer.readerIndex(), byteBuffer3);
        byteBuffer3.reset();
        return pooledSendBuffer;
    }

    private Preallocation getPreallocation() {
        Preallocation preallocation = this.current;
        if (preallocation.refCnt != 0) {
            return getPreallocation0();
        }
        preallocation.buffer.clear();
        return preallocation;
    }

    private Preallocation getPreallocation0() {
        PreallocationRef preallocationRef = this.poolHead;
        if (preallocationRef != null) {
            PreallocationRef preallocationRef2 = preallocationRef;
            do {
                Preallocation preallocation = (Preallocation) preallocationRef2.get();
                preallocationRef2 = preallocationRef2.next;
                if (preallocation != null) {
                    this.poolHead = preallocationRef2;
                    return preallocation;
                }
            } while (preallocationRef2 != null);
            this.poolHead = preallocationRef2;
        }
        return new Preallocation(65536);
    }

    private static int align(int i) {
        int i2 = i >>> 4;
        if ((i & 15) != 0) {
            i2++;
        }
        return i2 << 4;
    }

    public void releaseExternalResources() {
        if (this.current.buffer != null) {
            ByteBufferUtil.destroy(this.current.buffer);
        }
    }
}
