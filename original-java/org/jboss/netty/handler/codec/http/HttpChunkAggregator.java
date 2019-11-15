package org.jboss.netty.handler.codec.http;

import java.util.List;
import java.util.Map.Entry;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.ChannelBuffers;
import org.jboss.netty.buffer.CompositeChannelBuffer;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.channel.LifeCycleAwareChannelHandler;
import org.jboss.netty.channel.MessageEvent;
import org.jboss.netty.channel.SimpleChannelUpstreamHandler;
import org.jboss.netty.handler.codec.frame.TooLongFrameException;
import org.jboss.netty.util.CharsetUtil;

public class HttpChunkAggregator extends SimpleChannelUpstreamHandler implements LifeCycleAwareChannelHandler {
    private static final ChannelBuffer CONTINUE = ChannelBuffers.copiedBuffer((CharSequence) "HTTP/1.1 100 Continue\r\n\r\n", CharsetUtil.US_ASCII);
    public static final int DEFAULT_MAX_COMPOSITEBUFFER_COMPONENTS = 1024;
    private ChannelHandlerContext ctx;
    private HttpMessage currentMessage;
    private final int maxContentLength;
    private int maxCumulationBufferComponents = 1024;
    private boolean tooLongFrameFound;

    public HttpChunkAggregator(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("maxContentLength must be a positive integer: " + i);
        }
        this.maxContentLength = i;
    }

    public final int getMaxCumulationBufferComponents() {
        return this.maxCumulationBufferComponents;
    }

    public final void setMaxCumulationBufferComponents(int i) {
        if (i < 2) {
            throw new IllegalArgumentException("maxCumulationBufferComponents: " + i + " (expected: >= 2)");
        } else if (this.ctx == null) {
            this.maxCumulationBufferComponents = i;
        } else {
            throw new IllegalStateException("decoder properties cannot be changed once the decoder is added to a pipeline.");
        }
    }

    public void messageReceived(ChannelHandlerContext channelHandlerContext, MessageEvent messageEvent) throws Exception {
        Object message = messageEvent.getMessage();
        HttpMessage httpMessage = this.currentMessage;
        if (message instanceof HttpMessage) {
            HttpMessage httpMessage2 = (HttpMessage) message;
            this.tooLongFrameFound = false;
            if (HttpHeaders.is100ContinueExpected(httpMessage2)) {
                Channels.write(channelHandlerContext, Channels.succeededFuture(channelHandlerContext.getChannel()), (Object) CONTINUE.duplicate());
            }
            if (httpMessage2.isChunked()) {
                HttpCodecUtil.removeTransferEncodingChunked(httpMessage2);
                httpMessage2.setChunked(false);
                this.currentMessage = httpMessage2;
                return;
            }
            this.currentMessage = null;
            channelHandlerContext.sendUpstream(messageEvent);
        } else if (!(message instanceof HttpChunk)) {
            channelHandlerContext.sendUpstream(messageEvent);
        } else if (httpMessage == null) {
            throw new IllegalStateException("received " + HttpChunk.class.getSimpleName() + " without " + HttpMessage.class.getSimpleName());
        } else {
            HttpChunk httpChunk = (HttpChunk) message;
            if (!this.tooLongFrameFound) {
                ChannelBuffer content = httpMessage.getContent();
                if (content.readableBytes() > this.maxContentLength - httpChunk.getContent().readableBytes()) {
                    this.tooLongFrameFound = true;
                    throw new TooLongFrameException("HTTP content length exceeded " + this.maxContentLength + " bytes.");
                }
                appendToCumulation(httpChunk.getContent());
                if (httpChunk.isLast()) {
                    this.currentMessage = null;
                    if (httpChunk instanceof HttpChunkTrailer) {
                        for (Entry entry : ((HttpChunkTrailer) httpChunk).getHeaders()) {
                            httpMessage.setHeader((String) entry.getKey(), entry.getValue());
                        }
                    }
                    httpMessage.setHeader("Content-Length", (Object) String.valueOf(content.readableBytes()));
                    Channels.fireMessageReceived(channelHandlerContext, (Object) httpMessage, messageEvent.getRemoteAddress());
                }
            } else if (httpChunk.isLast()) {
                this.currentMessage = null;
            }
        }
    }

    /* access modifiers changed from: protected */
    public void appendToCumulation(ChannelBuffer channelBuffer) {
        ChannelBuffer content = this.currentMessage.getContent();
        if (content instanceof CompositeChannelBuffer) {
            CompositeChannelBuffer compositeChannelBuffer = (CompositeChannelBuffer) content;
            if (compositeChannelBuffer.numComponents() >= this.maxCumulationBufferComponents) {
                this.currentMessage.setContent(ChannelBuffers.wrappedBuffer(compositeChannelBuffer.copy(), channelBuffer));
                return;
            }
            List decompose = compositeChannelBuffer.decompose(0, compositeChannelBuffer.readableBytes());
            ChannelBuffer[] channelBufferArr = (ChannelBuffer[]) decompose.toArray(new ChannelBuffer[(decompose.size() + 1)]);
            channelBufferArr[channelBufferArr.length - 1] = channelBuffer;
            this.currentMessage.setContent(ChannelBuffers.wrappedBuffer(channelBufferArr));
            return;
        }
        this.currentMessage.setContent(ChannelBuffers.wrappedBuffer(content, channelBuffer));
    }

    public void beforeAdd(ChannelHandlerContext channelHandlerContext) throws Exception {
        this.ctx = channelHandlerContext;
    }

    public void afterAdd(ChannelHandlerContext channelHandlerContext) throws Exception {
    }

    public void beforeRemove(ChannelHandlerContext channelHandlerContext) throws Exception {
    }

    public void afterRemove(ChannelHandlerContext channelHandlerContext) throws Exception {
    }
}
