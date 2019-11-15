package org.jboss.netty.channel;

public interface ChannelStateEvent extends ChannelEvent {
    ChannelState getState();

    Object getValue();
}
