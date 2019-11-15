package org.jboss.netty.handler.codec.replay;

import java.lang.Enum;
import java.net.SocketAddress;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.channel.ChannelStateEvent;
import org.jboss.netty.handler.codec.frame.FrameDecoder;

public abstract class ReplayingDecoder<T extends Enum<T>> extends FrameDecoder {
    private int checkpoint;
    private boolean needsCleanup;
    private final ReplayingDecoderBuffer replayable;
    private T state;

    /* access modifiers changed from: protected */
    public abstract Object decode(ChannelHandlerContext channelHandlerContext, Channel channel, ChannelBuffer channelBuffer, T t) throws Exception;

    protected ReplayingDecoder() {
        this((T) null);
    }

    protected ReplayingDecoder(boolean z) {
        this(null, z);
    }

    protected ReplayingDecoder(T t) {
        this(t, false);
    }

    protected ReplayingDecoder(T t, boolean z) {
        super(z);
        this.replayable = new ReplayingDecoderBuffer(this);
        this.state = t;
    }

    /* access modifiers changed from: protected */
    public ChannelBuffer internalBuffer() {
        return super.internalBuffer();
    }

    /* access modifiers changed from: protected */
    public void checkpoint() {
        ChannelBuffer channelBuffer = this.cumulation;
        if (channelBuffer != null) {
            this.checkpoint = channelBuffer.readerIndex();
        } else {
            this.checkpoint = -1;
        }
    }

    /* access modifiers changed from: protected */
    public void checkpoint(T t) {
        checkpoint();
        setState(t);
    }

    /* access modifiers changed from: protected */
    public T getState() {
        return this.state;
    }

    /* access modifiers changed from: protected */
    public T setState(T t) {
        T t2 = this.state;
        this.state = t;
        return t2;
    }

    /* access modifiers changed from: protected */
    public Object decodeLast(ChannelHandlerContext channelHandlerContext, Channel channel, ChannelBuffer channelBuffer, T t) throws Exception {
        return decode(channelHandlerContext, channel, channelBuffer, t);
    }

    /* access modifiers changed from: protected */
    public final Object decode(ChannelHandlerContext channelHandlerContext, Channel channel, ChannelBuffer channelBuffer) throws Exception {
        return decode(channelHandlerContext, channel, channelBuffer, this.state);
    }

    /* access modifiers changed from: protected */
    public final Object decodeLast(ChannelHandlerContext channelHandlerContext, Channel channel, ChannelBuffer channelBuffer) throws Exception {
        return decodeLast(channelHandlerContext, channel, channelBuffer, this.state);
    }

