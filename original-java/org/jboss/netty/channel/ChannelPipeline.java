package org.jboss.netty.channel;

import java.util.List;
import java.util.Map;

public interface ChannelPipeline {
    void addAfter(String str, String str2, ChannelHandler channelHandler);

    void addBefore(String str, String str2, ChannelHandler channelHandler);

    void addFirst(String str, ChannelHandler channelHandler);

    void addLast(String str, ChannelHandler channelHandler);

    void attach(Channel channel, ChannelSink channelSink);

    ChannelFuture execute(Runnable runnable);

    <T extends ChannelHandler> T get(Class<T> cls);

    ChannelHandler get(String str);

    Channel getChannel();

    ChannelHandlerContext getContext(Class<? extends ChannelHandler> cls);

    ChannelHandlerContext getContext(String str);

    ChannelHandlerContext getContext(ChannelHandler channelHandler);

    ChannelHandler getFirst();

    ChannelHandler getLast();

    List<String> getNames();

    ChannelSink getSink();

    boolean isAttached();

    <T extends ChannelHandler> T remove(Class<T> cls);

    ChannelHandler remove(String str);

    void remove(ChannelHandler channelHandler);

    ChannelHandler removeFirst();

    ChannelHandler removeLast();

    <T extends ChannelHandler> T replace(Class<T> cls, String str, ChannelHandler channelHandler);

    ChannelHandler replace(String str, String str2, ChannelHandler channelHandler);

    void replace(ChannelHandler channelHandler, String str, ChannelHandler channelHandler2);

    void sendDownstream(ChannelEvent channelEvent);

    void sendUpstream(ChannelEvent channelEvent);

    Map<String, ChannelHandler> toMap();
}
