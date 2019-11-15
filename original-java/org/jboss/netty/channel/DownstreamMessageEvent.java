package org.jboss.netty.channel;

import com.mi.milinkforgame.sdk.data.Const;
import java.net.SocketAddress;
import org.jboss.netty.util.internal.StringUtil;

public class DownstreamMessageEvent implements MessageEvent {
    private final Channel channel;
    private final ChannelFuture future;
    private final Object message;
    private final SocketAddress remoteAddress;

    public DownstreamMessageEvent(Channel channel2, ChannelFuture channelFuture, Object obj, SocketAddress socketAddress) {
        if (channel2 == null) {
            throw new NullPointerException(Const.PARAM_CHANNEL);
        } else if (channelFuture == null) {
            throw new NullPointerException("future");
        } else if (obj == null) {
            throw new NullPointerException("message");
        } else {
            this.channel = channel2;
            this.future = channelFuture;
            this.message = obj;
            if (socketAddress != null) {
                this.remoteAddress = socketAddress;
            } else {
                this.remoteAddress = channel2.getRemoteAddress();
            }
        }
    }

    public Channel getChannel() {
        return this.channel;
    }

    public ChannelFuture getFuture() {
        return this.future;
    }

    public Object getMessage() {
        return this.message;
    }

    public SocketAddress getRemoteAddress() {
        return this.remoteAddress;
    }

    public String toString() {
        if (getRemoteAddress() == getChannel().getRemoteAddress()) {
            return getChannel().toString() + " WRITE: " + StringUtil.stripControlCharacters(getMessage());
        }
        return getChannel().toString() + " WRITE: " + StringUtil.stripControlCharacters(getMessage()) + " to " + getRemoteAddress();
    }
}
