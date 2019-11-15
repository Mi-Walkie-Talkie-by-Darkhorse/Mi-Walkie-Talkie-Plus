package org.jboss.netty.handler.codec.embedder;

import org.jboss.netty.channel.ChannelPipeline;

public interface CodecEmbedder<E> {
    boolean finish();

    ChannelPipeline getPipeline();

    boolean offer(Object obj);

    E peek();

    E poll();

    Object[] pollAll();

    <T> T[] pollAll(T[] tArr);

    int size();
}
