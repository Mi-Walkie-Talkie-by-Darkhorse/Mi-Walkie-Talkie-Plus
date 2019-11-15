package org.jboss.netty.channel;

import com.mi.milinkforgame.sdk.data.Const;
import com.xiaomi.account.openauth.XiaomiOAuthConstants;

public class DownstreamChannelStateEvent implements ChannelStateEvent {
    private final Channel channel;
    private final ChannelFuture future;
    private final ChannelState state;
    private final Object value;

    public DownstreamChannelStateEvent(Channel channel2, ChannelFuture channelFuture, ChannelState channelState, Object obj) {
        if (channel2 == null) {
            throw new NullPointerException(Const.PARAM_CHANNEL);
        } else if (channelFuture == null) {
            throw new NullPointerException("future");
        } else if (channelState == null) {
            throw new NullPointerException(XiaomiOAuthConstants.EXTRA_STATE_2);
        } else {
            this.channel = channel2;
            this.future = channelFuture;
            this.state = channelState;
            this.value = obj;
        }
    }

    public Channel getChannel() {
        return this.channel;
    }

    public ChannelFuture getFuture() {
        return this.future;
    }

    public ChannelState getState() {
        return this.state;
    }

    public Object getValue() {
        return this.value;
    }

    public String toString() {
        String obj = getChannel().toString();
        StringBuilder sb = new StringBuilder(obj.length() + 64);
        sb.append(obj);
        switch (getState()) {
            case OPEN:
                if (!Boolean.TRUE.equals(getValue())) {
                    sb.append(" CLOSE");
                    break;
                } else {
                    sb.append(" OPEN");
                    break;
                }
            case BOUND:
                if (getValue() == null) {
                    sb.append(" UNBIND");
                    break;
                } else {
                    sb.append(" BIND: ");
                    sb.append(getValue());
                    break;
                }
            case CONNECTED:
                if (getValue() == null) {
                    sb.append(" DISCONNECT");
                    break;
                } else {
                    sb.append(" CONNECT: ");
                    sb.append(getValue());
                    break;
                }
            case INTEREST_OPS:
                sb.append(" CHANGE_INTEREST: ");
                sb.append(getValue());
                break;
            default:
                sb.append(' ');
                sb.append(getState().name());
                sb.append(": ");
                sb.append(getValue());
                break;
        }
        return sb.toString();
    }
}
