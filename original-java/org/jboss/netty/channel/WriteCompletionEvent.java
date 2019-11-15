package org.jboss.netty.channel;

public interface WriteCompletionEvent extends ChannelEvent {
    long getWrittenAmount();
}
