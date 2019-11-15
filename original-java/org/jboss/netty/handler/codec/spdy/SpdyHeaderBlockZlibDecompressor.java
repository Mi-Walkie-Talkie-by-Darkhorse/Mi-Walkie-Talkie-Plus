package org.jboss.netty.handler.codec.spdy;

import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
import org.jboss.netty.buffer.ChannelBuffer;

class SpdyHeaderBlockZlibDecompressor extends SpdyHeaderBlockDecompressor {
    private final Inflater decompressor = new Inflater();
    private final byte[] out = new byte[8192];
    private final int version;

    public SpdyHeaderBlockZlibDecompressor(int i) {
        if (i < 2 || i > 3) {
            throw new IllegalArgumentException("unsupported version: " + i);
        }
        this.version = i;
    }

    public void setInput(ChannelBuffer channelBuffer) {
        byte[] bArr = new byte[channelBuffer.readableBytes()];
        channelBuffer.readBytes(bArr);
        this.decompressor.setInput(bArr);
    }

    public int decode(ChannelBuffer channelBuffer) throws Exception {
        try {
            int inflate = this.decompressor.inflate(this.out);
            if (inflate == 0 && this.decompressor.needsDictionary()) {
                if (this.version < 3) {
                    this.decompressor.setDictionary(SpdyCodecUtil.SPDY2_DICT);
                } else {
                    this.decompressor.setDictionary(SpdyCodecUtil.SPDY_DICT);
                }
                inflate = this.decompressor.inflate(this.out);
            }
            channelBuffer.writeBytes(this.out, 0, inflate);
            return inflate;
        } catch (DataFormatException e) {
            throw new SpdyProtocolException("Received invalid header block", e);
        }
    }

    public void end() {
        this.decompressor.end();
    }
}
