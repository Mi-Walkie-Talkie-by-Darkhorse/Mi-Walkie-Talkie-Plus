package org.jboss.netty.handler.execution;

import java.util.concurrent.Executor;
import org.jboss.netty.channel.ChannelEvent;
import org.jboss.netty.channel.ChannelHandlerContext;

public class ChannelDownstreamEventRunnable extends ChannelEventRunnable {
    public ChannelDownstreamEventRunnable(ChannelHandlerContext channelHandlerContext, ChannelEvent channelEvent, Executor executor) {
        super(channelHandlerContext, channelEvent, executor);
    }

    /* access modifiers changed from: protected */
    public void doRun() {
        this.ctx.sendDownstream(this.e);
    }
}
