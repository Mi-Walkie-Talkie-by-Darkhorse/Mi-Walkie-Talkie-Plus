package org.jboss.netty.handler.codec.compression;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.zip.CRC32;
import java.util.zip.Deflater;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.ChannelBuffers;
import org.jboss.netty.channel.ChannelEvent;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.ChannelFutureListener;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.channel.ChannelStateEvent;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.channel.LifeCycleAwareChannelHandler;
import org.jboss.netty.handler.codec.oneone.OneToOneStrictEncoder;

public class JdkZlibEncoder extends OneToOneStrictEncoder implements LifeCycleAwareChannelHandler {
    private static final byte[] gzipHeader = {31, -117, 8, 0, 0, 0, 0, 0, 0, 0};
    private final CRC32 crc;
    private volatile ChannelHandlerContext ctx;
    private final Deflater deflater;
    private final AtomicBoolean finished;
    private final boolean gzip;
    private final byte[] out;
    private boolean writeHeader;

    public JdkZlibEncoder() {
        this(6);
    }

    public JdkZlibEncoder(int i) {
        this(ZlibWrapper.ZLIB, i);
    }

    public JdkZlibEncoder(ZlibWrapper zlibWrapper) {
        this(zlibWrapper, 6);
    }

    public JdkZlibEncoder(ZlibWrapper zlibWrapper, int i) {
        boolean z;
        boolean z2 = true;
        this.out = new byte[8192];
        this.finished = new AtomicBoolean();
        this.crc = new CRC32();
        this.writeHeader = true;
        if (i < 0 || i > 9) {
            throw new IllegalArgumentException("compressionLevel: " + i + " (expected: 0-9)");
        } else if (zlibWrapper == null) {
            throw new NullPointerException("wrapper");
        } else if (zlibWrapper == ZlibWrapper.ZLIB_OR_NONE) {
            throw new IllegalArgumentException("wrapper '" + ZlibWrapper.ZLIB_OR_NONE + "' is not " + "allowed for compression.");
        } else {
            if (zlibWrapper == ZlibWrapper.GZIP) {
                z = true;
            } else {
                z = false;
            }
            this.gzip = z;
            if (zlibWrapper == ZlibWrapper.ZLIB) {
                z2 = false;
            }
            this.deflater = new Deflater(i, z2);
        }
    }

    public JdkZlibEncoder(byte[] bArr) {
        this(6, bArr);
    }

