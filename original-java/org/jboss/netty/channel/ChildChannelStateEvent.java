package org.jboss.netty.channel;

public interface ChildChannelStateEvent extends ChannelEvent {
    Channel getChannel();

    Channel getChildChannel();
}
