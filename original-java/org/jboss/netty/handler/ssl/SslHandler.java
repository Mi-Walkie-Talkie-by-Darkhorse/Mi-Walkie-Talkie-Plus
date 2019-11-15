package org.jboss.netty.handler.ssl;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.DatagramChannel;
import java.nio.channels.SocketChannel;
import java.util.LinkedList;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.SSLEngineResult;
import javax.net.ssl.SSLEngineResult.HandshakeStatus;
import javax.net.ssl.SSLEngineResult.Status;
import javax.net.ssl.SSLException;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.ChannelBuffers;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelDownstreamHandler;
import org.jboss.netty.channel.ChannelEvent;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.ChannelFutureListener;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.channel.ChannelState;
import org.jboss.netty.channel.ChannelStateEvent;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.channel.DefaultChannelFuture;
import org.jboss.netty.channel.MessageEvent;
import org.jboss.netty.handler.codec.frame.FrameDecoder;
import org.jboss.netty.logging.InternalLogger;
import org.jboss.netty.logging.InternalLoggerFactory;
import org.jboss.netty.util.Timeout;
import org.jboss.netty.util.Timer;
import org.jboss.netty.util.TimerTask;
import org.jboss.netty.util.internal.DetectionUtil;
import org.jboss.netty.util.internal.NonReentrantLock;

public class SslHandler extends FrameDecoder implements ChannelDownstreamHandler {
    static final /* synthetic */ boolean $assertionsDisabled = (!SslHandler.class.desiredAssertionStatus());
    private static final ByteBuffer EMPTY_BUFFER = ByteBuffer.allocate(0);
    private static final Pattern IGNORABLE_CLASS_IN_STACK = Pattern.compile("^.*(?:Socket|Datagram|Sctp|Udt)Channel.*$");
    private static final Pattern IGNORABLE_ERROR_MESSAGE = Pattern.compile("^.*(?:connection.*(?:reset|closed|abort|broken)|broken.*pipe).*$", 2);
    private static SslBufferPool defaultBufferPool;
    private static final InternalLogger logger = InternalLoggerFactory.getInstance(SslHandler.class);
    private final SslBufferPool bufferPool;
    /* access modifiers changed from: private */
    public boolean closeOnSSLException;
    /* access modifiers changed from: private */
    public volatile ChannelHandlerContext ctx;
    private final Executor delegatedTaskExecutor;
    private volatile boolean enableRenegotiation;
    private final SSLEngine engine;
    /* access modifiers changed from: private */
    public volatile ChannelFuture handshakeFuture;
    final Object handshakeLock;
    private Timeout handshakeTimeout;
    /* access modifiers changed from: private */
    public final long handshakeTimeoutInMillis;
    private volatile boolean handshaken;
    private boolean handshaking;
    int ignoreClosedChannelException;
    final Object ignoreClosedChannelExceptionLock;
    private volatile boolean issueHandshake;
    private int packetLength;
    /* access modifiers changed from: private */
    public final Queue<MessageEvent> pendingEncryptedWrites;
    private final NonReentrantLock pendingEncryptedWritesLock;
    /* access modifiers changed from: private */
    public final Queue<PendingWrite> pendingUnencryptedWrites;
    /* access modifiers changed from: private */
    public final NonReentrantLock pendingUnencryptedWritesLock;
    private final AtomicBoolean sentCloseNotify;
    private final AtomicBoolean sentFirstMessage;
    private final SSLEngineInboundCloseFuture sslEngineCloseFuture;
    private final boolean startTls;
    private final Timer timer;

