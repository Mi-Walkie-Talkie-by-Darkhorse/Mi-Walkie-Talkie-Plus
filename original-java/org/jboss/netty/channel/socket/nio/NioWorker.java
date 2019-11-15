package org.jboss.netty.channel.socket.nio;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.SocketAddress;
import java.nio.ByteBuffer;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.SelectionKey;
import java.nio.channels.SocketChannel;
import java.util.concurrent.Executor;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.ChannelBufferFactory;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelException;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.channel.ReceiveBufferSizePredictor;
import org.jboss.netty.util.ThreadNameDeterminer;

public class NioWorker extends AbstractNioWorker {
    private final SocketReceiveBufferAllocator recvBufferPool = new SocketReceiveBufferAllocator();

    private final class RegisterTask implements Runnable {
        private final NioSocketChannel channel;
        private final ChannelFuture future;
        private final boolean server;

        RegisterTask(NioSocketChannel nioSocketChannel, ChannelFuture channelFuture, boolean z) {
            this.channel = nioSocketChannel;
            this.future = channelFuture;
            this.server = z;
        }

        public void run() {
            InetSocketAddress localAddress = this.channel.getLocalAddress();
            InetSocketAddress remoteAddress = this.channel.getRemoteAddress();
            if (localAddress == null || remoteAddress == null) {
                if (this.future != null) {
                    this.future.setFailure(new ClosedChannelException());
                }
                NioWorker.this.close(this.channel, Channels.succeededFuture(this.channel));
                return;
            }
            try {
                if (this.server) {
                    ((SocketChannel) this.channel.channel).configureBlocking(false);
                }
                ((SocketChannel) this.channel.channel).register(NioWorker.this.selector, this.channel.getRawInterestOps(), this.channel);
                if (this.future != null) {
                    this.channel.setConnected();
                    this.future.setSuccess();
                }
                if (this.server || !((NioClientSocketChannel) this.channel).boundManually) {
                    Channels.fireChannelBound((Channel) this.channel, (SocketAddress) localAddress);
                }
                Channels.fireChannelConnected((Channel) this.channel, (SocketAddress) remoteAddress);
            } catch (IOException e) {
                if (this.future != null) {
                    this.future.setFailure(e);
                }
                NioWorker.this.close(this.channel, Channels.succeededFuture(this.channel));
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

    public NioWorker(Executor executor) {
        super(executor);
    }

    public NioWorker(Executor executor, ThreadNameDeterminer threadNameDeterminer) {
        super(executor, threadNameDeterminer);
    }

    /* access modifiers changed from: protected */
    public boolean read(SelectionKey selectionKey) {
        boolean z;
        int i;
        SocketChannel socketChannel = (SocketChannel) selectionKey.channel();
        NioSocketChannel nioSocketChannel = (NioSocketChannel) selectionKey.attachment();
        ReceiveBufferSizePredictor receiveBufferSizePredictor = nioSocketChannel.getConfig().getReceiveBufferSizePredictor();
        int nextReceiveBufferSize = receiveBufferSizePredictor.nextReceiveBufferSize();
        ChannelBufferFactory bufferFactory = nioSocketChannel.getConfig().getBufferFactory();
        ByteBuffer order = this.recvBufferPool.get(nextReceiveBufferSize).order(bufferFactory.getDefaultOrder());
        int i2 = 0;
        int i3 = 0;
        while (true) {
            try {
                i3 = socketChannel.read(order);
                if (i3 <= 0) {
                    i = i2;
                    break;
                }
                i2 += i3;
                if (!order.hasRemaining()) {
                    i = i2;
                    break;
                }
            } catch (ClosedChannelException e) {
                i3 = i3;
                z = true;
            } catch (Throwable th) {
                Channels.fireExceptionCaught((Channel) nioSocketChannel, th);
                z = true;
            }
        }
        i2 = i;
        z = false;
        if (i2 > 0) {
            order.flip();
            ChannelBuffer buffer = bufferFactory.getBuffer(i2);
            buffer.setBytes(0, order);
            buffer.writerIndex(i2);
            receiveBufferSizePredictor.previousReceiveBufferSize(i2);
            Channels.fireMessageReceived((Channel) nioSocketChannel, (Object) buffer);
        }
        if (i3 >= 0 && !z) {
            return true;
        }
        selectionKey.cancel();
        close(nioSocketChannel, Channels.succeededFuture(nioSocketChannel));
        return false;
    }

    /* access modifiers changed from: protected */
    public boolean scheduleWriteIfNecessary(AbstractNioChannel<?> abstractNioChannel) {
        if (Thread.currentThread() == this.thread) {
            return false;
        }
        if (!abstractNioChannel.writeTaskInTaskQueue.compareAndSet(false, true)) {
            return true;
        }
        registerTask(abstractNioChannel.writeTask);
        return true;
    }

    /* access modifiers changed from: protected */
    public Runnable createRegisterTask(Channel channel, ChannelFuture channelFuture) {
        return new RegisterTask((NioSocketChannel) channel, channelFuture, !(channel instanceof NioClientSocketChannel));
    }

    public void run() {
        super.run();
        this.recvBufferPool.releaseExternalResources();
    }
}
