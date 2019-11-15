package org.jboss.netty.handler.codec.embedder;

import java.lang.reflect.Array;
import java.util.ConcurrentModificationException;
import java.util.LinkedList;
import java.util.Queue;
import org.jboss.netty.buffer.ChannelBufferFactory;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelEvent;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.ChannelHandler;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.channel.ChannelPipelineException;
import org.jboss.netty.channel.ChannelSink;
import org.jboss.netty.channel.ChannelUpstreamHandler;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.channel.DefaultChannelPipeline;
import org.jboss.netty.channel.ExceptionEvent;
import org.jboss.netty.channel.MessageEvent;

abstract class AbstractCodecEmbedder<E> implements CodecEmbedder<E> {
    private final Channel channel;
    private final ChannelPipeline pipeline;
    final Queue<Object> productQueue;
    private final EmbeddedChannelSink sink;

    private static final class EmbeddedChannelPipeline extends DefaultChannelPipeline {
        EmbeddedChannelPipeline() {
        }

        /* access modifiers changed from: protected */
        public void notifyHandlerException(ChannelEvent channelEvent, Throwable th) {
            Throwable th2 = th;
            while ((th2 instanceof ChannelPipelineException) && th2.getCause() != null) {
                th2 = th2.getCause();
            }
            if (th2 instanceof CodecEmbedderException) {
                throw ((CodecEmbedderException) th2);
            }
            throw new CodecEmbedderException(th2);
        }
    }

    private final class EmbeddedChannelSink implements ChannelSink, ChannelUpstreamHandler {
        static final /* synthetic */ boolean $assertionsDisabled = (!AbstractCodecEmbedder.class.desiredAssertionStatus());

        EmbeddedChannelSink() {
        }

        public void handleUpstream(ChannelHandlerContext channelHandlerContext, ChannelEvent channelEvent) {
            handleEvent(channelEvent);
        }

        public void eventSunk(ChannelPipeline channelPipeline, ChannelEvent channelEvent) {
            handleEvent(channelEvent);
        }

        private void handleEvent(ChannelEvent channelEvent) {
            if (channelEvent instanceof MessageEvent) {
                boolean offer = AbstractCodecEmbedder.this.productQueue.offer(((MessageEvent) channelEvent).getMessage());
                if (!$assertionsDisabled && !offer) {
                    throw new AssertionError();
                }
            } else if (channelEvent instanceof ExceptionEvent) {
                throw new CodecEmbedderException(((ExceptionEvent) channelEvent).getCause());
            }
        }

        /* JADX WARNING: type inference failed for: r0v0, types: [java.lang.Throwable] */
        /* JADX WARNING: type inference failed for: r4v2, types: [java.lang.Throwable] */
        /* JADX WARNING: Multi-variable type inference failed */
        /* JADX WARNING: Unknown variable types count: 1 */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void exceptionCaught(org.jboss.netty.channel.ChannelPipeline r2, org.jboss.netty.channel.ChannelEvent r3, org.jboss.netty.channel.ChannelPipelineException r4) throws java.lang.Exception {
            /*
                r1 = this;
                java.lang.Throwable r0 = r4.getCause()
                if (r0 != 0) goto L_0x000c
            L_0x0006:
                org.jboss.netty.handler.codec.embedder.CodecEmbedderException r0 = new org.jboss.netty.handler.codec.embedder.CodecEmbedderException
                r0.<init>(r4)
                throw r0
            L_0x000c:
                r4 = r0
                goto L_0x0006
            */
            throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.handler.codec.embedder.AbstractCodecEmbedder.EmbeddedChannelSink.exceptionCaught(org.jboss.netty.channel.ChannelPipeline, org.jboss.netty.channel.ChannelEvent, org.jboss.netty.channel.ChannelPipelineException):void");
        }

        public ChannelFuture execute(ChannelPipeline channelPipeline, Runnable runnable) {
            try {
                runnable.run();
                return Channels.succeededFuture(channelPipeline.getChannel());
            } catch (Throwable th) {
                return Channels.failedFuture(channelPipeline.getChannel(), th);
            }
        }
    }

    protected AbstractCodecEmbedder(ChannelHandler... channelHandlerArr) {
        this.sink = new EmbeddedChannelSink<>();
        this.productQueue = new LinkedList();
        this.pipeline = new EmbeddedChannelPipeline();
        configurePipeline(channelHandlerArr);
        this.channel = new EmbeddedChannel(this.pipeline, this.sink);
        fireInitialEvents();
    }

    protected AbstractCodecEmbedder(ChannelBufferFactory channelBufferFactory, ChannelHandler... channelHandlerArr) {
        this(channelHandlerArr);
        getChannel().getConfig().setBufferFactory(channelBufferFactory);
    }

    private void fireInitialEvents() {
        Channels.fireChannelOpen(this.channel);
        Channels.fireChannelBound(this.channel, this.channel.getLocalAddress());
        Channels.fireChannelConnected(this.channel, this.channel.getRemoteAddress());
    }

    private void configurePipeline(ChannelHandler... channelHandlerArr) {
        if (channelHandlerArr == null) {
            throw new NullPointerException("handlers");
        } else if (channelHandlerArr.length == 0) {
            throw new IllegalArgumentException("handlers should contain at least one " + ChannelHandler.class.getSimpleName() + '.');
        } else {
            for (int i = 0; i < channelHandlerArr.length; i++) {
                if (channelHandlerArr[i] == null) {
                    throw new NullPointerException("handlers[" + i + ']');
                }
                this.pipeline.addLast(String.valueOf(i), channelHandlerArr[i]);
            }
            this.pipeline.addLast("SINK", this.sink);
        }
    }

    public boolean finish() {
        Channels.close(this.channel);
        Channels.fireChannelDisconnected(this.channel);
        Channels.fireChannelUnbound(this.channel);
        Channels.fireChannelClosed(this.channel);
        return !this.productQueue.isEmpty();
    }

    /* access modifiers changed from: protected */
    public final Channel getChannel() {
        return this.channel;
    }

    /* access modifiers changed from: protected */
    public final boolean isEmpty() {
        return this.productQueue.isEmpty();
    }

    public final E poll() {
        return this.productQueue.poll();
    }

    public final E peek() {
        return this.productQueue.peek();
    }

    public final Object[] pollAll() {
        int size = size();
        Object[] objArr = new Object[size];
        for (int i = 0; i < size; i++) {
            Object poll = poll();
            if (poll == null) {
                throw new ConcurrentModificationException();
            }
            objArr[i] = poll;
        }
        return objArr;
    }

    public final <T> T[] pollAll(T[] tArr) {
        T[] tArr2;
        if (tArr == null) {
            throw new NullPointerException("a");
        }
        int size = size();
        if (tArr.length < size) {
            tArr2 = (Object[]) Array.newInstance(tArr.getClass().getComponentType(), size);
        } else {
            tArr2 = tArr;
        }
        int i = 0;
        while (true) {
            T poll = poll();
            if (poll == null) {
                break;
            }
            tArr2[i] = poll;
            i++;
        }
        if (tArr2.length > size) {
            tArr2[size] = null;
        }
        return tArr2;
    }

    public final int size() {
        return this.productQueue.size();
    }

    public ChannelPipeline getPipeline() {
        return this.pipeline;
    }
}
