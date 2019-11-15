package org.jboss.netty.handler.execution;

public interface ChannelEventRunnableFilter {
    boolean filter(ChannelEventRunnable channelEventRunnable);
}
