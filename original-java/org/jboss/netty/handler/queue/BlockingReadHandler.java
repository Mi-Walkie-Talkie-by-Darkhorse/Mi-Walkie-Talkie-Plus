package org.jboss.netty.handler.queue;

import java.io.IOException;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import org.jboss.netty.channel.ChannelEvent;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.channel.ChannelStateEvent;
import org.jboss.netty.channel.ExceptionEvent;
import org.jboss.netty.channel.MessageEvent;
import org.jboss.netty.channel.SimpleChannelUpstreamHandler;
import org.jboss.netty.util.internal.DeadLockProofWorker;

public class BlockingReadHandler<E> extends SimpleChannelUpstreamHandler {
    static final /* synthetic */ boolean $assertionsDisabled = (!BlockingReadHandler.class.desiredAssertionStatus());
    private volatile boolean closed;
    private final BlockingQueue<ChannelEvent> queue;

    public BlockingReadHandler() {
        this(new LinkedBlockingQueue());
    }

    public BlockingReadHandler(BlockingQueue<ChannelEvent> blockingQueue) {
        if (blockingQueue == null) {
            throw new NullPointerException("queue");
        }
        this.queue = blockingQueue;
    }

    /* access modifiers changed from: protected */
    public BlockingQueue<ChannelEvent> getQueue() {
        return this.queue;
    }

    public boolean isClosed() {
        return this.closed;
    }

    public E read() throws IOException, InterruptedException {
        ChannelEvent readEvent = readEvent();
        if (readEvent == null) {
            return null;
        }
        if (readEvent instanceof MessageEvent) {
            return getMessage((MessageEvent) readEvent);
        }
        if (readEvent instanceof ExceptionEvent) {
            throw ((IOException) new IOException().initCause(((ExceptionEvent) readEvent).getCause()));
        }
        throw new IllegalStateException();
    }

    public E read(long j, TimeUnit timeUnit) throws IOException, InterruptedException {
        ChannelEvent readEvent = readEvent(j, timeUnit);
        if (readEvent == null) {
            return null;
        }
        if (readEvent instanceof MessageEvent) {
            return getMessage((MessageEvent) readEvent);
        }
        if (readEvent instanceof ExceptionEvent) {
            throw ((IOException) new IOException().initCause(((ExceptionEvent) readEvent).getCause()));
        }
        throw new IllegalStateException();
    }

    public ChannelEvent readEvent() throws InterruptedException {
        detectDeadLock();
        if (isClosed() && getQueue().isEmpty()) {
            return null;
        }
        ChannelEvent channelEvent = (ChannelEvent) getQueue().take();
        if (!(channelEvent instanceof ChannelStateEvent)) {
            return channelEvent;
        }
        if ($assertionsDisabled || this.closed) {
            return null;
        }
        throw new AssertionError();
    }

    public ChannelEvent readEvent(long j, TimeUnit timeUnit) throws InterruptedException, BlockingReadTimeoutException {
        detectDeadLock();
        if (isClosed() && getQueue().isEmpty()) {
            return null;
        }
        ChannelEvent channelEvent = (ChannelEvent) getQueue().poll(j, timeUnit);
        if (channelEvent == null) {
            throw new BlockingReadTimeoutException();
        } else if (!(channelEvent instanceof ChannelStateEvent)) {
            return channelEvent;
        } else {
            if ($assertionsDisabled || this.closed) {
                return null;
            }
            throw new AssertionError();
        }
    }

    private static void detectDeadLock() {
        if (DeadLockProofWorker.PARENT.get() != null) {
            throw new IllegalStateException("read*(...) in I/O thread causes a dead lock or sudden performance drop. Implement a state machine or call read*() from a different thread.");
        }
    }

    public void messageReceived(ChannelHandlerContext channelHandlerContext, MessageEvent messageEvent) throws Exception {
        getQueue().put(messageEvent);
    }

    public void exceptionCaught(ChannelHandlerContext channelHandlerContext, ExceptionEvent exceptionEvent) throws Exception {
        getQueue().put(exceptionEvent);
    }

    public void channelClosed(ChannelHandlerContext channelHandlerContext, ChannelStateEvent channelStateEvent) throws Exception {
        this.closed = true;
        getQueue().put(channelStateEvent);
    }

    private E getMessage(MessageEvent messageEvent) {
        return messageEvent.getMessage();
    }
}
