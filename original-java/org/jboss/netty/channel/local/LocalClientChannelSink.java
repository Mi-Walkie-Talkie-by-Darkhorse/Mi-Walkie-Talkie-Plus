package org.jboss.netty.channel.local;

import java.io.IOException;
import java.net.ConnectException;
import java.net.SocketAddress;
import org.jboss.netty.channel.AbstractChannelSink;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelEvent;
import org.jboss.netty.channel.ChannelException;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.channel.ChannelState;
import org.jboss.netty.channel.ChannelStateEvent;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.channel.MessageEvent;
import org.jboss.netty.logging.InternalLogger;
import org.jboss.netty.logging.InternalLoggerFactory;

final class LocalClientChannelSink extends AbstractChannelSink {
    static final /* synthetic */ boolean $assertionsDisabled = (!LocalClientChannelSink.class.desiredAssertionStatus());
    private static final InternalLogger logger = InternalLoggerFactory.getInstance(LocalClientChannelSink.class);

    LocalClientChannelSink() {
    }

    public void eventSunk(ChannelPipeline channelPipeline, ChannelEvent channelEvent) throws Exception {
        if (channelEvent instanceof ChannelStateEvent) {
            ChannelStateEvent channelStateEvent = (ChannelStateEvent) channelEvent;
            DefaultLocalChannel defaultLocalChannel = (DefaultLocalChannel) channelStateEvent.getChannel();
            ChannelFuture future = channelStateEvent.getFuture();
            ChannelState state = channelStateEvent.getState();
            Object value = channelStateEvent.getValue();
            switch (state) {
                case OPEN:
                    if (Boolean.FALSE.equals(value)) {
                        defaultLocalChannel.closeNow(future);
                        return;
                    }
                    return;
                case BOUND:
                    if (value != null) {
                        bind(defaultLocalChannel, future, (LocalAddress) value);
                        return;
                    } else {
                        defaultLocalChannel.closeNow(future);
                        return;
                    }
                case CONNECTED:
                    if (value != null) {
                        connect(defaultLocalChannel, future, (LocalAddress) value);
                        return;
                    } else {
                        defaultLocalChannel.closeNow(future);
                        return;
                    }
                case INTEREST_OPS:
                    future.setSuccess();
                    return;
                default:
                    return;
            }
        } else if (channelEvent instanceof MessageEvent) {
            MessageEvent messageEvent = (MessageEvent) channelEvent;
            DefaultLocalChannel defaultLocalChannel2 = (DefaultLocalChannel) messageEvent.getChannel();
            boolean offer = defaultLocalChannel2.writeBuffer.offer(messageEvent);
            if ($assertionsDisabled || offer) {
                defaultLocalChannel2.flushWriteBuffer();
                return;
            }
            throw new AssertionError();
        }
    }

    private static void bind(DefaultLocalChannel defaultLocalChannel, ChannelFuture channelFuture, LocalAddress localAddress) {
        try {
            if (!LocalChannelRegistry.register(localAddress, defaultLocalChannel)) {
                throw new ChannelException("address already in use: " + localAddress);
            }
            defaultLocalChannel.setBound();
            defaultLocalChannel.localAddress = localAddress;
            channelFuture.setSuccess();
            Channels.fireChannelBound((Channel) defaultLocalChannel, (SocketAddress) localAddress);
        } catch (Throwable th) {
            LocalChannelRegistry.unregister(localAddress);
            channelFuture.setFailure(th);
            Channels.fireExceptionCaught((Channel) defaultLocalChannel, th);
        }
    }

    private void connect(DefaultLocalChannel defaultLocalChannel, ChannelFuture channelFuture, LocalAddress localAddress) {
        Channel channel = LocalChannelRegistry.getChannel(localAddress);
        if (!(channel instanceof DefaultLocalServerChannel)) {
            channelFuture.setFailure(new ConnectException("connection refused: " + localAddress));
            return;
        }
        DefaultLocalServerChannel defaultLocalServerChannel = (DefaultLocalServerChannel) channel;
        try {
            ChannelPipeline pipeline = defaultLocalServerChannel.getConfig().getPipelineFactory().getPipeline();
            channelFuture.setSuccess();
            DefaultLocalChannel defaultLocalChannel2 = new DefaultLocalChannel(defaultLocalServerChannel, defaultLocalServerChannel.getFactory(), pipeline, this, defaultLocalChannel);
            defaultLocalChannel.pairedChannel = defaultLocalChannel2;
            if (!defaultLocalChannel.isBound()) {
                bind(defaultLocalChannel, Channels.succeededFuture(defaultLocalChannel), new LocalAddress(LocalAddress.EPHEMERAL));
            }
            defaultLocalChannel.remoteAddress = defaultLocalServerChannel.getLocalAddress();
            defaultLocalChannel.setConnected();
            Channels.fireChannelConnected((Channel) defaultLocalChannel, (SocketAddress) defaultLocalServerChannel.getLocalAddress());
            defaultLocalChannel2.localAddress = defaultLocalServerChannel.getLocalAddress();
            try {
                defaultLocalChannel2.setBound();
                Channels.fireChannelBound((Channel) defaultLocalChannel2, (SocketAddress) defaultLocalChannel.getRemoteAddress());
                defaultLocalChannel2.remoteAddress = defaultLocalChannel.getLocalAddress();
                defaultLocalChannel2.setConnected();
                Channels.fireChannelConnected((Channel) defaultLocalChannel2, (SocketAddress) defaultLocalChannel.getLocalAddress());
                defaultLocalChannel.flushWriteBuffer();
                defaultLocalChannel2.flushWriteBuffer();
            } catch (IOException e) {
                throw new Error(e);
            }
        } catch (Exception e2) {
            channelFuture.setFailure(e2);
            Channels.fireExceptionCaught((Channel) defaultLocalChannel, (Throwable) e2);
            if (logger.isWarnEnabled()) {
                logger.warn("Failed to initialize an accepted socket.", e2);
            }
        }
    }
}
