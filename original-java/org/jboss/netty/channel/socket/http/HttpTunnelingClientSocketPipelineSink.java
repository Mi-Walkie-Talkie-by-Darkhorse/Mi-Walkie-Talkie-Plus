package org.jboss.netty.channel.socket.http;

import java.net.SocketAddress;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.channel.AbstractChannelSink;
import org.jboss.netty.channel.ChannelEvent;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.channel.ChannelState;
import org.jboss.netty.channel.ChannelStateEvent;
import org.jboss.netty.channel.MessageEvent;

final class HttpTunnelingClientSocketPipelineSink extends AbstractChannelSink {
    HttpTunnelingClientSocketPipelineSink() {
    }

    public void eventSunk(ChannelPipeline channelPipeline, ChannelEvent channelEvent) throws Exception {
        HttpTunnelingClientSocketChannel httpTunnelingClientSocketChannel = (HttpTunnelingClientSocketChannel) channelEvent.getChannel();
        ChannelFuture future = channelEvent.getFuture();
        if (channelEvent instanceof ChannelStateEvent) {
            ChannelStateEvent channelStateEvent = (ChannelStateEvent) channelEvent;
            ChannelState state = channelStateEvent.getState();
            Object value = channelStateEvent.getValue();
            switch (state) {
                case OPEN:
                    if (Boolean.FALSE.equals(value)) {
                        httpTunnelingClientSocketChannel.closeReal(future);
                        return;
                    }
                    return;
                case BOUND:
                    if (value != null) {
                        httpTunnelingClientSocketChannel.bindReal((SocketAddress) value, future);
                        return;
                    } else {
                        httpTunnelingClientSocketChannel.unbindReal(future);
                        return;
                    }
                case CONNECTED:
                    if (value != null) {
                        httpTunnelingClientSocketChannel.connectReal((SocketAddress) value, future);
                        return;
                    } else {
                        httpTunnelingClientSocketChannel.closeReal(future);
                        return;
                    }
                case INTEREST_OPS:
                    httpTunnelingClientSocketChannel.setInterestOpsReal(((Integer) value).intValue(), future);
                    return;
                default:
                    return;
            }
        } else if (channelEvent instanceof MessageEvent) {
            httpTunnelingClientSocketChannel.writeReal((ChannelBuffer) ((MessageEvent) channelEvent).getMessage(), future);
        }
    }
}
