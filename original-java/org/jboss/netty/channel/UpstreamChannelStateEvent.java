package org.jboss.netty.channel;

import com.mi.milinkforgame.sdk.data.Const;
import com.xiaomi.account.openauth.XiaomiOAuthConstants;

public class UpstreamChannelStateEvent implements ChannelStateEvent {
    private final Channel channel;
    private final ChannelState state;
    private final Object value;

    public UpstreamChannelStateEvent(Channel channel2, ChannelState channelState, Object obj) {
        if (channel2 == null) {
            throw new NullPointerException(Const.PARAM_CHANNEL);
        } else if (channelState == null) {
            throw new NullPointerException(XiaomiOAuthConstants.EXTRA_STATE_2);
        } else {
            this.channel = channel2;
            this.state = channelState;
            this.value = obj;
        }
    }

    public Channel getChannel() {
        return this.channel;
    }

    public ChannelFuture getFuture() {
        return Channels.succeededFuture(getChannel());
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
                    sb.append(" CLOSED");
                    break;
                } else {
                    sb.append(" OPEN");
                    break;
                }
            case BOUND:
                if (getValue() == null) {
                    sb.append(" UNBOUND");
                    break;
                } else {
                    sb.append(" BOUND: ");
                    sb.append(getValue());
                    break;
                }
            case CONNECTED:
                if (getValue() == null) {
                    sb.append(" DISCONNECTED");
                    break;
                } else {
                    sb.append(" CONNECTED: ");
                    sb.append(getValue());
                    break;
                }
            case INTEREST_OPS:
                sb.append(" INTEREST_CHANGED");
                break;
            default:
                sb.append(getState().name());
                sb.append(": ");
                sb.append(getValue());
                break;
        }
        return sb.toString();
    }
}
