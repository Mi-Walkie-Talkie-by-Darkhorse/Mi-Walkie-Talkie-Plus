package org.jboss.netty.channel.socket.nio;

import java.io.IOException;
import java.net.SocketAddress;
import java.nio.ByteBuffer;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.DatagramChannel;
import java.nio.channels.SelectionKey;
import java.util.concurrent.Executor;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.ChannelBufferFactory;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelException;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.channel.ReceiveBufferSizePredictor;

public class NioDatagramWorker extends AbstractNioWorker {
    private final SocketReceiveBufferAllocator bufferAllocator = new SocketReceiveBufferAllocator();

    private final class ChannelRegistionTask implements Runnable {
        private final NioDatagramChannel channel;
        private final ChannelFuture future;

        ChannelRegistionTask(NioDatagramChannel nioDatagramChannel, ChannelFuture channelFuture) {
            this.channel = nioDatagramChannel;
            this.future = channelFuture;
        }

        public void run() {
            if (this.channel.getLocalAddress() == null) {
                if (this.future != null) {
                    this.future.setFailure(new ClosedChannelException());
                }
                NioDatagramWorker.this.close(this.channel, Channels.succeededFuture(this.channel));
                return;
            }
            try {
                this.channel.getDatagramChannel().register(NioDatagramWorker.this.selector, this.channel.getRawInterestOps(), this.channel);
                if (this.future != null) {
                    this.future.setSuccess();
                }
            } catch (IOException e) {
                if (this.future != null) {
                    this.future.setFailure(e);
                }
                NioDatagramWorker.this.close(this.channel, Channels.succeededFuture(this.channel));
                if (!(e instanceof ClosedChannelException)) {
                    throw new ChannelException("Failed to register a socket to the selector.", e);
                }
            }
        }
    }

    public /* bridge */ /* synthetic */ void executeInIoThread(Runnable runnable) {
        super.executeInIoThread(runnable);
    }

    public /* bridge */ /* synthetic */ void executeInIoThread(Runnable runnable, boolean z) {
        super.executeInIoThread(runnable, z);
    }

    public /* bridge */ /* synthetic */ void rebuildSelector() {
        super.rebuildSelector();
    }

    public /* bridge */ /* synthetic */ void register(Channel channel, ChannelFuture channelFuture) {
        super.register(channel, channelFuture);
    }

    public /* bridge */ /* synthetic */ void shutdown() {
        super.shutdown();
    }

    NioDatagramWorker(Executor executor) {
        super(executor);
    }

    /* access modifiers changed from: protected */
    public boolean read(SelectionKey selectionKey) {
        SocketAddress socketAddress;
        boolean z;
        NioDatagramChannel nioDatagramChannel = (NioDatagramChannel) selectionKey.attachment();
        ReceiveBufferSizePredictor receiveBufferSizePredictor = nioDatagramChannel.getConfig().getReceiveBufferSizePredictor();
        ChannelBufferFactory bufferFactory = nioDatagramChannel.getConfig().getBufferFactory();
        DatagramChannel datagramChannel = (DatagramChannel) selectionKey.channel();
        ByteBuffer order = this.bufferAllocator.get(receiveBufferSizePredictor.nextReceiveBufferSize()).order(bufferFactory.getDefaultOrder());
        try {
            socketAddress = datagramChannel.receive(order);
            z = false;
        } catch (ClosedChannelException e) {
            socketAddress = null;
            z = true;
        } catch (Throwable th) {
            Channels.fireExceptionCaught((Channel) nioDatagramChannel, th);
            socketAddress = null;
            z = true;
        }
        if (socketAddress != null) {
            order.flip();
            int remaining = order.remaining();
            if (remaining > 0) {
                receiveBufferSizePredictor.previousReceiveBufferSize(remaining);
                ChannelBuffer buffer = bufferFactory.getBuffer(remaining);
                buffer.setBytes(0, order);
                buffer.writerIndex(remaining);
                receiveBufferSizePredictor.previousReceiveBufferSize(remaining);
                Channels.fireMessageReceived((Channel) nioDatagramChannel, (Object) buffer, socketAddress);
            }
        }
        if (!z) {
            return true;
        }
        selectionKey.cancel();
        close(nioDatagramChannel, Channels.succeededFuture(nioDatagramChannel));
        return false;
    }

