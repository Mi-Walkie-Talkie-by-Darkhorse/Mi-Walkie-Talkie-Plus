package org.jboss.netty.channel.socket.nio;

import java.io.IOException;
import java.net.SocketAddress;
import java.net.SocketTimeoutException;
import java.nio.channels.CancelledKeyException;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.SocketChannel;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.Executor;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.ChannelSink;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.util.ThreadNameDeterminer;
import org.jboss.netty.util.ThreadRenamingRunnable;

public final class NioServerBoss extends AbstractNioSelector implements Boss {

    private final class RegisterTask implements Runnable {
        private final NioServerSocketChannel channel;
        private final ChannelFuture future;
        private final SocketAddress localAddress;

        public RegisterTask(NioServerSocketChannel nioServerSocketChannel, ChannelFuture channelFuture, SocketAddress socketAddress) {
            this.channel = nioServerSocketChannel;
            this.future = channelFuture;
            this.localAddress = socketAddress;
        }

        public void run() {
            boolean z = false;
            try {
                this.channel.socket.socket().bind(this.localAddress, this.channel.getConfig().getBacklog());
                z = true;
                this.future.setSuccess();
                Channels.fireChannelBound((Channel) this.channel, (SocketAddress) this.channel.getLocalAddress());
                this.channel.socket.register(NioServerBoss.this.selector, 16, this.channel);
            } catch (Throwable th) {
                if (z) {
                    NioServerBoss.this.close(this.channel, this.future);
                }
                throw th;
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

    NioServerBoss(Executor executor) {
        super(executor);
    }

    NioServerBoss(Executor executor, ThreadNameDeterminer threadNameDeterminer) {
        super(executor, threadNameDeterminer);
    }

    /* access modifiers changed from: 0000 */
    public void bind(NioServerSocketChannel nioServerSocketChannel, ChannelFuture channelFuture, SocketAddress socketAddress) {
        registerTask(new RegisterTask(nioServerSocketChannel, channelFuture, socketAddress));
    }

    /* access modifiers changed from: protected */
    public void close(SelectionKey selectionKey) {
        NioServerSocketChannel nioServerSocketChannel = (NioServerSocketChannel) selectionKey.attachment();
        close(nioServerSocketChannel, Channels.succeededFuture(nioServerSocketChannel));
    }

    /* access modifiers changed from: 0000 */
    public void close(NioServerSocketChannel nioServerSocketChannel, ChannelFuture channelFuture) {
        boolean isBound = nioServerSocketChannel.isBound();
        try {
            nioServerSocketChannel.socket.close();
            increaseCancelledKeys();
            if (nioServerSocketChannel.setClosed()) {
                channelFuture.setSuccess();
                if (isBound) {
                    Channels.fireChannelUnbound((Channel) nioServerSocketChannel);
                }
                Channels.fireChannelClosed((Channel) nioServerSocketChannel);
                return;
            }
            channelFuture.setSuccess();
        } catch (Throwable th) {
            channelFuture.setFailure(th);
            Channels.fireExceptionCaught((Channel) nioServerSocketChannel, th);
        }
    }

    /* access modifiers changed from: protected */
    public void process(Selector selector) {
        Set selectedKeys = selector.selectedKeys();
        if (!selectedKeys.isEmpty()) {
            Iterator it = selectedKeys.iterator();
            while (it.hasNext()) {
                SelectionKey selectionKey = (SelectionKey) it.next();
                it.remove();
                NioServerSocketChannel nioServerSocketChannel = (NioServerSocketChannel) selectionKey.attachment();
                while (true) {
                    try {
                        SocketChannel accept = nioServerSocketChannel.socket.accept();
                        if (accept == null) {
                            break;
                        }
                        registerAcceptedChannel(nioServerSocketChannel, accept, this.thread);
                    } catch (CancelledKeyException e) {
                        selectionKey.cancel();
                        nioServerSocketChannel.close();
                    } catch (SocketTimeoutException | ClosedChannelException e2) {
                    } catch (Throwable th) {
                        if (logger.isWarnEnabled()) {
                            logger.warn("Failed to accept a connection.", th);
                        }
                        try {
                            Thread.sleep(1000);
                        } catch (InterruptedException e3) {
                        }
                    }
                }
            }
        }
    }

    private static void registerAcceptedChannel(NioServerSocketChannel nioServerSocketChannel, SocketChannel socketChannel, Thread thread) {
        try {
            ChannelSink sink = nioServerSocketChannel.getPipeline().getSink();
            NioWorker nioWorker = (NioWorker) nioServerSocketChannel.workerPool.nextWorker();
            nioWorker.register(new NioAcceptedSocketChannel(nioServerSocketChannel.getFactory(), nioServerSocketChannel.getConfig().getPipelineFactory().getPipeline(), nioServerSocketChannel, sink, socketChannel, nioWorker, thread), null);
        } catch (Exception e) {
            if (logger.isWarnEnabled()) {
                logger.warn("Failed to initialize an accepted socket.", e);
            }
            try {
                socketChannel.close();
            } catch (IOException e2) {
                if (logger.isWarnEnabled()) {
                    logger.warn("Failed to close a partially accepted socket.", e2);
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public int select(Selector selector) throws IOException {
        return selector.select();
    }

    /* access modifiers changed from: protected */
    public ThreadRenamingRunnable newThreadRenamingRunnable(int i, ThreadNameDeterminer threadNameDeterminer) {
        return new ThreadRenamingRunnable(this, "New I/O server boss #" + i, threadNameDeterminer);
    }

    /* access modifiers changed from: protected */
    public Runnable createRegisterTask(Channel channel, ChannelFuture channelFuture) {
        return new RegisterTask((NioServerSocketChannel) channel, channelFuture, null);
    }
}
