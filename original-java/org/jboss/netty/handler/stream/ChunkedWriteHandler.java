package org.jboss.netty.handler.stream;

import java.io.IOException;
import java.nio.channels.ClosedChannelException;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.ChannelBuffers;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelDownstreamHandler;
import org.jboss.netty.channel.ChannelEvent;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.ChannelFutureListener;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.channel.ChannelStateEvent;
import org.jboss.netty.channel.ChannelUpstreamHandler;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.channel.LifeCycleAwareChannelHandler;
import org.jboss.netty.channel.MessageEvent;
import org.jboss.netty.logging.InternalLogger;
import org.jboss.netty.logging.InternalLoggerFactory;

public class ChunkedWriteHandler implements ChannelDownstreamHandler, ChannelUpstreamHandler, LifeCycleAwareChannelHandler {
    static final /* synthetic */ boolean $assertionsDisabled = (!ChunkedWriteHandler.class.desiredAssertionStatus());
    private static final InternalLogger logger = InternalLoggerFactory.getInstance(ChunkedWriteHandler.class);
    private volatile ChannelHandlerContext ctx;
    private MessageEvent currentEvent;
    private final AtomicBoolean flush = new AtomicBoolean(false);
    private volatile boolean flushNeeded;
    private final Queue<MessageEvent> queue = new ConcurrentLinkedQueue();

    public void resumeTransfer() {
        ChannelHandlerContext channelHandlerContext = this.ctx;
        if (channelHandlerContext != null) {
            try {
                flush(channelHandlerContext, false);
            } catch (Exception e) {
                if (logger.isWarnEnabled()) {
                    logger.warn("Unexpected exception while sending chunks.", e);
                }
            }
        }
    }

    public void handleDownstream(ChannelHandlerContext channelHandlerContext, ChannelEvent channelEvent) throws Exception {
        if (!(channelEvent instanceof MessageEvent)) {
            channelHandlerContext.sendDownstream(channelEvent);
            return;
        }
        boolean offer = this.queue.offer((MessageEvent) channelEvent);
        if ($assertionsDisabled || offer) {
            Channel channel = channelHandlerContext.getChannel();
            if (channel.isWritable() || !channel.isConnected()) {
                this.ctx = channelHandlerContext;
                flush(channelHandlerContext, false);
                return;
            }
            return;
        }
        throw new AssertionError();
    }

    public void handleUpstream(ChannelHandlerContext channelHandlerContext, ChannelEvent channelEvent) throws Exception {
        if (channelEvent instanceof ChannelStateEvent) {
            switch (((ChannelStateEvent) channelEvent).getState()) {
                case INTEREST_OPS:
                    flush(channelHandlerContext, true);
                    break;
                case OPEN:
                    if (!Boolean.TRUE.equals(((ChannelStateEvent) channelEvent).getValue())) {
                        flush(channelHandlerContext, true);
                        break;
                    }
                    break;
            }
        }
        channelHandlerContext.sendUpstream(channelEvent);
    }

    private void discard(ChannelHandlerContext channelHandlerContext, boolean z) {
        MessageEvent messageEvent;
        Throwable th;
        Throwable th2 = null;
        while (true) {
            MessageEvent messageEvent2 = this.currentEvent;
            if (this.currentEvent == null) {
                messageEvent = (MessageEvent) this.queue.poll();
            } else {
                this.currentEvent = null;
                messageEvent = messageEvent2;
            }
            if (messageEvent == null) {
                break;
            }
            Object message = messageEvent.getMessage();
            if (message instanceof ChunkedInput) {
                closeInput((ChunkedInput) message);
            }
            if (th2 == null) {
                th = new ClosedChannelException();
            } else {
                th = th2;
            }
            messageEvent.getFuture().setFailure(th);
            th2 = th;
        }
        if (th2 == null) {
            return;
        }
        if (z) {
            Channels.fireExceptionCaught(channelHandlerContext.getChannel(), th2);
        } else {
            Channels.fireExceptionCaughtLater(channelHandlerContext.getChannel(), th2);
        }
    }

