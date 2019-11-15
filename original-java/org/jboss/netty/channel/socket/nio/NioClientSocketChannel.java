package org.jboss.netty.channel.socket.nio;

import java.io.IOException;
import java.net.SocketAddress;
import java.nio.channels.SocketChannel;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelException;
import org.jboss.netty.channel.ChannelFactory;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.channel.ChannelSink;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.logging.InternalLogger;
import org.jboss.netty.logging.InternalLoggerFactory;
import org.jboss.netty.util.Timeout;

final class NioClientSocketChannel extends NioSocketChannel {
    private static final InternalLogger logger = InternalLoggerFactory.getInstance(NioClientSocketChannel.class);
    volatile boolean boundManually;
    long connectDeadlineNanos;
    volatile ChannelFuture connectFuture;
    volatile SocketAddress requestedRemoteAddress;
    volatile Timeout timoutTimer;

    private static SocketChannel newSocket() {
        try {
            SocketChannel open = SocketChannel.open();
            try {
                open.configureBlocking(false);
                return open;
            } catch (IOException e) {
                throw new ChannelException("Failed to enter non-blocking mode.", e);
            } catch (Throwable th) {
                try {
                    open.close();
                } catch (IOException e2) {
                    if (logger.isWarnEnabled()) {
                        logger.warn("Failed to close a partially initialized socket.", e2);
                    }
                }
                throw th;
            }
        } catch (IOException e3) {
            throw new ChannelException("Failed to open a socket.", e3);
        }
    }

    NioClientSocketChannel(ChannelFactory channelFactory, ChannelPipeline channelPipeline, ChannelSink channelSink, NioWorker nioWorker) {
        super(null, channelFactory, channelPipeline, channelSink, newSocket(), nioWorker);
        Channels.fireChannelOpen((Channel) this);
    }
}
