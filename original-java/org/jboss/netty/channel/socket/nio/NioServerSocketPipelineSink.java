package org.jboss.netty.channel.socket.nio;

import java.net.SocketAddress;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelEvent;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.channel.ChannelState;
import org.jboss.netty.channel.ChannelStateEvent;
import org.jboss.netty.channel.MessageEvent;

class NioServerSocketPipelineSink extends AbstractNioChannelSink {
    static final /* synthetic */ boolean $assertionsDisabled = (!NioServerSocketPipelineSink.class.desiredAssertionStatus());

    NioServerSocketPipelineSink() {
    }

    public void eventSunk(ChannelPipeline channelPipeline, ChannelEvent channelEvent) throws Exception {
        Channel channel = channelEvent.getChannel();
        if (channel instanceof NioServerSocketChannel) {
            handleServerSocket(channelEvent);
        } else if (channel instanceof NioSocketChannel) {
            handleAcceptedSocket(channelEvent);
        }
    }

    private static void handleServerSocket(ChannelEvent channelEvent) {
        if (channelEvent instanceof ChannelStateEvent) {
            ChannelStateEvent channelStateEvent = (ChannelStateEvent) channelEvent;
            NioServerSocketChannel nioServerSocketChannel = (NioServerSocketChannel) channelStateEvent.getChannel();
            ChannelFuture future = channelStateEvent.getFuture();
            ChannelState state = channelStateEvent.getState();
            Object value = channelStateEvent.getValue();
            switch (state) {
                case OPEN:
                    if (Boolean.FALSE.equals(value)) {
                        ((NioServerBoss) nioServerSocketChannel.boss).close(nioServerSocketChannel, future);
                        return;
                    }
                    return;
                case BOUND:
                    if (value != null) {
                        ((NioServerBoss) nioServerSocketChannel.boss).bind(nioServerSocketChannel, future, (SocketAddress) value);
                        return;
                    } else {
                        ((NioServerBoss) nioServerSocketChannel.boss).close(nioServerSocketChannel, future);
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
            NioSocketChannel nioSocketChannel = (NioSocketChannel) channelStateEvent.getChannel();
            ChannelFuture future = channelStateEvent.getFuture();
            ChannelState state = channelStateEvent.getState();
            Object value = channelStateEvent.getValue();
            switch (state) {
                case OPEN:
                    if (Boolean.FALSE.equals(value)) {
                        nioSocketChannel.worker.close(nioSocketChannel, future);
                        return;
                    }
                    return;
                case BOUND:
                case CONNECTED:
                    if (value == null) {
                        nioSocketChannel.worker.close(nioSocketChannel, future);
                        return;
                    }
                    return;
                case INTEREST_OPS:
                    nioSocketChannel.worker.setInterestOps(nioSocketChannel, future, ((Integer) value).intValue());
                    return;
                default:
                    return;
            }
        } else if (channelEvent instanceof MessageEvent) {
            MessageEvent messageEvent = (MessageEvent) channelEvent;
            NioSocketChannel nioSocketChannel2 = (NioSocketChannel) messageEvent.getChannel();
            boolean offer = nioSocketChannel2.writeBufferQueue.offer(messageEvent);
            if ($assertionsDisabled || offer) {
                nioSocketChannel2.worker.writeFromUserCode(nioSocketChannel2);
                return;
            }
            throw new AssertionError();
        }
    }
}
