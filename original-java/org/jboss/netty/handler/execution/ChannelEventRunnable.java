package org.jboss.netty.handler.execution;

import java.util.concurrent.Executor;
import org.jboss.netty.channel.ChannelEvent;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.util.EstimatableObjectWrapper;

public abstract class ChannelEventRunnable implements Runnable, EstimatableObjectWrapper {
    protected static final ThreadLocal<Executor> PARENT = new ThreadLocal<>();
    protected final ChannelHandlerContext ctx;
    protected final ChannelEvent e;
    int estimatedSize;
    private final Executor executor;

    /* access modifiers changed from: protected */
    public abstract void doRun();

    protected ChannelEventRunnable(ChannelHandlerContext channelHandlerContext, ChannelEvent channelEvent, Executor executor2) {
        this.ctx = channelHandlerContext;
        this.e = channelEvent;
        this.executor = executor2;
    }

    public ChannelHandlerContext getContext() {
        return this.ctx;
    }

    public ChannelEvent getEvent() {
        return this.e;
    }

    public Object unwrap() {
        return this.e;
    }

    public final void run() {
        doRun();
    }
}
