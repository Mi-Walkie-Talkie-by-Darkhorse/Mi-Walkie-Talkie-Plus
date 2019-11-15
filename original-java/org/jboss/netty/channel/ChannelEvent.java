package org.jboss.netty.channel;

public interface ChannelEvent {
    Channel getChannel();

    ChannelFuture getFuture();
}
