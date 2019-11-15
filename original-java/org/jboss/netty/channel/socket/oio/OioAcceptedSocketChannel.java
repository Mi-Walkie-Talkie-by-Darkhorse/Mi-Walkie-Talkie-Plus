package org.jboss.netty.channel.socket.oio;

import java.io.IOException;
import java.io.OutputStream;
import java.io.PushbackInputStream;
import java.net.Socket;
import java.net.SocketAddress;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelException;
import org.jboss.netty.channel.ChannelFactory;
import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.channel.ChannelSink;
import org.jboss.netty.channel.Channels;

class OioAcceptedSocketChannel extends OioSocketChannel {
    private final PushbackInputStream in;
    private final OutputStream out;

    OioAcceptedSocketChannel(Channel channel, ChannelFactory channelFactory, ChannelPipeline channelPipeline, ChannelSink channelSink, Socket socket) {
        super(channel, channelFactory, channelPipeline, channelSink, socket);
        try {
            this.in = new PushbackInputStream(socket.getInputStream(), 1);
            try {
                this.out = socket.getOutputStream();
                Channels.fireChannelOpen((Channel) this);
                Channels.fireChannelBound((Channel) this, (SocketAddress) getLocalAddress());
            } catch (IOException e) {
                throw new ChannelException("Failed to obtain an OutputStream.", e);
            }
        } catch (IOException e2) {
            throw new ChannelException("Failed to obtain an InputStream.", e2);
        }
    }

    /* access modifiers changed from: 0000 */
    public PushbackInputStream getInputStream() {
        return this.in;
    }

    /* access modifiers changed from: 0000 */
    public OutputStream getOutputStream() {
        return this.out;
    }
}
