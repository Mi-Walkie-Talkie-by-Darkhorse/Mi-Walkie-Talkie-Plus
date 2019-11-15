package org.jboss.netty.channel.socket.nio;

import java.nio.channels.SocketChannel;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelFactory;
import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.channel.ChannelSink;
import org.jboss.netty.channel.Channels;

final class NioAcceptedSocketChannel extends NioSocketChannel {
    final Thread bossThread;

    NioAcceptedSocketChannel(ChannelFactory channelFactory, ChannelPipeline channelPipeline, Channel channel, ChannelSink channelSink, SocketChannel socketChannel, NioWorker nioWorker, Thread thread) {
        super(channel, channelFactory, channelPipeline, channelSink, socketChannel, nioWorker);
        this.bossThread = thread;
        setConnected();
        Channels.fireChannelOpen((Channel) this);
    }
}
