package org.jboss.netty.channel.socket.nio;

import java.io.IOException;
import java.net.ConnectException;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.SocketChannel;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.channel.ConnectTimeoutException;
import org.jboss.netty.util.ThreadNameDeterminer;
import org.jboss.netty.util.ThreadRenamingRunnable;
import org.jboss.netty.util.Timeout;
import org.jboss.netty.util.Timer;
import org.jboss.netty.util.TimerTask;

public final class NioClientBoss extends AbstractNioSelector implements Boss {
    /* access modifiers changed from: private */
    public final Timer timer;
    /* access modifiers changed from: private */
    public final TimerTask wakeupTask = new TimerTask() {
        public void run(Timeout timeout) throws Exception {
            Selector selector = NioClientBoss.this.selector;
            if (selector != null && NioClientBoss.this.wakenUp.compareAndSet(false, true)) {
                selector.wakeup();
            }
        }
    };

    private final class RegisterTask implements Runnable {
        private final NioClientBoss boss;
        private final NioClientSocketChannel channel;

        RegisterTask(NioClientBoss nioClientBoss, NioClientSocketChannel nioClientSocketChannel) {
            this.boss = nioClientBoss;
            this.channel = nioClientSocketChannel;
        }

        public void run() {
            int connectTimeoutMillis = this.channel.getConfig().getConnectTimeoutMillis();
            if (connectTimeoutMillis > 0 && !this.channel.isConnected()) {
                this.channel.timoutTimer = NioClientBoss.this.timer.newTimeout(NioClientBoss.this.wakeupTask, (long) connectTimeoutMillis, TimeUnit.MILLISECONDS);
            }
            try {
                ((SocketChannel) this.channel.channel).register(this.boss.selector, 8, this.channel);
            } catch (ClosedChannelException e) {
                this.channel.worker.close(this.channel, Channels.succeededFuture(this.channel));
            }
            int connectTimeoutMillis2 = this.channel.getConfig().getConnectTimeoutMillis();
            if (connectTimeoutMillis2 > 0) {
                this.channel.connectDeadlineNanos = System.nanoTime() + (((long) connectTimeoutMillis2) * 1000000);
            }
        }
    }

    public /* bridge */ /* synthetic */ void rebuildSelector() {
        super.rebuildSelector();
    }

    public /* bridge */ /* synthetic */ void register(Channel channel, ChannelFuture channelFuture) {
        super.register(channel, channelFuture);
    }

    public /* bridge */ /* synthetic */ void run() {
        super.run();
    }

    public /* bridge */ /* synthetic */ void shutdown() {
        super.shutdown();
    }

    NioClientBoss(Executor executor, Timer timer2, ThreadNameDeterminer threadNameDeterminer) {
        super(executor, threadNameDeterminer);
        this.timer = timer2;
    }

    /* access modifiers changed from: protected */
    public ThreadRenamingRunnable newThreadRenamingRunnable(int i, ThreadNameDeterminer threadNameDeterminer) {
        return new ThreadRenamingRunnable(this, "New I/O boss #" + i, threadNameDeterminer);
    }

    /* access modifiers changed from: protected */
    public Runnable createRegisterTask(Channel channel, ChannelFuture channelFuture) {
        return new RegisterTask(this, (NioClientSocketChannel) channel);
    }

    /* access modifiers changed from: protected */
    public void process(Selector selector) {
        processSelectedKeys(selector.selectedKeys());
        processConnectTimeout(selector.keys(), System.nanoTime());
    }

    private void processSelectedKeys(Set<SelectionKey> set) {
        if (!set.isEmpty()) {
            Iterator it = set.iterator();
            while (it.hasNext()) {
                SelectionKey selectionKey = (SelectionKey) it.next();
                it.remove();
                if (!selectionKey.isValid()) {
                    close(selectionKey);
                } else {
                    try {
                        if (selectionKey.isConnectable()) {
                            connect(selectionKey);
                        }
                    } catch (Throwable th) {
                        Throwable th2 = th;
                        NioClientSocketChannel nioClientSocketChannel = (NioClientSocketChannel) selectionKey.attachment();
                        nioClientSocketChannel.connectFuture.setFailure(th2);
                        Channels.fireExceptionCaught((Channel) nioClientSocketChannel, th2);
                        selectionKey.cancel();
                        nioClientSocketChannel.worker.close(nioClientSocketChannel, Channels.succeededFuture(nioClientSocketChannel));
                    }
                }
            }
        }
    }

    private static void processConnectTimeout(Set<SelectionKey> set, long j) {
        ConnectTimeoutException connectTimeoutException = null;
        for (SelectionKey selectionKey : set) {
            if (selectionKey.isValid()) {
                NioClientSocketChannel nioClientSocketChannel = (NioClientSocketChannel) selectionKey.attachment();
                if (nioClientSocketChannel.connectDeadlineNanos > 0 && j >= nioClientSocketChannel.connectDeadlineNanos) {
                    if (connectTimeoutException == null) {
                        connectTimeoutException = new ConnectTimeoutException("connection timed out: " + nioClientSocketChannel.requestedRemoteAddress);
                    }
                    nioClientSocketChannel.connectFuture.setFailure(connectTimeoutException);
                    Channels.fireExceptionCaught((Channel) nioClientSocketChannel, (Throwable) connectTimeoutException);
                    nioClientSocketChannel.worker.close(nioClientSocketChannel, Channels.succeededFuture(nioClientSocketChannel));
                }
            }
        }
    }

    private static void connect(SelectionKey selectionKey) throws IOException {
        NioClientSocketChannel nioClientSocketChannel = (NioClientSocketChannel) selectionKey.attachment();
        try {
            if (((SocketChannel) nioClientSocketChannel.channel).finishConnect()) {
                selectionKey.cancel();
                if (nioClientSocketChannel.timoutTimer != null) {
                    nioClientSocketChannel.timoutTimer.cancel();
                }
                nioClientSocketChannel.worker.register(nioClientSocketChannel, nioClientSocketChannel.connectFuture);
            }
        } catch (ConnectException e) {
            ConnectException connectException = new ConnectException(e.getMessage() + ": " + nioClientSocketChannel.requestedRemoteAddress);
            connectException.setStackTrace(e.getStackTrace());
            throw connectException;
        }
    }

    /* access modifiers changed from: protected */
    public void close(SelectionKey selectionKey) {
        NioClientSocketChannel nioClientSocketChannel = (NioClientSocketChannel) selectionKey.attachment();
        nioClientSocketChannel.worker.close(nioClientSocketChannel, Channels.succeededFuture(nioClientSocketChannel));
    }
}