    /* access modifiers changed from: protected */
    public boolean scheduleWriteIfNecessary(AbstractNioChannel<?> abstractNioChannel) {
        Thread thread = this.thread;
        if (thread != null && Thread.currentThread() == thread) {
            return false;
        }
        if (abstractNioChannel.writeTaskInTaskQueue.compareAndSet(false, true)) {
            registerTask(abstractNioChannel.writeTask);
        }
        return true;
    }

    static void disconnect(NioDatagramChannel nioDatagramChannel, ChannelFuture channelFuture) {
        boolean isConnected = nioDatagramChannel.isConnected();
        boolean isIoThread = isIoThread(nioDatagramChannel);
        try {
            nioDatagramChannel.getDatagramChannel().disconnect();
            channelFuture.setSuccess();
            if (!isConnected) {
                return;
            }
            if (isIoThread) {
                Channels.fireChannelDisconnected((Channel) nioDatagramChannel);
            } else {
                Channels.fireChannelDisconnectedLater(nioDatagramChannel);
            }
        } catch (Throwable th) {
            channelFuture.setFailure(th);
            if (isIoThread) {
                Channels.fireExceptionCaught((Channel) nioDatagramChannel, th);
            } else {
                Channels.fireExceptionCaughtLater((Channel) nioDatagramChannel, th);
            }
        }
    }

    /* access modifiers changed from: protected */
    public Runnable createRegisterTask(Channel channel, ChannelFuture channelFuture) {
        return new ChannelRegistionTask((NioDatagramChannel) channel, channelFuture);
    }

