package org.jboss.netty.handler.timeout;

import com.mi.milinkforgame.sdk.data.Const;
import com.xiaomi.account.openauth.XiaomiOAuthConstants;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.Channels;

public class DefaultIdleStateEvent implements IdleStateEvent {
    private final Channel channel;
    private final long lastActivityTimeMillis;
    private final IdleState state;

    public DefaultIdleStateEvent(Channel channel2, IdleState idleState, long j) {
        if (channel2 == null) {
            throw new NullPointerException(Const.PARAM_CHANNEL);
        } else if (idleState == null) {
            throw new NullPointerException(XiaomiOAuthConstants.EXTRA_STATE_2);
        } else {
            this.channel = channel2;
            this.state = idleState;
            this.lastActivityTimeMillis = j;
        }
    }

    public Channel getChannel() {
        return this.channel;
    }

    public ChannelFuture getFuture() {
        return Channels.succeededFuture(getChannel());
    }

    public IdleState getState() {
        return this.state;
    }

    public long getLastActivityTimeMillis() {
        return this.lastActivityTimeMillis;
    }

    public String toString() {
        return getChannel().toString() + ' ' + getState() + " since " + DateFormat.getDateTimeInstance(3, 3, Locale.US).format(new Date(getLastActivityTimeMillis()));
    }
}
