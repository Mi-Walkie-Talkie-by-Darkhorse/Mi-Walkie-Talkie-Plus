package org.jboss.netty.handler.codec.frame;

import java.net.SocketAddress;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.ChannelBuffers;
import org.jboss.netty.buffer.CompositeChannelBuffer;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelHandler;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.channel.ChannelStateEvent;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.channel.ExceptionEvent;
import org.jboss.netty.channel.LifeCycleAwareChannelHandler;
import org.jboss.netty.channel.MessageEvent;
import org.jboss.netty.channel.SimpleChannelUpstreamHandler;

public abstract class FrameDecoder extends SimpleChannelUpstreamHandler implements LifeCycleAwareChannelHandler {
    static final /* synthetic */ boolean $assertionsDisabled = (!FrameDecoder.class.desiredAssertionStatus());
    public static final int DEFAULT_MAX_COMPOSITEBUFFER_COMPONENTS = 1024;
    private int copyThreshold;
    private volatile ChannelHandlerContext ctx;
    protected ChannelBuffer cumulation;
    private int maxCumulationBufferComponents;
    private boolean unfold;

    /* access modifiers changed from: protected */
    public abstract Object decode(ChannelHandlerContext channelHandlerContext, Channel channel, ChannelBuffer channelBuffer) throws Exception;

    protected FrameDecoder() {
        this(false);
    }

    protected FrameDecoder(boolean z) {
        this.maxCumulationBufferComponents = 1024;
        this.unfold = z;
    }

    public final boolean isUnfold() {
        return this.unfold;
    }

    public final void setUnfold(boolean z) {
        if (this.ctx == null) {
            this.unfold = z;
            return;
        }
        throw new IllegalStateException("decoder properties cannot be changed once the decoder is added to a pipeline.");
    }

    public final int getMaxCumulationBufferCapacity() {
        return this.copyThreshold;
    }