    /* JADX WARNING: Incorrect type for immutable var: ssa=org.jboss.netty.handler.codec.replay.ReplayingDecoder, code=org.jboss.netty.buffer.ChannelBuffer, for r11v0, types: [org.jboss.netty.handler.codec.replay.ReplayingDecoder] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void messageReceived(org.jboss.netty.channel.ChannelHandlerContext r12, org.jboss.netty.channel.MessageEvent r13) throws java.lang.Exception {
        /*
            r11 = this;
            r10 = 0
            r7 = 0
            r6 = 1
            java.lang.Object r3 = r13.getMessage()
            boolean r0 = r3 instanceof org.jboss.netty.buffer.ChannelBuffer
            if (r0 != 0) goto L_0x000f
            r12.sendUpstream(r13)
        L_0x000e:
            return
        L_0x000f:
            org.jboss.netty.buffer.ChannelBuffer r3 = (org.jboss.netty.buffer.ChannelBuffer) r3
            boolean r0 = r3.readable()
            if (r0 == 0) goto L_0x000e
            r11.needsCleanup = r6
            org.jboss.netty.buffer.ChannelBuffer r0 = r11.cumulation
            if (r0 != 0) goto L_0x0062
            r11.cumulation = r3
            int r8 = r3.readerIndex()
            int r9 = r3.readableBytes()
            org.jboss.netty.channel.Channel r2 = r13.getChannel()     // Catch:{ all -> 0x007e }
            org.jboss.netty.handler.codec.replay.ReplayingDecoderBuffer r4 = r11.replayable     // Catch:{ all -> 0x007e }
            java.net.SocketAddress r5 = r13.getRemoteAddress()     // Catch:{ all -> 0x007e }
            r0 = r11
            r1 = r12
            r0.callDecode(r1, r2, r3, r4, r5)     // Catch:{ all -> 0x007e }
            int r0 = r3.readableBytes()
            if (r0 <= 0) goto L_0x00ee
            int r1 = r3.capacity()
            if (r0 == r1) goto L_0x00f2
            int r0 = r11.getMaxCumulationBufferCapacity()
            if (r1 <= r0) goto L_0x00f2
        L_0x0048:
            int r0 = r11.checkpoint
            if (r0 <= 0) goto L_0x00f5
            int r0 = r11.checkpoint
            int r0 = r0 - r8
            int r0 = r9 - r0
            if (r6 == 0) goto L_0x010d
            org.jboss.netty.buffer.ChannelBuffer r1 = r11.newCumulationBuffer(r12, r0)
            r11.cumulation = r1
            int r2 = r11.checkpoint
            r1.writeBytes(r3, r2, r0)
            goto L_0x000e
        L_0x005f:
            r11.cumulation = r10
        L_0x0061:
            throw r0
        L_0x0062:
            org.jboss.netty.buffer.ChannelBuffer r3 = r11.appendToCumulation(r3)
            org.jboss.netty.channel.Channel r2 = r13.getChannel()     // Catch:{ all -> 0x0079 }
            org.jboss.netty.handler.codec.replay.ReplayingDecoderBuffer r4 = r11.replayable     // Catch:{ all -> 0x0079 }
            java.net.SocketAddress r5 = r13.getRemoteAddress()     // Catch:{ all -> 0x0079 }
            r0 = r11
            r1 = r12
            r0.callDecode(r1, r2, r3, r4, r5)     // Catch:{ all -> 0x0079 }
            r11.updateCumulation(r12, r3)
            goto L_0x000e
        L_0x0079:
            r0 = move-exception
            r11.updateCumulation(r12, r3)
            throw r0
        L_0x007e:
            r0 = move-exception
            int r1 = r3.readableBytes()
            if (r1 <= 0) goto L_0x005f
            int r2 = r3.capacity()
            if (r1 == r2) goto L_0x00a9
            int r1 = r11.getMaxCumulationBufferCapacity()
            if (r2 <= r1) goto L_0x00a9
            r1 = r6
        L_0x0092:
            int r2 = r11.checkpoint
            if (r2 <= 0) goto L_0x00ab
            int r2 = r11.checkpoint
            int r2 = r2 - r8
            int r2 = r9 - r2
            if (r1 == 0) goto L_0x00c2
            org.jboss.netty.buffer.ChannelBuffer r1 = r11.newCumulationBuffer(r12, r2)
            r11.cumulation = r1
            int r4 = r11.checkpoint
            r1.writeBytes(r3, r4, r2)
            goto L_0x0061
        L_0x00a9:
            r1 = r7
            goto L_0x0092
        L_0x00ab:
            int r2 = r11.checkpoint
            if (r2 != 0) goto L_0x00cb
            if (r1 == 0) goto L_0x00db
            org.jboss.netty.buffer.ChannelBuffer r1 = r11.newCumulationBuffer(r12, r9)
            r11.cumulation = r1
            r1.writeBytes(r3, r8, r9)
            int r2 = r3.readerIndex()
            r1.readerIndex(r2)
            goto L_0x0061
        L_0x00c2:
            int r1 = r11.checkpoint
            org.jboss.netty.buffer.ChannelBuffer r1 = r3.slice(r1, r2)
            r11.cumulation = r1
            goto L_0x0061
        L_0x00cb:
            if (r1 == 0) goto L_0x00ea
            int r1 = r3.readableBytes()
            org.jboss.netty.buffer.ChannelBuffer r1 = r11.newCumulationBuffer(r12, r1)
            r11.cumulation = r1
            r1.writeBytes(r3)
            goto L_0x0061
        L_0x00db:
            org.jboss.netty.buffer.ChannelBuffer r1 = r3.slice(r8, r9)
            r11.cumulation = r1
            int r2 = r3.readerIndex()
            r1.readerIndex(r2)
            goto L_0x0061
        L_0x00ea:
            r11.cumulation = r3
            goto L_0x0061
        L_0x00ee:
            r11.cumulation = r10
            goto L_0x000e
        L_0x00f2:
            r6 = r7
            goto L_0x0048
        L_0x00f5:
            int r0 = r11.checkpoint
            if (r0 != 0) goto L_0x0117
            if (r6 == 0) goto L_0x0128
            org.jboss.netty.buffer.ChannelBuffer r0 = r11.newCumulationBuffer(r12, r9)
            r11.cumulation = r0
            r0.writeBytes(r3, r8, r9)
            int r1 = r3.readerIndex()
            r0.readerIndex(r1)
            goto L_0x000e
        L_0x010d:
            int r1 = r11.checkpoint
            org.jboss.netty.buffer.ChannelBuffer r0 = r3.slice(r1, r0)
            r11.cumulation = r0
            goto L_0x000e
        L_0x0117:
            if (r6 == 0) goto L_0x0137
            int r0 = r3.readableBytes()
            org.jboss.netty.buffer.ChannelBuffer r0 = r11.newCumulationBuffer(r12, r0)
            r11.cumulation = r0
            r0.writeBytes(r3)
            goto L_0x000e
        L_0x0128:
            org.jboss.netty.buffer.ChannelBuffer r0 = r3.slice(r8, r9)
            r11.cumulation = r0
            int r1 = r3.readerIndex()
            r0.readerIndex(r1)
            goto L_0x000e
        L_0x0137:
            r11.cumulation = r3
            goto L_0x000e
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.handler.codec.replay.ReplayingDecoder.messageReceived(org.jboss.netty.channel.ChannelHandlerContext, org.jboss.netty.channel.MessageEvent):void");
    }

    private void callDecode(ChannelHandlerContext channelHandlerContext, Channel channel, ChannelBuffer channelBuffer, ChannelBuffer channelBuffer2, SocketAddress socketAddress) throws Exception {
        while (channelBuffer.readable()) {
            int readerIndex = channelBuffer.readerIndex();
            this.checkpoint = readerIndex;
            Object obj = null;
            T t = this.state;
            try {
                obj = decode(channelHandlerContext, channel, channelBuffer2, this.state);
                if (obj == null) {
                    if (readerIndex == channelBuffer.readerIndex() && t == this.state) {
                        throw new IllegalStateException("null cannot be returned if no data is consumed and state didn't change.");
                    }
                }
            } catch (ReplayError e) {
                int i = this.checkpoint;
                if (i >= 0) {
                    channelBuffer.readerIndex(i);
                }
            }
            if (obj != null) {
                if (readerIndex == channelBuffer.readerIndex() && t == this.state) {
                    throw new IllegalStateException("decode() method must consume at least one byte if it returned a decoded message (caused by: " + getClass() + ')');
                }
                unfoldAndFireMessageReceived(channelHandlerContext, socketAddress, obj);
            } else {
                return;
            }
        }
    }

    /* access modifiers changed from: protected */
    public void cleanup(ChannelHandlerContext channelHandlerContext, ChannelStateEvent channelStateEvent) throws Exception {
        try {
            ChannelBuffer channelBuffer = this.cumulation;
            if (this.needsCleanup) {
                this.needsCleanup = false;
                this.replayable.terminate();
                if (channelBuffer != null && channelBuffer.readable()) {
                    callDecode(channelHandlerContext, channelStateEvent.getChannel(), channelBuffer, this.replayable, null);
                }
                Object decodeLast = decodeLast(channelHandlerContext, channelStateEvent.getChannel(), this.replayable, this.state);
                this.cumulation = null;
                if (decodeLast != null) {
                    unfoldAndFireMessageReceived(channelHandlerContext, null, decodeLast);
                }
            }
        } catch (ReplayError e) {
        } catch (Throwable th) {
            channelHandlerContext.sendUpstream(channelStateEvent);
            throw th;
        }
        channelHandlerContext.sendUpstream(channelStateEvent);
    }
}
