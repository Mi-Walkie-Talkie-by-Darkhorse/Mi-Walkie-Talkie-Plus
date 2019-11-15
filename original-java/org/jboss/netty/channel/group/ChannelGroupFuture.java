package org.jboss.netty.channel.group;

import java.util.Iterator;
import java.util.concurrent.TimeUnit;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelFuture;

public interface ChannelGroupFuture extends Iterable<ChannelFuture> {
    void addListener(ChannelGroupFutureListener channelGroupFutureListener);

    ChannelGroupFuture await() throws InterruptedException;

    boolean await(long j) throws InterruptedException;

    boolean await(long j, TimeUnit timeUnit) throws InterruptedException;

    ChannelGroupFuture awaitUninterruptibly();

    boolean awaitUninterruptibly(long j);

    boolean awaitUninterruptibly(long j, TimeUnit timeUnit);

    ChannelFuture find(Integer num);

    ChannelFuture find(Channel channel);

    ChannelGroup getGroup();

    boolean isCompleteFailure();

    boolean isCompleteSuccess();

    boolean isDone();

    boolean isPartialFailure();

    boolean isPartialSuccess();

    Iterator<ChannelFuture> iterator();

    void removeListener(ChannelGroupFutureListener channelGroupFutureListener);
}
