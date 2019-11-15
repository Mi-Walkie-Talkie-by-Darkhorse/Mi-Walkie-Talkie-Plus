package org.jboss.netty.handler.queue;

import java.io.IOException;
import java.nio.channels.ClosedChannelException;
import java.util.ArrayList;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.ChannelBuffers;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelEvent;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.ChannelFutureListener;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.channel.ChannelStateEvent;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.channel.LifeCycleAwareChannelHandler;
import org.jboss.netty.channel.MessageEvent;
import org.jboss.netty.channel.SimpleChannelHandler;

public class BufferedWriteHandler extends SimpleChannelHandler implements LifeCycleAwareChannelHandler {
    static final /* synthetic */ boolean $assertionsDisabled = (!BufferedWriteHandler.class.desiredAssertionStatus());
    private final boolean consolidateOnFlush;
    private volatile ChannelHandlerContext ctx;
    private final AtomicBoolean flush;
    private final Queue<MessageEvent> queue;

    public BufferedWriteHandler() {
        this(false);
    }

    public BufferedWriteHandler(Queue<MessageEvent> queue2) {
        this(queue2, false);
    }

    public BufferedWriteHandler(boolean z) {
        this(new ConcurrentLinkedQueue(), z);
    }

    public BufferedWriteHandler(Queue<MessageEvent> queue2, boolean z) {
        this.flush = new AtomicBoolean(false);
        if (queue2 == null) {
            throw new NullPointerException("queue");
        }
        this.queue = queue2;
        this.consolidateOnFlush = z;
    }

    public boolean isConsolidateOnFlush() {
        return this.consolidateOnFlush;
    }

    /* access modifiers changed from: protected */
    public Queue<MessageEvent> getQueue() {
        return this.queue;
    }

    public void flush() {
        flush(this.consolidateOnFlush);
    }

    public void flush(boolean z) {
        ChannelHandlerContext channelHandlerContext = this.ctx;
        if (channelHandlerContext != null) {
            Channel channel = channelHandlerContext.getChannel();
            boolean compareAndSet = this.flush.compareAndSet(false, true);
            if (compareAndSet) {
                Queue queue2 = getQueue();
                if (!z) {
                    while (true) {
                        MessageEvent messageEvent = (MessageEvent) queue2.poll();
                        if (messageEvent == null) {
                            break;
                        }
                        channelHandlerContext.sendDownstream(messageEvent);
                    }
                } else if (queue2.isEmpty()) {
                    this.flush.set(false);
                    return;
                } else {
                    List arrayList = new ArrayList();
                    while (true) {
                        MessageEvent messageEvent2 = (MessageEvent) queue2.poll();
                        if (messageEvent2 == null) {
                            break;
                        } else if (!(messageEvent2.getMessage() instanceof ChannelBuffer)) {
                            arrayList = consolidatedWrite(arrayList);
                            if (arrayList == null) {
                                arrayList = new ArrayList();
                            }
                            channelHandlerContext.sendDownstream(messageEvent2);
                        } else {
                            arrayList.add(messageEvent2);
                        }
                    }
                    consolidatedWrite(arrayList);
                }
                this.flush.set(false);
            }
            if (!compareAndSet) {
                return;
            }
            if (!channel.isConnected() || (channel.isWritable() && !this.queue.isEmpty())) {
                flush(z);
            }
        }
    }

    private List<MessageEvent> consolidatedWrite(final List<MessageEvent> list) {
        int i = 0;
        int size = list.size();
        if (size == 1) {
            this.ctx.sendDownstream((ChannelEvent) list.remove(0));
            return list;
        } else if (size == 0) {
            return list;
        } else {
            ChannelBuffer[] channelBufferArr = new ChannelBuffer[size];
            while (true) {
                int i2 = i;
                if (i2 < channelBufferArr.length) {
                    channelBufferArr[i2] = (ChannelBuffer) ((MessageEvent) list.get(i2)).getMessage();
                    i = i2 + 1;
                } else {
                    ChannelBuffer wrappedBuffer = ChannelBuffers.wrappedBuffer(channelBufferArr);
                    ChannelFuture future = Channels.future(this.ctx.getChannel());
                    future.addListener(new ChannelFutureListener() {
                        public void operationComplete(ChannelFuture channelFuture) throws Exception {
                            if (channelFuture.isSuccess()) {
                                for (MessageEvent future : list) {
                                    future.getFuture().setSuccess();
                                }
                                return;
                            }
                            Throwable cause = channelFuture.getCause();
                            for (MessageEvent future2 : list) {
                                future2.getFuture().setFailure(cause);
                            }
                        }
                    });
                    Channels.write(this.ctx, future, (Object) wrappedBuffer);
                    return null;
                }
            }
        }
    }

    public void writeRequested(ChannelHandlerContext channelHandlerContext, MessageEvent messageEvent) throws Exception {
        if (this.ctx == null) {
            this.ctx = channelHandlerContext;
        } else if (!$assertionsDisabled && this.ctx != channelHandlerContext) {
            throw new AssertionError();
        }
        getQueue().add(messageEvent);
    }

    public void disconnectRequested(ChannelHandlerContext channelHandlerContext, ChannelStateEvent channelStateEvent) throws Exception {
        try {
            flush(this.consolidateOnFlush);
        } finally {
            channelHandlerContext.sendDownstream(channelStateEvent);
        }
    }

    public void closeRequested(ChannelHandlerContext channelHandlerContext, ChannelStateEvent channelStateEvent) throws Exception {
        try {
            flush(this.consolidateOnFlush);
        } finally {
            channelHandlerContext.sendDownstream(channelStateEvent);
        }
    }

    public void channelClosed(ChannelHandlerContext channelHandlerContext, ChannelStateEvent channelStateEvent) throws Exception {
        ClosedChannelException closedChannelException = null;
        while (true) {
            MessageEvent messageEvent = (MessageEvent) this.queue.poll();
            if (messageEvent == null) {
                break;
            }
            if (closedChannelException == null) {
                closedChannelException = new ClosedChannelException();
            }
            messageEvent.getFuture().setFailure(closedChannelException);
        }
        if (closedChannelException != null) {
            Channels.fireExceptionCaught(channelHandlerContext.getChannel(), (Throwable) closedChannelException);
        }
        super.channelClosed(channelHandlerContext, channelStateEvent);
    }

    public void beforeAdd(ChannelHandlerContext channelHandlerContext) throws Exception {
    }

    public void afterAdd(ChannelHandlerContext channelHandlerContext) throws Exception {
    }

    public void beforeRemove(ChannelHandlerContext channelHandlerContext) throws Exception {
        flush(this.consolidateOnFlush);
    }

    public void afterRemove(ChannelHandlerContext channelHandlerContext) throws Exception {
        IOException iOException = null;
        while (true) {
            MessageEvent messageEvent = (MessageEvent) this.queue.poll();
            if (messageEvent == null) {
                break;
            }
            if (iOException == null) {
                iOException = new IOException("Unable to flush message");
            }
            messageEvent.getFuture().setFailure(iOException);
        }
        if (iOException != null) {
            Channels.fireExceptionCaughtLater(channelHandlerContext.getChannel(), (Throwable) iOException);
        }
    }
}
