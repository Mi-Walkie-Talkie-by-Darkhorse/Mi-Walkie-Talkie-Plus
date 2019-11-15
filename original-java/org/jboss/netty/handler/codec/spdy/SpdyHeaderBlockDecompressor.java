package org.jboss.netty.handler.codec.spdy;

import org.jboss.netty.buffer.ChannelBuffer;

abstract class SpdyHeaderBlockDecompressor {
    /* access modifiers changed from: 0000 */
    public abstract int decode(ChannelBuffer channelBuffer) throws Exception;

    /* access modifiers changed from: 0000 */
    public abstract void end();

    /* access modifiers changed from: 0000 */
    public abstract void setInput(ChannelBuffer channelBuffer);

    SpdyHeaderBlockDecompressor() {
    }

    static SpdyHeaderBlockDecompressor newInstance(int i) {
        return new SpdyHeaderBlockZlibDecompressor(i);
    }
}
