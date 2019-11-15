package org.jboss.netty.handler.codec.spdy;

import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.handler.codec.compression.CompressionException;
import org.jboss.netty.util.internal.jzlib.JZlib;
import org.jboss.netty.util.internal.jzlib.ZStream;

class SpdyHeaderBlockJZlibCompressor extends SpdyHeaderBlockCompressor {
    private final ZStream z = new ZStream();

    public SpdyHeaderBlockJZlibCompressor(int i, int i2, int i3, int i4) {
        int deflateSetDictionary;
        if (i < 2 || i > 3) {
            throw new IllegalArgumentException("unsupported version: " + i);
        } else if (i2 < 0 || i2 > 9) {
            throw new IllegalArgumentException("compressionLevel: " + i2 + " (expected: 0-9)");
        } else if (i3 < 9 || i3 > 15) {
            throw new IllegalArgumentException("windowBits: " + i3 + " (expected: 9-15)");
        } else if (i4 < 1 || i4 > 9) {
            throw new IllegalArgumentException("memLevel: " + i4 + " (expected: 1-9)");
        } else {
            int deflateInit = this.z.deflateInit(i2, i3, i4, JZlib.W_ZLIB);
            if (deflateInit != 0) {
                throw new CompressionException("failed to initialize an SPDY header block deflater: " + deflateInit);
            }
            if (i < 3) {
                deflateSetDictionary = this.z.deflateSetDictionary(SpdyCodecUtil.SPDY2_DICT, SpdyCodecUtil.SPDY2_DICT.length);
            } else {
                deflateSetDictionary = this.z.deflateSetDictionary(SpdyCodecUtil.SPDY_DICT, SpdyCodecUtil.SPDY_DICT.length);
            }
            if (deflateSetDictionary != 0) {
                throw new CompressionException("failed to set the SPDY dictionary: " + deflateSetDictionary);
            }
        }
    }

    public void setInput(ChannelBuffer channelBuffer) {
        byte[] bArr = new byte[channelBuffer.readableBytes()];
        channelBuffer.readBytes(bArr);
        this.z.next_in = bArr;
        this.z.next_in_index = 0;
        this.z.avail_in = bArr.length;
    }

    public void encode(ChannelBuffer channelBuffer) {
        try {
            byte[] bArr = new byte[(((int) Math.ceil(((double) this.z.next_in.length) * 1.001d)) + 12)];
            this.z.next_out = bArr;
            this.z.next_out_index = 0;
            this.z.avail_out = bArr.length;
            int deflate = this.z.deflate(2);
            if (deflate != 0) {
                throw new CompressionException("compression failure: " + deflate);
            }
            if (this.z.next_out_index != 0) {
                channelBuffer.writeBytes(bArr, 0, this.z.next_out_index);
            }
        } finally {
            this.z.next_in = null;
            this.z.next_out = null;
        }
    }

    public void end() {
        this.z.deflateEnd();
        this.z.next_in = null;
        this.z.next_out = null;
    }
}
