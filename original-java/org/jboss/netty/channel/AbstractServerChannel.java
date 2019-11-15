package org.jboss.netty.channel;

import java.net.SocketAddress;

public abstract class AbstractServerChannel extends AbstractChannel implements ServerChannel {
    protected AbstractServerChannel(ChannelFactory channelFactory, ChannelPipeline channelPipeline, ChannelSink channelSink) {
        super(null, channelFactory, channelPipeline, channelSink);
    }

    public ChannelFuture connect(SocketAddress socketAddress) {
        return getUnsupportedOperationFuture();
    }

    public ChannelFuture disconnect() {
        return getUnsupportedOperationFuture();
    }

    public int getInterestOps() {
        return 0;
    }

    public ChannelFuture setInterestOps(int i) {
        return getUnsupportedOperationFuture();
    }

    /* access modifiers changed from: protected */
    public void setInterestOpsNow(int i) {
    }

    public ChannelFuture write(Object obj) {
        return getUnsupportedOperationFuture();
    }

    public ChannelFuture write(Object obj, SocketAddress socketAddress) {
        return getUnsupportedOperationFuture();
    }

    public boolean isConnected() {
        return false;
    }
}
