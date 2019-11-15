package org.jboss.netty.handler.timeout;

import java.util.concurrent.TimeUnit;
import org.jboss.netty.channel.ChannelHandler.Sharable;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.channel.ChannelStateEvent;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.channel.LifeCycleAwareChannelHandler;
import org.jboss.netty.channel.MessageEvent;
import org.jboss.netty.channel.SimpleChannelUpstreamHandler;
import org.jboss.netty.channel.WriteCompletionEvent;
import org.jboss.netty.util.ExternalResourceReleasable;
import org.jboss.netty.util.Timeout;
import org.jboss.netty.util.Timer;
import org.jboss.netty.util.TimerTask;

@Sharable
public class IdleStateHandler extends SimpleChannelUpstreamHandler implements LifeCycleAwareChannelHandler, ExternalResourceReleasable {
    final long allIdleTimeMillis;
    final long readerIdleTimeMillis;
    final Timer timer;
    final long writerIdleTimeMillis;

    private final class AllIdleTimeoutTask implements TimerTask {
        private final ChannelHandlerContext ctx;

        AllIdleTimeoutTask(ChannelHandlerContext channelHandlerContext) {
            this.ctx = channelHandlerContext;
        }

        public void run(Timeout timeout) throws Exception {
            if (!timeout.isCancelled() && this.ctx.getChannel().isOpen()) {
                State state = (State) this.ctx.getAttachment();
                long currentTimeMillis = System.currentTimeMillis();
                long max = Math.max(state.lastReadTime, state.lastWriteTime);
                long j = IdleStateHandler.this.allIdleTimeMillis - (currentTimeMillis - max);
                if (j <= 0) {
                    state.allIdleTimeout = IdleStateHandler.this.timer.newTimeout(this, IdleStateHandler.this.allIdleTimeMillis, TimeUnit.MILLISECONDS);
                    IdleStateHandler.this.fireChannelIdle(this.ctx, IdleState.ALL_IDLE, max);
                    return;
                }
                state.allIdleTimeout = IdleStateHandler.this.timer.newTimeout(this, j, TimeUnit.MILLISECONDS);
            }
        }
    }

    private final class ReaderIdleTimeoutTask implements TimerTask {
        private final ChannelHandlerContext ctx;

        ReaderIdleTimeoutTask(ChannelHandlerContext channelHandlerContext) {
            this.ctx = channelHandlerContext;
        }

        public void run(Timeout timeout) throws Exception {
            if (!timeout.isCancelled() && this.ctx.getChannel().isOpen()) {
                State state = (State) this.ctx.getAttachment();
                long currentTimeMillis = System.currentTimeMillis();
                long j = state.lastReadTime;
                long j2 = IdleStateHandler.this.readerIdleTimeMillis - (currentTimeMillis - j);
                if (j2 <= 0) {
                    state.readerIdleTimeout = IdleStateHandler.this.timer.newTimeout(this, IdleStateHandler.this.readerIdleTimeMillis, TimeUnit.MILLISECONDS);
                    IdleStateHandler.this.fireChannelIdle(this.ctx, IdleState.READER_IDLE, j);
                    return;
                }
                state.readerIdleTimeout = IdleStateHandler.this.timer.newTimeout(this, j2, TimeUnit.MILLISECONDS);
            }
        }
    }

    private static final class State {
        volatile Timeout allIdleTimeout;
        volatile long lastReadTime;
        volatile long lastWriteTime;
        volatile Timeout readerIdleTimeout;
        int state;
        volatile Timeout writerIdleTimeout;

        State() {
        }
    }

    private final class WriterIdleTimeoutTask implements TimerTask {
        private final ChannelHandlerContext ctx;

        WriterIdleTimeoutTask(ChannelHandlerContext channelHandlerContext) {
            this.ctx = channelHandlerContext;
        }

        public void run(Timeout timeout) throws Exception {
            if (!timeout.isCancelled() && this.ctx.getChannel().isOpen()) {
                State state = (State) this.ctx.getAttachment();
                long currentTimeMillis = System.currentTimeMillis();
                long j = state.lastWriteTime;
                long j2 = IdleStateHandler.this.writerIdleTimeMillis - (currentTimeMillis - j);
                if (j2 <= 0) {
                    state.writerIdleTimeout = IdleStateHandler.this.timer.newTimeout(this, IdleStateHandler.this.writerIdleTimeMillis, TimeUnit.MILLISECONDS);
                    IdleStateHandler.this.fireChannelIdle(this.ctx, IdleState.WRITER_IDLE, j);
                    return;
                }
                state.writerIdleTimeout = IdleStateHandler.this.timer.newTimeout(this, j2, TimeUnit.MILLISECONDS);
            }
        }
    }

    public IdleStateHandler(Timer timer2, int i, int i2, int i3) {
        this(timer2, (long) i, (long) i2, (long) i3, TimeUnit.SECONDS);
    }