    /* renamed from: org.jboss.netty.handler.ssl.SslHandler$7 reason: invalid class name */
    static /* synthetic */ class AnonymousClass7 {
        static final /* synthetic */ int[] $SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus = new int[HandshakeStatus.values().length];
        static final /* synthetic */ int[] $SwitchMap$javax$net$ssl$SSLEngineResult$Status = new int[Status.values().length];

        static {
            try {
                $SwitchMap$javax$net$ssl$SSLEngineResult$Status[Status.CLOSED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$javax$net$ssl$SSLEngineResult$Status[Status.BUFFER_OVERFLOW.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus[HandshakeStatus.NEED_WRAP.ordinal()] = 1;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus[HandshakeStatus.NEED_UNWRAP.ordinal()] = 2;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus[HandshakeStatus.NEED_TASK.ordinal()] = 3;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus[HandshakeStatus.FINISHED.ordinal()] = 4;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus[HandshakeStatus.NOT_HANDSHAKING.ordinal()] = 5;
            } catch (NoSuchFieldError e7) {
            }
            $SwitchMap$org$jboss$netty$channel$ChannelState = new int[ChannelState.values().length];
            try {
                $SwitchMap$org$jboss$netty$channel$ChannelState[ChannelState.OPEN.ordinal()] = 1;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$org$jboss$netty$channel$ChannelState[ChannelState.CONNECTED.ordinal()] = 2;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$org$jboss$netty$channel$ChannelState[ChannelState.BOUND.ordinal()] = 3;
            } catch (NoSuchFieldError e10) {
            }
        }
    }

    private static final class ClosingChannelFutureListener implements ChannelFutureListener {
        private final ChannelHandlerContext context;
        private final ChannelStateEvent e;

        ClosingChannelFutureListener(ChannelHandlerContext channelHandlerContext, ChannelStateEvent channelStateEvent) {
            this.context = channelHandlerContext;
            this.e = channelStateEvent;
        }

        public void operationComplete(ChannelFuture channelFuture) throws Exception {
            if (!(channelFuture.getCause() instanceof ClosedChannelException)) {
                Channels.close(this.context, this.e.getFuture());
            } else {
                this.e.getFuture().setSuccess();
            }
        }
    }

    private static final class PendingWrite {
        final ChannelFuture future;
        final ByteBuffer outAppBuf;

        PendingWrite(ChannelFuture channelFuture, ByteBuffer byteBuffer) {
            this.future = channelFuture;
            this.outAppBuf = byteBuffer;
        }
    }

    private final class SSLEngineInboundCloseFuture extends DefaultChannelFuture {
        public SSLEngineInboundCloseFuture() {
            super(null, true);
        }

        /* access modifiers changed from: 0000 */
        public void setClosed() {
            super.setSuccess();
        }

        public Channel getChannel() {
            if (SslHandler.this.ctx == null) {
                return null;
            }
            return SslHandler.this.ctx.getChannel();
        }

        public boolean setSuccess() {
            return false;
        }

        public boolean setFailure(Throwable th) {
            return false;
        }
    }

    public static synchronized SslBufferPool getDefaultBufferPool() {
        SslBufferPool sslBufferPool;
        synchronized (SslHandler.class) {
            if (defaultBufferPool == null) {
                defaultBufferPool = new SslBufferPool();
            }
            sslBufferPool = defaultBufferPool;
        }
        return sslBufferPool;
    }

    public SslHandler(SSLEngine sSLEngine) {
        this(sSLEngine, getDefaultBufferPool(), (Executor) ImmediateExecutor.INSTANCE);
    }

    public SslHandler(SSLEngine sSLEngine, SslBufferPool sslBufferPool) {
        this(sSLEngine, sslBufferPool, (Executor) ImmediateExecutor.INSTANCE);
    }

    public SslHandler(SSLEngine sSLEngine, boolean z) {
        this(sSLEngine, getDefaultBufferPool(), z);
    }

    public SslHandler(SSLEngine sSLEngine, SslBufferPool sslBufferPool, boolean z) {
        this(sSLEngine, sslBufferPool, z, ImmediateExecutor.INSTANCE);
    }

    public SslHandler(SSLEngine sSLEngine, Executor executor) {
        this(sSLEngine, getDefaultBufferPool(), executor);
    }

    public SslHandler(SSLEngine sSLEngine, SslBufferPool sslBufferPool, Executor executor) {
        this(sSLEngine, sslBufferPool, false, executor);
    }

    public SslHandler(SSLEngine sSLEngine, boolean z, Executor executor) {
        this(sSLEngine, getDefaultBufferPool(), z, executor);
    }

    public SslHandler(SSLEngine sSLEngine, SslBufferPool sslBufferPool, boolean z, Executor executor) {
        this(sSLEngine, sslBufferPool, z, executor, null, 0);
    }

    public SslHandler(SSLEngine sSLEngine, SslBufferPool sslBufferPool, boolean z, Executor executor, Timer timer2, long j) {
        this.enableRenegotiation = true;
        this.handshakeLock = new Object();
        this.sentFirstMessage = new AtomicBoolean();
        this.sentCloseNotify = new AtomicBoolean();
        this.ignoreClosedChannelExceptionLock = new Object();
        this.pendingUnencryptedWrites = new LinkedList();
        this.pendingUnencryptedWritesLock = new NonReentrantLock();
        this.pendingEncryptedWrites = new ConcurrentLinkedQueue();
        this.pendingEncryptedWritesLock = new NonReentrantLock();
        this.sslEngineCloseFuture = new SSLEngineInboundCloseFuture();
        this.packetLength = Integer.MIN_VALUE;
        if (sSLEngine == null) {
            throw new NullPointerException(Key.ENGINE);
        } else if (sslBufferPool == null) {
            throw new NullPointerException("bufferPool");
        } else if (executor == null) {
            throw new NullPointerException("delegatedTaskExecutor");
        } else if (timer2 != null || j <= 0) {
            this.engine = sSLEngine;
            this.bufferPool = sslBufferPool;
            this.delegatedTaskExecutor = executor;
            this.startTls = z;
            this.timer = timer2;
            this.handshakeTimeoutInMillis = j;
        } else {
            throw new IllegalArgumentException("No Timer was given but a handshakeTimeoutInMillis, need both or none");
        }
    }

    public SSLEngine getEngine() {
        return this.engine;
    }

    public ChannelFuture handshake() {
        final ChannelFuture channelFuture;
        Exception exc;
        synchronized (this.handshakeLock) {
            if (!this.handshaken || isEnableRenegotiation()) {
                final ChannelHandlerContext channelHandlerContext = this.ctx;
                final Channel channel = channelHandlerContext.getChannel();
                if (this.handshaking) {
                    channelFuture = this.handshakeFuture;
                } else {
                    this.handshaking = true;
                    try {
                        this.engine.beginHandshake();
                        runDelegatedTasks();
                        ChannelFuture future = Channels.future(channel);
                        this.handshakeFuture = future;
                        if (this.handshakeTimeoutInMillis > 0) {
                            this.handshakeTimeout = this.timer.newTimeout(new TimerTask() {
                                public void run(Timeout timeout) throws Exception {
                                    ChannelFuture access$000 = SslHandler.this.handshakeFuture;
                                    if (access$000 == null || !access$000.isDone()) {
                                        SslHandler.this.setHandshakeFailure(channel, new SSLException("Handshake did not complete within " + SslHandler.this.handshakeTimeoutInMillis + "ms"));
                                    }
                                }
                            }, this.handshakeTimeoutInMillis, TimeUnit.MILLISECONDS);
                        }
                        channelFuture = future;
                        exc = null;
                    } catch (Exception e) {
                        ChannelFuture failedFuture = Channels.failedFuture(channel, e);
                        this.handshakeFuture = failedFuture;
                        Exception exc2 = e;
                        channelFuture = failedFuture;
                        exc = exc2;
                    }
                    if (exc == null) {
                        try {
                            wrapNonAppData(channelHandlerContext, channel).addListener(new ChannelFutureListener() {
                                public void operationComplete(ChannelFuture channelFuture) throws Exception {
                                    if (!channelFuture.isSuccess()) {
                                        Throwable cause = channelFuture.getCause();
                                        channelFuture.setFailure(cause);
                                        Channels.fireExceptionCaught(channelHandlerContext, cause);
                                        if (SslHandler.this.closeOnSSLException) {
                                            Channels.close(channelHandlerContext, Channels.future(channel));
                                        }
                                    }
                                }
                            });
                        } catch (SSLException e2) {
                            channelFuture.setFailure(e2);
                            Channels.fireExceptionCaught(channelHandlerContext, (Throwable) e2);
                            if (this.closeOnSSLException) {
                                Channels.close(channelHandlerContext, Channels.future(channel));
                            }
                        }
                    } else {
                        Channels.fireExceptionCaught(channelHandlerContext, (Throwable) exc);
                        if (this.closeOnSSLException) {
                            Channels.close(channelHandlerContext, Channels.future(channel));
                        }
                    }
                }
            } else {
                throw new IllegalStateException("renegotiation disabled");
            }
        }
        return channelFuture;
    }

    @Deprecated
    public ChannelFuture handshake(Channel channel) {
        return handshake();
    }

    public ChannelFuture close() {
        ChannelHandlerContext channelHandlerContext = this.ctx;
        Channel channel = channelHandlerContext.getChannel();
        try {
            this.engine.closeOutbound();
            return wrapNonAppData(channelHandlerContext, channel);
        } catch (SSLException e) {
            Channels.fireExceptionCaught(channelHandlerContext, (Throwable) e);
            if (this.closeOnSSLException) {
                Channels.close(channelHandlerContext, Channels.future(channel));
            }
            return Channels.failedFuture(channel, e);
        }
    }

    @Deprecated
    public ChannelFuture close(Channel channel) {
        return close();
    }

    public boolean isEnableRenegotiation() {
        return this.enableRenegotiation;
    }

    public void setEnableRenegotiation(boolean z) {
        this.enableRenegotiation = z;
    }

    public void setIssueHandshake(boolean z) {
        this.issueHandshake = z;
    }

    public boolean isIssueHandshake() {
        return this.issueHandshake;
    }

    public ChannelFuture getSSLEngineInboundCloseFuture() {
        return this.sslEngineCloseFuture;
    }

    public long getHandshakeTimeout() {
        return this.handshakeTimeoutInMillis;
    }

    public void setCloseOnSSLException(boolean z) {
        if (this.ctx != null) {
            throw new IllegalStateException("Can only get changed before attached to ChannelPipeline");
        }
        this.closeOnSSLException = z;
    }

    public boolean getCloseOnSSLException() {
        return this.closeOnSSLException;
    }

    /* JADX INFO: finally extract failed */
    public void handleDownstream(ChannelHandlerContext channelHandlerContext, ChannelEvent channelEvent) throws Exception {
        PendingWrite pendingWrite;
        if (channelEvent instanceof ChannelStateEvent) {
            ChannelStateEvent channelStateEvent = (ChannelStateEvent) channelEvent;
            switch (channelStateEvent.getState()) {
                case OPEN:
                case CONNECTED:
                case BOUND:
                    if (Boolean.FALSE.equals(channelStateEvent.getValue()) || channelStateEvent.getValue() == null) {
                        closeOutboundAndChannel(channelHandlerContext, channelStateEvent);
                        return;
                    }
            }
        }
        if (!(channelEvent instanceof MessageEvent)) {
            channelHandlerContext.sendDownstream(channelEvent);
            return;
        }
        MessageEvent messageEvent = (MessageEvent) channelEvent;
        if (!(messageEvent.getMessage() instanceof ChannelBuffer)) {
            channelHandlerContext.sendDownstream(channelEvent);
        } else if (!this.startTls || !this.sentFirstMessage.compareAndSet(false, true)) {
            ChannelBuffer channelBuffer = (ChannelBuffer) messageEvent.getMessage();
            if (channelBuffer.readable()) {
                pendingWrite = new PendingWrite(channelEvent.getFuture(), channelBuffer.toByteBuffer(channelBuffer.readerIndex(), channelBuffer.readableBytes()));
            } else {
                pendingWrite = new PendingWrite(channelEvent.getFuture(), null);
            }
            this.pendingUnencryptedWritesLock.lock();
            try {
                this.pendingUnencryptedWrites.add(pendingWrite);
                this.pendingUnencryptedWritesLock.unlock();
                wrap(channelHandlerContext, channelEvent.getChannel());
            } catch (Throwable th) {
                this.pendingUnencryptedWritesLock.unlock();
                throw th;
            }
        } else {
            channelHandlerContext.sendDownstream(channelEvent);
        }
    }

    private void cancelHandshakeTimeout() {
        if (this.handshakeTimeout != null) {
            this.handshakeTimeout.cancel();
        }
    }

    public void channelDisconnected(ChannelHandlerContext channelHandlerContext, ChannelStateEvent channelStateEvent) throws Exception {
        boolean z;
        boolean z2;
        synchronized (this.handshakeLock) {
            if (this.handshaking) {
                cancelHandshakeTimeout();
                this.handshakeFuture.setFailure(new ClosedChannelException());
            }
        }
        try {
            super.channelDisconnected(channelHandlerContext, channelStateEvent);
            if (!z && z2) {
                try {
                    this.engine.closeInbound();
                } catch (SSLException e) {
                    if (logger.isDebugEnabled()) {
                        logger.debug("Failed to clean up SSLEngine.", e);
                    }
                }
            }
        } finally {
            unwrap(channelHandlerContext, channelStateEvent.getChannel(), ChannelBuffers.EMPTY_BUFFER, 0, 0);
            this.engine.closeOutbound();
            if (!this.sentCloseNotify.get() && this.handshaken) {
                try {
                    this.engine.closeInbound();
                } catch (SSLException e2) {
                    if (logger.isDebugEnabled()) {
                        logger.debug("Failed to clean up SSLEngine.", e2);
                    }
                }
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:24:?, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void exceptionCaught(org.jboss.netty.channel.ChannelHandlerContext r5, org.jboss.netty.channel.ExceptionEvent r6) throws java.lang.Exception {
        /*
            r4 = this;
            java.lang.Throwable r0 = r6.getCause()
            boolean r1 = r0 instanceof java.io.IOException
            if (r1 == 0) goto L_0x002b
            boolean r1 = r0 instanceof java.nio.channels.ClosedChannelException
            if (r1 == 0) goto L_0x0032
            java.lang.Object r1 = r4.ignoreClosedChannelExceptionLock
            monitor-enter(r1)
            int r2 = r4.ignoreClosedChannelException     // Catch:{ all -> 0x002f }
            if (r2 <= 0) goto L_0x002a
            int r2 = r4.ignoreClosedChannelException     // Catch:{ all -> 0x002f }
            int r2 = r2 + -1
            r4.ignoreClosedChannelException = r2     // Catch:{ all -> 0x002f }
            org.jboss.netty.logging.InternalLogger r2 = logger     // Catch:{ all -> 0x002f }
            boolean r2 = r2.isDebugEnabled()     // Catch:{ all -> 0x002f }
            if (r2 == 0) goto L_0x0028
            org.jboss.netty.logging.InternalLogger r2 = logger     // Catch:{ all -> 0x002f }
            java.lang.String r3 = "Swallowing an exception raised while writing non-app data"
            r2.debug(r3, r0)     // Catch:{ all -> 0x002f }
        L_0x0028:
            monitor-exit(r1)     // Catch:{ all -> 0x002f }
        L_0x0029:
            return
        L_0x002a:
            monitor-exit(r1)     // Catch:{ all -> 0x002f }
        L_0x002b:
            r5.sendUpstream(r6)
            goto L_0x0029
        L_0x002f:
            r0 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x002f }
            throw r0
        L_0x0032:
            boolean r0 = r4.ignoreException(r0)
            if (r0 == 0) goto L_0x002b
            goto L_0x0029
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.handler.ssl.SslHandler.exceptionCaught(org.jboss.netty.channel.ChannelHandlerContext, org.jboss.netty.channel.ExceptionEvent):void");
    }

    private boolean ignoreException(Throwable th) {
        StackTraceElement[] stackTrace;
        if (!(th instanceof SSLException) && (th instanceof IOException) && this.engine.isOutboundDone()) {
            if (IGNORABLE_ERROR_MESSAGE.matcher(String.valueOf(th.getMessage()).toLowerCase()).matches()) {
                return true;
            }
            for (StackTraceElement stackTraceElement : th.getStackTrace()) {
                String className = stackTraceElement.getClassName();
                String methodName = stackTraceElement.getMethodName();
                if (!className.startsWith("org.jboss.netty.") && "read".equals(methodName)) {
                    if (IGNORABLE_CLASS_IN_STACK.matcher(className).matches()) {
                        return true;
                    }
                    try {
                        Class loadClass = getClass().getClassLoader().loadClass(className);
                        if (SocketChannel.class.isAssignableFrom(loadClass) || DatagramChannel.class.isAssignableFrom(loadClass)) {
                            return true;
                        }
                        if (DetectionUtil.javaVersion() >= 7 && "com.sun.nio.sctp.SctpChannel".equals(loadClass.getSuperclass().getName())) {
                            return true;
                        }
                    } catch (ClassNotFoundException e) {
                    }
                }
            }
        }
        return false;
    }

    public static boolean isEncrypted(ChannelBuffer channelBuffer) {
        return getEncryptedPacketLength(channelBuffer) != -1;
    }

    private static int getEncryptedPacketLength(ChannelBuffer channelBuffer) {
        boolean z;
        int i;
        int i2;
        boolean z2;
        int i3;
        int i4;
        if (channelBuffer.readableBytes() < 5) {
            throw new IllegalArgumentException("buffer must have at least 5 readable bytes");
        }
        switch (channelBuffer.getUnsignedByte(channelBuffer.readerIndex())) {
            case 20:
            case 21:
            case 22:
            case 23:
                z = true;
                break;
            default:
                z = false;
                break;
        }
        if (!z) {
            i = 0;
        } else if (channelBuffer.getUnsignedByte(channelBuffer.readerIndex() + 1) == 3) {
            i = (getShort(channelBuffer, channelBuffer.readerIndex() + 3) & 65535) + 5;
            if (i <= 5) {
                z = false;
            }
        } else {
            z = false;
            i = 0;
        }
        if (z) {
            return i;
        }
        if ((channelBuffer.getUnsignedByte(channelBuffer.readerIndex()) & 128) != 0) {
            i2 = 2;
        } else {
            i2 = 3;
        }
        short unsignedByte = channelBuffer.getUnsignedByte(channelBuffer.readerIndex() + i2 + 1);
        if (unsignedByte == 2 || unsignedByte == 3) {
            if (i2 == 2) {
                i4 = (getShort(channelBuffer, channelBuffer.readerIndex()) & Short.MAX_VALUE) + 2;
            } else {
                i4 = (getShort(channelBuffer, channelBuffer.readerIndex()) & 16383) + 3;
            }
            if (i4 <= i2) {
                z2 = false;
                i3 = i4;
            } else {
                z2 = true;
                i3 = i4;
            }
        } else {
            z2 = false;
            i3 = i;
        }
        if (!z2) {
            return -1;
        }
        return i3;
    }

    /* access modifiers changed from: protected */
    public Object decode(ChannelHandlerContext channelHandlerContext, Channel channel, ChannelBuffer channelBuffer) throws Exception {
        ChannelBuffer channelBuffer2 = null;
        if (this.packetLength == Integer.MIN_VALUE) {
            if (channelBuffer.readableBytes() >= 5) {
                int encryptedPacketLength = getEncryptedPacketLength(channelBuffer);
                if (encryptedPacketLength == -1) {
                    NotSslRecordException notSslRecordException = new NotSslRecordException("not an SSL/TLS record: " + ChannelBuffers.hexDump(channelBuffer));
                    channelBuffer.skipBytes(channelBuffer.readableBytes());
                    if (this.closeOnSSLException) {
                        Channels.fireExceptionCaught(channelHandlerContext, (Throwable) notSslRecordException);
                        Channels.close(channelHandlerContext, Channels.future(channel));
                    } else {
                        throw notSslRecordException;
                    }
                } else if ($assertionsDisabled || encryptedPacketLength > 0) {
                    this.packetLength = encryptedPacketLength;
                } else {
                    throw new AssertionError();
                }
            }
            return channelBuffer2;
        }
        if (channelBuffer.readableBytes() >= this.packetLength) {
            int readerIndex = channelBuffer.readerIndex();
            channelBuffer.skipBytes(this.packetLength);
            try {
                channelBuffer2 = unwrap(channelHandlerContext, channel, channelBuffer, readerIndex, this.packetLength);
            } finally {
                this.packetLength = Integer.MIN_VALUE;
            }
        }
        return channelBuffer2;
    }

    private static short getShort(ChannelBuffer channelBuffer, int i) {
        return (short) ((channelBuffer.getByte(i) << 8) | (channelBuffer.getByte(i + 1) & 255));
    }

    /* JADX INFO: finally extract failed */
    /* JADX WARNING: Code restructure failed: missing block: B:100:0x016e, code lost:
        r1 = true;
        r3 = false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:104:?, code lost:
        r12.pendingUnencryptedWritesLock.unlock();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:105:0x0178, code lost:
        r1 = true;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:116:?, code lost:
        r12.pendingUnencryptedWritesLock.unlock();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:117:0x0196, code lost:
        r1 = r3;
        r3 = false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:129:0x01c9, code lost:
        r1 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:130:0x01ca, code lost:
        r3 = false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:131:0x01cd, code lost:
        r1 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:132:0x01ce, code lost:
        r11 = r1;
        r1 = r0;
        r0 = r11;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:88:?, code lost:
        r12.pendingUnencryptedWritesLock.unlock();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:89:0x0133, code lost:
        r3 = false;
        r1 = false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:99:?, code lost:
        r12.pendingUnencryptedWritesLock.unlock();
     */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [B:6:0x0019, B:87:0x012e] */
    /* JADX WARNING: Removed duplicated region for block: B:131:0x01cd A[ExcHandler: SSLException (r1v10 'e' javax.net.ssl.SSLException A[CUSTOM_DECLARE]), PHI: r2 
  PHI: (r2v5 boolean) = (r2v1 boolean), (r2v1 boolean), (r2v1 boolean), (r2v1 boolean), (r2v1 boolean), (r2v1 boolean), (r2v1 boolean), (r2v1 boolean), (r2v9 boolean), (r2v9 boolean), (r2v1 boolean), (r2v1 boolean) binds: [B:115:0x0191, B:116:?, B:103:0x0173, B:104:?, B:98:0x0169, B:99:?, B:87:0x012e, B:88:?, B:28:0x0074, B:29:?, B:6:0x0019, B:7:?] A[DONT_GENERATE, DONT_INLINE], Splitter:B:6:0x0019] */
    /* JADX WARNING: Removed duplicated region for block: B:65:0x00ed  */
    /* JADX WARNING: Removed duplicated region for block: B:67:0x00f2  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void wrap(org.jboss.netty.channel.ChannelHandlerContext r13, org.jboss.netty.channel.Channel r14) throws javax.net.ssl.SSLException {
        /*
            r12 = this;
            r3 = 1
            r4 = 0
            org.jboss.netty.handler.ssl.SslBufferPool r0 = r12.bufferPool
            java.nio.ByteBuffer r5 = r0.acquireBuffer()
            r1 = 0
            r2 = r4
        L_0x000a:
            org.jboss.netty.util.internal.NonReentrantLock r0 = r12.pendingUnencryptedWritesLock     // Catch:{ SSLException -> 0x00dc, all -> 0x01c0 }
            r0.lock()     // Catch:{ SSLException -> 0x00dc, all -> 0x01c0 }
            java.util.Queue<org.jboss.netty.handler.ssl.SslHandler$PendingWrite> r0 = r12.pendingUnencryptedWrites     // Catch:{ all -> 0x01d3 }
            java.lang.Object r0 = r0.peek()     // Catch:{ all -> 0x01d3 }
            org.jboss.netty.handler.ssl.SslHandler$PendingWrite r0 = (org.jboss.netty.handler.ssl.SslHandler.PendingWrite) r0     // Catch:{ all -> 0x01d3 }
            if (r0 != 0) goto L_0x005a
            org.jboss.netty.util.internal.NonReentrantLock r1 = r12.pendingUnencryptedWritesLock     // Catch:{ SSLException -> 0x01cd, all -> 0x01c6 }
            r1.unlock()     // Catch:{ SSLException -> 0x01cd, all -> 0x01c6 }
            r1 = r3
            r3 = r4
        L_0x0020:
            org.jboss.netty.handler.ssl.SslBufferPool r6 = r12.bufferPool
            r6.releaseBuffer(r5)
            if (r2 == 0) goto L_0x002a
            r12.flushPendingEncryptedWrites(r13)
        L_0x002a:
            if (r1 != 0) goto L_0x004e
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r2 = "SSLEngine already closed"
            r1.<init>(r2)
            if (r0 == 0) goto L_0x003a
            org.jboss.netty.channel.ChannelFuture r0 = r0.future
            r0.setFailure(r1)
        L_0x003a:
            org.jboss.netty.util.internal.NonReentrantLock r0 = r12.pendingUnencryptedWritesLock
            r0.lock()
            java.util.Queue<org.jboss.netty.handler.ssl.SslHandler$PendingWrite> r0 = r12.pendingUnencryptedWrites     // Catch:{ all -> 0x01ad }
            java.lang.Object r0 = r0.poll()     // Catch:{ all -> 0x01ad }
            org.jboss.netty.handler.ssl.SslHandler$PendingWrite r0 = (org.jboss.netty.handler.ssl.SslHandler.PendingWrite) r0     // Catch:{ all -> 0x01ad }
            if (r0 != 0) goto L_0x01b4
            org.jboss.netty.util.internal.NonReentrantLock r0 = r12.pendingUnencryptedWritesLock
            r0.unlock()
        L_0x004e:
            if (r3 == 0) goto L_0x0059
            org.jboss.netty.buffer.ChannelBuffer r3 = org.jboss.netty.buffer.ChannelBuffers.EMPTY_BUFFER
            r0 = r12
            r1 = r13
            r2 = r14
            r5 = r4
            r0.unwrap(r1, r2, r3, r4, r5)
        L_0x0059:
            return
        L_0x005a:
            java.nio.ByteBuffer r6 = r0.outAppBuf     // Catch:{ all -> 0x00d2 }
            if (r6 != 0) goto L_0x007b
            java.util.Queue<org.jboss.netty.handler.ssl.SslHandler$PendingWrite> r1 = r12.pendingUnencryptedWrites     // Catch:{ all -> 0x00d2 }
            r1.remove()     // Catch:{ all -> 0x00d2 }
            org.jboss.netty.channel.DownstreamMessageEvent r1 = new org.jboss.netty.channel.DownstreamMessageEvent     // Catch:{ all -> 0x00d2 }
            org.jboss.netty.channel.ChannelFuture r6 = r0.future     // Catch:{ all -> 0x00d2 }
            org.jboss.netty.buffer.ChannelBuffer r7 = org.jboss.netty.buffer.ChannelBuffers.EMPTY_BUFFER     // Catch:{ all -> 0x00d2 }
            java.net.SocketAddress r8 = r14.getRemoteAddress()     // Catch:{ all -> 0x00d2 }
            r1.<init>(r14, r6, r7, r8)     // Catch:{ all -> 0x00d2 }
            r12.offerEncryptedWriteRequest(r1)     // Catch:{ all -> 0x00d2 }
            r2 = r3
        L_0x0074:
            org.jboss.netty.util.internal.NonReentrantLock r1 = r12.pendingUnencryptedWritesLock     // Catch:{ SSLException -> 0x01cd, all -> 0x01c6 }
            r1.unlock()     // Catch:{ SSLException -> 0x01cd, all -> 0x01c6 }
            r1 = r0
            goto L_0x000a
        L_0x007b:
            java.lang.Object r7 = r12.handshakeLock     // Catch:{ all -> 0x00d2 }
            monitor-enter(r7)     // Catch:{ all -> 0x00d2 }
            javax.net.ssl.SSLEngine r1 = r12.engine     // Catch:{ all -> 0x0115 }
            javax.net.ssl.SSLEngineResult r1 = r1.wrap(r6, r5)     // Catch:{ all -> 0x0115 }
            boolean r8 = r6.hasRemaining()     // Catch:{ all -> 0x00cf }
            if (r8 != 0) goto L_0x008f
            java.util.Queue<org.jboss.netty.handler.ssl.SslHandler$PendingWrite> r8 = r12.pendingUnencryptedWrites     // Catch:{ all -> 0x00cf }
            r8.remove()     // Catch:{ all -> 0x00cf }
        L_0x008f:
            int r8 = r1.bytesProduced()     // Catch:{ all -> 0x00cf }
            if (r8 <= 0) goto L_0x0125
            r5.flip()     // Catch:{ all -> 0x00cf }
            int r1 = r5.remaining()     // Catch:{ all -> 0x00cf }
            org.jboss.netty.channel.ChannelHandlerContext r6 = r12.ctx     // Catch:{ all -> 0x00cf }
            org.jboss.netty.channel.Channel r6 = r6.getChannel()     // Catch:{ all -> 0x00cf }
            org.jboss.netty.channel.ChannelConfig r6 = r6.getConfig()     // Catch:{ all -> 0x00cf }
            org.jboss.netty.buffer.ChannelBufferFactory r6 = r6.getBufferFactory()     // Catch:{ all -> 0x00cf }
            org.jboss.netty.buffer.ChannelBuffer r6 = r6.getBuffer(r1)     // Catch:{ all -> 0x00cf }
            r6.writeBytes(r5)     // Catch:{ all -> 0x00cf }
            r5.clear()     // Catch:{ all -> 0x00cf }
            java.nio.ByteBuffer r1 = r0.outAppBuf     // Catch:{ all -> 0x00cf }
            boolean r1 = r1.hasRemaining()     // Catch:{ all -> 0x00cf }
            if (r1 == 0) goto L_0x0122
            org.jboss.netty.channel.ChannelFuture r1 = org.jboss.netty.channel.Channels.succeededFuture(r14)     // Catch:{ all -> 0x00cf }
        L_0x00c0:
            org.jboss.netty.channel.DownstreamMessageEvent r8 = new org.jboss.netty.channel.DownstreamMessageEvent     // Catch:{ all -> 0x00cf }
            java.net.SocketAddress r9 = r14.getRemoteAddress()     // Catch:{ all -> 0x00cf }
            r8.<init>(r14, r1, r6, r9)     // Catch:{ all -> 0x00cf }
            r12.offerEncryptedWriteRequest(r8)     // Catch:{ all -> 0x00cf }
            r2 = r3
        L_0x00cd:
            monitor-exit(r7)     // Catch:{ all -> 0x00cf }
            goto L_0x0074
        L_0x00cf:
            r1 = move-exception
        L_0x00d0:
            monitor-exit(r7)     // Catch:{ all -> 0x00cf }
            throw r1     // Catch:{ all -> 0x00d2 }
        L_0x00d2:
            r1 = move-exception
            r11 = r1
            r1 = r0
            r0 = r11
        L_0x00d6:
            org.jboss.netty.util.internal.NonReentrantLock r6 = r12.pendingUnencryptedWritesLock     // Catch:{ SSLException -> 0x00dc, all -> 0x01c0 }
            r6.unlock()     // Catch:{ SSLException -> 0x00dc, all -> 0x01c0 }
            throw r0     // Catch:{ SSLException -> 0x00dc, all -> 0x01c0 }
        L_0x00dc:
            r0 = move-exception
        L_0x00dd:
            r12.setHandshakeFailure(r14, r0)     // Catch:{ all -> 0x00e1 }
            throw r0     // Catch:{ all -> 0x00e1 }
        L_0x00e1:
            r0 = move-exception
            r3 = r4
            r11 = r1
            r1 = r0
            r0 = r11
        L_0x00e6:
            org.jboss.netty.handler.ssl.SslBufferPool r4 = r12.bufferPool
            r4.releaseBuffer(r5)
            if (r2 == 0) goto L_0x00f0
            r12.flushPendingEncryptedWrites(r13)
        L_0x00f0:
            if (r3 != 0) goto L_0x0114
            java.lang.IllegalStateException r2 = new java.lang.IllegalStateException
            java.lang.String r3 = "SSLEngine already closed"
            r2.<init>(r3)
            if (r0 == 0) goto L_0x0100
            org.jboss.netty.channel.ChannelFuture r0 = r0.future
            r0.setFailure(r2)
        L_0x0100:
            org.jboss.netty.util.internal.NonReentrantLock r0 = r12.pendingUnencryptedWritesLock
            r0.lock()
            java.util.Queue<org.jboss.netty.handler.ssl.SslHandler$PendingWrite> r0 = r12.pendingUnencryptedWrites     // Catch:{ all -> 0x019a }
            java.lang.Object r0 = r0.poll()     // Catch:{ all -> 0x019a }
            org.jboss.netty.handler.ssl.SslHandler$PendingWrite r0 = (org.jboss.netty.handler.ssl.SslHandler.PendingWrite) r0     // Catch:{ all -> 0x019a }
            if (r0 != 0) goto L_0x01a1
            org.jboss.netty.util.internal.NonReentrantLock r0 = r12.pendingUnencryptedWritesLock
            r0.unlock()
        L_0x0114:
            throw r1
        L_0x0115:
            r1 = move-exception
            boolean r6 = r6.hasRemaining()     // Catch:{ all -> 0x00cf }
            if (r6 != 0) goto L_0x0121
            java.util.Queue<org.jboss.netty.handler.ssl.SslHandler$PendingWrite> r6 = r12.pendingUnencryptedWrites     // Catch:{ all -> 0x00cf }
            r6.remove()     // Catch:{ all -> 0x00cf }
        L_0x0121:
            throw r1     // Catch:{ all -> 0x00cf }
        L_0x0122:
            org.jboss.netty.channel.ChannelFuture r1 = r0.future     // Catch:{ all -> 0x00cf }
            goto L_0x00c0
        L_0x0125:
            javax.net.ssl.SSLEngineResult$Status r8 = r1.getStatus()     // Catch:{ all -> 0x00cf }
            javax.net.ssl.SSLEngineResult$Status r9 = javax.net.ssl.SSLEngineResult.Status.CLOSED     // Catch:{ all -> 0x00cf }
            if (r8 != r9) goto L_0x0137
            monitor-exit(r7)     // Catch:{ all -> 0x01d6 }
            org.jboss.netty.util.internal.NonReentrantLock r1 = r12.pendingUnencryptedWritesLock     // Catch:{ SSLException -> 0x01cd, all -> 0x01c9 }
            r1.unlock()     // Catch:{ SSLException -> 0x01cd, all -> 0x01c9 }
            r3 = r4
            r1 = r4
            goto L_0x0020
        L_0x0137:
            javax.net.ssl.SSLEngineResult$HandshakeStatus r8 = r1.getHandshakeStatus()     // Catch:{ all -> 0x00cf }
            r12.handleRenegotiation(r8)     // Catch:{ all -> 0x00cf }
            int[] r9 = org.jboss.netty.handler.ssl.SslHandler.AnonymousClass7.$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus     // Catch:{ all -> 0x00cf }
            int r10 = r8.ordinal()     // Catch:{ all -> 0x00cf }
            r9 = r9[r10]     // Catch:{ all -> 0x00cf }
            switch(r9) {
                case 1: goto L_0x0162;
                case 2: goto L_0x0172;
                case 3: goto L_0x017b;
                case 4: goto L_0x0180;
                case 5: goto L_0x0180;
                default: goto L_0x0149;
            }     // Catch:{ all -> 0x00cf }
        L_0x0149:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException     // Catch:{ all -> 0x00cf }
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch:{ all -> 0x00cf }
            r6.<init>()     // Catch:{ all -> 0x00cf }
            java.lang.String r9 = "Unknown handshake status: "
            java.lang.StringBuilder r6 = r6.append(r9)     // Catch:{ all -> 0x00cf }
            java.lang.StringBuilder r6 = r6.append(r8)     // Catch:{ all -> 0x00cf }
            java.lang.String r6 = r6.toString()     // Catch:{ all -> 0x00cf }
            r1.<init>(r6)     // Catch:{ all -> 0x00cf }
            throw r1     // Catch:{ all -> 0x00cf }
        L_0x0162:
            boolean r1 = r6.hasRemaining()     // Catch:{ all -> 0x00cf }
            if (r1 != 0) goto L_0x00cd
            monitor-exit(r7)     // Catch:{ all -> 0x00cf }
            org.jboss.netty.util.internal.NonReentrantLock r1 = r12.pendingUnencryptedWritesLock     // Catch:{ SSLException -> 0x01cd, all -> 0x01c6 }
            r1.unlock()     // Catch:{ SSLException -> 0x01cd, all -> 0x01c6 }
            r1 = r3
            r3 = r4
            goto L_0x0020
        L_0x0172:
            monitor-exit(r7)     // Catch:{ all -> 0x00cf }
            org.jboss.netty.util.internal.NonReentrantLock r1 = r12.pendingUnencryptedWritesLock     // Catch:{ SSLException -> 0x01cd, all -> 0x01c6 }
            r1.unlock()     // Catch:{ SSLException -> 0x01cd, all -> 0x01c6 }
            r1 = r3
            goto L_0x0020
        L_0x017b:
            r12.runDelegatedTasks()     // Catch:{ all -> 0x00cf }
            goto L_0x00cd
        L_0x0180:
            javax.net.ssl.SSLEngineResult$HandshakeStatus r6 = javax.net.ssl.SSLEngineResult.HandshakeStatus.FINISHED     // Catch:{ all -> 0x00cf }
            if (r8 != r6) goto L_0x0187
            r12.setHandshakeSuccess(r14)     // Catch:{ all -> 0x00cf }
        L_0x0187:
            javax.net.ssl.SSLEngineResult$Status r1 = r1.getStatus()     // Catch:{ all -> 0x00cf }
            javax.net.ssl.SSLEngineResult$Status r6 = javax.net.ssl.SSLEngineResult.Status.CLOSED     // Catch:{ all -> 0x00cf }
            if (r1 != r6) goto L_0x0190
            r3 = r4
        L_0x0190:
            monitor-exit(r7)     // Catch:{ all -> 0x00cf }
            org.jboss.netty.util.internal.NonReentrantLock r1 = r12.pendingUnencryptedWritesLock     // Catch:{ SSLException -> 0x01cd, all -> 0x01c6 }
            r1.unlock()     // Catch:{ SSLException -> 0x01cd, all -> 0x01c6 }
            r1 = r3
            r3 = r4
            goto L_0x0020
        L_0x019a:
            r0 = move-exception
            org.jboss.netty.util.internal.NonReentrantLock r1 = r12.pendingUnencryptedWritesLock
            r1.unlock()
            throw r0
        L_0x01a1:
            org.jboss.netty.util.internal.NonReentrantLock r3 = r12.pendingUnencryptedWritesLock
            r3.unlock()
            org.jboss.netty.channel.ChannelFuture r0 = r0.future
            r0.setFailure(r2)
            goto L_0x0100
        L_0x01ad:
            r0 = move-exception
            org.jboss.netty.util.internal.NonReentrantLock r1 = r12.pendingUnencryptedWritesLock
            r1.unlock()
            throw r0
        L_0x01b4:
            org.jboss.netty.util.internal.NonReentrantLock r2 = r12.pendingUnencryptedWritesLock
            r2.unlock()
            org.jboss.netty.channel.ChannelFuture r0 = r0.future
            r0.setFailure(r1)
            goto L_0x003a
        L_0x01c0:
            r0 = move-exception
            r11 = r0
            r0 = r1
            r1 = r11
            goto L_0x00e6
        L_0x01c6:
            r1 = move-exception
            goto L_0x00e6
        L_0x01c9:
            r1 = move-exception
            r3 = r4
            goto L_0x00e6
        L_0x01cd:
            r1 = move-exception
            r11 = r1
            r1 = r0
            r0 = r11
            goto L_0x00dd
        L_0x01d3:
            r0 = move-exception
            goto L_0x00d6
        L_0x01d6:
            r1 = move-exception
            r3 = r4
            goto L_0x00d0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.handler.ssl.SslHandler.wrap(org.jboss.netty.channel.ChannelHandlerContext, org.jboss.netty.channel.Channel):void");
    }

    private void offerEncryptedWriteRequest(MessageEvent messageEvent) {
        boolean tryLock = this.pendingEncryptedWritesLock.tryLock();
        try {
            this.pendingEncryptedWrites.add(messageEvent);
        } finally {
            if (tryLock) {
                this.pendingEncryptedWritesLock.unlock();
            }
        }
    }

    private void flushPendingEncryptedWrites(ChannelHandlerContext channelHandlerContext) {
        while (!this.pendingEncryptedWrites.isEmpty() && this.pendingEncryptedWritesLock.tryLock()) {
            while (true) {
                try {
                    MessageEvent messageEvent = (MessageEvent) this.pendingEncryptedWrites.poll();
                    if (messageEvent == null) {
                        break;
                    }
                    channelHandlerContext.sendDownstream(messageEvent);
                } finally {
                    this.pendingEncryptedWritesLock.unlock();
                }
            }
        }
    }

    private ChannelFuture wrapNonAppData(ChannelHandlerContext channelHandlerContext, Channel channel) throws SSLException {
        SSLEngineResult wrap;
        ChannelFuture channelFuture = null;
        ByteBuffer acquireBuffer = this.bufferPool.acquireBuffer();
        do {
            try {
                synchronized (this.handshakeLock) {
                    wrap = this.engine.wrap(EMPTY_BUFFER, acquireBuffer);
                }
                if (wrap.bytesProduced() > 0) {
                    acquireBuffer.flip();
                    ChannelBuffer buffer = channelHandlerContext.getChannel().getConfig().getBufferFactory().getBuffer(acquireBuffer.remaining());
                    buffer.writeBytes(acquireBuffer);
                    acquireBuffer.clear();
                    channelFuture = Channels.future(channel);
                    channelFuture.addListener(new ChannelFutureListener() {
                        public void operationComplete(ChannelFuture channelFuture) throws Exception {
                            if (channelFuture.getCause() instanceof ClosedChannelException) {
                                synchronized (SslHandler.this.ignoreClosedChannelExceptionLock) {
                                    SslHandler.this.ignoreClosedChannelException++;
                                }
                            }
                        }
                    });
                    Channels.write(channelHandlerContext, channelFuture, (Object) buffer);
                }
                HandshakeStatus handshakeStatus = wrap.getHandshakeStatus();
                handleRenegotiation(handshakeStatus);
                switch (AnonymousClass7.$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus[handshakeStatus.ordinal()]) {
                    case 1:
                    case 5:
                        break;
                    case 2:
                        if (!Thread.holdsLock(this.handshakeLock)) {
                            unwrap(channelHandlerContext, channel, ChannelBuffers.EMPTY_BUFFER, 0, 0);
                            break;
                        }
                        break;
                    case 3:
                        runDelegatedTasks();
                        break;
                    case 4:
                        setHandshakeSuccess(channel);
                        runDelegatedTasks();
                        break;
                    default:
                        throw new IllegalStateException("Unexpected handshake status: " + handshakeStatus);
                }
            } catch (SSLException e) {
                setHandshakeFailure(channel, e);
                throw e;
            } catch (Throwable th) {
                this.bufferPool.releaseBuffer(acquireBuffer);
                throw th;
            }
        } while (wrap.bytesProduced() != 0);
        this.bufferPool.releaseBuffer(acquireBuffer);
        if (channelFuture == null) {
            return Channels.succeededFuture(channel);
        }
        return channelFuture;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:74:0x00f2, code lost:
        r0 = true;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:76:0x00f5, code lost:
        r0 = true;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private org.jboss.netty.buffer.ChannelBuffer unwrap(org.jboss.netty.channel.ChannelHandlerContext r9, org.jboss.netty.channel.Channel r10, org.jboss.netty.buffer.ChannelBuffer r11, int r12, int r13) throws javax.net.ssl.SSLException {
        /*
            r8 = this;
            r0 = 0
            r1 = 1
            java.nio.ByteBuffer r3 = r11.toByteBuffer(r12, r13)
            org.jboss.netty.handler.ssl.SslBufferPool r2 = r8.bufferPool
            java.nio.ByteBuffer r4 = r2.acquireBuffer()
        L_0x000c:
            java.lang.Object r5 = r8.handshakeLock     // Catch:{ SSLException -> 0x007c }
            monitor-enter(r5)     // Catch:{ SSLException -> 0x007c }
            boolean r2 = r8.handshaken     // Catch:{ all -> 0x0088 }
            if (r2 != 0) goto L_0x00fb
            boolean r2 = r8.handshaking     // Catch:{ all -> 0x0088 }
            if (r2 != 0) goto L_0x00fb
            javax.net.ssl.SSLEngine r2 = r8.engine     // Catch:{ all -> 0x0088 }
            boolean r2 = r2.getUseClientMode()     // Catch:{ all -> 0x0088 }
            if (r2 != 0) goto L_0x00fb
            javax.net.ssl.SSLEngine r2 = r8.engine     // Catch:{ all -> 0x0088 }
            boolean r2 = r2.isInboundDone()     // Catch:{ all -> 0x0088 }
            if (r2 != 0) goto L_0x00fb
            javax.net.ssl.SSLEngine r2 = r8.engine     // Catch:{ all -> 0x0088 }
            boolean r2 = r2.isOutboundDone()     // Catch:{ all -> 0x0088 }
            if (r2 != 0) goto L_0x00fb
            r2 = r1
        L_0x0030:
            monitor-exit(r5)     // Catch:{ all -> 0x0088 }
            if (r2 == 0) goto L_0x0036
            r8.handshake()     // Catch:{ SSLException -> 0x007c }
        L_0x0036:
            java.lang.Object r2 = r8.handshakeLock     // Catch:{ SSLException -> 0x007c }
            monitor-enter(r2)     // Catch:{ SSLException -> 0x007c }
            javax.net.ssl.SSLEngine r5 = r8.engine     // Catch:{ all -> 0x0079 }
            javax.net.ssl.SSLEngineResult r5 = r5.unwrap(r3, r4)     // Catch:{ all -> 0x0079 }
            int[] r6 = org.jboss.netty.handler.ssl.SslHandler.AnonymousClass7.$SwitchMap$javax$net$ssl$SSLEngineResult$Status     // Catch:{ all -> 0x0079 }
            javax.net.ssl.SSLEngineResult$Status r7 = r5.getStatus()     // Catch:{ all -> 0x0079 }
            int r7 = r7.ordinal()     // Catch:{ all -> 0x0079 }
            r6 = r6[r7]     // Catch:{ all -> 0x0079 }
            switch(r6) {
                case 1: goto L_0x008b;
                case 2: goto L_0x0091;
                default: goto L_0x004e;
            }     // Catch:{ all -> 0x0079 }
        L_0x004e:
            javax.net.ssl.SSLEngineResult$HandshakeStatus r5 = r5.getHandshakeStatus()     // Catch:{ all -> 0x0079 }
            r8.handleRenegotiation(r5)     // Catch:{ all -> 0x0079 }
            int[] r6 = org.jboss.netty.handler.ssl.SslHandler.AnonymousClass7.$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus     // Catch:{ all -> 0x0079 }
            int r7 = r5.ordinal()     // Catch:{ all -> 0x0079 }
            r6 = r6[r7]     // Catch:{ all -> 0x0079 }
            switch(r6) {
                case 1: goto L_0x00e6;
                case 2: goto L_0x0099;
                case 3: goto L_0x00ea;
                case 4: goto L_0x00ee;
                case 5: goto L_0x00f4;
                default: goto L_0x0060;
            }     // Catch:{ all -> 0x0079 }
        L_0x0060:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException     // Catch:{ all -> 0x0079 }
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ all -> 0x0079 }
            r1.<init>()     // Catch:{ all -> 0x0079 }
            java.lang.String r3 = "Unknown handshake status: "
            java.lang.StringBuilder r1 = r1.append(r3)     // Catch:{ all -> 0x0079 }
            java.lang.StringBuilder r1 = r1.append(r5)     // Catch:{ all -> 0x0079 }
            java.lang.String r1 = r1.toString()     // Catch:{ all -> 0x0079 }
            r0.<init>(r1)     // Catch:{ all -> 0x0079 }
            throw r0     // Catch:{ all -> 0x0079 }
        L_0x0079:
            r0 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x0079 }
            throw r0     // Catch:{ SSLException -> 0x007c }
        L_0x007c:
            r0 = move-exception
            r8.setHandshakeFailure(r10, r0)     // Catch:{ all -> 0x0081 }
            throw r0     // Catch:{ all -> 0x0081 }
        L_0x0081:
            r0 = move-exception
            org.jboss.netty.handler.ssl.SslBufferPool r1 = r8.bufferPool
            r1.releaseBuffer(r4)
            throw r0
        L_0x0088:
            r0 = move-exception
            monitor-exit(r5)     // Catch:{ all -> 0x0088 }
            throw r0     // Catch:{ SSLException -> 0x007c }
        L_0x008b:
            org.jboss.netty.handler.ssl.SslHandler$SSLEngineInboundCloseFuture r6 = r8.sslEngineCloseFuture     // Catch:{ all -> 0x0079 }
            r6.setClosed()     // Catch:{ all -> 0x0079 }
            goto L_0x004e
        L_0x0091:
            javax.net.ssl.SSLException r0 = new javax.net.ssl.SSLException     // Catch:{ all -> 0x0079 }
            java.lang.String r1 = "SSLEngine.unwrap() reported an impossible buffer overflow."
            r0.<init>(r1)     // Catch:{ all -> 0x0079 }
            throw r0     // Catch:{ all -> 0x0079 }
        L_0x0099:
            boolean r5 = r3.hasRemaining()     // Catch:{ all -> 0x0079 }
            if (r5 == 0) goto L_0x00aa
            javax.net.ssl.SSLEngine r5 = r8.engine     // Catch:{ all -> 0x0079 }
            boolean r5 = r5.isInboundDone()     // Catch:{ all -> 0x0079 }
            if (r5 != 0) goto L_0x00aa
        L_0x00a7:
            monitor-exit(r2)     // Catch:{ all -> 0x0079 }
            goto L_0x000c
        L_0x00aa:
            monitor-exit(r2)     // Catch:{ all -> 0x0079 }
        L_0x00ab:
            if (r0 == 0) goto L_0x00c0
            java.lang.Object r0 = r8.handshakeLock     // Catch:{ SSLException -> 0x007c }
            boolean r0 = java.lang.Thread.holdsLock(r0)     // Catch:{ SSLException -> 0x007c }
            if (r0 != 0) goto L_0x00c0
            org.jboss.netty.util.internal.NonReentrantLock r0 = r8.pendingEncryptedWritesLock     // Catch:{ SSLException -> 0x007c }
            boolean r0 = r0.isHeldByCurrentThread()     // Catch:{ SSLException -> 0x007c }
            if (r0 != 0) goto L_0x00c0
            r8.wrap(r9, r10)     // Catch:{ SSLException -> 0x007c }
        L_0x00c0:
            r4.flip()     // Catch:{ SSLException -> 0x007c }
            boolean r0 = r4.hasRemaining()     // Catch:{ SSLException -> 0x007c }
            if (r0 == 0) goto L_0x00f7
            org.jboss.netty.channel.Channel r0 = r9.getChannel()     // Catch:{ SSLException -> 0x007c }
            org.jboss.netty.channel.ChannelConfig r0 = r0.getConfig()     // Catch:{ SSLException -> 0x007c }
            org.jboss.netty.buffer.ChannelBufferFactory r0 = r0.getBufferFactory()     // Catch:{ SSLException -> 0x007c }
            int r1 = r4.remaining()     // Catch:{ SSLException -> 0x007c }
            org.jboss.netty.buffer.ChannelBuffer r0 = r0.getBuffer(r1)     // Catch:{ SSLException -> 0x007c }
            r0.writeBytes(r4)     // Catch:{ SSLException -> 0x007c }
            org.jboss.netty.handler.ssl.SslBufferPool r1 = r8.bufferPool
        L_0x00e2:
            r1.releaseBuffer(r4)
            return r0
        L_0x00e6:
            r8.wrapNonAppData(r9, r10)     // Catch:{ all -> 0x0079 }
            goto L_0x00a7
        L_0x00ea:
            r8.runDelegatedTasks()     // Catch:{ all -> 0x0079 }
            goto L_0x00a7
        L_0x00ee:
            r8.setHandshakeSuccess(r10)     // Catch:{ all -> 0x0079 }
            monitor-exit(r2)     // Catch:{ all -> 0x0079 }
            r0 = r1
            goto L_0x00ab
        L_0x00f4:
            monitor-exit(r2)     // Catch:{ all -> 0x0079 }
            r0 = r1
            goto L_0x00ab
        L_0x00f7:
            r0 = 0
            org.jboss.netty.handler.ssl.SslBufferPool r1 = r8.bufferPool
            goto L_0x00e2
        L_0x00fb:
            r2 = r0
            goto L_0x0030
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.handler.ssl.SslHandler.unwrap(org.jboss.netty.channel.ChannelHandlerContext, org.jboss.netty.channel.Channel, org.jboss.netty.buffer.ChannelBuffer, int, int):org.jboss.netty.buffer.ChannelBuffer");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:34:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:37:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:38:?, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void handleRenegotiation(javax.net.ssl.SSLEngineResult.HandshakeStatus r5) {
        /*
            r4 = this;
            r0 = 1
            java.lang.Object r1 = r4.handshakeLock
            monitor-enter(r1)
            javax.net.ssl.SSLEngineResult$HandshakeStatus r2 = javax.net.ssl.SSLEngineResult.HandshakeStatus.NOT_HANDSHAKING     // Catch:{ all -> 0x0014 }
            if (r5 == r2) goto L_0x000c
            javax.net.ssl.SSLEngineResult$HandshakeStatus r2 = javax.net.ssl.SSLEngineResult.HandshakeStatus.FINISHED     // Catch:{ all -> 0x0014 }
            if (r5 != r2) goto L_0x000e
        L_0x000c:
            monitor-exit(r1)     // Catch:{ all -> 0x0014 }
        L_0x000d:
            return
        L_0x000e:
            boolean r2 = r4.handshaken     // Catch:{ all -> 0x0014 }
            if (r2 != 0) goto L_0x0017
            monitor-exit(r1)     // Catch:{ all -> 0x0014 }
            goto L_0x000d
        L_0x0014:
            r0 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x0014 }
            throw r0
        L_0x0017:
            boolean r2 = r4.handshaking     // Catch:{ all -> 0x0014 }
            if (r2 == 0) goto L_0x001d
            monitor-exit(r1)     // Catch:{ all -> 0x0014 }
            goto L_0x000d
        L_0x001d:
            javax.net.ssl.SSLEngine r2 = r4.engine     // Catch:{ all -> 0x0014 }
            boolean r2 = r2.isInboundDone()     // Catch:{ all -> 0x0014 }
            if (r2 != 0) goto L_0x002d
            javax.net.ssl.SSLEngine r2 = r4.engine     // Catch:{ all -> 0x0014 }
            boolean r2 = r2.isOutboundDone()     // Catch:{ all -> 0x0014 }
            if (r2 == 0) goto L_0x002f
        L_0x002d:
            monitor-exit(r1)     // Catch:{ all -> 0x0014 }
            goto L_0x000d
        L_0x002f:
            boolean r2 = r4.isEnableRenegotiation()     // Catch:{ all -> 0x0014 }
            if (r2 == 0) goto L_0x003c
        L_0x0035:
            if (r0 == 0) goto L_0x0041
            r4.handshake()     // Catch:{ all -> 0x0014 }
        L_0x003a:
            monitor-exit(r1)     // Catch:{ all -> 0x0014 }
            goto L_0x000d
        L_0x003c:
            r0 = 0
            r2 = 1
            r4.handshaking = r2     // Catch:{ all -> 0x0014 }
            goto L_0x0035
        L_0x0041:
            org.jboss.netty.channel.ChannelHandlerContext r0 = r4.ctx     // Catch:{ all -> 0x0014 }
            javax.net.ssl.SSLException r2 = new javax.net.ssl.SSLException     // Catch:{ all -> 0x0014 }
            java.lang.String r3 = "renegotiation attempted by peer; closing the connection"
            r2.<init>(r3)     // Catch:{ all -> 0x0014 }
            org.jboss.netty.channel.Channels.fireExceptionCaught(r0, r2)     // Catch:{ all -> 0x0014 }
            org.jboss.netty.channel.ChannelHandlerContext r0 = r4.ctx     // Catch:{ all -> 0x0014 }
            org.jboss.netty.channel.ChannelHandlerContext r2 = r4.ctx     // Catch:{ all -> 0x0014 }
            org.jboss.netty.channel.Channel r2 = r2.getChannel()     // Catch:{ all -> 0x0014 }
            org.jboss.netty.channel.ChannelFuture r2 = org.jboss.netty.channel.Channels.succeededFuture(r2)     // Catch:{ all -> 0x0014 }
            org.jboss.netty.channel.Channels.close(r0, r2)     // Catch:{ all -> 0x0014 }
            goto L_0x003a
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.handler.ssl.SslHandler.handleRenegotiation(javax.net.ssl.SSLEngineResult$HandshakeStatus):void");
    }

    private void runDelegatedTasks() {
        final Runnable delegatedTask;
        while (true) {
            synchronized (this.handshakeLock) {
                delegatedTask = this.engine.getDelegatedTask();
            }
            if (delegatedTask != null) {
                this.delegatedTaskExecutor.execute(new Runnable() {
                    public void run() {
                        synchronized (SslHandler.this.handshakeLock) {
                            delegatedTask.run();
                        }
                    }
                });
            } else {
                return;
            }
        }
    }

    private void setHandshakeSuccess(Channel channel) {
        synchronized (this.handshakeLock) {
            this.handshaking = false;
            this.handshaken = true;
            if (this.handshakeFuture == null) {
                this.handshakeFuture = Channels.future(channel);
            }
            cancelHandshakeTimeout();
        }
        this.handshakeFuture.setSuccess();
    }

    /* access modifiers changed from: private */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0027, code lost:
        r4.handshakeFuture.setFailure(r6);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x002e, code lost:
        if (r4.closeOnSSLException == false) goto L_?;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0030, code lost:
        org.jboss.netty.channel.Channels.close(r4.ctx, org.jboss.netty.channel.Channels.future(r5));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:?, code lost:
        return;
     */
    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void setHandshakeFailure(org.jboss.netty.channel.Channel r5, javax.net.ssl.SSLException r6) {
        /*
            r4 = this;
            java.lang.Object r1 = r4.handshakeLock
            monitor-enter(r1)
            boolean r0 = r4.handshaking     // Catch:{ all -> 0x004b }
            if (r0 != 0) goto L_0x0009
            monitor-exit(r1)     // Catch:{ all -> 0x004b }
        L_0x0008:
            return
        L_0x0009:
            r0 = 0
            r4.handshaking = r0     // Catch:{ all -> 0x004b }
            r0 = 0
            r4.handshaken = r0     // Catch:{ all -> 0x004b }
            org.jboss.netty.channel.ChannelFuture r0 = r4.handshakeFuture     // Catch:{ all -> 0x004b }
            if (r0 != 0) goto L_0x0019
            org.jboss.netty.channel.ChannelFuture r0 = org.jboss.netty.channel.Channels.future(r5)     // Catch:{ all -> 0x004b }
            r4.handshakeFuture = r0     // Catch:{ all -> 0x004b }
        L_0x0019:
            r4.cancelHandshakeTimeout()     // Catch:{ all -> 0x004b }
            javax.net.ssl.SSLEngine r0 = r4.engine     // Catch:{ all -> 0x004b }
            r0.closeOutbound()     // Catch:{ all -> 0x004b }
            javax.net.ssl.SSLEngine r0 = r4.engine     // Catch:{ SSLException -> 0x003a }
            r0.closeInbound()     // Catch:{ SSLException -> 0x003a }
        L_0x0026:
            monitor-exit(r1)     // Catch:{ all -> 0x004b }
            org.jboss.netty.channel.ChannelFuture r0 = r4.handshakeFuture
            r0.setFailure(r6)
            boolean r0 = r4.closeOnSSLException
            if (r0 == 0) goto L_0x0008
            org.jboss.netty.channel.ChannelHandlerContext r0 = r4.ctx
            org.jboss.netty.channel.ChannelFuture r1 = org.jboss.netty.channel.Channels.future(r5)
            org.jboss.netty.channel.Channels.close(r0, r1)
            goto L_0x0008
        L_0x003a:
            r0 = move-exception
            org.jboss.netty.logging.InternalLogger r2 = logger     // Catch:{ all -> 0x004b }
            boolean r2 = r2.isDebugEnabled()     // Catch:{ all -> 0x004b }
            if (r2 == 0) goto L_0x0026
            org.jboss.netty.logging.InternalLogger r2 = logger     // Catch:{ all -> 0x004b }
            java.lang.String r3 = "SSLEngine.closeInbound() raised an exception after a handshake failure."
            r2.debug(r3, r0)     // Catch:{ all -> 0x004b }
            goto L_0x0026
        L_0x004b:
            r0 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x004b }
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.handler.ssl.SslHandler.setHandshakeFailure(org.jboss.netty.channel.Channel, javax.net.ssl.SSLException):void");
    }

    /* JADX WARNING: Removed duplicated region for block: B:15:0x0047  */
    /* JADX WARNING: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void closeOutboundAndChannel(org.jboss.netty.channel.ChannelHandlerContext r9, org.jboss.netty.channel.ChannelStateEvent r10) {
        /*
            r8 = this;
            r7 = 1
            r6 = 0
            org.jboss.netty.channel.Channel r0 = r10.getChannel()
            boolean r0 = r0.isConnected()
            if (r0 != 0) goto L_0x0010
            r9.sendDownstream(r10)
        L_0x000f:
            return
        L_0x0010:
            org.jboss.netty.channel.Channel r2 = r10.getChannel()     // Catch:{ SSLException -> 0x004b }
            org.jboss.netty.buffer.ChannelBuffer r3 = org.jboss.netty.buffer.ChannelBuffers.EMPTY_BUFFER     // Catch:{ SSLException -> 0x004b }
            r4 = 0
            r5 = 0
            r0 = r8
            r1 = r9
            r0.unwrap(r1, r2, r3, r4, r5)     // Catch:{ SSLException -> 0x004b }
        L_0x001d:
            javax.net.ssl.SSLEngine r0 = r8.engine     // Catch:{ all -> 0x005c }
            boolean r0 = r0.isOutboundDone()     // Catch:{ all -> 0x005c }
            if (r0 != 0) goto L_0x0071
            java.util.concurrent.atomic.AtomicBoolean r0 = r8.sentCloseNotify     // Catch:{ all -> 0x005c }
            r1 = 0
            r2 = 1
            boolean r0 = r0.compareAndSet(r1, r2)     // Catch:{ all -> 0x005c }
            if (r0 == 0) goto L_0x0071
            javax.net.ssl.SSLEngine r0 = r8.engine     // Catch:{ all -> 0x005c }
            r0.closeOutbound()     // Catch:{ all -> 0x005c }
            org.jboss.netty.channel.Channel r0 = r10.getChannel()     // Catch:{ SSLException -> 0x0061 }
            org.jboss.netty.channel.ChannelFuture r0 = r8.wrapNonAppData(r9, r0)     // Catch:{ SSLException -> 0x0061 }
            org.jboss.netty.handler.ssl.SslHandler$ClosingChannelFutureListener r1 = new org.jboss.netty.handler.ssl.SslHandler$ClosingChannelFutureListener     // Catch:{ SSLException -> 0x0061 }
            r1.<init>(r9, r10)     // Catch:{ SSLException -> 0x0061 }
            r0.addListener(r1)     // Catch:{ SSLException -> 0x0061 }
            r0 = r6
        L_0x0045:
            if (r0 == 0) goto L_0x000f
            r9.sendDownstream(r10)
            goto L_0x000f
        L_0x004b:
            r0 = move-exception
            org.jboss.netty.logging.InternalLogger r1 = logger     // Catch:{ all -> 0x005c }
            boolean r1 = r1.isDebugEnabled()     // Catch:{ all -> 0x005c }
            if (r1 == 0) goto L_0x001d
            org.jboss.netty.logging.InternalLogger r1 = logger     // Catch:{ all -> 0x005c }
            java.lang.String r2 = "Failed to unwrap before sending a close_notify message"
            r1.debug(r2, r0)     // Catch:{ all -> 0x005c }
            goto L_0x001d
        L_0x005c:
            r0 = move-exception
            r9.sendDownstream(r10)
            throw r0
        L_0x0061:
            r0 = move-exception
            org.jboss.netty.logging.InternalLogger r1 = logger     // Catch:{ all -> 0x005c }
            boolean r1 = r1.isDebugEnabled()     // Catch:{ all -> 0x005c }
            if (r1 == 0) goto L_0x0071
            org.jboss.netty.logging.InternalLogger r1 = logger     // Catch:{ all -> 0x005c }
            java.lang.String r2 = "Failed to encode a close_notify message"
            r1.debug(r2, r0)     // Catch:{ all -> 0x005c }
        L_0x0071:
            r0 = r7
            goto L_0x0045
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.handler.ssl.SslHandler.closeOutboundAndChannel(org.jboss.netty.channel.ChannelHandlerContext, org.jboss.netty.channel.ChannelStateEvent):void");
    }

    public void beforeAdd(ChannelHandlerContext channelHandlerContext) throws Exception {
        super.beforeAdd(channelHandlerContext);
        this.ctx = channelHandlerContext;
    }

    public void afterRemove(ChannelHandlerContext channelHandlerContext) throws Exception {
        IOException iOException = null;
        while (true) {
            PendingWrite pendingWrite = (PendingWrite) this.pendingUnencryptedWrites.poll();
            if (pendingWrite == null) {
                break;
            }
            if (iOException == null) {
                iOException = new IOException("Unable to write data");
            }
            pendingWrite.future.setFailure(iOException);
        }
        while (true) {
            MessageEvent messageEvent = (MessageEvent) this.pendingEncryptedWrites.poll();
            if (messageEvent == null) {
                break;
            }
            if (iOException == null) {
                iOException = new IOException("Unable to write data");
            }
            messageEvent.getFuture().setFailure(iOException);
        }
        if (iOException != null) {
            Channels.fireExceptionCaughtLater(channelHandlerContext, (Throwable) iOException);
        }
    }

    public void channelConnected(final ChannelHandlerContext channelHandlerContext, final ChannelStateEvent channelStateEvent) throws Exception {
        if (this.issueHandshake) {
            handshake().addListener(new ChannelFutureListener() {
                public void operationComplete(ChannelFuture channelFuture) throws Exception {
                    if (channelFuture.isSuccess()) {
                        channelHandlerContext.sendUpstream(channelStateEvent);
                    }
                }
            });
        } else {
            super.channelConnected(channelHandlerContext, channelStateEvent);
        }
    }

    public void channelClosed(final ChannelHandlerContext channelHandlerContext, ChannelStateEvent channelStateEvent) throws Exception {
        channelHandlerContext.getPipeline().execute(new Runnable() {
            public void run() {
                if (SslHandler.this.pendingUnencryptedWritesLock.tryLock()) {
                    ClosedChannelException closedChannelException = null;
                    while (true) {
                        try {
                            PendingWrite pendingWrite = (PendingWrite) SslHandler.this.pendingUnencryptedWrites.poll();
                            if (pendingWrite == null) {
                                break;
                            }
                            if (closedChannelException == null) {
                                closedChannelException = new ClosedChannelException();
                            }
                            pendingWrite.future.setFailure(closedChannelException);
                        } finally {
                            SslHandler.this.pendingUnencryptedWritesLock.unlock();
                        }
                    }
                    while (true) {
                        MessageEvent messageEvent = (MessageEvent) SslHandler.this.pendingEncryptedWrites.poll();
                        if (messageEvent == null) {
                            break;
                        }
                        if (closedChannelException == null) {
                            closedChannelException = new ClosedChannelException();
                        }
                        messageEvent.getFuture().setFailure(closedChannelException);
                    }
                    if (closedChannelException != null) {
                        Channels.fireExceptionCaught(channelHandlerContext, (Throwable) closedChannelException);
                    }
                }
            }
        });
        super.channelClosed(channelHandlerContext, channelStateEvent);
    }
}
