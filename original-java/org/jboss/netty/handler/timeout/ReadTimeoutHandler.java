package org.jboss.netty.handler.timeout;

import java.util.concurrent.TimeUnit;
import org.jboss.netty.channel.ChannelHandler.Sharable;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.channel.ChannelStateEvent;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.channel.LifeCycleAwareChannelHandler;
import org.jboss.netty.channel.MessageEvent;
import org.jboss.netty.channel.SimpleChannelUpstreamHandler;
import org.jboss.netty.util.ExternalResourceReleasable;
import org.jboss.netty.util.Timeout;
import org.jboss.netty.util.Timer;
import org.jboss.netty.util.TimerTask;

@Sharable
public class ReadTimeoutHandler extends SimpleChannelUpstreamHandler implements LifeCycleAwareChannelHandler, ExternalResourceReleasable {
    static final ReadTimeoutException EXCEPTION = new ReadTimeoutException();
    final long timeoutMillis;
    final Timer timer;

    private final class ReadTimeoutTask implements TimerTask {
        private final ChannelHandlerContext ctx;

        ReadTimeoutTask(ChannelHandlerContext channelHandlerContext) {
            this.ctx = channelHandlerContext;
        }

        public void run(Timeout timeout) throws Exception {
            if (!timeout.isCancelled() && this.ctx.getChannel().isOpen()) {
                State state = (State) this.ctx.getAttachment();
                long currentTimeMillis = ReadTimeoutHandler.this.timeoutMillis - (System.currentTimeMillis() - state.lastReadTime);
                if (currentTimeMillis <= 0) {
                    state.timeout = ReadTimeoutHandler.this.timer.newTimeout(this, ReadTimeoutHandler.this.timeoutMillis, TimeUnit.MILLISECONDS);
                    fireReadTimedOut(this.ctx);
                    return;
                }
                state.timeout = ReadTimeoutHandler.this.timer.newTimeout(this, currentTimeMillis, TimeUnit.MILLISECONDS);
            }
        }

        private void fireReadTimedOut(final ChannelHandlerContext channelHandlerContext) throws Exception {
            channelHandlerContext.getPipeline().execute(new Runnable() {
                public void run() {
                    try {
                        ReadTimeoutHandler.this.readTimedOut(channelHandlerContext);
                    } catch (Throwable th) {
                        Channels.fireExceptionCaught(channelHandlerContext, th);
                    }
                }
            });
        }
    }

    private static final class State {
        volatile long lastReadTime = System.currentTimeMillis();
        int state;
        volatile Timeout timeout;

        State() {
        }
    }

    public ReadTimeoutHandler(Timer timer2, int i) {
        this(timer2, (long) i, TimeUnit.SECONDS);
    }

    public ReadTimeoutHandler(Timer timer2, long j, TimeUnit timeUnit) {
        if (timer2 == null) {
            throw new NullPointerException("timer");
        } else if (timeUnit == null) {
            throw new NullPointerException("unit");
        } else {
            this.timer = timer2;
            if (j <= 0) {
                this.timeoutMillis = 0;
            } else {
                this.timeoutMillis = Math.max(timeUnit.toMillis(j), 1);
            }
        }
    }

    public void releaseExternalResources() {
        this.timer.stop();
    }

    public void beforeAdd(ChannelHandlerContext channelHandlerContext) throws Exception {
        if (channelHandlerContext.getPipeline().isAttached()) {
            initialize(channelHandlerContext);
        }
    }

    public void afterAdd(ChannelHandlerContext channelHandlerContext) throws Exception {
    }

    public void beforeRemove(ChannelHandlerContext channelHandlerContext) throws Exception {
        destroy(channelHandlerContext);
    }

    public void afterRemove(ChannelHandlerContext channelHandlerContext) throws Exception {
    }

    public void channelOpen(ChannelHandlerContext channelHandlerContext, ChannelStateEvent channelStateEvent) throws Exception {
        initialize(channelHandlerContext);
        channelHandlerContext.sendUpstream(channelStateEvent);
    }

    public void channelClosed(ChannelHandlerContext channelHandlerContext, ChannelStateEvent channelStateEvent) throws Exception {
        destroy(channelHandlerContext);
        channelHandlerContext.sendUpstream(channelStateEvent);
    }

