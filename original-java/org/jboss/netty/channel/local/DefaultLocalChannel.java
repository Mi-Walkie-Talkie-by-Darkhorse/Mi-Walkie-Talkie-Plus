package org.jboss.netty.channel.local;

import java.nio.channels.ClosedChannelException;
import java.nio.channels.NotYetConnectedException;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicInteger;
import org.jboss.netty.channel.AbstractChannel;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelConfig;
import org.jboss.netty.channel.ChannelException;
import org.jboss.netty.channel.ChannelFactory;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.ChannelFutureListener;
import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.channel.ChannelSink;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.channel.DefaultChannelConfig;
import org.jboss.netty.channel.MessageEvent;
import org.jboss.netty.util.internal.ThreadLocalBoolean;

final class DefaultLocalChannel extends AbstractChannel implements LocalChannel {
    private static final int ST_BOUND = 1;
    private static final int ST_CLOSED = -1;
    private static final int ST_CONNECTED = 2;
    private static final int ST_OPEN = 0;
    private final ChannelConfig config;
    private final ThreadLocalBoolean delivering = new ThreadLocalBoolean();
    volatile LocalAddress localAddress;
    volatile DefaultLocalChannel pairedChannel;
    volatile LocalAddress remoteAddress;
    final AtomicInteger state = new AtomicInteger(0);
    final Queue<MessageEvent> writeBuffer = new ConcurrentLinkedQueue();

    DefaultLocalChannel(LocalServerChannel localServerChannel, ChannelFactory channelFactory, ChannelPipeline channelPipeline, ChannelSink channelSink, DefaultLocalChannel defaultLocalChannel) {
        super(localServerChannel, channelFactory, channelPipeline, channelSink);
        this.pairedChannel = defaultLocalChannel;
        this.config = new DefaultChannelConfig();
        getCloseFuture().addListener(new ChannelFutureListener() {
            public void operationComplete(ChannelFuture channelFuture) throws Exception {
                DefaultLocalChannel.this.state.set(-1);
            }
        });
        Channels.fireChannelOpen((Channel) this);
    }

    public ChannelConfig getConfig() {
        return this.config;
    }

    public boolean isOpen() {
        return this.state.get() >= 0;
    }

    public boolean isBound() {
        return this.state.get() >= 1;
    }

    public boolean isConnected() {
        return this.state.get() == 2;
    }

    /* access modifiers changed from: 0000 */
    public void setBound() throws ClosedChannelException {
        if (!this.state.compareAndSet(0, 1)) {
            switch (this.state.get()) {
                case -1:
                    throw new ClosedChannelException();
                default:
                    throw new ChannelException("already bound");
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public void setConnected() {
        if (this.state.get() != -1) {
            this.state.set(2);
        }
    }

    /* access modifiers changed from: protected */
    public boolean setClosed() {
        return super.setClosed();
    }

    public LocalAddress getLocalAddress() {
        return this.localAddress;
    }

    public LocalAddress getRemoteAddress() {
        return this.remoteAddress;
    }

    /* access modifiers changed from: 0000 */
    public void closeNow(ChannelFuture channelFuture) {
        LocalAddress localAddress2 = this.localAddress;
        try {
            if (setClosed()) {
                DefaultLocalChannel defaultLocalChannel = this.pairedChannel;
                if (defaultLocalChannel != null) {
                    this.pairedChannel = null;
                    Channels.fireChannelDisconnected((Channel) this);
                    Channels.fireChannelUnbound((Channel) this);
                }
                Channels.fireChannelClosed((Channel) this);
                if (defaultLocalChannel == null || !defaultLocalChannel.setClosed()) {
                    channelFuture.setSuccess();
                    if (localAddress2 == null || getParent() != null) {
                    }
                } else {
                    if (defaultLocalChannel.pairedChannel != null) {
                        defaultLocalChannel.pairedChannel = null;
                        Channels.fireChannelDisconnected((Channel) defaultLocalChannel);
                        Channels.fireChannelUnbound((Channel) defaultLocalChannel);
                    }
                    Channels.fireChannelClosed((Channel) defaultLocalChannel);
                    channelFuture.setSuccess();
                    if (localAddress2 == null || getParent() != null) {
                    }
                }
            }
        } finally {
            channelFuture.setSuccess();
            if (localAddress2 != null && getParent() == null) {
                LocalChannelRegistry.unregister(localAddress2);
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public void flushWriteBuffer() {
        Throwable th;
        DefaultLocalChannel defaultLocalChannel = this.pairedChannel;
        if (defaultLocalChannel == null) {
            if (isOpen()) {
                th = new NotYetConnectedException();
            } else {
                th = new ClosedChannelException();
            }
            while (true) {
                MessageEvent messageEvent = (MessageEvent) this.writeBuffer.poll();
                if (messageEvent != null) {
                    messageEvent.getFuture().setFailure(th);
                    Channels.fireExceptionCaught((Channel) this, th);
                } else {
                    return;
                }
            }
        } else if (defaultLocalChannel.isConnected() && !((Boolean) this.delivering.get()).booleanValue()) {
            this.delivering.set(Boolean.valueOf(true));
            while (true) {
                try {
                    MessageEvent messageEvent2 = (MessageEvent) this.writeBuffer.poll();
                    if (messageEvent2 != null) {
                        messageEvent2.getFuture().setSuccess();
                        Channels.fireMessageReceived((Channel) defaultLocalChannel, messageEvent2.getMessage());
                        Channels.fireWriteComplete((Channel) this, 1);
                    } else {
                        return;
                    }
                } finally {
                    this.delivering.set(Boolean.valueOf(false));
                }
            }
        }
    }
}
