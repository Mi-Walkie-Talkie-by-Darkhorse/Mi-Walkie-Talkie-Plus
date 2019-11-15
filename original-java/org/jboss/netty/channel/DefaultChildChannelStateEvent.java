package org.jboss.netty.channel;

public class DefaultChildChannelStateEvent implements ChildChannelStateEvent {
    private final Channel childChannel;
    private final Channel parentChannel;

    public DefaultChildChannelStateEvent(Channel channel, Channel channel2) {
        if (channel == null) {
            throw new NullPointerException("parentChannel");
        } else if (channel2 == null) {
            throw new NullPointerException("childChannel");
        } else {
            this.parentChannel = channel;
            this.childChannel = channel2;
        }
    }

    public Channel getChannel() {
        return this.parentChannel;
    }

    public ChannelFuture getFuture() {
        return Channels.succeededFuture(getChannel());
    }

    public Channel getChildChannel() {
        return this.childChannel;
    }

    public String toString() {
        String obj = getChannel().toString();
        StringBuilder sb = new StringBuilder(obj.length() + 32);
        sb.append(obj);
        sb.append(getChildChannel().isOpen() ? " CHILD_OPEN: " : " CHILD_CLOSED: ");
        sb.append(getChildChannel().getId());
        return sb.toString();
    }
}
