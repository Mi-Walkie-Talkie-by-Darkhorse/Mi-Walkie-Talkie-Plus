package org.jboss.netty.handler.codec.spdy;

import java.util.zip.Deflater;
import org.jboss.netty.buffer.ChannelBuffer;

class SpdyHeaderBlockZlibCompressor extends SpdyHeaderBlockCompressor {
    private final Deflater compressor;
    private final byte[] out = new byte[8192];

    public SpdyHeaderBlockZlibCompressor(int i, int i2) {
        if (i < 2 || i > 3) {
            throw new IllegalArgumentException("unsupported version: " + i);
        } else if (i2 < 0 || i2 > 9) {
            throw new IllegalArgumentException("compressionLevel: " + i2 + " (expected: 0-9)");
        } else {
            this.compressor = new Deflater(i2);
            if (i < 3) {
                this.compressor.setDictionary(SpdyCodecUtil.SPDY2_DICT);
            } else {
                this.compressor.setDictionary(SpdyCodecUtil.SPDY_DICT);
            }
        }
    }

    public void setInput(ChannelBuffer channelBuffer) {
        byte[] bArr = new byte[channelBuffer.readableBytes()];
        channelBuffer.readBytes(bArr);
        this.compressor.setInput(bArr);
    }

    public void encode(ChannelBuffer channelBuffer) {
        int length = this.out.length;
        while (length == this.out.length) {
            length = this.compressor.deflate(this.out, 0, this.out.length, 2);
            channelBuffer.writeBytes(this.out, 0, length);
        }
    }

    public void end() {
        this.compressor.end();
    }
}