    public IdleStateHandler(Timer timer2, long j, long j2, long j3, TimeUnit timeUnit) {
        if (timer2 == null) {
            throw new NullPointerException("timer");
        } else if (timeUnit == null) {
            throw new NullPointerException("unit");
        } else {
            this.timer = timer2;
            if (j <= 0) {
                this.readerIdleTimeMillis = 0;
            } else {
                this.readerIdleTimeMillis = Math.max(timeUnit.toMillis(j), 1);
            }
            if (j2 <= 0) {
                this.writerIdleTimeMillis = 0;
            } else {
                this.writerIdleTimeMillis = Math.max(timeUnit.toMillis(j2), 1);
            }
            if (j3 <= 0) {
                this.allIdleTimeMillis = 0;
            } else {
                this.allIdleTimeMillis = Math.max(timeUnit.toMillis(j3), 1);
            }
        }
    }

    public long getReaderIdleTimeInMillis() {
        return this.readerIdleTimeMillis;
    }

    public long getWriterIdleTimeInMillis() {
        return this.writerIdleTimeMillis;
    }

    public long getAllIdleTimeInMillis() {
        return this.allIdleTimeMillis;
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

    public void writeComplete(ChannelHandlerContext channelHandlerContext, WriteCompletionEvent writeCompletionEvent) throws Exception {
        if (writeCompletionEvent.getWrittenAmount() > 0) {
            ((State) channelHandlerContext.getAttachment()).lastWriteTime = System.currentTimeMillis();
        }
        channelHandlerContext.sendUpstream(writeCompletionEvent);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0033, code lost:
        if (r8.writerIdleTimeMillis <= 0) goto L_0x0046;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0035, code lost:
        r1.writerIdleTimeout = r8.timer.newTimeout(new org.jboss.netty.handler.timeout.IdleStateHandler.WriterIdleTimeoutTask(r8, r9), r8.writerIdleTimeMillis, java.util.concurrent.TimeUnit.MILLISECONDS);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x004a, code lost:
        if (r8.allIdleTimeMillis <= 0) goto L_?;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x004c, code lost:
        r1.allIdleTimeout = r8.timer.newTimeout(new org.jboss.netty.handler.timeout.IdleStateHandler.AllIdleTimeoutTask(r8, r9), r8.allIdleTimeMillis, java.util.concurrent.TimeUnit.MILLISECONDS);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:7:0x0010, code lost:
        r2 = java.lang.System.currentTimeMillis();
        r1.lastWriteTime = r2;
        r1.lastReadTime = r2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:8:0x001c, code lost:
        if (r8.readerIdleTimeMillis <= 0) goto L_0x002f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x001e, code lost:
        r1.readerIdleTimeout = r8.timer.newTimeout(new org.jboss.netty.handler.timeout.IdleStateHandler.ReaderIdleTimeoutTask(r8, r9), r8.readerIdleTimeMillis, java.util.concurrent.TimeUnit.MILLISECONDS);
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void initialize(org.jboss.netty.channel.ChannelHandlerContext r9) {
        /*
            r8 = this;
            r6 = 0
            org.jboss.netty.handler.timeout.IdleStateHandler$State r1 = state(r9)
            monitor-enter(r1)
            int r0 = r1.state     // Catch:{ all -> 0x0060 }
            switch(r0) {
                case 1: goto L_0x005e;
                case 2: goto L_0x005e;
                default: goto L_0x000c;
            }     // Catch:{ all -> 0x0060 }
        L_0x000c:
            r0 = 1
            r1.state = r0     // Catch:{ all -> 0x0060 }
            monitor-exit(r1)     // Catch:{ all -> 0x0060 }
            long r2 = java.lang.System.currentTimeMillis()
            r1.lastWriteTime = r2
            r1.lastReadTime = r2
            long r2 = r8.readerIdleTimeMillis
            int r0 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1))
            if (r0 <= 0) goto L_0x002f
            org.jboss.netty.util.Timer r0 = r8.timer
            org.jboss.netty.handler.timeout.IdleStateHandler$ReaderIdleTimeoutTask r2 = new org.jboss.netty.handler.timeout.IdleStateHandler$ReaderIdleTimeoutTask
            r2.<init>(r9)
            long r4 = r8.readerIdleTimeMillis
            java.util.concurrent.TimeUnit r3 = java.util.concurrent.TimeUnit.MILLISECONDS
            org.jboss.netty.util.Timeout r0 = r0.newTimeout(r2, r4, r3)
            r1.readerIdleTimeout = r0
        L_0x002f:
            long r2 = r8.writerIdleTimeMillis
            int r0 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1))
            if (r0 <= 0) goto L_0x0046
            org.jboss.netty.util.Timer r0 = r8.timer
            org.jboss.netty.handler.timeout.IdleStateHandler$WriterIdleTimeoutTask r2 = new org.jboss.netty.handler.timeout.IdleStateHandler$WriterIdleTimeoutTask
            r2.<init>(r9)
            long r4 = r8.writerIdleTimeMillis
            java.util.concurrent.TimeUnit r3 = java.util.concurrent.TimeUnit.MILLISECONDS
            org.jboss.netty.util.Timeout r0 = r0.newTimeout(r2, r4, r3)
            r1.writerIdleTimeout = r0
        L_0x0046:
            long r2 = r8.allIdleTimeMillis
            int r0 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1))
            if (r0 <= 0) goto L_0x005d
            org.jboss.netty.util.Timer r0 = r8.timer
            org.jboss.netty.handler.timeout.IdleStateHandler$AllIdleTimeoutTask r2 = new org.jboss.netty.handler.timeout.IdleStateHandler$AllIdleTimeoutTask
            r2.<init>(r9)
            long r4 = r8.allIdleTimeMillis
            java.util.concurrent.TimeUnit r3 = java.util.concurrent.TimeUnit.MILLISECONDS
            org.jboss.netty.util.Timeout r0 = r0.newTimeout(r2, r4, r3)
            r1.allIdleTimeout = r0
        L_0x005d:
            return
        L_0x005e:
            monitor-exit(r1)     // Catch:{ all -> 0x0060 }
            goto L_0x005d
        L_0x0060:
            r0 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x0060 }
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.handler.timeout.IdleStateHandler.initialize(org.jboss.netty.channel.ChannelHandlerContext):void");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x0015, code lost:
        r1.readerIdleTimeout.cancel();
        r1.readerIdleTimeout = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x001e, code lost:
        if (r1.writerIdleTimeout == null) goto L_0x0027;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0020, code lost:
        r1.writerIdleTimeout.cancel();
        r1.writerIdleTimeout = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0029, code lost:
        if (r1.allIdleTimeout == null) goto L_?;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x002b, code lost:
        r1.allIdleTimeout.cancel();
        r1.allIdleTimeout = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0013, code lost:
        if (r1.readerIdleTimeout == null) goto L_0x001c;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static void destroy(org.jboss.netty.channel.ChannelHandlerContext r4) {
        /*
            r3 = 0
            org.jboss.netty.handler.timeout.IdleStateHandler$State r1 = state(r4)
            monitor-enter(r1)
            int r0 = r1.state     // Catch:{ all -> 0x0033 }
            r2 = 1
            if (r0 == r2) goto L_0x000d
            monitor-exit(r1)     // Catch:{ all -> 0x0033 }
        L_0x000c:
            return
        L_0x000d:
            r0 = 2
            r1.state = r0     // Catch:{ all -> 0x0033 }
            monitor-exit(r1)     // Catch:{ all -> 0x0033 }
            org.jboss.netty.util.Timeout r0 = r1.readerIdleTimeout
            if (r0 == 0) goto L_0x001c
            org.jboss.netty.util.Timeout r0 = r1.readerIdleTimeout
            r0.cancel()
            r1.readerIdleTimeout = r3
        L_0x001c:
            org.jboss.netty.util.Timeout r0 = r1.writerIdleTimeout
            if (r0 == 0) goto L_0x0027
            org.jboss.netty.util.Timeout r0 = r1.writerIdleTimeout
            r0.cancel()
            r1.writerIdleTimeout = r3
        L_0x0027:
            org.jboss.netty.util.Timeout r0 = r1.allIdleTimeout
            if (r0 == 0) goto L_0x000c
            org.jboss.netty.util.Timeout r0 = r1.allIdleTimeout
            r0.cancel()
            r1.allIdleTimeout = r3
            goto L_0x000c
        L_0x0033:
            r0 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x0033 }
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.handler.timeout.IdleStateHandler.destroy(org.jboss.netty.channel.ChannelHandlerContext):void");
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

    /* access modifiers changed from: private */
    public void fireChannelIdle(ChannelHandlerContext channelHandlerContext, IdleState idleState, long j) {
        final ChannelHandlerContext channelHandlerContext2 = channelHandlerContext;
        final IdleState idleState2 = idleState;
        final long j2 = j;
        channelHandlerContext.getPipeline().execute(new Runnable() {
            public void run() {
                try {
                    IdleStateHandler.this.channelIdle(channelHandlerContext2, idleState2, j2);
                } catch (Throwable th) {
                    Channels.fireExceptionCaught(channelHandlerContext2, th);
                }
            }
        });
    }

    /* access modifiers changed from: protected */
    public void channelIdle(ChannelHandlerContext channelHandlerContext, IdleState idleState, long j) throws Exception {
        channelHandlerContext.sendUpstream(new DefaultIdleStateEvent(channelHandlerContext.getChannel(), idleState, j));
    }
}
