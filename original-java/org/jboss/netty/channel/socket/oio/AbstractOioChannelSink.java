package org.jboss.netty.channel.socket.oio;

import org.jboss.netty.channel.AbstractChannelSink;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelEvent;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.channel.socket.ChannelRunnableWrapper;

public abstract class AbstractOioChannelSink extends AbstractChannelSink {
    public ChannelFuture execute(ChannelPipeline channelPipeline, Runnable runnable) {
        Channel channel = channelPipeline.getChannel();
        if (channel instanceof AbstractOioChannel) {
            AbstractOioChannel abstractOioChannel = (AbstractOioChannel) channel;
            if (abstractOioChannel.worker != null) {
                ChannelRunnableWrapper channelRunnableWrapper = new ChannelRunnableWrapper(channelPipeline.getChannel(), runnable);
                abstractOioChannel.worker.executeInIoThread(channelRunnableWrapper);
                return channelRunnableWrapper;
            }
        }
        return super.execute(channelPipeline, runnable);
    }

    /* access modifiers changed from: protected */
    public boolean isFireExceptionCaughtLater(ChannelEvent channelEvent, Throwable th) {
        Channel channel = channelEvent.getChannel();
        if (!(channel instanceof AbstractOioChannel)) {
            return false;
        }
        if (!AbstractOioWorker.isIoThread((AbstractOioChannel) channel)) {
            return true;
        }
        return false;
    }
}