    public final void setMaxCumulationBufferCapacity(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("maxCumulationBufferCapacity must be >= 0");
        } else if (this.ctx == null) {
            this.copyThreshold = i;
        } else {
            throw new IllegalStateException("decoder properties cannot be changed once the decoder is added to a pipeline.");
        }
    }

    public final int getMaxCumulationBufferComponents() {
        return this.maxCumulationBufferComponents;
    }

    public final void setMaxCumulationBufferComponents(int i) {
        if (i < 2) {
            throw new IllegalArgumentException("maxCumulationBufferComponents: " + i + " (expected: >= 2)");
        } else if (this.ctx == null) {
            this.maxCumulationBufferComponents = i;
        } else {
            throw new IllegalStateException("decoder properties cannot be changed once the decoder is added to a pipeline.");
        }
    }

    public void messageReceived(ChannelHandlerContext channelHandlerContext, MessageEvent messageEvent) throws Exception {
        Object message = messageEvent.getMessage();
        if (!(message instanceof ChannelBuffer)) {
            channelHandlerContext.sendUpstream(messageEvent);
            return;
        }
        ChannelBuffer channelBuffer = (ChannelBuffer) message;
        if (!channelBuffer.readable()) {
            return;
        }
        if (this.cumulation == null) {
            try {
                callDecode(channelHandlerContext, messageEvent.getChannel(), channelBuffer, messageEvent.getRemoteAddress());
            } finally {
                updateCumulation(channelHandlerContext, channelBuffer);
            }
        } else {
            ChannelBuffer appendToCumulation = appendToCumulation(channelBuffer);
            try {
                callDecode(channelHandlerContext, messageEvent.getChannel(), appendToCumulation, messageEvent.getRemoteAddress());
            } finally {
                updateCumulation(channelHandlerContext, appendToCumulation);
            }
        }
    }

    /* access modifiers changed from: protected */
    public ChannelBuffer appendToCumulation(ChannelBuffer channelBuffer) {
        ChannelBuffer channelBuffer2 = this.cumulation;
        if ($assertionsDisabled || channelBuffer2.readable()) {
            if (channelBuffer2 instanceof CompositeChannelBuffer) {
                CompositeChannelBuffer compositeChannelBuffer = (CompositeChannelBuffer) channelBuffer2;
                if (compositeChannelBuffer.numComponents() >= this.maxCumulationBufferComponents) {
                    channelBuffer2 = compositeChannelBuffer.copy();
                }
            }
            ChannelBuffer wrappedBuffer = ChannelBuffers.wrappedBuffer(channelBuffer2, channelBuffer);
            this.cumulation = wrappedBuffer;
            return wrappedBuffer;
        }
        throw new AssertionError();
    }

    /* access modifiers changed from: protected */
    public ChannelBuffer updateCumulation(ChannelHandlerContext channelHandlerContext, ChannelBuffer channelBuffer) {
        int readableBytes = channelBuffer.readableBytes();
        if (readableBytes > 0) {
            int capacity = channelBuffer.capacity();
            if (readableBytes < capacity && capacity > this.copyThreshold) {
                ChannelBuffer newCumulationBuffer = newCumulationBuffer(channelHandlerContext, channelBuffer.readableBytes());
                this.cumulation = newCumulationBuffer;
                this.cumulation.writeBytes(channelBuffer);
                return newCumulationBuffer;
            } else if (channelBuffer.readerIndex() != 0) {
                ChannelBuffer slice = channelBuffer.slice();
                this.cumulation = slice;
                return slice;
            } else {
                this.cumulation = channelBuffer;
                return channelBuffer;
            }
        } else {
            this.cumulation = null;
            return null;
        }
    }

    public void channelDisconnected(ChannelHandlerContext channelHandlerContext, ChannelStateEvent channelStateEvent) throws Exception {
        cleanup(channelHandlerContext, channelStateEvent);
    }

    public void channelClosed(ChannelHandlerContext channelHandlerContext, ChannelStateEvent channelStateEvent) throws Exception {
        cleanup(channelHandlerContext, channelStateEvent);
    }

    public void exceptionCaught(ChannelHandlerContext channelHandlerContext, ExceptionEvent exceptionEvent) throws Exception {
        channelHandlerContext.sendUpstream(exceptionEvent);
    }

    /* access modifiers changed from: protected */
    public Object decodeLast(ChannelHandlerContext channelHandlerContext, Channel channel, ChannelBuffer channelBuffer) throws Exception {
        return decode(channelHandlerContext, channel, channelBuffer);
    }

    private void callDecode(ChannelHandlerContext channelHandlerContext, Channel channel, ChannelBuffer channelBuffer, SocketAddress socketAddress) throws Exception {
        while (channelBuffer.readable()) {
            int readerIndex = channelBuffer.readerIndex();
            Object decode = decode(channelHandlerContext, channel, channelBuffer);
            if (decode == null) {
                if (readerIndex == channelBuffer.readerIndex()) {
                    return;
                }
            } else if (readerIndex == channelBuffer.readerIndex()) {
                throw new IllegalStateException("decode() method must read at least one byte if it returned a frame (caused by: " + getClass() + ')');
            } else {
                unfoldAndFireMessageReceived(channelHandlerContext, socketAddress, decode);
            }
        }
    }

    /* access modifiers changed from: protected */
    public final void unfoldAndFireMessageReceived(ChannelHandlerContext channelHandlerContext, SocketAddress socketAddress, Object obj) {
        if (!this.unfold) {
            Channels.fireMessageReceived(channelHandlerContext, obj, socketAddress);
        } else if (obj instanceof Object[]) {
            for (Object fireMessageReceived : (Object[]) obj) {
                Channels.fireMessageReceived(channelHandlerContext, fireMessageReceived, socketAddress);
            }
        } else if (obj instanceof Iterable) {
            for (Object fireMessageReceived2 : (Iterable) obj) {
                Channels.fireMessageReceived(channelHandlerContext, fireMessageReceived2, socketAddress);
            }
        } else {
            Channels.fireMessageReceived(channelHandlerContext, obj, socketAddress);
        }
    }

    /* access modifiers changed from: protected */
    public void cleanup(ChannelHandlerContext channelHandlerContext, ChannelStateEvent channelStateEvent) throws Exception {
        try {
            ChannelBuffer channelBuffer = this.cumulation;
            if (channelBuffer != null) {
                this.cumulation = null;
                if (channelBuffer.readable()) {
                    callDecode(channelHandlerContext, channelHandlerContext.getChannel(), channelBuffer, null);
                }
                Object decodeLast = decodeLast(channelHandlerContext, channelHandlerContext.getChannel(), channelBuffer);
                if (decodeLast != null) {
                    unfoldAndFireMessageReceived(channelHandlerContext, null, decodeLast);
                }
            }
        } finally {
            channelHandlerContext.sendUpstream(channelStateEvent);
        }
    }

    /* access modifiers changed from: protected */
    public ChannelBuffer newCumulationBuffer(ChannelHandlerContext channelHandlerContext, int i) {
        return channelHandlerContext.getChannel().getConfig().getBufferFactory().getBuffer(Math.max(i, 256));
    }

    public void replace(String str, ChannelHandler channelHandler) {
        if (this.ctx == null) {
            throw new IllegalStateException("Replace cann only be called once the FrameDecoder is added to the ChannelPipeline");
        }
        ChannelPipeline pipeline = this.ctx.getPipeline();
        pipeline.addAfter(this.ctx.getName(), str, channelHandler);
        try {
            if (this.cumulation != null) {
                Channels.fireMessageReceived(this.ctx, (Object) this.cumulation.readBytes(actualReadableBytes()));
            }
        } finally {
            pipeline.remove((ChannelHandler) this);
        }
    }

    /* access modifiers changed from: protected */
    public int actualReadableBytes() {
        return internalBuffer().readableBytes();
    }

    /* access modifiers changed from: protected */
    public ChannelBuffer internalBuffer() {
        ChannelBuffer channelBuffer = this.cumulation;
        if (channelBuffer == null) {
            return ChannelBuffers.EMPTY_BUFFER;
        }
        return channelBuffer;
    }

    /* access modifiers changed from: protected */
    public ChannelBuffer extractFrame(ChannelBuffer channelBuffer, int i, int i2) {
        ChannelBuffer buffer = channelBuffer.factory().getBuffer(i2);
        buffer.writeBytes(channelBuffer, i, i2);
        return buffer;
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
