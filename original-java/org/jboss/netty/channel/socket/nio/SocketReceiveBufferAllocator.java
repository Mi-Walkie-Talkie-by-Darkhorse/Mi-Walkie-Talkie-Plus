package org.jboss.netty.channel.socket.nio;

import com.autonavi.ae.gmap.utils.GLMapStaticValue;
import java.nio.ByteBuffer;
import org.jboss.netty.util.ExternalResourceReleasable;
import org.jboss.netty.util.internal.ByteBufferUtil;

final class SocketReceiveBufferAllocator implements ExternalResourceReleasable {
    private ByteBuffer buf;
    private int exceedCount;
    private final int maxExceedCount;
    private final int percentual;

    SocketReceiveBufferAllocator() {
        this(16, 80);
    }

    SocketReceiveBufferAllocator(int i, int i2) {
        this.maxExceedCount = i;
        this.percentual = i2;
    }

    /* access modifiers changed from: 0000 */
    public ByteBuffer get(int i) {
        if (this.buf == null) {
            return newBuffer(i);
        }
        if (this.buf.capacity() < i) {
            return newBuffer(i);
        }
        if ((this.buf.capacity() * this.percentual) / 100 > i) {
            int i2 = this.exceedCount + 1;
            this.exceedCount = i2;
            if (i2 == this.maxExceedCount) {
                return newBuffer(i);
            }
            this.buf.clear();
        } else {
            this.exceedCount = 0;
            this.buf.clear();
        }
        return this.buf;
    }

    private ByteBuffer newBuffer(int i) {
        if (this.buf != null) {
            this.exceedCount = 0;
            ByteBufferUtil.destroy(this.buf);
        }
        this.buf = ByteBuffer.allocateDirect(normalizeCapacity(i));
        return this.buf;
    }

    private static int normalizeCapacity(int i) {
        int i2 = i >>> 10;
        if ((i & GLMapStaticValue.AM_PARAMETERNAME_PROCESS_ROADARROW) != 0) {
            i2++;
        }
        return i2 << 10;
    }

    public void releaseExternalResources() {
        if (this.buf != null) {
            ByteBufferUtil.destroy(this.buf);
        }
    }
}
