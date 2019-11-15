package org.jboss.netty.handler.codec.compression;

import java.util.concurrent.atomic.AtomicBoolean;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.ChannelBuffers;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelEvent;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.ChannelFutureListener;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.channel.ChannelStateEvent;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.channel.LifeCycleAwareChannelHandler;
import org.jboss.netty.handler.codec.oneone.OneToOneStrictEncoder;
import org.jboss.netty.util.internal.jzlib.JZlib;
import org.jboss.netty.util.internal.jzlib.ZStream;

public class ZlibEncoder extends OneToOneStrictEncoder implements LifeCycleAwareChannelHandler {
    private static final byte[] EMPTY_ARRAY = new byte[0];
    private volatile ChannelHandlerContext ctx;
    private final AtomicBoolean finished;
    private final ZStream z;

    public ZlibEncoder() {
        this(6);
    }

    public ZlibEncoder(int i) {
        this(ZlibWrapper.ZLIB, i);
    }

    public ZlibEncoder(ZlibWrapper zlibWrapper) {
        this(zlibWrapper, 6);
    }

    public ZlibEncoder(ZlibWrapper zlibWrapper, int i) {
        this(zlibWrapper, i, 15, 8);
    }

    public ZlibEncoder(ZlibWrapper zlibWrapper, int i, int i2, int i3) {
        this.z = new ZStream();
        this.finished = new AtomicBoolean();
        if (i < 0 || i > 9) {
            throw new IllegalArgumentException("compressionLevel: " + i + " (expected: 0-9)");
        } else if (i2 < 9 || i2 > 15) {
            throw new IllegalArgumentException("windowBits: " + i2 + " (expected: 9-15)");
        } else if (i3 < 1 || i3 > 9) {
            throw new IllegalArgumentException("memLevel: " + i3 + " (expected: 1-9)");
        } else if (zlibWrapper == null) {
            throw new NullPointerException("wrapper");
        } else if (zlibWrapper == ZlibWrapper.ZLIB_OR_NONE) {
            throw new IllegalArgumentException("wrapper '" + ZlibWrapper.ZLIB_OR_NONE + "' is not " + "allowed for compression.");
        } else {
            synchronized (this.z) {
                int deflateInit = this.z.deflateInit(i, i2, i3, ZlibUtil.convertWrapperType(zlibWrapper));
                if (deflateInit != 0) {
                    ZlibUtil.fail(this.z, "initialization failure", deflateInit);
                }
            }
        }
    }

    public ZlibEncoder(byte[] bArr) {
        this(6, bArr);
    }

    public ZlibEncoder(int i, byte[] bArr) {
        this(i, 15, 8, bArr);
    }

    public ZlibEncoder(int i, int i2, int i3, byte[] bArr) {
        this.z = new ZStream();
        this.finished = new AtomicBoolean();
        if (i < 0 || i > 9) {
            throw new IllegalArgumentException("compressionLevel: " + i + " (expected: 0-9)");
        } else if (i2 < 9 || i2 > 15) {
            throw new IllegalArgumentException("windowBits: " + i2 + " (expected: 9-15)");
        } else if (i3 < 1 || i3 > 9) {
            throw new IllegalArgumentException("memLevel: " + i3 + " (expected: 1-9)");
        } else if (bArr == null) {
            throw new NullPointerException("dictionary");
        } else {
            synchronized (this.z) {
                int deflateInit = this.z.deflateInit(i, i2, i3, JZlib.W_ZLIB);
                if (deflateInit != 0) {
                    ZlibUtil.fail(this.z, "initialization failure", deflateInit);
                } else {
                    int deflateSetDictionary = this.z.deflateSetDictionary(bArr, bArr.length);
                    if (deflateSetDictionary != 0) {
                        ZlibUtil.fail(this.z, "failed to set the dictionary", deflateSetDictionary);
                    }
                }
            }
        }
    }

    public ChannelFuture close() {
        ChannelHandlerContext channelHandlerContext = this.ctx;
        if (channelHandlerContext != null) {
            return finishEncode(channelHandlerContext, null);
        }
        throw new IllegalStateException("not added to a pipeline");
    }

    public boolean isClosed() {
        return this.finished.get();
    }

