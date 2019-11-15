package org.jboss.netty.channel;

import java.net.SocketAddress;
import java.util.Random;
import java.util.concurrent.ConcurrentMap;
import org.jboss.netty.util.internal.ConcurrentHashMap;

public abstract class AbstractChannel implements Channel {
    static final /* synthetic */ boolean $assertionsDisabled = (!AbstractChannel.class.desiredAssertionStatus());
    static final ConcurrentMap<Integer, Channel> allChannels = new ConcurrentHashMap();
    private static final Random random = new Random();
    private volatile Object attachment;
    private final ChannelCloseFuture closeFuture = new ChannelCloseFuture();
    private final ChannelFactory factory;
    private final Integer id;
    private volatile int interestOps = 1;
    private final Channel parent;
    private final ChannelPipeline pipeline;
    private String strVal;
    private boolean strValConnected;
    private final ChannelFuture succeededFuture = new SucceededChannelFuture(this);

    private final class ChannelCloseFuture extends DefaultChannelFuture {
        public ChannelCloseFuture() {
            super(AbstractChannel.this, false);
        }

        public boolean setSuccess() {
            return false;
        }

        public boolean setFailure(Throwable th) {
            return false;
        }

        /* access modifiers changed from: 0000 */
        public boolean setClosed() {
            return super.setSuccess();
        }
    }

    private static Integer allocateId(Channel channel) {
        Integer valueOf = Integer.valueOf(random.nextInt());
        while (allChannels.putIfAbsent(valueOf, channel) != null) {
            valueOf = Integer.valueOf(valueOf.intValue() + 1);
        }
        return valueOf;
    }

    protected AbstractChannel(Channel channel, ChannelFactory channelFactory, ChannelPipeline channelPipeline, ChannelSink channelSink) {
        this.parent = channel;
        this.factory = channelFactory;
        this.pipeline = channelPipeline;
        this.id = allocateId(this);
        channelPipeline.attach(this, channelSink);
    }

    protected AbstractChannel(Integer num, Channel channel, ChannelFactory channelFactory, ChannelPipeline channelPipeline, ChannelSink channelSink) {
        this.id = num;
        this.parent = channel;
        this.factory = channelFactory;
        this.pipeline = channelPipeline;
        channelPipeline.attach(this, channelSink);
    }

    public final Integer getId() {
        return this.id;
    }

    public Channel getParent() {
        return this.parent;
    }

    public ChannelFactory getFactory() {
        return this.factory;
    }

    public ChannelPipeline getPipeline() {
        return this.pipeline;
    }

    /* access modifiers changed from: protected */
    public ChannelFuture getSucceededFuture() {
        return this.succeededFuture;
    }

    /* access modifiers changed from: protected */
    public ChannelFuture getUnsupportedOperationFuture() {
        return new FailedChannelFuture(this, new UnsupportedOperationException());
    }

    public final int hashCode() {
        return this.id.intValue();
    }

    public final boolean equals(Object obj) {
        return this == obj;
    }

    public final int compareTo(Channel channel) {
        return getId().compareTo(channel.getId());
    }

    public boolean isOpen() {
        return !this.closeFuture.isDone();
    }

    /* access modifiers changed from: protected */
    public boolean setClosed() {
        allChannels.remove(this.id);
        return this.closeFuture.setClosed();
    }

    public ChannelFuture bind(SocketAddress socketAddress) {
        return Channels.bind(this, socketAddress);
    }

    public ChannelFuture unbind() {
        return Channels.unbind(this);
    }

    public ChannelFuture close() {
        ChannelFuture close = Channels.close(this);
        if ($assertionsDisabled || this.closeFuture == close) {
            return this.closeFuture;
        }
        throw new AssertionError();
    }

    public ChannelFuture getCloseFuture() {
        return this.closeFuture;
    }

    public ChannelFuture connect(SocketAddress socketAddress) {
        return Channels.connect(this, socketAddress);
    }

    public ChannelFuture disconnect() {
        return Channels.disconnect(this);
    }

    public int getInterestOps() {
        return this.interestOps;
    }

    public ChannelFuture setInterestOps(int i) {
        return Channels.setInterestOps(this, i);
    }

    /* access modifiers changed from: protected */
    public void setInterestOpsNow(int i) {
        this.interestOps = i;
    }

    public boolean isReadable() {
        return (getInterestOps() & 1) != 0;
    }

    public boolean isWritable() {
        return (getInterestOps() & 4) == 0;
    }

    public ChannelFuture setReadable(boolean z) {
        if (z) {
            return setInterestOps(getInterestOps() | 1);
        }
        return setInterestOps(getInterestOps() & -2);
    }

    public ChannelFuture write(Object obj) {
        return Channels.write(this, obj);
    }

    public ChannelFuture write(Object obj, SocketAddress socketAddress) {
        return Channels.write((Channel) this, obj, socketAddress);
    }

    public Object getAttachment() {
        return this.attachment;
    }

    public void setAttachment(Object obj) {
        this.attachment = obj;
    }

    public String toString() {
        boolean isConnected = isConnected();
        if (this.strValConnected == isConnected && this.strVal != null) {
            return this.strVal;
        }
        StringBuilder sb = new StringBuilder(128);
        sb.append("[id: 0x");
        sb.append(getIdString());
        SocketAddress localAddress = getLocalAddress();
        SocketAddress remoteAddress = getRemoteAddress();
        if (remoteAddress != null) {
            sb.append(", ");
            if (getParent() == null) {
                sb.append(localAddress);
                sb.append(isConnected ? " => " : " :> ");
                sb.append(remoteAddress);
            } else {
                sb.append(remoteAddress);
                sb.append(isConnected ? " => " : " :> ");
                sb.append(localAddress);
            }
        } else if (localAddress != null) {
            sb.append(", ");
            sb.append(localAddress);
        }
        sb.append(']');
        String sb2 = sb.toString();
        this.strVal = sb2;
        this.strValConnected = isConnected;
        return sb2;
    }

    private String getIdString() {
        String hexString = Integer.toHexString(this.id.intValue());
        switch (hexString.length()) {
            case 0:
                return "00000000";
            case 1:
                return "0000000" + hexString;
            case 2:
                return "000000" + hexString;
            case 3:
                return "00000" + hexString;
            case 4:
                return "0000" + hexString;
            case 5:
                return "000" + hexString;
            case 6:
                return "00" + hexString;
            case 7:
                return '0' + hexString;
            default:
                return hexString;
        }
    }
}
