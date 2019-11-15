package org.jboss.netty.handler.execution;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import org.jboss.netty.channel.ChannelDownstreamHandler;
import org.jboss.netty.channel.ChannelEvent;
import org.jboss.netty.channel.ChannelHandler.Sharable;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.channel.ChannelState;
import org.jboss.netty.channel.ChannelStateEvent;
import org.jboss.netty.channel.ChannelUpstreamHandler;
import org.jboss.netty.util.ExternalResourceReleasable;

@Sharable
public class ExecutionHandler implements ChannelDownstreamHandler, ChannelUpstreamHandler, ExternalResourceReleasable {
    private final Executor executor;
    private final boolean handleDownstream;
    private final boolean handleUpstream;

    public ExecutionHandler(Executor executor2) {
        this(executor2, false, true);
    }

    @Deprecated
    public ExecutionHandler(Executor executor2, boolean z) {
        this(executor2, z, true);
    }

    public ExecutionHandler(Executor executor2, boolean z, boolean z2) {
        if (executor2 == null) {
            throw new NullPointerException("executor");
        } else if (z || z2) {
            this.executor = executor2;
            this.handleDownstream = z;
            this.handleUpstream = z2;
        } else {
            throw new IllegalArgumentException("You must handle at least handle one event type");
        }
    }

    public Executor getExecutor() {
        return this.executor;
    }

    public void releaseExternalResources() {
        Executor executor2 = getExecutor();
        if (executor2 instanceof ExecutorService) {
            ((ExecutorService) executor2).shutdown();
        }
        if (executor2 instanceof ExternalResourceReleasable) {
            ((ExternalResourceReleasable) executor2).releaseExternalResources();
        }
    }

    public void handleUpstream(ChannelHandlerContext channelHandlerContext, ChannelEvent channelEvent) throws Exception {
        if (this.handleUpstream) {
            this.executor.execute(new ChannelUpstreamEventRunnable(channelHandlerContext, channelEvent, this.executor));
        } else {
            channelHandlerContext.sendUpstream(channelEvent);
        }
    }

    public void handleDownstream(ChannelHandlerContext channelHandlerContext, ChannelEvent channelEvent) throws Exception {
        if (handleReadSuspend(channelHandlerContext, channelEvent)) {
            return;
        }
        if (this.handleDownstream) {
            this.executor.execute(new ChannelDownstreamEventRunnable(channelHandlerContext, channelEvent, this.executor));
        } else {
            channelHandlerContext.sendDownstream(channelEvent);
        }
    }

    /* access modifiers changed from: protected */
    public boolean handleReadSuspend(ChannelHandlerContext channelHandlerContext, ChannelEvent channelEvent) {
        if (channelEvent instanceof ChannelStateEvent) {
            ChannelStateEvent channelStateEvent = (ChannelStateEvent) channelEvent;
            if (channelStateEvent.getState() == ChannelState.INTEREST_OPS && (((Integer) channelStateEvent.getValue()).intValue() & 1) != 0) {
                if (channelHandlerContext.getAttachment() != null) {
                    channelEvent.getFuture().setSuccess();
                    return true;
                }
            }
        }
        return false;
    }
}
