package org.jboss.netty.channel.socket.nio;

import java.io.IOException;
import java.nio.channels.CancelledKeyException;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.NotYetConnectedException;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.util.Iterator;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.Executor;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.channel.MessageEvent;
import org.jboss.netty.channel.socket.Worker;
import org.jboss.netty.util.ThreadNameDeterminer;
import org.jboss.netty.util.ThreadRenamingRunnable;

abstract class AbstractNioWorker extends AbstractNioSelector implements Worker {
    protected final SocketSendBufferPool sendBufferPool = new SocketSendBufferPool();

    /* access modifiers changed from: protected */
    public abstract boolean read(SelectionKey selectionKey);

    /* access modifiers changed from: protected */
    public abstract boolean scheduleWriteIfNecessary(AbstractNioChannel<?> abstractNioChannel);

    AbstractNioWorker(Executor executor) {
        super(executor);
    }

    AbstractNioWorker(Executor executor, ThreadNameDeterminer threadNameDeterminer) {
        super(executor, threadNameDeterminer);
    }

    public void executeInIoThread(Runnable runnable) {
        executeInIoThread(runnable, false);
    }

    public void executeInIoThread(Runnable runnable, boolean z) {
        if (z || !isIoThread()) {
            registerTask(runnable);
        } else {
            runnable.run();
        }
    }

    /* access modifiers changed from: protected */
    public void close(SelectionKey selectionKey) {
        AbstractNioChannel abstractNioChannel = (AbstractNioChannel) selectionKey.attachment();
        close(abstractNioChannel, Channels.succeededFuture(abstractNioChannel));
    }

    /* access modifiers changed from: protected */
    public ThreadRenamingRunnable newThreadRenamingRunnable(int i, ThreadNameDeterminer threadNameDeterminer) {
        return new ThreadRenamingRunnable(this, "New I/O worker #" + i, threadNameDeterminer);
    }

    public void run() {
        super.run();
        this.sendBufferPool.releaseExternalResources();
    }

