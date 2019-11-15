package org.jboss.netty.handler.codec.compression;

import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.ChannelBuffers;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.handler.codec.oneone.OneToOneDecoder;
import org.jboss.netty.util.internal.jzlib.JZlib;
import org.jboss.netty.util.internal.jzlib.ZStream;

public class ZlibDecoder extends OneToOneDecoder {
    private byte[] dictionary;
    private volatile boolean finished;
    private final ZStream z;

    public ZlibDecoder() {
        this(ZlibWrapper.ZLIB);
    }

    public ZlibDecoder(ZlibWrapper zlibWrapper) {
        this.z = new ZStream();
        if (zlibWrapper == null) {
            throw new NullPointerException("wrapper");
        }
        synchronized (this.z) {
            int inflateInit = this.z.inflateInit(ZlibUtil.convertWrapperType(zlibWrapper));
            if (inflateInit != 0) {
                ZlibUtil.fail(this.z, "initialization failure", inflateInit);
            }
        }
    }

    public ZlibDecoder(byte[] bArr) {
        this.z = new ZStream();
        if (bArr == null) {
            throw new NullPointerException("dictionary");
        }
        this.dictionary = bArr;
        synchronized (this.z) {
            int inflateInit = this.z.inflateInit(JZlib.W_ZLIB);
            if (inflateInit != 0) {
                ZlibUtil.fail(this.z, "initialization failure", inflateInit);
            }
        }
    }

    public boolean isClosed() {
        return this.finished;
    }

    /* access modifiers changed from: protected */
    public Object decode(ChannelHandlerContext channelHandlerContext, Channel channel, Object obj) throws Exception {
        if (!(obj instanceof ChannelBuffer) || this.finished) {
            return obj;
        }
        synchronized (this.z) {
            try {
                ChannelBuffer channelBuffer = (ChannelBuffer) obj;
                byte[] bArr = new byte[channelBuffer.readableBytes()];
                channelBuffer.readBytes(bArr);
                this.z.next_in = bArr;
                this.z.next_in_index = 0;
                this.z.avail_in = bArr.length;
                byte[] bArr2 = new byte[(bArr.length << 1)];
                ChannelBuffer dynamicBuffer = ChannelBuffers.dynamicBuffer(channelBuffer.order(), bArr2.length, channelHandlerContext.getChannel().getConfig().getBufferFactory());
                this.z.next_out = bArr2;
                this.z.next_out_index = 0;
                this.z.avail_out = bArr2.length;
                while (true) {
                    int inflate = this.z.inflate(2);
                    if (this.z.next_out_index > 0) {
                        dynamicBuffer.writeBytes(bArr2, 0, this.z.next_out_index);
                        this.z.avail_out = bArr2.length;
                    }
                    this.z.next_out_index = 0;
                    switch (inflate) {
                        case -5:
                            if (this.z.avail_in <= 0) {
                                break;
                            } else {
                                continue;
                            }
                        case 0:
                            break;
                        case 1:
                            this.finished = true;
                            this.z.inflateEnd();
                            break;
                        case 2:
                            if (this.dictionary != null) {
                                int inflateSetDictionary = this.z.inflateSetDictionary(this.dictionary, this.dictionary.length);
                                if (inflateSetDictionary == 0) {
                                    break;
                                } else {
                                    ZlibUtil.fail(this.z, "failed to set the dictionary", inflateSetDictionary);
                                    break;
                                }
                            } else {
                                ZlibUtil.fail(this.z, "decompression failure", inflate);
                                continue;
                            }
                        default:
                            ZlibUtil.fail(this.z, "decompression failure", inflate);
                            continue;
                    }
                }
                if (dynamicBuffer.writerIndex() != 0) {
                    this.z.next_in = null;
                    this.z.next_out = null;
                    return dynamicBuffer;
                }
                this.z.next_in = null;
                this.z.next_out = null;
                return null;
            } catch (Throwable th) {
                this.z.next_in = null;
                this.z.next_out = null;
                throw th;
            }
        }
    }
}
