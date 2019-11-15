package org.jboss.netty.channel;

import com.mi.milinkforgame.sdk.data.Const;
import org.jboss.netty.util.internal.StackTraceSimplifier;

public class DefaultExceptionEvent implements ExceptionEvent {
    private final Throwable cause;
    private final Channel channel;

    public DefaultExceptionEvent(Channel channel2, Throwable th) {
        if (channel2 == null) {
            throw new NullPointerException(Const.PARAM_CHANNEL);
        } else if (th == null) {
            throw new NullPointerException("cause");
        } else {
            this.channel = channel2;
            this.cause = th;
            StackTraceSimplifier.simplify(th);
        }
    }

    public Channel getChannel() {
        return this.channel;
    }

    public ChannelFuture getFuture() {
        return Channels.succeededFuture(getChannel());
    }

    public Throwable getCause() {
        return this.cause;
    }

    public String toString() {
        return getChannel().toString() + " EXCEPTION: " + this.cause;
    }
}
