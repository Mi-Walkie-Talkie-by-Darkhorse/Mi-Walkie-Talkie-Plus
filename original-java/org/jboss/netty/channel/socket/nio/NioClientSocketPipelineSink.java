package org.jboss.netty.channel.socket.nio;

import java.net.ConnectException;
import java.net.SocketAddress;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.SocketChannel;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelEvent;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.ChannelFutureListener;
import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.channel.ChannelState;
import org.jboss.netty.channel.ChannelStateEvent;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.channel.MessageEvent;
import org.jboss.netty.logging.InternalLogger;
import org.jboss.netty.logging.InternalLoggerFactory;

class NioClientSocketPipelineSink extends AbstractNioChannelSink {
    static final /* synthetic */ boolean $assertionsDisabled = (!NioClientSocketPipelineSink.class.desiredAssertionStatus());
    static final InternalLogger logger = InternalLoggerFactory.getInstance(NioClientSocketPipelineSink.class);
    private final BossPool<NioClientBoss> bossPool;

    NioClientSocketPipelineSink(BossPool<NioClientBoss> bossPool2) {
        this.bossPool = bossPool2;
    }

    public void eventSunk(ChannelPipeline channelPipeline, ChannelEvent channelEvent) throws Exception {
        if (channelEvent instanceof ChannelStateEvent) {
            ChannelStateEvent channelStateEvent = (ChannelStateEvent) channelEvent;
            NioClientSocketChannel nioClientSocketChannel = (NioClientSocketChannel) channelStateEvent.getChannel();
            ChannelFuture future = channelStateEvent.getFuture();
            ChannelState state = channelStateEvent.getState();
            Object value = channelStateEvent.getValue();
            switch (state) {
                case OPEN:
                    if (Boolean.FALSE.equals(value)) {
                        nioClientSocketChannel.worker.close(nioClientSocketChannel, future);
                        return;
                    }
                    return;
                case BOUND:
                    if (value != null) {
                        bind(nioClientSocketChannel, future, (SocketAddress) value);
                        return;
                    } else {
                        nioClientSocketChannel.worker.close(nioClientSocketChannel, future);
                        return;
                    }
                case CONNECTED:
                    if (value != null) {
                        connect(nioClientSocketChannel, future, (SocketAddress) value);
                        return;
                    } else {
                        nioClientSocketChannel.worker.close(nioClientSocketChannel, future);
                        return;
                    }
                case INTEREST_OPS:
                    nioClientSocketChannel.worker.setInterestOps(nioClientSocketChannel, future, ((Integer) value).intValue());
                    return;
                default:
                    return;
            }
        } else if (channelEvent instanceof MessageEvent) {
            MessageEvent messageEvent = (MessageEvent) channelEvent;
            NioSocketChannel nioSocketChannel = (NioSocketChannel) messageEvent.getChannel();
            boolean offer = nioSocketChannel.writeBufferQueue.offer(messageEvent);
            if ($assertionsDisabled || offer) {
                nioSocketChannel.worker.writeFromUserCode(nioSocketChannel);
                return;
            }
            throw new AssertionError();
        }
    }

    private static void bind(NioClientSocketChannel nioClientSocketChannel, ChannelFuture channelFuture, SocketAddress socketAddress) {
        try {
            ((SocketChannel) nioClientSocketChannel.channel).socket().bind(socketAddress);
            nioClientSocketChannel.boundManually = true;
            nioClientSocketChannel.setBound();
            channelFuture.setSuccess();
            Channels.fireChannelBound((Channel) nioClientSocketChannel, (SocketAddress) nioClientSocketChannel.getLocalAddress());
        } catch (Throwable th) {
            channelFuture.setFailure(th);
            Channels.fireExceptionCaught((Channel) nioClientSocketChannel, th);
        }
    }

    private void connect(NioClientSocketChannel nioClientSocketChannel, final ChannelFuture channelFuture, SocketAddress socketAddress) {
        Throwable th;
        nioClientSocketChannel.requestedRemoteAddress = socketAddress;
        try {
            if (((SocketChannel) nioClientSocketChannel.channel).connect(socketAddress)) {
                nioClientSocketChannel.worker.register(nioClientSocketChannel, channelFuture);
                return;
            }
            nioClientSocketChannel.getCloseFuture().addListener(new ChannelFutureListener() {
                public void operationComplete(ChannelFuture channelFuture) throws Exception {
                    if (!channelFuture.isDone()) {
                        channelFuture.setFailure(new ClosedChannelException());
                    }
                }
            });
            channelFuture.addListener(ChannelFutureListener.CLOSE_ON_FAILURE);
            nioClientSocketChannel.connectFuture = channelFuture;
            nextBoss().register(nioClientSocketChannel, channelFuture);
        } catch (Throwable th2) {
            if (th2 instanceof ConnectException) {
                th = new ConnectException(th2.getMessage() + ": " + socketAddress);
                th.setStackTrace(th2.getStackTrace());
            } else {
                th = th2;
            }
            channelFuture.setFailure(th);
            Channels.fireExceptionCaught((Channel) nioClientSocketChannel, th);
            nioClientSocketChannel.worker.close(nioClientSocketChannel, Channels.succeededFuture(nioClientSocketChannel));
        }
    }

    private NioClientBoss nextBoss() {
        return (NioClientBoss) this.bossPool.nextBoss();
    }
}