    /* access modifiers changed from: protected */
    public Object encode(ChannelHandlerContext channelHandlerContext, Channel channel, Object obj) throws Exception {
        if ((obj instanceof ChannelBuffer) && !this.finished.get()) {
            synchronized (this.z) {
                try {
                    ChannelBuffer channelBuffer = (ChannelBuffer) obj;
                    byte[] bArr = new byte[channelBuffer.readableBytes()];
                    channelBuffer.readBytes(bArr);
                    this.z.next_in = bArr;
                    this.z.next_in_index = 0;
                    this.z.avail_in = bArr.length;
                    byte[] bArr2 = new byte[(((int) Math.ceil(((double) bArr.length) * 1.001d)) + 12)];
                    this.z.next_out = bArr2;
                    this.z.next_out_index = 0;
                    this.z.avail_out = bArr2.length;
                    int deflate = this.z.deflate(2);
                    if (deflate != 0) {
                        ZlibUtil.fail(this.z, "compression failure", deflate);
                    }
                    if (this.z.next_out_index != 0) {
                        obj = channelHandlerContext.getChannel().getConfig().getBufferFactory().getBuffer(channelBuffer.order(), bArr2, 0, this.z.next_out_index);
                    } else {
                        obj = ChannelBuffers.EMPTY_BUFFER;
                    }
                } finally {
                    this.z.next_in = null;
                    this.z.next_out = null;
                }
            }
        }
        return obj;
    }

    public void handleDownstream(ChannelHandlerContext channelHandlerContext, ChannelEvent channelEvent) throws Exception {
        if (channelEvent instanceof ChannelStateEvent) {
            ChannelStateEvent channelStateEvent = (ChannelStateEvent) channelEvent;
            switch (channelStateEvent.getState()) {
                case OPEN:
                case CONNECTED:
                case BOUND:
                    if (Boolean.FALSE.equals(channelStateEvent.getValue()) || channelStateEvent.getValue() == null) {
                        finishEncode(channelHandlerContext, channelEvent);
                        return;
                    }
            }
        }
        super.handleDownstream(channelHandlerContext, channelEvent);
    }

    private ChannelFuture finishEncode(final ChannelHandlerContext channelHandlerContext, final ChannelEvent channelEvent) {
        ChannelFuture future;
        ChannelBuffer channelBuffer = null;
        if (!this.finished.compareAndSet(false, true)) {
            if (channelEvent != null) {
                channelHandlerContext.sendDownstream(channelEvent);
            }
            return Channels.succeededFuture(channelHandlerContext.getChannel());
        }
        synchronized (this.z) {
            try {
                this.z.next_in = EMPTY_ARRAY;
                this.z.next_in_index = 0;
                this.z.avail_in = 0;
                byte[] bArr = new byte[32];
                this.z.next_out = bArr;
                this.z.next_out_index = 0;
                this.z.avail_out = bArr.length;
                int deflate = this.z.deflate(4);
                if (deflate != 0 && deflate != 1) {
                    future = Channels.failedFuture(channelHandlerContext.getChannel(), ZlibUtil.exception(this.z, "compression failure", deflate));
                } else if (this.z.next_out_index != 0) {
                    future = Channels.future(channelHandlerContext.getChannel());
                    channelBuffer = channelHandlerContext.getChannel().getConfig().getBufferFactory().getBuffer(bArr, 0, this.z.next_out_index);
                } else {
                    future = Channels.future(channelHandlerContext.getChannel());
                    channelBuffer = ChannelBuffers.EMPTY_BUFFER;
                }
                this.z.deflateEnd();
                this.z.next_in = null;
                this.z.next_out = null;
            } catch (Throwable th) {
                this.z.deflateEnd();
                this.z.next_in = null;
                this.z.next_out = null;
                throw th;
            }
        }
        if (channelBuffer != null) {
            Channels.write(channelHandlerContext, future, (Object) channelBuffer);
        }
        if (channelEvent == null) {
            return future;
        }
        future.addListener(new ChannelFutureListener() {
            public void operationComplete(ChannelFuture channelFuture) throws Exception {
                channelHandlerContext.sendDownstream(channelEvent);
            }
        });
        return future;
    }

    public void beforeAdd(ChannelHandlerContext channelHandlerContext) throws Exception {
        this.ctx = channelHandlerContext;
    }

    public void afterAdd(ChannelHandlerContext channelHandlerContext) throws Exception {
    }

    public void beforeRemove(ChannelHandlerContext channelHandlerContext) throws Exception {
    }

    public void afterRemove(ChannelHandlerContext channelHandlerContext) throws Exception {
    }
}