    public JdkZlibEncoder(int i, byte[] bArr) {
        this.out = new byte[8192];
        this.finished = new AtomicBoolean();
        this.crc = new CRC32();
        this.writeHeader = true;
        if (i < 0 || i > 9) {
            throw new IllegalArgumentException("compressionLevel: " + i + " (expected: 0-9)");
        } else if (bArr == null) {
            throw new NullPointerException("dictionary");
        } else {
            this.gzip = false;
            this.deflater = new Deflater(i);
            this.deflater.setDictionary(bArr);
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

    /* JADX WARNING: type inference failed for: r9v0, types: [java.lang.Object] */
    /* JADX WARNING: type inference failed for: r9v1, types: [java.lang.Object] */
    /* JADX WARNING: type inference failed for: r9v3, types: [org.jboss.netty.buffer.ChannelBuffer] */
    /* access modifiers changed from: protected */
    /* JADX WARNING: Incorrect type for immutable var: ssa=java.lang.Object, code=null, for r9v0, types: [java.lang.Object] */
    /* JADX WARNING: Multi-variable type inference failed. Error: jadx.core.utils.exceptions.JadxRuntimeException: No candidate types for var: r9v3, types: [org.jboss.netty.buffer.ChannelBuffer]
  assigns: [org.jboss.netty.buffer.ChannelBuffer, java.lang.Object]
  uses: [org.jboss.netty.buffer.ChannelBuffer, java.lang.Object, ?[OBJECT, ARRAY]]
  mth insns count: 46
    	at jadx.core.dex.visitors.typeinference.TypeSearch.fillTypeCandidates(TypeSearch.java:237)
    	at java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.dex.visitors.typeinference.TypeSearch.run(TypeSearch.java:53)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runMultiVariableSearch(TypeInferenceVisitor.java:99)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:92)
    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
    	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$1(DepthTraversal.java:14)
    	at java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
    	at jadx.core.ProcessClass.process(ProcessClass.java:30)
    	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:311)
    	at jadx.api.JavaClass.decompile(JavaClass.java:62)
    	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:217)
     */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.Object encode(org.jboss.netty.channel.ChannelHandlerContext r7, org.jboss.netty.channel.Channel r8, java.lang.Object r9) throws java.lang.Exception {
        /*
            r6 = this;
            boolean r0 = r9 instanceof org.jboss.netty.buffer.ChannelBuffer
            if (r0 == 0) goto L_0x000c
            java.util.concurrent.atomic.AtomicBoolean r0 = r6.finished
            boolean r0 = r0.get()
            if (r0 == 0) goto L_0x000d
        L_0x000c:
            return r9
        L_0x000d:
            org.jboss.netty.buffer.ChannelBuffer r9 = (org.jboss.netty.buffer.ChannelBuffer) r9
            int r0 = r9.readableBytes()
            byte[] r0 = new byte[r0]
            r9.readBytes(r0)
            int r1 = r0.length
            double r2 = (double) r1
            r4 = 4607186922399644778(0x3ff004189374bc6a, double:1.001)
            double r2 = r2 * r4
            double r2 = java.lang.Math.ceil(r2)
            int r1 = (int) r2
            int r1 = r1 + 12
            org.jboss.netty.channel.ChannelConfig r2 = r8.getConfig()
            org.jboss.netty.buffer.ChannelBufferFactory r2 = r2.getBufferFactory()
            org.jboss.netty.buffer.ChannelBuffer r9 = org.jboss.netty.buffer.ChannelBuffers.dynamicBuffer(r1, r2)
            java.util.zip.Deflater r1 = r6.deflater
            monitor-enter(r1)
            boolean r2 = r6.gzip     // Catch:{ all -> 0x006c }
            if (r2 == 0) goto L_0x004b
            java.util.zip.CRC32 r2 = r6.crc     // Catch:{ all -> 0x006c }
            r2.update(r0)     // Catch:{ all -> 0x006c }
            boolean r2 = r6.writeHeader     // Catch:{ all -> 0x006c }
            if (r2 == 0) goto L_0x004b
            byte[] r2 = gzipHeader     // Catch:{ all -> 0x006c }
            r9.writeBytes(r2)     // Catch:{ all -> 0x006c }
            r2 = 0
            r6.writeHeader = r2     // Catch:{ all -> 0x006c }
        L_0x004b:
            java.util.zip.Deflater r2 = r6.deflater     // Catch:{ all -> 0x006c }
            r2.setInput(r0)     // Catch:{ all -> 0x006c }
        L_0x0050:
            java.util.zip.Deflater r0 = r6.deflater     // Catch:{ all -> 0x006c }
            boolean r0 = r0.needsInput()     // Catch:{ all -> 0x006c }
            if (r0 != 0) goto L_0x006f
            java.util.zip.Deflater r0 = r6.deflater     // Catch:{ all -> 0x006c }
            byte[] r2 = r6.out     // Catch:{ all -> 0x006c }
            r3 = 0
            byte[] r4 = r6.out     // Catch:{ all -> 0x006c }
            int r4 = r4.length     // Catch:{ all -> 0x006c }
            r5 = 2
            int r0 = r0.deflate(r2, r3, r4, r5)     // Catch:{ all -> 0x006c }
            byte[] r2 = r6.out     // Catch:{ all -> 0x006c }
            r3 = 0
            r9.writeBytes(r2, r3, r0)     // Catch:{ all -> 0x006c }
            goto L_0x0050
        L_0x006c:
            r0 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x006c }
            throw r0
        L_0x006f:
            monitor-exit(r1)     // Catch:{ all -> 0x006c }
            goto L_0x000c
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.handler.codec.compression.JdkZlibEncoder.encode(org.jboss.netty.channel.ChannelHandlerContext, org.jboss.netty.channel.Channel, java.lang.Object):java.lang.Object");
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
        ChannelFuture succeededFuture = Channels.succeededFuture(channelHandlerContext.getChannel());
        if (this.finished.compareAndSet(false, true)) {
            ChannelBuffer dynamicBuffer = ChannelBuffers.dynamicBuffer(channelHandlerContext.getChannel().getConfig().getBufferFactory());
            synchronized (this.deflater) {
                this.deflater.finish();
                while (!this.deflater.finished()) {
                    dynamicBuffer.writeBytes(this.out, 0, this.deflater.deflate(this.out, 0, this.out.length));
                }
                if (this.gzip) {
                    int value = (int) this.crc.getValue();
                    int totalIn = this.deflater.getTotalIn();
                    dynamicBuffer.writeByte(value);
                    dynamicBuffer.writeByte(value >>> 8);
                    dynamicBuffer.writeByte(value >>> 16);
                    dynamicBuffer.writeByte(value >>> 24);
                    dynamicBuffer.writeByte(totalIn);
                    dynamicBuffer.writeByte(totalIn >>> 8);
                    dynamicBuffer.writeByte(totalIn >>> 16);
                    dynamicBuffer.writeByte(totalIn >>> 24);
                }
                this.deflater.end();
            }
            if (dynamicBuffer.readable()) {
                succeededFuture = Channels.future(channelHandlerContext.getChannel());
                Channels.write(channelHandlerContext, succeededFuture, (Object) dynamicBuffer);
            }
            if (channelEvent != null) {
                succeededFuture.addListener(new ChannelFutureListener() {
                    public void operationComplete(ChannelFuture channelFuture) throws Exception {
                        channelHandlerContext.sendDownstream(channelEvent);
                    }
                });
            }
        } else if (channelEvent != null) {
            channelHandlerContext.sendDownstream(channelEvent);
        }
        return succeededFuture;
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
