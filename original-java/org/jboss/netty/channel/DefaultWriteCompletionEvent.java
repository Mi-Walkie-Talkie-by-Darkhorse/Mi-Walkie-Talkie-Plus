package org.jboss.netty.channel;

import com.mi.milinkforgame.sdk.data.Const;

public class DefaultWriteCompletionEvent implements WriteCompletionEvent {
    private final Channel channel;
    private final long writtenAmount;

    public DefaultWriteCompletionEvent(Channel channel2, long j) {
        if (channel2 == null) {
            throw new NullPointerException(Const.PARAM_CHANNEL);
        } else if (j <= 0) {
            throw new IllegalArgumentException("writtenAmount must be a positive integer: " + j);
        } else {
            this.channel = channel2;
            this.writtenAmount = j;
        }
    }

    public Channel getChannel() {
        return this.channel;
    }

    public ChannelFuture getFuture() {
        return Channels.succeededFuture(getChannel());
    }

    public long getWrittenAmount() {
        return this.writtenAmount;
    }

    public String toString() {
        String obj = getChannel().toString();
        StringBuilder sb = new StringBuilder(obj.length() + 32);
        sb.append(obj);
        sb.append(" WRITTEN_AMOUNT: ");
        sb.append(getWrittenAmount());
        return sb.toString();
    }
}
