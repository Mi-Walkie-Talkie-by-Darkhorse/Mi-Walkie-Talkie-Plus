package org.jboss.netty.handler.codec.http;

import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.ChannelBuffers;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.channel.ChannelStateEvent;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.channel.LifeCycleAwareChannelHandler;
import org.jboss.netty.channel.MessageEvent;
import org.jboss.netty.channel.SimpleChannelHandler;
import org.jboss.netty.handler.codec.embedder.EncoderEmbedder;

public abstract class HttpContentEncoder extends SimpleChannelHandler implements LifeCycleAwareChannelHandler {
    static final /* synthetic */ boolean $assertionsDisabled = (!HttpContentEncoder.class.desiredAssertionStatus());
    private final Queue<String> acceptEncodingQueue = new ConcurrentLinkedQueue();
    private volatile EncoderEmbedder<ChannelBuffer> encoder;

    /* access modifiers changed from: protected */
    public abstract String getTargetContentEncoding(String str) throws Exception;

    /* access modifiers changed from: protected */
    public abstract EncoderEmbedder<ChannelBuffer> newContentEncoder(HttpMessage httpMessage, String str) throws Exception;

    protected HttpContentEncoder() {
    }

    public void messageReceived(ChannelHandlerContext channelHandlerContext, MessageEvent messageEvent) throws Exception {
        Object message = messageEvent.getMessage();
        if (!(message instanceof HttpMessage)) {
            channelHandlerContext.sendUpstream(messageEvent);
            return;
        }
        String header = ((HttpMessage) message).getHeader("Accept-Encoding");
        if (header == null) {
            header = "identity";
        }
        boolean offer = this.acceptEncodingQueue.offer(header);
        if ($assertionsDisabled || offer) {
            channelHandlerContext.sendUpstream(messageEvent);
            return;
        }
        throw new AssertionError();
    }

    public void writeRequested(ChannelHandlerContext channelHandlerContext, MessageEvent messageEvent) throws Exception {
        Object message = messageEvent.getMessage();
        if ((message instanceof HttpResponse) && ((HttpResponse) message).getStatus().getCode() == 100) {
            channelHandlerContext.sendDownstream(messageEvent);
        } else if (message instanceof HttpMessage) {
            HttpMessage httpMessage = (HttpMessage) message;
            finishEncode();
            String str = (String) this.acceptEncodingQueue.poll();
            if (str == null) {
                throw new IllegalStateException("cannot send more responses than requests");
            }
            String header = httpMessage.getHeader("Content-Encoding");
            if (header == null || "identity".equalsIgnoreCase(header)) {
                if (httpMessage.isChunked() || httpMessage.getContent().readable()) {
                    EncoderEmbedder<ChannelBuffer> newContentEncoder = newContentEncoder(httpMessage, str);
                    this.encoder = newContentEncoder;
                    if (newContentEncoder != null) {
                        httpMessage.setHeader("Content-Encoding", (Object) getTargetContentEncoding(str));
                        if (!httpMessage.isChunked()) {
                            ChannelBuffer wrappedBuffer = ChannelBuffers.wrappedBuffer(encode(httpMessage.getContent()), finishEncode());
                            httpMessage.setContent(wrappedBuffer);
                            if (httpMessage.containsHeader("Content-Length")) {
                                httpMessage.setHeader("Content-Length", (Object) Integer.toString(wrappedBuffer.readableBytes()));
                            }
                        }
                    }
                }
                channelHandlerContext.sendDownstream(messageEvent);
                return;
            }
            channelHandlerContext.sendDownstream(messageEvent);
        } else if (message instanceof HttpChunk) {
            HttpChunk httpChunk = (HttpChunk) message;
            ChannelBuffer content = httpChunk.getContent();
            if (this.encoder == null) {
                channelHandlerContext.sendDownstream(messageEvent);
            } else if (!httpChunk.isLast()) {
                ChannelBuffer encode = encode(content);
                if (encode.readable()) {
                    httpChunk.setContent(encode);
                    channelHandlerContext.sendDownstream(messageEvent);
                }
            } else {
                ChannelBuffer finishEncode = finishEncode();
                if (finishEncode.readable()) {
                    Channels.write(channelHandlerContext, Channels.succeededFuture(messageEvent.getChannel()), new DefaultHttpChunk(finishEncode), messageEvent.getRemoteAddress());
                }
                channelHandlerContext.sendDownstream(messageEvent);
            }
        } else {
            channelHandlerContext.sendDownstream(messageEvent);
        }
    }

    public void channelClosed(ChannelHandlerContext channelHandlerContext, ChannelStateEvent channelStateEvent) throws Exception {
        finishEncode();
        super.channelClosed(channelHandlerContext, channelStateEvent);
    }

    private ChannelBuffer encode(ChannelBuffer channelBuffer) {
        this.encoder.offer(channelBuffer);
        return ChannelBuffers.wrappedBuffer((ChannelBuffer[]) this.encoder.pollAll(new ChannelBuffer[this.encoder.size()]));
    }

    private ChannelBuffer finishEncode() {
        ChannelBuffer channelBuffer;
        if (this.encoder == null) {
            return ChannelBuffers.EMPTY_BUFFER;
        }
        if (this.encoder.finish()) {
            channelBuffer = ChannelBuffers.wrappedBuffer((ChannelBuffer[]) this.encoder.pollAll(new ChannelBuffer[this.encoder.size()]));
        } else {
            channelBuffer = ChannelBuffers.EMPTY_BUFFER;
        }
        this.encoder = null;
        return channelBuffer;
    }

    public void beforeAdd(ChannelHandlerContext channelHandlerContext) throws Exception {
    }

    public void afterAdd(ChannelHandlerContext channelHandlerContext) throws Exception {
    }

    public void beforeRemove(ChannelHandlerContext channelHandlerContext) throws Exception {
    }

    public void afterRemove(ChannelHandlerContext channelHandlerContext) throws Exception {
        finishEncode();
    }
}
