package org.jboss.netty.channel.socket.nio;

import org.jboss.netty.channel.AbstractChannelSink;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelEvent;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.channel.socket.ChannelRunnableWrapper;

public abstract class AbstractNioChannelSink extends AbstractChannelSink {
    public ChannelFuture execute(ChannelPipeline channelPipeline, Runnable runnable) {
        Channel channel = channelPipeline.getChannel();
        if (!(channel instanceof AbstractNioChannel)) {
            return super.execute(channelPipeline, runnable);
        }
        AbstractNioChannel abstractNioChannel = (AbstractNioChannel) channel;
        ChannelRunnableWrapper channelRunnableWrapper = new ChannelRunnableWrapper(channelPipeline.getChannel(), runnable);
        abstractNioChannel.worker.executeInIoThread(channelRunnableWrapper);
        return channelRunnableWrapper;
    }

    /* access modifiers changed from: protected */
    public boolean isFireExceptionCaughtLater(ChannelEvent channelEvent, Throwable th) {
        Channel channel = channelEvent.getChannel();
        if (!(channel instanceof AbstractNioChannel)) {
            return false;
        }
        if (!AbstractNioWorker.isIoThread((AbstractNioChannel) channel)) {
            return true;
        }
        return false;
    }
}
