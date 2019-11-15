package org.jboss.netty.channel.socket.oio;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.SocketAddress;
import org.jboss.netty.channel.AbstractChannel;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelFactory;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.channel.ChannelSink;
import org.jboss.netty.channel.socket.Worker;

abstract class AbstractOioChannel extends AbstractChannel {
    final Object interestOpsLock = new Object();
    private volatile InetSocketAddress localAddress;
    volatile InetSocketAddress remoteAddress;
    volatile Worker worker;
    volatile Thread workerThread;

    /* access modifiers changed from: 0000 */
    public abstract void closeSocket() throws IOException;

    /* access modifiers changed from: 0000 */
    public abstract InetSocketAddress getLocalSocketAddress() throws Exception;

    /* access modifiers changed from: 0000 */
    public abstract InetSocketAddress getRemoteSocketAddress() throws Exception;

    /* access modifiers changed from: 0000 */
    public abstract boolean isSocketBound();

    /* access modifiers changed from: 0000 */
    public abstract boolean isSocketClosed();

    /* access modifiers changed from: 0000 */
    public abstract boolean isSocketConnected();

    AbstractOioChannel(Channel channel, ChannelFactory channelFactory, ChannelPipeline channelPipeline, ChannelSink channelSink) {
        super(channel, channelFactory, channelPipeline, channelSink);
    }

    /* access modifiers changed from: protected */
    public boolean setClosed() {
        return super.setClosed();
    }

    /* access modifiers changed from: protected */
    public void setInterestOpsNow(int i) {
        super.setInterestOpsNow(i);
    }

    public ChannelFuture write(Object obj, SocketAddress socketAddress) {
        if (socketAddress == null || socketAddress.equals(getRemoteAddress())) {
            return super.write(obj, null);
        }
        return super.write(obj, socketAddress);
    }

    public boolean isBound() {
        return isOpen() && isSocketBound();
    }

    public boolean isConnected() {
        return isOpen() && isSocketConnected();
    }

    public InetSocketAddress getLocalAddress() {
        InetSocketAddress inetSocketAddress = this.localAddress;
        if (inetSocketAddress != null) {
            return inetSocketAddress;
        }
        try {
            InetSocketAddress localSocketAddress = getLocalSocketAddress();
            this.localAddress = localSocketAddress;
            return localSocketAddress;
        } catch (Throwable th) {
            return null;
        }
    }

    public InetSocketAddress getRemoteAddress() {
        InetSocketAddress inetSocketAddress = this.remoteAddress;
        if (inetSocketAddress != null) {
            return inetSocketAddress;
        }
        try {
            InetSocketAddress remoteSocketAddress = getRemoteSocketAddress();
            this.remoteAddress = remoteSocketAddress;
            return remoteSocketAddress;
        } catch (Throwable th) {
            return null;
        }
    }
}
