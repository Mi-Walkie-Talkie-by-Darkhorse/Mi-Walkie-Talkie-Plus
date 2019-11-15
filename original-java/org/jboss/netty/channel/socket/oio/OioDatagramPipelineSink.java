package org.jboss.netty.channel.socket.oio;

import java.net.SocketAddress;
import java.util.concurrent.Executor;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelEvent;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.ChannelFutureListener;
import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.channel.ChannelState;
import org.jboss.netty.channel.ChannelStateEvent;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.channel.MessageEvent;
import org.jboss.netty.util.ThreadNameDeterminer;
import org.jboss.netty.util.ThreadRenamingRunnable;
import org.jboss.netty.util.internal.DeadLockProofWorker;

class OioDatagramPipelineSink extends AbstractOioChannelSink {
    private final ThreadNameDeterminer determiner;
    private final Executor workerExecutor;

    OioDatagramPipelineSink(Executor executor, ThreadNameDeterminer threadNameDeterminer) {
        this.workerExecutor = executor;
        this.determiner = threadNameDeterminer;
    }

    public void eventSunk(ChannelPipeline channelPipeline, ChannelEvent channelEvent) throws Exception {
        OioDatagramChannel oioDatagramChannel = (OioDatagramChannel) channelEvent.getChannel();
        ChannelFuture future = channelEvent.getFuture();
        if (channelEvent instanceof ChannelStateEvent) {
            ChannelStateEvent channelStateEvent = (ChannelStateEvent) channelEvent;
            ChannelState state = channelStateEvent.getState();
            Object value = channelStateEvent.getValue();
            switch (state) {
                case OPEN:
                    if (Boolean.FALSE.equals(value)) {
                        AbstractOioWorker.close(oioDatagramChannel, future);
                        return;
                    }
                    return;
                case BOUND:
                    if (value != null) {
                        bind(oioDatagramChannel, future, (SocketAddress) value);
                        return;
                    } else {
                        AbstractOioWorker.close(oioDatagramChannel, future);
                        return;
                    }
                case CONNECTED:
                    if (value != null) {
                        connect(oioDatagramChannel, future, (SocketAddress) value);
                        return;
                    } else {
                        OioDatagramWorker.disconnect(oioDatagramChannel, future);
                        return;
                    }
                case INTEREST_OPS:
                    AbstractOioWorker.setInterestOps(oioDatagramChannel, future, ((Integer) value).intValue());
                    return;
                default:
                    return;
            }
        } else if (channelEvent instanceof MessageEvent) {
            MessageEvent messageEvent = (MessageEvent) channelEvent;
            OioDatagramWorker.write(oioDatagramChannel, future, messageEvent.getMessage(), messageEvent.getRemoteAddress());
        }
    }

    private void bind(OioDatagramChannel oioDatagramChannel, ChannelFuture channelFuture, SocketAddress socketAddress) {
        boolean z = false;
        try {
            oioDatagramChannel.socket.bind(socketAddress);
            z = true;
            channelFuture.setSuccess();
            Channels.fireChannelBound((Channel) oioDatagramChannel, (SocketAddress) oioDatagramChannel.getLocalAddress());
            DeadLockProofWorker.start(this.workerExecutor, new ThreadRenamingRunnable(new OioDatagramWorker(oioDatagramChannel), "Old I/O datagram worker (" + oioDatagramChannel + ')', this.determiner));
        } catch (Throwable th) {
            if (z) {
                AbstractOioWorker.close(oioDatagramChannel, channelFuture);
            }
            throw th;
        }
    }

    private void connect(OioDatagramChannel oioDatagramChannel, ChannelFuture channelFuture, SocketAddress socketAddress) {
        boolean isBound = oioDatagramChannel.isBound();
        channelFuture.addListener(ChannelFutureListener.CLOSE_ON_FAILURE);
        oioDatagramChannel.remoteAddress = null;
        try {
            oioDatagramChannel.socket.connect(socketAddress);
            channelFuture.setSuccess();
            if (!isBound) {
                Channels.fireChannelBound((Channel) oioDatagramChannel, (SocketAddress) oioDatagramChannel.getLocalAddress());
            }
            Channels.fireChannelConnected((Channel) oioDatagramChannel, (SocketAddress) oioDatagramChannel.getRemoteAddress());
            String str = "Old I/O datagram worker (" + oioDatagramChannel + ')';
            if (!isBound) {
                DeadLockProofWorker.start(this.workerExecutor, new ThreadRenamingRunnable(new OioDatagramWorker(oioDatagramChannel), str, this.determiner));
                return;
            }
            Thread thread = oioDatagramChannel.workerThread;
            if (thread != null) {
                thread.setName(str);
            }
        } catch (SecurityException e) {
        } catch (Throwable th) {
            try {
                channelFuture.setFailure(th);
                Channels.fireExceptionCaught((Channel) oioDatagramChannel, th);
            } finally {
                if (0 != 0) {
                    AbstractOioWorker.close(oioDatagramChannel, channelFuture);
                }
            }
        }
    }
}
