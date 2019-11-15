package org.jboss.netty.handler.execution;

import java.util.concurrent.Executor;
import org.jboss.netty.channel.ChannelEvent;
import org.jboss.netty.channel.ChannelHandlerContext;

public class ChannelUpstreamEventRunnable extends ChannelEventRunnable {
    public ChannelUpstreamEventRunnable(ChannelHandlerContext channelHandlerContext, ChannelEvent channelEvent, Executor executor) {
        super(channelHandlerContext, channelEvent, executor);
    }

    /* access modifiers changed from: protected */
    public void doRun() {
        this.ctx.sendUpstream(this.e);
    }
}
