package org.jboss.netty.channel.local;

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

final class LocalServerChannelSink extends AbstractChannelSink {
    static final /* synthetic */ boolean $assertionsDisabled = (!LocalServerChannelSink.class.desiredAssertionStatus());

    LocalServerChannelSink() {
    }

    public void eventSunk(ChannelPipeline channelPipeline, ChannelEvent channelEvent) throws Exception {
        Channel channel = channelEvent.getChannel();
        if (channel instanceof DefaultLocalServerChannel) {
            handleServerChannel(channelEvent);
        } else if (channel instanceof DefaultLocalChannel) {
            handleAcceptedChannel(channelEvent);
        }
    }

    private static void handleServerChannel(ChannelEvent channelEvent) {
        if (channelEvent instanceof ChannelStateEvent) {
            ChannelStateEvent channelStateEvent = (ChannelStateEvent) channelEvent;
            DefaultLocalServerChannel defaultLocalServerChannel = (DefaultLocalServerChannel) channelStateEvent.getChannel();
            ChannelFuture future = channelStateEvent.getFuture();
            ChannelState state = channelStateEvent.getState();
            Object value = channelStateEvent.getValue();
            switch (state) {
                case OPEN:
                    if (Boolean.FALSE.equals(value)) {
                        close(defaultLocalServerChannel, future);
                        return;
                    }
                    return;
                case BOUND:
                    if (value != null) {
                        bind(defaultLocalServerChannel, future, (LocalAddress) value);
                        return;
                    } else {
                        close(defaultLocalServerChannel, future);
                        return;
                    }
                default:
                    return;
            }
        }
    }

    private static void handleAcceptedChannel(ChannelEvent channelEvent) {
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
                case CONNECTED:
                    if (value == null) {
                        defaultLocalChannel.closeNow(future);
                        return;
                    }
                    return;
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

    private static void bind(DefaultLocalServerChannel defaultLocalServerChannel, ChannelFuture channelFuture, LocalAddress localAddress) {
        try {
            if (!LocalChannelRegistry.register(localAddress, defaultLocalServerChannel)) {
                throw new ChannelException("address already in use: " + localAddress);
            } else if (!defaultLocalServerChannel.bound.compareAndSet(false, true)) {
                throw new ChannelException("already bound");
            } else {
                defaultLocalServerChannel.localAddress = localAddress;
                channelFuture.setSuccess();
                Channels.fireChannelBound((Channel) defaultLocalServerChannel, (SocketAddress) localAddress);
            }
        } catch (Throwable th) {
            LocalChannelRegistry.unregister(localAddress);
            channelFuture.setFailure(th);
            Channels.fireExceptionCaught((Channel) defaultLocalServerChannel, th);
        }
    }

    private static void close(DefaultLocalServerChannel defaultLocalServerChannel, ChannelFuture channelFuture) {
        try {
            if (defaultLocalServerChannel.setClosed()) {
                channelFuture.setSuccess();
                LocalAddress localAddress = defaultLocalServerChannel.localAddress;
                if (defaultLocalServerChannel.bound.compareAndSet(true, false)) {
                    defaultLocalServerChannel.localAddress = null;
                    LocalChannelRegistry.unregister(localAddress);
                    Channels.fireChannelUnbound((Channel) defaultLocalServerChannel);
                }
                Channels.fireChannelClosed((Channel) defaultLocalServerChannel);
                return;
            }
            channelFuture.setSuccess();
        } catch (Throwable th) {
            channelFuture.setFailure(th);
            Channels.fireExceptionCaught((Channel) defaultLocalServerChannel, th);
        }
    }
}
