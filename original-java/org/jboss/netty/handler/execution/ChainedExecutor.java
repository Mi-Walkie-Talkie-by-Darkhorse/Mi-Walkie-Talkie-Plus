package org.jboss.netty.handler.execution;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import org.jboss.netty.util.ExternalResourceReleasable;

public class ChainedExecutor implements Executor, ExternalResourceReleasable {
    static final /* synthetic */ boolean $assertionsDisabled = (!ChainedExecutor.class.desiredAssertionStatus());
    private final Executor cur;
    private final ChannelEventRunnableFilter filter;
    private final Executor next;

    public ChainedExecutor(ChannelEventRunnableFilter channelEventRunnableFilter, Executor executor, Executor executor2) {
        if (channelEventRunnableFilter == null) {
            throw new NullPointerException("filter");
        } else if (executor == null) {
            throw new NullPointerException("cur");
        } else if (executor2 == null) {
            throw new NullPointerException("next");
        } else {
            this.filter = channelEventRunnableFilter;
            this.cur = executor;
            this.next = executor2;
        }
    }

    public void execute(Runnable runnable) {
        if (!$assertionsDisabled && !(runnable instanceof ChannelEventRunnable)) {
            throw new AssertionError();
        } else if (this.filter.filter((ChannelEventRunnable) runnable)) {
            this.cur.execute(runnable);
        } else {
            this.next.execute(runnable);
        }
    }

    public void releaseExternalResources() {
        if (this.cur instanceof ExecutorService) {
            ((ExecutorService) this.cur).shutdown();
        }
        if (this.next instanceof ExecutorService) {
            ((ExecutorService) this.next).shutdown();
        }
        releaseExternal(this.cur);
        releaseExternal(this.next);
    }

    private static void releaseExternal(Executor executor) {
        if (executor instanceof ExternalResourceReleasable) {
            ((ExternalResourceReleasable) executor).releaseExternalResources();
        }
    }
}