    public void writeFromUserCode(AbstractNioChannel<?> abstractNioChannel) {
        if (!abstractNioChannel.isBound()) {
            cleanUpWriteBuffer(abstractNioChannel);
        } else if (!scheduleWriteIfNecessary(abstractNioChannel) && !abstractNioChannel.writeSuspended && !abstractNioChannel.inWriteNowLoop) {
            write0(abstractNioChannel);
        }
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Code restructure failed: missing block: B:73:0x010d, code lost:
        r4 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:74:0x010e, code lost:
        r20 = r4;
        r4 = r6;
        r6 = null;
        r5 = r20;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:78:0x011a, code lost:
        r4 = r6;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x0064 A[Catch:{ AsynchronousCloseException -> 0x0115, Throwable -> 0x00da }] */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x007d A[SYNTHETIC, Splitter:B:32:0x007d] */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x00ab A[Catch:{ AsynchronousCloseException -> 0x0115, Throwable -> 0x00da }] */
    /* JADX WARNING: Removed duplicated region for block: B:77:0x0119 A[ExcHandler: AsynchronousCloseException (e java.nio.channels.AsynchronousCloseException), PHI: r6 
  PHI: (r6v6 boolean) = (r6v1 boolean), (r6v1 boolean), (r6v1 boolean), (r6v10 boolean), (r6v10 boolean) binds: [B:37:0x0096, B:38:?, B:32:0x007d, B:58:0x00d4, B:59:?] A[DONT_GENERATE, DONT_INLINE], Splitter:B:32:0x007d] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void write0(org.jboss.netty.channel.socket.nio.AbstractNioChannel<?> r23) {
        /*
            r22 = this;
            r6 = 0
            r9 = 0
            r4 = 0
            r0 = r22
            org.jboss.netty.channel.socket.nio.SocketSendBufferPool r12 = r0.sendBufferPool
            r2 = r23
            org.jboss.netty.channel.socket.nio.NioDatagramChannel r2 = (org.jboss.netty.channel.socket.nio.NioDatagramChannel) r2
            java.nio.channels.DatagramChannel r13 = r2.getDatagramChannel()
            r0 = r23
            java.util.Queue<org.jboss.netty.channel.MessageEvent> r14 = r0.writeBufferQueue
            org.jboss.netty.channel.socket.nio.NioChannelConfig r2 = r23.getConfig()
            int r11 = r2.getWriteSpinCount()
            r0 = r23
            java.lang.Object r15 = r0.writeLock
            monitor-enter(r15)
            r2 = 1
            r0 = r23
            r0.inWriteNowLoop = r2     // Catch:{ all -> 0x00fd }
        L_0x0026:
            r0 = r23
            org.jboss.netty.channel.MessageEvent r8 = r0.currentWriteEvent     // Catch:{ all -> 0x00fd }
            if (r8 != 0) goto L_0x009d
            java.lang.Object r2 = r14.poll()     // Catch:{ all -> 0x00fd }
            org.jboss.netty.channel.MessageEvent r2 = (org.jboss.netty.channel.MessageEvent) r2     // Catch:{ all -> 0x00fd }
            r0 = r23
            r0.currentWriteEvent = r2     // Catch:{ all -> 0x00fd }
            if (r2 != 0) goto L_0x004f
            r2 = 1
            r3 = 0
            r0 = r23
            r0.writeSuspended = r3     // Catch:{ all -> 0x00fd }
        L_0x003e:
            r3 = 0
            r0 = r23
            r0.inWriteNowLoop = r3     // Catch:{ all -> 0x00fd }
            if (r6 == 0) goto L_0x0100
            r22.setOpWrite(r23)     // Catch:{ all -> 0x00fd }
        L_0x0048:
            monitor-exit(r15)     // Catch:{ all -> 0x00fd }
            r0 = r23
            org.jboss.netty.channel.Channels.fireWriteComplete(r0, r4)
            return
        L_0x004f:
            java.lang.Object r3 = r2.getMessage()     // Catch:{ all -> 0x00fd }
            org.jboss.netty.channel.socket.nio.SocketSendBufferPool$SendBuffer r7 = r12.acquire(r3)     // Catch:{ all -> 0x00fd }
            r0 = r23
            r0.currentWriteBuffer = r7     // Catch:{ all -> 0x00fd }
            r8 = r2
        L_0x005c:
            r2 = 0
            java.net.SocketAddress r16 = r8.getRemoteAddress()     // Catch:{ AsynchronousCloseException -> 0x0115, Throwable -> 0x00da }
            if (r16 != 0) goto L_0x00ab
            r10 = r11
        L_0x0065:
            if (r10 <= 0) goto L_0x0072
            long r2 = r7.transferTo(r13)     // Catch:{ AsynchronousCloseException -> 0x0115, Throwable -> 0x00da }
            r16 = 0
            int r16 = (r2 > r16 ? 1 : (r2 == r16 ? 0 : -1))
            if (r16 == 0) goto L_0x00a2
            long r4 = r4 + r2
        L_0x0072:
            r20 = r2
            r2 = r4
            r4 = r20
        L_0x0077:
            r16 = 0
            int r4 = (r4 > r16 ? 1 : (r4 == r16 ? 0 : -1))
            if (r4 > 0) goto L_0x0083
            boolean r4 = r7.finished()     // Catch:{ AsynchronousCloseException -> 0x0119, Throwable -> 0x0107 }
            if (r4 == 0) goto L_0x00d0
        L_0x0083:
            r7.release()     // Catch:{ AsynchronousCloseException -> 0x0119, Throwable -> 0x0107 }
            org.jboss.netty.channel.ChannelFuture r4 = r8.getFuture()     // Catch:{ AsynchronousCloseException -> 0x0119, Throwable -> 0x0107 }
            r5 = 0
            r0 = r23
            r0.currentWriteEvent = r5     // Catch:{ AsynchronousCloseException -> 0x0119, Throwable -> 0x0107 }
            r5 = 0
            r0 = r23
            r0.currentWriteBuffer = r5     // Catch:{ AsynchronousCloseException -> 0x0119, Throwable -> 0x0107 }
            r7 = 0
            r5 = 0
            r4.setSuccess()     // Catch:{ AsynchronousCloseException -> 0x0119, Throwable -> 0x010d }
            r4 = r6
        L_0x009a:
            r6 = r4
            r4 = r2
            goto L_0x0026
        L_0x009d:
            r0 = r23
            org.jboss.netty.channel.socket.nio.SocketSendBufferPool$SendBuffer r7 = r0.currentWriteBuffer     // Catch:{ all -> 0x00fd }
            goto L_0x005c
        L_0x00a2:
            boolean r16 = r7.finished()     // Catch:{ AsynchronousCloseException -> 0x0115, Throwable -> 0x00da }
            if (r16 != 0) goto L_0x0072
            int r10 = r10 + -1
            goto L_0x0065
        L_0x00ab:
            r10 = r11
        L_0x00ac:
            if (r10 <= 0) goto L_0x011d
            r0 = r16
            long r2 = r7.transferTo(r13, r0)     // Catch:{ AsynchronousCloseException -> 0x0115, Throwable -> 0x00da }
            r18 = 0
            int r17 = (r2 > r18 ? 1 : (r2 == r18 ? 0 : -1))
            if (r17 == 0) goto L_0x00c1
            long r4 = r4 + r2
            r20 = r2
            r2 = r4
            r4 = r20
            goto L_0x0077
        L_0x00c1:
            boolean r17 = r7.finished()     // Catch:{ AsynchronousCloseException -> 0x0115, Throwable -> 0x00da }
            if (r17 == 0) goto L_0x00cd
            r20 = r2
            r2 = r4
            r4 = r20
            goto L_0x0077
        L_0x00cd:
            int r10 = r10 + -1
            goto L_0x00ac
        L_0x00d0:
            r6 = 1
            r4 = 1
            r0 = r23
            r0.writeSuspended = r4     // Catch:{ AsynchronousCloseException -> 0x0119, Throwable -> 0x0107 }
            r4 = r2
            r2 = r9
            goto L_0x003e
        L_0x00da:
            r2 = move-exception
            r20 = r2
            r2 = r4
            r5 = r20
            r4 = r6
            r6 = r7
            r7 = r8
        L_0x00e3:
            r6.release()     // Catch:{ all -> 0x00fd }
            org.jboss.netty.channel.ChannelFuture r6 = r7.getFuture()     // Catch:{ all -> 0x00fd }
            r7 = 0
            r0 = r23
            r0.currentWriteEvent = r7     // Catch:{ all -> 0x00fd }
            r7 = 0
            r0 = r23
            r0.currentWriteBuffer = r7     // Catch:{ all -> 0x00fd }
            r6.setFailure(r5)     // Catch:{ all -> 0x00fd }
            r0 = r23
            org.jboss.netty.channel.Channels.fireExceptionCaught(r0, r5)     // Catch:{ all -> 0x00fd }
            goto L_0x009a
        L_0x00fd:
            r2 = move-exception
            monitor-exit(r15)     // Catch:{ all -> 0x00fd }
            throw r2
        L_0x0100:
            if (r2 == 0) goto L_0x0048
            r22.clearOpWrite(r23)     // Catch:{ all -> 0x00fd }
            goto L_0x0048
        L_0x0107:
            r4 = move-exception
            r5 = r4
            r4 = r6
            r6 = r7
            r7 = r8
            goto L_0x00e3
        L_0x010d:
            r4 = move-exception
            r20 = r4
            r4 = r6
            r6 = r5
            r5 = r20
            goto L_0x00e3
        L_0x0115:
            r2 = move-exception
            r2 = r4
            r4 = r6
            goto L_0x009a
        L_0x0119:
            r4 = move-exception
            r4 = r6
            goto L_0x009a
        L_0x011d:
            r20 = r2
            r2 = r4
            r4 = r20
            goto L_0x0077
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.channel.socket.nio.NioDatagramWorker.write0(org.jboss.netty.channel.socket.nio.AbstractNioChannel):void");
    }

    public void run() {
        super.run();
        this.bufferAllocator.releaseExternalResources();
    }
}
