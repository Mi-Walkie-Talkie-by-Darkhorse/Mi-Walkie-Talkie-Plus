package org.jboss.netty.channel.socket.oio;

import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MulticastSocket;
import java.net.NetworkInterface;
import java.net.SocketException;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelException;
import org.jboss.netty.channel.ChannelFactory;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.channel.ChannelSink;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.channel.socket.DatagramChannel;
import org.jboss.netty.channel.socket.DatagramChannelConfig;
import org.jboss.netty.channel.socket.DefaultDatagramChannelConfig;

final class OioDatagramChannel extends AbstractOioChannel implements DatagramChannel {
    private final DatagramChannelConfig config;
    final MulticastSocket socket;

    OioDatagramChannel(ChannelFactory channelFactory, ChannelPipeline channelPipeline, ChannelSink channelSink) {
        super(null, channelFactory, channelPipeline, channelSink);
        try {
            this.socket = new MulticastSocket(null);
            try {
                this.socket.setSoTimeout(10);
                this.socket.setBroadcast(false);
                this.config = new DefaultDatagramChannelConfig(this.socket);
                Channels.fireChannelOpen((Channel) this);
            } catch (SocketException e) {
                throw new ChannelException("Failed to configure the datagram socket timeout.", e);
            }
        } catch (IOException e2) {
            throw new ChannelException("Failed to open a datagram socket.", e2);
        }
    }

    public DatagramChannelConfig getConfig() {
        return this.config;
    }

    public ChannelFuture joinGroup(InetAddress inetAddress) {
        ensureBound();
        try {
            this.socket.joinGroup(inetAddress);
            return Channels.succeededFuture(this);
        } catch (IOException e) {
            return Channels.failedFuture(this, e);
        }
    }

    public ChannelFuture joinGroup(InetSocketAddress inetSocketAddress, NetworkInterface networkInterface) {
        ensureBound();
        try {
            this.socket.joinGroup(inetSocketAddress, networkInterface);
            return Channels.succeededFuture(this);
        } catch (IOException e) {
            return Channels.failedFuture(this, e);
        }
    }

    private void ensureBound() {
        if (!isBound()) {
            throw new IllegalStateException(DatagramChannel.class.getName() + " must be bound to join a group.");
        }
    }

    public ChannelFuture leaveGroup(InetAddress inetAddress) {
        try {
            this.socket.leaveGroup(inetAddress);
            return Channels.succeededFuture(this);
        } catch (IOException e) {
            return Channels.failedFuture(this, e);
        }
    }

    public ChannelFuture leaveGroup(InetSocketAddress inetSocketAddress, NetworkInterface networkInterface) {
        try {
            this.socket.leaveGroup(inetSocketAddress, networkInterface);
            return Channels.succeededFuture(this);
        } catch (IOException e) {
            return Channels.failedFuture(this, e);
        }
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
    public void closeSocket() {
        this.socket.close();
    }

    /* access modifiers changed from: 0000 */
    public boolean isSocketClosed() {
        return this.socket.isClosed();
    }
}
