package org.jboss.netty.handler.codec.http;

import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.ChannelBuffers;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.channel.ChannelStateEvent;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.channel.LifeCycleAwareChannelHandler;
import org.jboss.netty.channel.MessageEvent;
import org.jboss.netty.channel.SimpleChannelUpstreamHandler;
import org.jboss.netty.handler.codec.embedder.DecoderEmbedder;

public abstract class HttpContentDecoder extends SimpleChannelUpstreamHandler implements LifeCycleAwareChannelHandler {
    private DecoderEmbedder<ChannelBuffer> decoder;

    /* access modifiers changed from: protected */
    public abstract DecoderEmbedder<ChannelBuffer> newContentDecoder(String str) throws Exception;

    protected HttpContentDecoder() {
    }

    public void messageReceived(ChannelHandlerContext channelHandlerContext, MessageEvent messageEvent) throws Exception {
        String str;
        boolean z;
        Object message = messageEvent.getMessage();
        if ((message instanceof HttpResponse) && ((HttpResponse) message).getStatus().getCode() == 100) {
            channelHandlerContext.sendUpstream(messageEvent);
        } else if (message instanceof HttpMessage) {
            HttpMessage httpMessage = (HttpMessage) message;
            finishDecode();
            String header = httpMessage.getHeader("Content-Encoding");
            if (header != null) {
                str = header.trim();
            } else {
                str = "identity";
            }
            if (httpMessage.isChunked() || httpMessage.getContent().readable()) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                DecoderEmbedder<ChannelBuffer> newContentDecoder = newContentDecoder(str);
                this.decoder = newContentDecoder;
                if (newContentDecoder != null) {
                    String targetContentEncoding = getTargetContentEncoding(str);
                    if ("identity".equals(targetContentEncoding)) {
                        httpMessage.removeHeader("Content-Encoding");
                    } else {
                        httpMessage.setHeader("Content-Encoding", (Object) targetContentEncoding);
                    }
                    if (!httpMessage.isChunked()) {
                        ChannelBuffer wrappedBuffer = ChannelBuffers.wrappedBuffer(decode(httpMessage.getContent()), finishDecode());
                        httpMessage.setContent(wrappedBuffer);
                        if (httpMessage.containsHeader("Content-Length")) {
                            httpMessage.setHeader("Content-Length", (Object) Integer.toString(wrappedBuffer.readableBytes()));
                        }
                    }
                }
            }
            channelHandlerContext.sendUpstream(messageEvent);
        } else if (message instanceof HttpChunk) {
            HttpChunk httpChunk = (HttpChunk) message;
            ChannelBuffer content = httpChunk.getContent();
            if (this.decoder == null) {
                channelHandlerContext.sendUpstream(messageEvent);
            } else if (!httpChunk.isLast()) {
                ChannelBuffer decode = decode(content);
                if (decode.readable()) {
                    httpChunk.setContent(decode);
                    channelHandlerContext.sendUpstream(messageEvent);
                }
            } else {
                ChannelBuffer finishDecode = finishDecode();
                if (finishDecode.readable()) {
                    Channels.fireMessageReceived(channelHandlerContext, (Object) new DefaultHttpChunk(finishDecode), messageEvent.getRemoteAddress());
                }
                channelHandlerContext.sendUpstream(messageEvent);
            }
        } else {
            channelHandlerContext.sendUpstream(messageEvent);
        }
    }

    public void channelClosed(ChannelHandlerContext channelHandlerContext, ChannelStateEvent channelStateEvent) throws Exception {
        finishDecode();
        super.channelClosed(channelHandlerContext, channelStateEvent);
    }

    /* access modifiers changed from: protected */
    public String getTargetContentEncoding(String str) throws Exception {
        return "identity";
    }

    private ChannelBuffer decode(ChannelBuffer channelBuffer) {
        this.decoder.offer(channelBuffer);
        return ChannelBuffers.wrappedBuffer((ChannelBuffer[]) this.decoder.pollAll(new ChannelBuffer[this.decoder.size()]));
    }

    private ChannelBuffer finishDecode() {
        ChannelBuffer channelBuffer;
        if (this.decoder == null) {
            return ChannelBuffers.EMPTY_BUFFER;
        }
        if (this.decoder.finish()) {
            channelBuffer = ChannelBuffers.wrappedBuffer((ChannelBuffer[]) this.decoder.pollAll(new ChannelBuffer[this.decoder.size()]));
        } else {
            channelBuffer = ChannelBuffers.EMPTY_BUFFER;
        }
        this.decoder = null;
        return channelBuffer;
    }

    public void beforeAdd(ChannelHandlerContext channelHandlerContext) throws Exception {
    }

    public void afterAdd(ChannelHandlerContext channelHandlerContext) throws Exception {
    }

    public void beforeRemove(ChannelHandlerContext channelHandlerContext) throws Exception {
    }

    public void afterRemove(ChannelHandlerContext channelHandlerContext) throws Exception {
        finishDecode();
    }
}
