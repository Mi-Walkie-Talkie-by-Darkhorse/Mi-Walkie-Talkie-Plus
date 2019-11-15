package org.jboss.netty.channel.socket.nio;

import java.net.InetSocketAddress;
import java.net.SocketAddress;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelEvent;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.ChannelFutureListener;
import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.channel.ChannelState;
import org.jboss.netty.channel.ChannelStateEvent;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.channel.MessageEvent;

class NioDatagramPipelineSink extends AbstractNioChannelSink {
    static final /* synthetic */ boolean $assertionsDisabled = (!NioDatagramPipelineSink.class.desiredAssertionStatus());
    private final WorkerPool<NioDatagramWorker> workerPool;

    NioDatagramPipelineSink(WorkerPool<NioDatagramWorker> workerPool2) {
        this.workerPool = workerPool2;
    }

    public void eventSunk(ChannelPipeline channelPipeline, ChannelEvent channelEvent) throws Exception {
        NioDatagramChannel nioDatagramChannel = (NioDatagramChannel) channelEvent.getChannel();
        ChannelFuture future = channelEvent.getFuture();
        if (channelEvent instanceof ChannelStateEvent) {
            ChannelStateEvent channelStateEvent = (ChannelStateEvent) channelEvent;
            ChannelState state = channelStateEvent.getState();
            Object value = channelStateEvent.getValue();
            switch (state) {
                case OPEN:
                    if (Boolean.FALSE.equals(value)) {
                        nioDatagramChannel.worker.close(nioDatagramChannel, future);
                        return;
                    }
                    return;
                case BOUND:
                    if (value != null) {
                        bind(nioDatagramChannel, future, (InetSocketAddress) value);
                        return;
                    } else {
                        nioDatagramChannel.worker.close(nioDatagramChannel, future);
                        return;
                    }
                case CONNECTED:
                    if (value != null) {
                        connect(nioDatagramChannel, future, (InetSocketAddress) value);
                        return;
                    } else {
                        NioDatagramWorker.disconnect(nioDatagramChannel, future);
                        return;
                    }
                case INTEREST_OPS:
                    nioDatagramChannel.worker.setInterestOps(nioDatagramChannel, future, ((Integer) value).intValue());
                    return;
                default:
                    return;
            }
        } else if (channelEvent instanceof MessageEvent) {
            boolean offer = nioDatagramChannel.writeBufferQueue.offer((MessageEvent) channelEvent);
            if ($assertionsDisabled || offer) {
                nioDatagramChannel.worker.writeFromUserCode(nioDatagramChannel);
                return;
            }
            throw new AssertionError();
        }
    }

    private static void close(NioDatagramChannel nioDatagramChannel, ChannelFuture channelFuture) {
        try {
            nioDatagramChannel.getDatagramChannel().socket().close();
            if (nioDatagramChannel.setClosed()) {
                channelFuture.setSuccess();
                if (nioDatagramChannel.isBound()) {
                    Channels.fireChannelUnbound((Channel) nioDatagramChannel);
                }
                Channels.fireChannelClosed((Channel) nioDatagramChannel);
                return;
            }
            channelFuture.setSuccess();
        } catch (Throwable th) {
            channelFuture.setFailure(th);
            Channels.fireExceptionCaught((Channel) nioDatagramChannel, th);
        }
    }

    private static void bind(NioDatagramChannel nioDatagramChannel, ChannelFuture channelFuture, InetSocketAddress inetSocketAddress) {
        boolean z = false;
        try {
            nioDatagramChannel.getDatagramChannel().socket().bind(inetSocketAddress);
            z = true;
            channelFuture.setSuccess();
            Channels.fireChannelBound((Channel) nioDatagramChannel, (SocketAddress) inetSocketAddress);
            nioDatagramChannel.worker.register(nioDatagramChannel, null);
        } catch (Throwable th) {
            if (z) {
                close(nioDatagramChannel, channelFuture);
            }
            throw th;
        }
    }

    private static void connect(NioDatagramChannel nioDatagramChannel, ChannelFuture channelFuture, InetSocketAddress inetSocketAddress) {
        boolean isBound = nioDatagramChannel.isBound();
        channelFuture.addListener(ChannelFutureListener.CLOSE_ON_FAILURE);
        nioDatagramChannel.remoteAddress = null;
        try {
            nioDatagramChannel.getDatagramChannel().connect(inetSocketAddress);
            channelFuture.setSuccess();
            if (!isBound) {
                Channels.fireChannelBound((Channel) nioDatagramChannel, (SocketAddress) nioDatagramChannel.getLocalAddress());
            }
            Channels.fireChannelConnected((Channel) nioDatagramChannel, (SocketAddress) nioDatagramChannel.getRemoteAddress());
            if (!isBound) {
                nioDatagramChannel.worker.register(nioDatagramChannel, channelFuture);
            }
        } catch (Throwable th) {
            if (0 != 0) {
                nioDatagramChannel.worker.close(nioDatagramChannel, channelFuture);
            }
            throw th;
        }
    }

    /* access modifiers changed from: 0000 */
    public NioDatagramWorker nextWorker() {
        return (NioDatagramWorker) this.workerPool.nextWorker();
    }
}