    /* access modifiers changed from: protected */
    public void process(Selector selector) throws IOException {
        Set selectedKeys = selector.selectedKeys();
        if (!selectedKeys.isEmpty()) {
            Iterator it = selectedKeys.iterator();
            while (it.hasNext()) {
                SelectionKey selectionKey = (SelectionKey) it.next();
                it.remove();
                try {
                    int readyOps = selectionKey.readyOps();
                    if (((readyOps & 1) == 0 && readyOps != 0) || read(selectionKey)) {
                        if ((readyOps & 4) != 0) {
                            writeFromSelectorLoop(selectionKey);
                        }
                        if (cleanUpCancelledKeys()) {
                            return;
                        }
                    }
                } catch (CancelledKeyException e) {
                    close(selectionKey);
                }
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public void writeFromUserCode(AbstractNioChannel<?> abstractNioChannel) {
        if (!abstractNioChannel.isConnected()) {
            cleanUpWriteBuffer(abstractNioChannel);
        } else if (!scheduleWriteIfNecessary(abstractNioChannel) && !abstractNioChannel.writeSuspended && !abstractNioChannel.inWriteNowLoop) {
            write0(abstractNioChannel);
        }
    }

    /* access modifiers changed from: 0000 */
    public void writeFromTaskLoop(AbstractNioChannel<?> abstractNioChannel) {
        if (!abstractNioChannel.writeSuspended) {
            write0(abstractNioChannel);
        }
    }

    /* access modifiers changed from: 0000 */
    public void writeFromSelectorLoop(SelectionKey selectionKey) {
        AbstractNioChannel abstractNioChannel = (AbstractNioChannel) selectionKey.attachment();
        abstractNioChannel.writeSuspended = false;
        write0(abstractNioChannel);
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Code restructure failed: missing block: B:58:0x00e7, code lost:
        r4 = r12;
        r3 = r11;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:60:0x00ee, code lost:
        r3 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:61:0x00ef, code lost:
        r8 = r3;
        r7 = r6;
        r6 = r11;
        r3 = r4;
        r4 = r12;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:86:0x0147, code lost:
        r3 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:87:0x0148, code lost:
        r8 = r3;
        r7 = r6;
        r6 = r11;
        r3 = r4;
        r4 = r12;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:88:0x014e, code lost:
        r5 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:89:0x014f, code lost:
        r8 = r5;
        r15 = r3;
        r7 = r6;
        r6 = r11;
        r3 = r4;
        r4 = r12;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:106:0x0094 A[EDGE_INSN: B:106:0x0094->B:38:0x0094 ?: BREAK  
EDGE_INSN: B:106:0x0094->B:38:0x0094 ?: BREAK  , SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x0089 A[SYNTHETIC, Splitter:B:34:0x0089] */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x009a A[Catch:{ AsynchronousCloseException -> 0x00e6, Throwable -> 0x0156 }] */
    /* JADX WARNING: Removed duplicated region for block: B:51:0x00ca  */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x00e6 A[ExcHandler: AsynchronousCloseException (e java.nio.channels.AsynchronousCloseException), Splitter:B:8:0x0038] */
    /* JADX WARNING: Removed duplicated region for block: B:63:0x00f6 A[SYNTHETIC, Splitter:B:63:0x00f6] */
    /* JADX WARNING: Removed duplicated region for block: B:67:0x0105  */
    /* JADX WARNING: Removed duplicated region for block: B:69:0x010a  */
    /* JADX WARNING: Removed duplicated region for block: B:74:0x0119  */
    /* JADX WARNING: Removed duplicated region for block: B:75:0x011b  */
    /* JADX WARNING: Removed duplicated region for block: B:97:0x016b  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void write0(org.jboss.netty.channel.socket.nio.AbstractNioChannel<?> r23) {
        /*
            r22 = this;
            r14 = 1
            r6 = 0
            r11 = 0
            boolean r18 = isIoThread(r23)
            r12 = 0
            r0 = r22
            org.jboss.netty.channel.socket.nio.SocketSendBufferPool r0 = r0.sendBufferPool
            r19 = r0
            r0 = r23
            C r2 = r0.channel
            java.nio.channels.WritableByteChannel r2 = (java.nio.channels.WritableByteChannel) r2
            r0 = r23
            java.util.Queue<org.jboss.netty.channel.MessageEvent> r0 = r0.writeBufferQueue
            r20 = r0
            org.jboss.netty.channel.socket.nio.NioChannelConfig r3 = r23.getConfig()
            int r17 = r3.getWriteSpinCount()
            r10 = 0
            r0 = r23
            java.lang.Object r0 = r0.writeLock
            r21 = r0
            monitor-enter(r21)
            r3 = 1
            r0 = r23
            r0.inWriteNowLoop = r3     // Catch:{ all -> 0x0129 }
        L_0x0030:
            r0 = r23
            org.jboss.netty.channel.MessageEvent r3 = r0.currentWriteEvent     // Catch:{ all -> 0x0129 }
            r15 = 0
            r4 = 0
            if (r3 != 0) goto L_0x00b7
            java.lang.Object r3 = r20.poll()     // Catch:{ AsynchronousCloseException -> 0x00e6, Throwable -> 0x00ee }
            org.jboss.netty.channel.MessageEvent r3 = (org.jboss.netty.channel.MessageEvent) r3     // Catch:{ AsynchronousCloseException -> 0x00e6, Throwable -> 0x00ee }
            r0 = r23
            r0.currentWriteEvent = r3     // Catch:{ AsynchronousCloseException -> 0x00e6, Throwable -> 0x00ee }
            if (r3 != 0) goto L_0x006f
            r11 = 1
            r3 = 0
            r0 = r23
            r0.writeSuspended = r3     // Catch:{ AsynchronousCloseException -> 0x00e6, Throwable -> 0x00ee }
        L_0x004a:
            r2 = 0
            r0 = r23
            r0.inWriteNowLoop = r2     // Catch:{ all -> 0x0129 }
            if (r14 == 0) goto L_0x0056
            if (r6 == 0) goto L_0x0122
            r22.setOpWrite(r23)     // Catch:{ all -> 0x0129 }
        L_0x0056:
            monitor-exit(r21)     // Catch:{ all -> 0x0129 }
            if (r10 == 0) goto L_0x012c
            java.util.Iterator r3 = r10.iterator()
        L_0x005d:
            boolean r2 = r3.hasNext()
            if (r2 == 0) goto L_0x012c
            java.lang.Object r2 = r3.next()
            java.lang.Throwable r2 = (java.lang.Throwable) r2
            r0 = r23
            org.jboss.netty.channel.Channels.fireExceptionCaught(r0, r2)
            goto L_0x005d
        L_0x006f:
            org.jboss.netty.channel.ChannelFuture r4 = r3.getFuture()     // Catch:{ AsynchronousCloseException -> 0x00e6, Throwable -> 0x00ee }
            java.lang.Object r3 = r3.getMessage()     // Catch:{ AsynchronousCloseException -> 0x00e6, Throwable -> 0x0147 }
            r0 = r19
            org.jboss.netty.channel.socket.nio.SocketSendBufferPool$SendBuffer r3 = r0.acquire(r3)     // Catch:{ AsynchronousCloseException -> 0x00e6, Throwable -> 0x0147 }
            r0 = r23
            r0.currentWriteBuffer = r3     // Catch:{ AsynchronousCloseException -> 0x00e6, Throwable -> 0x014e }
            r15 = r3
            r3 = r4
        L_0x0083:
            r4 = 0
            r7 = r17
        L_0x0087:
            if (r7 <= 0) goto L_0x0094
            long r4 = r15.transferTo(r2)     // Catch:{ AsynchronousCloseException -> 0x00e6, Throwable -> 0x0156 }
            r8 = 0
            int r8 = (r4 > r8 ? 1 : (r4 == r8 ? 0 : -1))
            if (r8 == 0) goto L_0x00c1
            long r12 = r12 + r4
        L_0x0094:
            boolean r7 = r15.finished()     // Catch:{ AsynchronousCloseException -> 0x00e6, Throwable -> 0x0156 }
            if (r7 == 0) goto L_0x00ca
            r15.release()     // Catch:{ AsynchronousCloseException -> 0x00e6, Throwable -> 0x0156 }
            r4 = 0
            r0 = r23
            r0.currentWriteEvent = r4     // Catch:{ AsynchronousCloseException -> 0x00e6, Throwable -> 0x0156 }
            r4 = 0
            r0 = r23
            r0.currentWriteBuffer = r4     // Catch:{ AsynchronousCloseException -> 0x00e6, Throwable -> 0x0156 }
            r15 = 0
            r3.setSuccess()     // Catch:{ AsynchronousCloseException -> 0x00e6, Throwable -> 0x0156 }
            r3 = r10
            r4 = r12
            r7 = r6
            r8 = r14
            r6 = r11
        L_0x00b0:
            r10 = r3
            r12 = r4
            r11 = r6
            r14 = r8
            r6 = r7
            goto L_0x0030
        L_0x00b7:
            org.jboss.netty.channel.ChannelFuture r3 = r3.getFuture()     // Catch:{ AsynchronousCloseException -> 0x00e6, Throwable -> 0x00ee }
            r0 = r23
            org.jboss.netty.channel.socket.nio.SocketSendBufferPool$SendBuffer r4 = r0.currentWriteBuffer     // Catch:{ AsynchronousCloseException -> 0x00e6, Throwable -> 0x0156 }
            r15 = r4
            goto L_0x0083
        L_0x00c1:
            boolean r8 = r15.finished()     // Catch:{ AsynchronousCloseException -> 0x00e6, Throwable -> 0x0156 }
            if (r8 != 0) goto L_0x0094
            int r7 = r7 + -1
            goto L_0x0087
        L_0x00ca:
            r16 = 1
            r6 = 1
            r0 = r23
            r0.writeSuspended = r6     // Catch:{ AsynchronousCloseException -> 0x0163, Throwable -> 0x015c }
            r6 = 0
            int r6 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r6 <= 0) goto L_0x00e2
            long r6 = r15.writtenBytes()     // Catch:{ AsynchronousCloseException -> 0x0163, Throwable -> 0x015c }
            long r8 = r15.totalBytes()     // Catch:{ AsynchronousCloseException -> 0x0163, Throwable -> 0x015c }
            r3.setProgress(r4, r6, r8)     // Catch:{ AsynchronousCloseException -> 0x0163, Throwable -> 0x015c }
        L_0x00e2:
            r6 = r16
            goto L_0x004a
        L_0x00e6:
            r3 = move-exception
            r4 = r12
            r3 = r11
        L_0x00e9:
            r7 = r6
            r8 = r14
            r6 = r3
            r3 = r10
            goto L_0x00b0
        L_0x00ee:
            r3 = move-exception
            r8 = r3
            r7 = r6
            r6 = r11
            r3 = r4
            r4 = r12
        L_0x00f4:
            if (r15 == 0) goto L_0x00f9
            r15.release()     // Catch:{ all -> 0x0129 }
        L_0x00f9:
            r9 = 0
            r0 = r23
            r0.currentWriteEvent = r9     // Catch:{ all -> 0x0129 }
            r9 = 0
            r0 = r23
            r0.currentWriteBuffer = r9     // Catch:{ all -> 0x0129 }
            if (r3 == 0) goto L_0x0108
            r3.setFailure(r8)     // Catch:{ all -> 0x0129 }
        L_0x0108:
            if (r18 == 0) goto L_0x011b
            if (r10 != 0) goto L_0x0169
            java.util.ArrayList r3 = new java.util.ArrayList     // Catch:{ all -> 0x0129 }
            r9 = 1
            r3.<init>(r9)     // Catch:{ all -> 0x0129 }
        L_0x0112:
            r3.add(r8)     // Catch:{ all -> 0x0129 }
        L_0x0115:
            boolean r8 = r8 instanceof java.io.IOException     // Catch:{ all -> 0x0129 }
            if (r8 == 0) goto L_0x016b
            r8 = 0
            goto L_0x00b0
        L_0x011b:
            r0 = r23
            org.jboss.netty.channel.Channels.fireExceptionCaughtLater(r0, r8)     // Catch:{ all -> 0x0129 }
            r3 = r10
            goto L_0x0115
        L_0x0122:
            if (r11 == 0) goto L_0x0056
            r22.clearOpWrite(r23)     // Catch:{ all -> 0x0129 }
            goto L_0x0056
        L_0x0129:
            r2 = move-exception
            monitor-exit(r21)     // Catch:{ all -> 0x0129 }
            throw r2
        L_0x012c:
            if (r14 != 0) goto L_0x0139
            org.jboss.netty.channel.ChannelFuture r2 = org.jboss.netty.channel.Channels.succeededFuture(r23)
            r0 = r22
            r1 = r23
            r0.close(r1, r2)
        L_0x0139:
            if (r18 == 0) goto L_0x0141
            r0 = r23
            org.jboss.netty.channel.Channels.fireWriteComplete(r0, r12)
        L_0x0140:
            return
        L_0x0141:
            r0 = r23
            org.jboss.netty.channel.Channels.fireWriteCompleteLater(r0, r12)
            goto L_0x0140
        L_0x0147:
            r3 = move-exception
            r8 = r3
            r7 = r6
            r6 = r11
            r3 = r4
            r4 = r12
            goto L_0x00f4
        L_0x014e:
            r5 = move-exception
            r8 = r5
            r15 = r3
            r7 = r6
            r6 = r11
            r3 = r4
            r4 = r12
            goto L_0x00f4
        L_0x0156:
            r4 = move-exception
            r8 = r4
            r7 = r6
            r6 = r11
            r4 = r12
            goto L_0x00f4
        L_0x015c:
            r4 = move-exception
            r8 = r4
            r6 = r11
            r7 = r16
            r4 = r12
            goto L_0x00f4
        L_0x0163:
            r3 = move-exception
            r4 = r12
            r3 = r11
            r6 = r16
            goto L_0x00e9
        L_0x0169:
            r3 = r10
            goto L_0x0112
        L_0x016b:
            r8 = r14
            goto L_0x00b0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.channel.socket.nio.AbstractNioWorker.write0(org.jboss.netty.channel.socket.nio.AbstractNioChannel):void");
    }

    static boolean isIoThread(AbstractNioChannel<?> abstractNioChannel) {
        return Thread.currentThread() == abstractNioChannel.worker.thread;
    }

    /* access modifiers changed from: protected */
    public void setOpWrite(AbstractNioChannel<?> abstractNioChannel) {
        SelectionKey keyFor = abstractNioChannel.channel.keyFor(this.selector);
        if (keyFor != null) {
            if (!keyFor.isValid()) {
                close(keyFor);
                return;
            }
            int rawInterestOps = abstractNioChannel.getRawInterestOps();
            if ((rawInterestOps & 4) == 0) {
                int i = rawInterestOps | 4;
                keyFor.interestOps(i);
                abstractNioChannel.setRawInterestOpsNow(i);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void clearOpWrite(AbstractNioChannel<?> abstractNioChannel) {
        SelectionKey keyFor = abstractNioChannel.channel.keyFor(this.selector);
        if (keyFor != null) {
            if (!keyFor.isValid()) {
                close(keyFor);
                return;
            }
            int rawInterestOps = abstractNioChannel.getRawInterestOps();
            if ((rawInterestOps & 4) != 0) {
                int i = rawInterestOps & -5;
                keyFor.interestOps(i);
                abstractNioChannel.setRawInterestOpsNow(i);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void close(AbstractNioChannel<?> abstractNioChannel, ChannelFuture channelFuture) {
        boolean isConnected = abstractNioChannel.isConnected();
        boolean isBound = abstractNioChannel.isBound();
        boolean isIoThread = isIoThread(abstractNioChannel);
        try {
            abstractNioChannel.channel.close();
            increaseCancelledKeys();
            if (abstractNioChannel.setClosed()) {
                channelFuture.setSuccess();
                if (isConnected) {
                    if (isIoThread) {
                        Channels.fireChannelDisconnected((Channel) abstractNioChannel);
                    } else {
                        Channels.fireChannelDisconnectedLater(abstractNioChannel);
                    }
                }
                if (isBound) {
                    if (isIoThread) {
                        Channels.fireChannelUnbound((Channel) abstractNioChannel);
                    } else {
                        Channels.fireChannelUnboundLater(abstractNioChannel);
                    }
                }
                cleanUpWriteBuffer(abstractNioChannel);
                if (isIoThread) {
                    Channels.fireChannelClosed((Channel) abstractNioChannel);
                } else {
                    Channels.fireChannelClosedLater(abstractNioChannel);
                }
            } else {
                channelFuture.setSuccess();
            }
        } catch (Throwable th) {
            channelFuture.setFailure(th);
            if (isIoThread) {
                Channels.fireExceptionCaught((Channel) abstractNioChannel, th);
            } else {
                Channels.fireExceptionCaughtLater((Channel) abstractNioChannel, th);
            }
        }
    }

    protected static void cleanUpWriteBuffer(AbstractNioChannel<?> abstractNioChannel) {
        Throwable closedChannelException;
        Throwable th = null;
        boolean z = false;
        synchronized (abstractNioChannel.writeLock) {
            MessageEvent messageEvent = abstractNioChannel.currentWriteEvent;
            if (messageEvent != null) {
                if (abstractNioChannel.isOpen()) {
                    th = new NotYetConnectedException();
                } else {
                    th = new ClosedChannelException();
                }
                ChannelFuture future = messageEvent.getFuture();
                if (abstractNioChannel.currentWriteBuffer != null) {
                    abstractNioChannel.currentWriteBuffer.release();
                    abstractNioChannel.currentWriteBuffer = null;
                }
                abstractNioChannel.currentWriteEvent = null;
                future.setFailure(th);
                z = true;
            }
            Queue<MessageEvent> queue = abstractNioChannel.writeBufferQueue;
            while (true) {
                MessageEvent messageEvent2 = (MessageEvent) queue.poll();
                if (messageEvent2 != null) {
                    if (th == null) {
                        if (abstractNioChannel.isOpen()) {
                            closedChannelException = new NotYetConnectedException();
                        } else {
                            closedChannelException = new ClosedChannelException();
                        }
                        th = closedChannelException;
                        z = true;
                    }
                    messageEvent2.getFuture().setFailure(th);
                }
            }
        }
        if (!z) {
            return;
        }
        if (isIoThread(abstractNioChannel)) {
            Channels.fireExceptionCaught((Channel) abstractNioChannel, th);
        } else {
            Channels.fireExceptionCaughtLater((Channel) abstractNioChannel, th);
        }
    }

    /* access modifiers changed from: 0000 */
    public void setInterestOps(final AbstractNioChannel<?> abstractNioChannel, final ChannelFuture channelFuture, final int i) {
        boolean z = true;
        boolean isIoThread = isIoThread(abstractNioChannel);
        if (!isIoThread) {
            abstractNioChannel.getPipeline().execute(new Runnable() {
                public void run() {
                    AbstractNioWorker.this.setInterestOps(abstractNioChannel, channelFuture, i);
                }
            });
            return;
        }
        try {
            Selector selector = this.selector;
            SelectionKey keyFor = abstractNioChannel.channel.keyFor(selector);
            int rawInterestOps = (i & -5) | (abstractNioChannel.getRawInterestOps() & 4);
            if (keyFor == null || selector == null) {
                if (abstractNioChannel.getRawInterestOps() == rawInterestOps) {
                    z = false;
                }
                abstractNioChannel.setRawInterestOpsNow(rawInterestOps);
                channelFuture.setSuccess();
                if (!z) {
                    return;
                }
                if (isIoThread) {
                    Channels.fireChannelInterestChanged((Channel) abstractNioChannel);
                } else {
                    Channels.fireChannelInterestChangedLater(abstractNioChannel);
                }
            } else {
                if (abstractNioChannel.getRawInterestOps() != rawInterestOps) {
                    keyFor.interestOps(rawInterestOps);
                    if (Thread.currentThread() != this.thread && this.wakenUp.compareAndSet(false, true)) {
                        selector.wakeup();
                    }
                    abstractNioChannel.setRawInterestOpsNow(rawInterestOps);
                }
                channelFuture.setSuccess();
            }
        } catch (CancelledKeyException e) {
            ClosedChannelException closedChannelException = new ClosedChannelException();
            channelFuture.setFailure(closedChannelException);
            Channels.fireExceptionCaught((Channel) abstractNioChannel, (Throwable) closedChannelException);
        } catch (Throwable th) {
            channelFuture.setFailure(th);
            Channels.fireExceptionCaught((Channel) abstractNioChannel, th);
        }
    }
}
