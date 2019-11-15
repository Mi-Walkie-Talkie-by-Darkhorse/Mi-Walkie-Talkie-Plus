package org.jboss.netty.handler.codec.embedder;

import java.net.SocketAddress;
import org.jboss.netty.channel.AbstractChannel;
import org.jboss.netty.channel.ChannelConfig;
import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.channel.ChannelSink;
import org.jboss.netty.channel.DefaultChannelConfig;

class EmbeddedChannel extends AbstractChannel {
    private static final Integer DUMMY_ID = Integer.valueOf(0);
    private final ChannelConfig config = new DefaultChannelConfig();
    private final SocketAddress localAddress = new EmbeddedSocketAddress();
    private final SocketAddress remoteAddress = new EmbeddedSocketAddress();

    EmbeddedChannel(ChannelPipeline channelPipeline, ChannelSink channelSink) {
        super(DUMMY_ID, null, EmbeddedChannelFactory.INSTANCE, channelPipeline, channelSink);
    }

    public ChannelConfig getConfig() {
        return this.config;
    }

    public SocketAddress getLocalAddress() {
        return this.localAddress;
    }

    public SocketAddress getRemoteAddress() {
        return this.remoteAddress;
    }

    public boolean isBound() {
        return true;
    }

    public boolean isConnected() {
        return true;
    }
}
