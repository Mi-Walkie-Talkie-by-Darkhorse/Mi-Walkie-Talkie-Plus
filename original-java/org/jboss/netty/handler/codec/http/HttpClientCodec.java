package org.jboss.netty.handler.codec.http;

import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicLong;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelDownstreamHandler;
import org.jboss.netty.channel.ChannelEvent;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.channel.ChannelStateEvent;
import org.jboss.netty.channel.ChannelUpstreamHandler;
import org.jboss.netty.handler.codec.PrematureChannelClosureException;

public class HttpClientCodec implements ChannelDownstreamHandler, ChannelUpstreamHandler {
    private final HttpResponseDecoder decoder;
    volatile boolean done;
    private final HttpRequestEncoder encoder;
    /* access modifiers changed from: private */
    public final boolean failOnMissingResponse;
    final Queue<HttpMethod> queue;
    /* access modifiers changed from: private */
    public final AtomicLong requestResponseCounter;

    private final class Decoder extends HttpResponseDecoder {
        Decoder(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        /* access modifiers changed from: protected */
        public Object decode(ChannelHandlerContext channelHandlerContext, Channel channel, ChannelBuffer channelBuffer, State state) throws Exception {
            if (HttpClientCodec.this.done) {
                int actualReadableBytes = actualReadableBytes();
                if (actualReadableBytes == 0) {
                    return null;
                }
                return channelBuffer.readBytes(actualReadableBytes);
            }
            Object decode = super.decode(channelHandlerContext, channel, channelBuffer, state);
            if (!HttpClientCodec.this.failOnMissingResponse) {
                return decode;
            }
            decrement(decode);
            return decode;
        }

        private void decrement(Object obj) {
            if (obj != null) {
                if ((obj instanceof HttpMessage) && !((HttpMessage) obj).isChunked()) {
                    HttpClientCodec.this.requestResponseCounter.decrementAndGet();
                } else if ((obj instanceof HttpChunk) && ((HttpChunk) obj).isLast()) {
                    HttpClientCodec.this.requestResponseCounter.decrementAndGet();
                } else if (obj instanceof Object[]) {
                    HttpClientCodec.this.requestResponseCounter.decrementAndGet();
                }
            }
        }

        /* access modifiers changed from: protected */
        public boolean isContentAlwaysEmpty(HttpMessage httpMessage) {
            int code = ((HttpResponse) httpMessage).getStatus().getCode();
            if (code == 100) {
                return true;
            }
            HttpMethod httpMethod = (HttpMethod) HttpClientCodec.this.queue.poll();
            switch (httpMethod.getName().charAt(0)) {
                case 'C':
                    if (code == 200 && HttpMethod.CONNECT.equals(httpMethod)) {
                        HttpClientCodec.this.done = true;
                        HttpClientCodec.this.queue.clear();
                        return true;
                    }
                case 'H':
                    if (HttpMethod.HEAD.equals(httpMethod)) {
                        return true;
                    }
                    break;
            }
            return super.isContentAlwaysEmpty(httpMessage);
        }

        public void channelClosed(ChannelHandlerContext channelHandlerContext, ChannelStateEvent channelStateEvent) throws Exception {
            super.channelClosed(channelHandlerContext, channelStateEvent);
            if (HttpClientCodec.this.failOnMissingResponse) {
                long j = HttpClientCodec.this.requestResponseCounter.get();
                if (j > 0) {
                    throw new PrematureChannelClosureException("Channel closed but still missing " + j + " response(s)");
                }
            }
        }
    }

    private final class Encoder extends HttpRequestEncoder {
        Encoder() {
        }

        /* access modifiers changed from: protected */
        public Object encode(ChannelHandlerContext channelHandlerContext, Channel channel, Object obj) throws Exception {
            if ((obj instanceof HttpRequest) && !HttpClientCodec.this.done) {
                HttpClientCodec.this.queue.offer(((HttpRequest) obj).getMethod());
            }
            Object encode = super.encode(channelHandlerContext, channel, obj);
            if (HttpClientCodec.this.failOnMissingResponse) {
                if ((obj instanceof HttpRequest) && !((HttpRequest) obj).isChunked()) {
                    HttpClientCodec.this.requestResponseCounter.incrementAndGet();
                } else if ((obj instanceof HttpChunk) && ((HttpChunk) obj).isLast()) {
                    HttpClientCodec.this.requestResponseCounter.incrementAndGet();
                }
            }
            return encode;
        }
    }

    public HttpClientCodec() {
        this(4096, 8192, 8192, false);
    }

    public HttpClientCodec(int i, int i2, int i3) {
        this(i, i2, i3, false);
    }

    public HttpClientCodec(int i, int i2, int i3, boolean z) {
        this.queue = new ConcurrentLinkedQueue();
        this.encoder = new Encoder();
        this.requestResponseCounter = new AtomicLong(0);
        this.decoder = new Decoder(i, i2, i3);
        this.failOnMissingResponse = z;
    }

    public void handleUpstream(ChannelHandlerContext channelHandlerContext, ChannelEvent channelEvent) throws Exception {
        this.decoder.handleUpstream(channelHandlerContext, channelEvent);
    }

    public void handleDownstream(ChannelHandlerContext channelHandlerContext, ChannelEvent channelEvent) throws Exception {
        this.encoder.handleDownstream(channelHandlerContext, channelEvent);
    }
}
