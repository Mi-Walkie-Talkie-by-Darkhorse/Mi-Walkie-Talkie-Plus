package org.jboss.netty.channel.local;

import java.util.concurrent.atomic.AtomicBoolean;
import org.jboss.netty.channel.AbstractServerChannel;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelConfig;
import org.jboss.netty.channel.ChannelFactory;
import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.channel.ChannelSink;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.channel.DefaultServerChannelConfig;

final class DefaultLocalServerChannel extends AbstractServerChannel implements LocalServerChannel {
    final AtomicBoolean bound = new AtomicBoolean();
    final ChannelConfig channelConfig = new DefaultServerChannelConfig();
    volatile LocalAddress localAddress;

    DefaultLocalServerChannel(ChannelFactory channelFactory, ChannelPipeline channelPipeline, ChannelSink channelSink) {
        super(channelFactory, channelPipeline, channelSink);
        Channels.fireChannelOpen((Channel) this);
    }

    public ChannelConfig getConfig() {
        return this.channelConfig;
    }

    public boolean isBound() {
        return isOpen() && this.bound.get();
    }

    public LocalAddress getLocalAddress() {
        if (isBound()) {
            return this.localAddress;
        }
        return null;
    }

    public LocalAddress getRemoteAddress() {
        return null;
    }

    /* access modifiers changed from: protected */
    public boolean setClosed() {
        return super.setClosed();
    }
}
