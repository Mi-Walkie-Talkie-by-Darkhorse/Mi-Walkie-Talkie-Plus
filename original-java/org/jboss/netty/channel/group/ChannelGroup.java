package org.jboss.netty.channel.group;

import java.net.SocketAddress;
import java.util.Set;
import org.jboss.netty.channel.Channel;

public interface ChannelGroup extends Comparable<ChannelGroup>, Set<Channel> {
    ChannelGroupFuture close();

    ChannelGroupFuture disconnect();

    Channel find(Integer num);

    String getName();

    ChannelGroupFuture setInterestOps(int i);

    ChannelGroupFuture setReadable(boolean z);

    ChannelGroupFuture unbind();

    ChannelGroupFuture write(Object obj);

    ChannelGroupFuture write(Object obj, SocketAddress socketAddress);
}