    public void messageReceived(ChannelHandlerContext channelHandlerContext, MessageEvent messageEvent) throws Exception {
        ((State) channelHandlerContext.getAttachment()).lastReadTime = System.currentTimeMillis();
        channelHandlerContext.sendUpstream(messageEvent);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:16:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:8:0x0014, code lost:
        if (r6.timeoutMillis <= 0) goto L_?;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0016, code lost:
        r1.timeout = r6.timer.newTimeout(new org.jboss.netty.handler.timeout.ReadTimeoutHandler.ReadTimeoutTask(r6, r7), r6.timeoutMillis, java.util.concurrent.TimeUnit.MILLISECONDS);
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void initialize(org.jboss.netty.channel.ChannelHandlerContext r7) {
        /*
            r6 = this;
            org.jboss.netty.handler.timeout.ReadTimeoutHandler$State r1 = state(r7)
            monitor-enter(r1)
            int r0 = r1.state     // Catch:{ all -> 0x002a }
            switch(r0) {
                case 1: goto L_0x0028;
                case 2: goto L_0x0028;
                default: goto L_0x000a;
            }     // Catch:{ all -> 0x002a }
        L_0x000a:
            r0 = 1
            r1.state = r0     // Catch:{ all -> 0x002a }
            monitor-exit(r1)     // Catch:{ all -> 0x002a }
            long r2 = r6.timeoutMillis
            r4 = 0
            int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r0 <= 0) goto L_0x0027
            org.jboss.netty.util.Timer r0 = r6.timer
            org.jboss.netty.handler.timeout.ReadTimeoutHandler$ReadTimeoutTask r2 = new org.jboss.netty.handler.timeout.ReadTimeoutHandler$ReadTimeoutTask
            r2.<init>(r7)
            long r4 = r6.timeoutMillis
            java.util.concurrent.TimeUnit r3 = java.util.concurrent.TimeUnit.MILLISECONDS
            org.jboss.netty.util.Timeout r0 = r0.newTimeout(r2, r4, r3)
            r1.timeout = r0
        L_0x0027:
            return
        L_0x0028:
            monitor-exit(r1)     // Catch:{ all -> 0x002a }
            goto L_0x0027
        L_0x002a:
            r0 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x002a }
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.handler.timeout.ReadTimeoutHandler.initialize(org.jboss.netty.channel.ChannelHandlerContext):void");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x0014, code lost:
        r1.timeout.cancel();
        r1.timeout = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0012, code lost:
        if (r1.timeout == null) goto L_?;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static void destroy(org.jboss.netty.channel.ChannelHandlerContext r3) {
        /*
            org.jboss.netty.handler.timeout.ReadTimeoutHandler$State r1 = state(r3)
            monitor-enter(r1)
            int r0 = r1.state     // Catch:{ all -> 0x001d }
            r2 = 1
            if (r0 == r2) goto L_0x000c
            monitor-exit(r1)     // Catch:{ all -> 0x001d }
        L_0x000b:
            return
        L_0x000c:
            r0 = 2
            r1.state = r0     // Catch:{ all -> 0x001d }
            monitor-exit(r1)     // Catch:{ all -> 0x001d }
            org.jboss.netty.util.Timeout r0 = r1.timeout
            if (r0 == 0) goto L_0x000b
            org.jboss.netty.util.Timeout r0 = r1.timeout
            r0.cancel()
            r0 = 0
            r1.timeout = r0
            goto L_0x000b
        L_0x001d:
            r0 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x001d }
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.handler.timeout.ReadTimeoutHandler.destroy(org.jboss.netty.channel.ChannelHandlerContext):void");
    }

    private static State state(ChannelHandlerContext channelHandlerContext) {
        State state;
        synchronized (channelHandlerContext) {
            state = (State) channelHandlerContext.getAttachment();
            if (state == null) {
                state = new State();
                channelHandlerContext.setAttachment(state);
            }
        }
        return state;
    }

    /* access modifiers changed from: protected */
    public void readTimedOut(ChannelHandlerContext channelHandlerContext) throws Exception {
        Channels.fireExceptionCaught(channelHandlerContext, (Throwable) EXCEPTION);
    }
}
