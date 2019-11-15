package org.jboss.netty.channel.socket.oio;

import java.io.IOException;
import java.net.Socket;
import java.net.SocketAddress;
import java.net.SocketTimeoutException;
import java.util.concurrent.Executor;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelEvent;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.channel.ChannelState;
import org.jboss.netty.channel.ChannelStateEvent;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.channel.MessageEvent;
import org.jboss.netty.logging.InternalLogger;
import org.jboss.netty.logging.InternalLoggerFactory;
import org.jboss.netty.util.ThreadNameDeterminer;
import org.jboss.netty.util.ThreadRenamingRunnable;
import org.jboss.netty.util.internal.DeadLockProofWorker;

class OioServerSocketPipelineSink extends AbstractOioChannelSink {
    static final InternalLogger logger = InternalLoggerFactory.getInstance(OioServerSocketPipelineSink.class);
    /* access modifiers changed from: private */
    public final ThreadNameDeterminer determiner;
    final Executor workerExecutor;

    private final class Boss implements Runnable {
        private final OioServerSocketChannel channel;

        Boss(OioServerSocketChannel oioServerSocketChannel) {
            this.channel = oioServerSocketChannel;
        }

        public void run() {
            this.channel.shutdownLock.lock();
            while (this.channel.isBound()) {
                try {
                    Socket accept = this.channel.socket.accept();
                    try {
                        DeadLockProofWorker.start(OioServerSocketPipelineSink.this.workerExecutor, new ThreadRenamingRunnable(new OioWorker(new OioAcceptedSocketChannel(this.channel, this.channel.getFactory(), this.channel.getConfig().getPipelineFactory().getPipeline(), OioServerSocketPipelineSink.this, accept)), "Old I/O server worker (parentId: " + this.channel.getId() + ", " + this.channel + ')', OioServerSocketPipelineSink.this.determiner));
                    } catch (Exception e) {
                        if (OioServerSocketPipelineSink.logger.isWarnEnabled()) {
                            OioServerSocketPipelineSink.logger.warn("Failed to initialize an accepted socket.", e);
                        }
                        try {
                            accept.close();
                        } catch (IOException e2) {
                            if (OioServerSocketPipelineSink.logger.isWarnEnabled()) {
                                OioServerSocketPipelineSink.logger.warn("Failed to close a partially accepted socket.", e2);
                            }
                        }
                    }
                } catch (SocketTimeoutException e3) {
                } catch (Throwable th) {
                    this.channel.shutdownLock.unlock();
                    throw th;
                }
            }
            this.channel.shutdownLock.unlock();
        }
    }

    OioServerSocketPipelineSink(Executor executor, ThreadNameDeterminer threadNameDeterminer) {
        this.workerExecutor = executor;
        this.determiner = threadNameDeterminer;
    }

    public void eventSunk(ChannelPipeline channelPipeline, ChannelEvent channelEvent) throws Exception {
        Channel channel = channelEvent.getChannel();
        if (channel instanceof OioServerSocketChannel) {
            handleServerSocket(channelEvent);
        } else if (channel instanceof OioAcceptedSocketChannel) {
            handleAcceptedSocket(channelEvent);
        }
    }

    private void handleServerSocket(ChannelEvent channelEvent) {
        if (channelEvent instanceof ChannelStateEvent) {
            ChannelStateEvent channelStateEvent = (ChannelStateEvent) channelEvent;
            OioServerSocketChannel oioServerSocketChannel = (OioServerSocketChannel) channelStateEvent.getChannel();
            ChannelFuture future = channelStateEvent.getFuture();
            ChannelState state = channelStateEvent.getState();
            Object value = channelStateEvent.getValue();
            switch (state) {
                case OPEN:
                    if (Boolean.FALSE.equals(value)) {
                        close(oioServerSocketChannel, future);
                        return;
                    }
                    return;
                case BOUND:
                    if (value != null) {
                        bind(oioServerSocketChannel, future, (SocketAddress) value);
                        return;
                    } else {
                        close(oioServerSocketChannel, future);
                        return;
                    }
                default:
                    return;
            }
        }
    }

    private static void handleAcceptedSocket(ChannelEvent channelEvent) {
        if (channelEvent instanceof ChannelStateEvent) {
            ChannelStateEvent channelStateEvent = (ChannelStateEvent) channelEvent;
            OioAcceptedSocketChannel oioAcceptedSocketChannel = (OioAcceptedSocketChannel) channelStateEvent.getChannel();
            ChannelFuture future = channelStateEvent.getFuture();
            ChannelState state = channelStateEvent.getState();
            Object value = channelStateEvent.getValue();
            switch (state) {
                case OPEN:
                    if (Boolean.FALSE.equals(value)) {
                        AbstractOioWorker.close(oioAcceptedSocketChannel, future);
                        return;
                    }
                    return;
                case BOUND:
                case CONNECTED:
                    if (value == null) {
                        AbstractOioWorker.close(oioAcceptedSocketChannel, future);
                        return;
                    }
                    return;
                case INTEREST_OPS:
                    AbstractOioWorker.setInterestOps(oioAcceptedSocketChannel, future, ((Integer) value).intValue());
                    return;
                default:
                    return;
            }
        } else if (channelEvent instanceof MessageEvent) {
            MessageEvent messageEvent = (MessageEvent) channelEvent;
            OioWorker.write((OioSocketChannel) messageEvent.getChannel(), messageEvent.getFuture(), messageEvent.getMessage());
        }
    }

    private void bind(OioServerSocketChannel oioServerSocketChannel, ChannelFuture channelFuture, SocketAddress socketAddress) {
        boolean z = false;
        try {
            oioServerSocketChannel.socket.bind(socketAddress, oioServerSocketChannel.getConfig().getBacklog());
            z = true;
            channelFuture.setSuccess();
            Channels.fireChannelBound((Channel) oioServerSocketChannel, (SocketAddress) oioServerSocketChannel.getLocalAddress());
            DeadLockProofWorker.start(((OioServerSocketChannelFactory) oioServerSocketChannel.getFactory()).bossExecutor, new ThreadRenamingRunnable(new Boss(oioServerSocketChannel), "Old I/O server boss (" + oioServerSocketChannel + ')', this.determiner));
        } catch (Throwable th) {
            if (z) {
                close(oioServerSocketChannel, channelFuture);
            }
            throw th;
        }
    }

    private static void close(OioServerSocketChannel oioServerSocketChannel, ChannelFuture channelFuture) {
        boolean isBound = oioServerSocketChannel.isBound();
        try {
            oioServerSocketChannel.socket.close();
            oioServerSocketChannel.shutdownLock.lock();
            if (oioServerSocketChannel.setClosed()) {
                channelFuture.setSuccess();
                if (isBound) {
                    Channels.fireChannelUnbound((Channel) oioServerSocketChannel);
                }
                Channels.fireChannelClosed((Channel) oioServerSocketChannel);
            } else {
                channelFuture.setSuccess();
            }
            oioServerSocketChannel.shutdownLock.unlock();
        } catch (Throwable th) {
            channelFuture.setFailure(th);
            Channels.fireExceptionCaught((Channel) oioServerSocketChannel, th);
        }
    }
}
