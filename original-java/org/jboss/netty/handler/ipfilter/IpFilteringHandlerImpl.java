package org.jboss.netty.handler.ipfilter;

import java.net.InetSocketAddress;
import org.jboss.netty.channel.ChannelEvent;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.ChannelFutureListener;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.channel.ChannelStateEvent;
import org.jboss.netty.channel.ChannelUpstreamHandler;
import org.jboss.netty.channel.Channels;

public abstract class IpFilteringHandlerImpl implements ChannelUpstreamHandler, IpFilteringHandler {
    private IpFilterListener listener;

    /* access modifiers changed from: protected */
    public abstract boolean accept(ChannelHandlerContext channelHandlerContext, ChannelEvent channelEvent, InetSocketAddress inetSocketAddress) throws Exception;

    /* access modifiers changed from: protected */
    public ChannelFuture handleRefusedChannel(ChannelHandlerContext channelHandlerContext, ChannelEvent channelEvent, InetSocketAddress inetSocketAddress) throws Exception {
        if (this.listener == null) {
            return null;
        }
        return this.listener.refused(channelHandlerContext, channelEvent, inetSocketAddress);
    }

    /* access modifiers changed from: protected */
    public ChannelFuture handleAllowedChannel(ChannelHandlerContext channelHandlerContext, ChannelEvent channelEvent, InetSocketAddress inetSocketAddress) throws Exception {
        if (this.listener == null) {
            return null;
        }
        return this.listener.allowed(channelHandlerContext, channelEvent, inetSocketAddress);
    }

    /* access modifiers changed from: protected */
    public boolean isBlocked(ChannelHandlerContext channelHandlerContext) {
        return channelHandlerContext.getAttachment() != null;
    }

    /* access modifiers changed from: protected */
    public boolean continues(ChannelHandlerContext channelHandlerContext, ChannelEvent channelEvent) throws Exception {
        if (this.listener != null) {
            return this.listener.continues(channelHandlerContext, channelEvent);
        }
        return false;
    }

    public void handleUpstream(ChannelHandlerContext channelHandlerContext, ChannelEvent channelEvent) throws Exception {
        if (channelEvent instanceof ChannelStateEvent) {
            ChannelStateEvent channelStateEvent = (ChannelStateEvent) channelEvent;
            switch (channelStateEvent.getState()) {
                case OPEN:
                case BOUND:
                    if (!isBlocked(channelHandlerContext) || continues(channelHandlerContext, channelStateEvent)) {
                        channelHandlerContext.sendUpstream(channelEvent);
                        return;
                    }
                    return;
                case CONNECTED:
                    if (channelStateEvent.getValue() != null) {
                        InetSocketAddress inetSocketAddress = (InetSocketAddress) channelEvent.getChannel().getRemoteAddress();
                        if (!accept(channelHandlerContext, channelEvent, inetSocketAddress)) {
                            channelHandlerContext.setAttachment(Boolean.TRUE);
                            ChannelFuture handleRefusedChannel = handleRefusedChannel(channelHandlerContext, channelEvent, inetSocketAddress);
                            if (handleRefusedChannel != null) {
                                handleRefusedChannel.addListener(ChannelFutureListener.CLOSE);
                            } else {
                                Channels.close(channelEvent.getChannel());
                            }
                            if (isBlocked(channelHandlerContext) && !continues(channelHandlerContext, channelStateEvent)) {
                                return;
                            }
                        } else {
                            handleAllowedChannel(channelHandlerContext, channelEvent, inetSocketAddress);
                        }
                        channelHandlerContext.setAttachment(null);
                        break;
                    } else if (isBlocked(channelHandlerContext) && !continues(channelHandlerContext, channelStateEvent)) {
                        return;
                    }
            }
        }
        if (!isBlocked(channelHandlerContext) || continues(channelHandlerContext, channelEvent)) {
            channelHandlerContext.sendUpstream(channelEvent);
        }
    }

    public void setIpFilterListener(IpFilterListener ipFilterListener) {
        this.listener = ipFilterListener;
    }

    public void removeIpFilterListener() {
        this.listener = null;
    }
}
