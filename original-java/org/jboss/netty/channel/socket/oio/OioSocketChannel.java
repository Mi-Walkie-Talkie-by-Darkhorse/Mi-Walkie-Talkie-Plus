package org.jboss.netty.channel.socket.oio;

import java.io.IOException;
import java.io.OutputStream;
import java.io.PushbackInputStream;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketException;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelException;
import org.jboss.netty.channel.ChannelFactory;
import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.channel.ChannelSink;
import org.jboss.netty.channel.socket.DefaultSocketChannelConfig;
import org.jboss.netty.channel.socket.SocketChannel;
import org.jboss.netty.channel.socket.SocketChannelConfig;

abstract class OioSocketChannel extends AbstractOioChannel implements SocketChannel {
    private final SocketChannelConfig config;
    final Socket socket;

    /* access modifiers changed from: 0000 */
    public abstract PushbackInputStream getInputStream();

    /* access modifiers changed from: 0000 */
    public abstract OutputStream getOutputStream();

    OioSocketChannel(Channel channel, ChannelFactory channelFactory, ChannelPipeline channelPipeline, ChannelSink channelSink, Socket socket2) {
        super(channel, channelFactory, channelPipeline, channelSink);
        this.socket = socket2;
        try {
            socket2.setSoTimeout(1000);
            this.config = new DefaultSocketChannelConfig(socket2);
        } catch (SocketException e) {
            throw new ChannelException("Failed to configure the OioSocketChannel socket timeout.", e);
        }
    }

    public SocketChannelConfig getConfig() {
        return this.config;
    }

    /* access modifiers changed from: 0000 */
    public boolean isSocketBound() {
        return this.socket.isBound();
    }

    /* access modifiers changed from: 0000 */
    public boolean isSocketConnected() {
        return this.socket.isConnected();
    }

    /* access modifiers changed from: 0000 */
    public InetSocketAddress getLocalSocketAddress() throws Exception {
        return (InetSocketAddress) this.socket.getLocalSocketAddress();
    }

    /* access modifiers changed from: 0000 */
    public InetSocketAddress getRemoteSocketAddress() throws Exception {
        return (InetSocketAddress) this.socket.getRemoteSocketAddress();
    }

    /* access modifiers changed from: 0000 */
    public void closeSocket() throws IOException {
        this.socket.close();
    }

    /* access modifiers changed from: 0000 */
    public boolean isSocketClosed() {
        return this.socket.isClosed();
    }
}
