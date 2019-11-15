package org.jboss.netty.handler.codec.spdy;

import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.util.internal.DetectionUtil;

abstract class SpdyHeaderBlockCompressor {
    /* access modifiers changed from: 0000 */
    public abstract void encode(ChannelBuffer channelBuffer);

    /* access modifiers changed from: 0000 */
    public abstract void end();

    /* access modifiers changed from: 0000 */
    public abstract void setInput(ChannelBuffer channelBuffer);

    SpdyHeaderBlockCompressor() {
    }

    static SpdyHeaderBlockCompressor newInstance(int i, int i2, int i3, int i4) {
        if (DetectionUtil.javaVersion() >= 7) {
            return new SpdyHeaderBlockZlibCompressor(i, i2);
        }
        return new SpdyHeaderBlockJZlibCompressor(i, i2, i3, i4);
    }
}