    private void flush(ChannelHandlerContext channelHandlerContext, boolean z) throws Exception {
        boolean z2;
        final MessageEvent messageEvent;
        final ChunkedInput chunkedInput;
        ChannelFuture future;
        boolean z3;
        AtomicBoolean atomicBoolean;
        Channel channel = channelHandlerContext.getChannel();
        this.flushNeeded = true;
        boolean compareAndSet = this.flush.compareAndSet(false, true);
        if (compareAndSet) {
            this.flushNeeded = false;
            try {
                if (!channel.isConnected()) {
                    discard(channelHandlerContext, z);
                    atomicBoolean = this.flush;
                } else {
                    z2 = false;
                    do {
                        if (channel.isWritable()) {
                            if (this.currentEvent == null) {
                                this.currentEvent = (MessageEvent) this.queue.poll();
                            }
                            if (this.currentEvent != null) {
                                if (this.currentEvent.getFuture().isDone()) {
                                    this.currentEvent = null;
                                } else {
                                    messageEvent = this.currentEvent;
                                    Object message = messageEvent.getMessage();
                                    if (message instanceof ChunkedInput) {
                                        chunkedInput = (ChunkedInput) message;
                                        Object nextChunk = chunkedInput.nextChunk();
                                        boolean isEndOfInput = chunkedInput.isEndOfInput();
                                        if (nextChunk == null) {
                                            ChannelBuffer channelBuffer = ChannelBuffers.EMPTY_BUFFER;
                                            if (!isEndOfInput) {
                                                z3 = true;
                                            } else {
                                                z3 = false;
                                            }
                                            Object obj = channelBuffer;
                                            z2 = z3;
                                            nextChunk = obj;
                                        } else {
                                            z2 = false;
                                        }
                                        if (!z2) {
                                            if (isEndOfInput) {
                                                this.currentEvent = null;
                                                ChannelFuture future2 = messageEvent.getFuture();
                                                future2.addListener(new ChannelFutureListener() {
                                                    public void operationComplete(ChannelFuture channelFuture) throws Exception {
                                                        ChunkedWriteHandler.closeInput(chunkedInput);
                                                    }
                                                });
                                                future = future2;
                                            } else {
                                                future = Channels.future(channel);
                                                future.addListener(new ChannelFutureListener() {
                                                    public void operationComplete(ChannelFuture channelFuture) throws Exception {
                                                        if (!channelFuture.isSuccess()) {
                                                            messageEvent.getFuture().setFailure(channelFuture.getCause());
                                                            ChunkedWriteHandler.closeInput((ChunkedInput) messageEvent.getMessage());
                                                        }
                                                    }
                                                });
                                            }
                                            Channels.write(channelHandlerContext, future, nextChunk, messageEvent.getRemoteAddress());
                                        }
                                    } else {
                                        this.currentEvent = null;
                                        channelHandlerContext.sendDownstream(messageEvent);
                                    }
                                }
                            }
                        }
                        this.flush.set(false);
                    } while (channel.isConnected());
                    discard(channelHandlerContext, z);
                    atomicBoolean = this.flush;
                }
                atomicBoolean.set(false);
                return;
            } catch (Throwable th) {
                this.flush.set(false);
                throw th;
            }
        } else {
            z2 = false;
        }
        if (!compareAndSet) {
            return;
        }
        if (!channel.isConnected() || ((channel.isWritable() && !this.queue.isEmpty() && !z2) || this.flushNeeded)) {
            flush(channelHandlerContext, z);
        }
    }

    static void closeInput(ChunkedInput chunkedInput) {
        try {
            chunkedInput.close();
        } catch (Throwable th) {
            if (logger.isWarnEnabled()) {
                logger.warn("Failed to close a chunked input.", th);
            }
        }
    }

    public void beforeAdd(ChannelHandlerContext channelHandlerContext) throws Exception {
    }

    public void afterAdd(ChannelHandlerContext channelHandlerContext) throws Exception {
    }

    public void beforeRemove(ChannelHandlerContext channelHandlerContext) throws Exception {
        flush(channelHandlerContext, false);
    }

    public void afterRemove(ChannelHandlerContext channelHandlerContext) throws Exception {
        MessageEvent messageEvent;
        Throwable th;
        boolean z = false;
        Throwable th2 = null;
        while (true) {
            MessageEvent messageEvent2 = this.currentEvent;
            if (this.currentEvent == null) {
                messageEvent = (MessageEvent) this.queue.poll();
            } else {
                this.currentEvent = null;
                messageEvent = messageEvent2;
            }
            if (messageEvent == null) {
                break;
            }
            Object message = messageEvent.getMessage();
            if (message instanceof ChunkedInput) {
                closeInput((ChunkedInput) message);
            }
            if (th2 == null) {
                th = new IOException("Unable to flush event, discarding");
            } else {
                th = th2;
            }
            messageEvent.getFuture().setFailure(th);
            z = true;
            th2 = th;
        }
        if (z) {
            Channels.fireExceptionCaughtLater(channelHandlerContext.getChannel(), th2);
        }
    }
}
