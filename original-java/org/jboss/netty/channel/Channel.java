package org.jboss.netty.channel;

import java.net.SocketAddress;

public interface Channel extends Comparable<Channel> {
    public static final int OP_NONE = 0;
    public static final int OP_READ = 1;
    public static final int OP_READ_WRITE = 5;
    public static final int OP_WRITE = 4;

    ChannelFuture bind(SocketAddress socketAddress);

    ChannelFuture close();

    ChannelFuture connect(SocketAddress socketAddress);

    ChannelFuture disconnect();

    Object getAttachment();

    ChannelFuture getCloseFuture();

    ChannelConfig getConfig();

    ChannelFactory getFactory();

    Integer getId();

    int getInterestOps();

    SocketAddress getLocalAddress();

    Channel getParent();

    ChannelPipeline getPipeline();

    SocketAddress getRemoteAddress();

    boolean isBound();

    boolean isConnected();

    boolean isOpen();

    boolean isReadable();

    boolean isWritable();

    void setAttachment(Object obj);

    ChannelFuture setInterestOps(int i);

    ChannelFuture setReadable(boolean z);

    ChannelFuture unbind();

    ChannelFuture write(Object obj);

    ChannelFuture write(Object obj, SocketAddress socketAddress);
}
