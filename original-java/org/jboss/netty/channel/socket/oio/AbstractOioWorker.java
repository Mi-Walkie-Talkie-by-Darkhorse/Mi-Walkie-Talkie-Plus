package org.jboss.netty.channel.socket.oio;

import java.io.IOException;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.channel.socket.Worker;
import org.jboss.netty.channel.socket.oio.AbstractOioChannel;

abstract class AbstractOioWorker<C extends AbstractOioChannel> implements Worker {
    protected final C channel;
    private volatile boolean done;
    private final Queue<Runnable> eventQueue = new ConcurrentLinkedQueue();
    protected volatile Thread thread;

    /* access modifiers changed from: 0000 */
    public abstract boolean process() throws IOException;

    protected AbstractOioWorker(C c) {
        this.channel = c;
        c.worker = this;
    }

    public void run() {
        C c = this.channel;
        Thread currentThread = Thread.currentThread();
        c.workerThread = currentThread;
        this.thread = currentThread;
        while (this.channel.isOpen()) {
            synchronized (this.channel.interestOpsLock) {
                while (!this.channel.isReadable()) {
                    try {
                        this.channel.interestOpsLock.wait();
                    } catch (InterruptedException e) {
                        if (!this.channel.isOpen()) {
                            break;
                        }
                    }
                }
            }
            boolean z = false;
            try {
                z = process();
            } catch (Throwable th) {
                processEventQueue();
                throw th;
            }
            processEventQueue();
            if (!z) {
                break;
            }
        }
        this.channel.workerThread = null;
        close(this.channel, Channels.succeededFuture(this.channel), true);
        this.done = true;
        processEventQueue();
    }

    static boolean isIoThread(AbstractOioChannel abstractOioChannel) {
        return Thread.currentThread() == abstractOioChannel.workerThread;
    }

    public void executeInIoThread(Runnable runnable) {
        if (Thread.currentThread() == this.thread || this.done) {
            runnable.run();
        } else {
            if (this.eventQueue.offer(runnable)) {
            }
        }
    }

    private void processEventQueue() {
        while (true) {
            Runnable runnable = (Runnable) this.eventQueue.poll();
            if (runnable != null) {
                runnable.run();
            } else {
                return;
            }
        }
    }

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static void setInterestOps(org.jboss.netty.channel.socket.oio.AbstractOioChannel r5, org.jboss.netty.channel.ChannelFuture r6, int r7) {
        /*
            r0 = 1
            r1 = 0
            boolean r2 = isIoThread(r5)
            r3 = r7 & -5
            int r4 = r5.getInterestOps()
            r4 = r4 & 4
            r3 = r3 | r4
            int r4 = r5.getInterestOps()     // Catch:{ Throwable -> 0x0041 }
            if (r4 == r3) goto L_0x0056
            r1 = r3 & 1
            if (r1 == 0) goto L_0x003c
            r1 = 1
            r5.setInterestOpsNow(r1)     // Catch:{ Throwable -> 0x0041 }
        L_0x001d:
            r6.setSuccess()     // Catch:{ Throwable -> 0x0041 }
            if (r0 == 0) goto L_0x003b
            java.lang.Object r1 = r5.interestOpsLock     // Catch:{ Throwable -> 0x0041 }
            monitor-enter(r1)     // Catch:{ Throwable -> 0x0041 }
            r5.setInterestOpsNow(r3)     // Catch:{ all -> 0x004b }
            java.lang.Thread r0 = java.lang.Thread.currentThread()     // Catch:{ all -> 0x004b }
            java.lang.Thread r3 = r5.workerThread     // Catch:{ all -> 0x004b }
            if (r3 == 0) goto L_0x0035
            if (r0 == r3) goto L_0x0035
            r3.interrupt()     // Catch:{ all -> 0x004b }
        L_0x0035:
            monitor-exit(r1)     // Catch:{ all -> 0x004b }
            if (r2 == 0) goto L_0x004e
            org.jboss.netty.channel.Channels.fireChannelInterestChanged(r5)     // Catch:{ Throwable -> 0x0041 }
        L_0x003b:
            return
        L_0x003c:
            r1 = 0
            r5.setInterestOpsNow(r1)     // Catch:{ Throwable -> 0x0041 }
            goto L_0x001d
        L_0x0041:
            r0 = move-exception
            r6.setFailure(r0)
            if (r2 == 0) goto L_0x0052
            org.jboss.netty.channel.Channels.fireExceptionCaught(r5, r0)
            goto L_0x003b
        L_0x004b:
            r0 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x004b }
            throw r0     // Catch:{ Throwable -> 0x0041 }
        L_0x004e:
            org.jboss.netty.channel.Channels.fireChannelInterestChangedLater(r5)     // Catch:{ Throwable -> 0x0041 }
            goto L_0x003b
        L_0x0052:
            org.jboss.netty.channel.Channels.fireExceptionCaughtLater(r5, r0)
            goto L_0x003b
        L_0x0056:
            r0 = r1
            goto L_0x001d
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.channel.socket.oio.AbstractOioWorker.setInterestOps(org.jboss.netty.channel.socket.oio.AbstractOioChannel, org.jboss.netty.channel.ChannelFuture, int):void");
    }

    static void close(AbstractOioChannel abstractOioChannel, ChannelFuture channelFuture) {
        close(abstractOioChannel, channelFuture, isIoThread(abstractOioChannel));
    }

    private static void close(AbstractOioChannel abstractOioChannel, ChannelFuture channelFuture, boolean z) {
        boolean isConnected = abstractOioChannel.isConnected();
        boolean isBound = abstractOioChannel.isBound();
        try {
            abstractOioChannel.closeSocket();
            if (abstractOioChannel.setClosed()) {
                channelFuture.setSuccess();
                if (isConnected) {
                    Thread currentThread = Thread.currentThread();
                    Thread thread2 = abstractOioChannel.workerThread;
                    if (!(thread2 == null || currentThread == thread2)) {
                        thread2.interrupt();
                    }
                    if (z) {
                        Channels.fireChannelDisconnected((Channel) abstractOioChannel);
                    } else {
                        Channels.fireChannelDisconnectedLater(abstractOioChannel);
                    }
                }
                if (isBound) {
                    if (z) {
                        Channels.fireChannelUnbound((Channel) abstractOioChannel);
                    } else {
                        Channels.fireChannelUnboundLater(abstractOioChannel);
                    }
                }
                if (z) {
                    Channels.fireChannelClosed((Channel) abstractOioChannel);
                } else {
                    Channels.fireChannelClosedLater(abstractOioChannel);
                }
            } else {
                channelFuture.setSuccess();
            }
        } catch (Throwable th) {
            channelFuture.setFailure(th);
            if (z) {
                Channels.fireExceptionCaught((Channel) abstractOioChannel, th);
            } else {
                Channels.fireExceptionCaughtLater((Channel) abstractOioChannel, th);
            }
        }
    }
}
