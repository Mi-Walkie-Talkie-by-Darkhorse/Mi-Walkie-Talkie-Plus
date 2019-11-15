package org.jboss.netty.handler.codec.spdy;

import java.util.List;
import java.util.Map.Entry;
import org.apache.http.protocol.HTTP;
import org.jboss.netty.channel.ChannelDownstreamHandler;
import org.jboss.netty.channel.ChannelEvent;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.ChannelFutureListener;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.channel.MessageEvent;
import org.jboss.netty.handler.codec.http.HttpChunk;
import org.jboss.netty.handler.codec.http.HttpChunkTrailer;
import org.jboss.netty.handler.codec.http.HttpHeaders;
import org.jboss.netty.handler.codec.http.HttpMessage;
import org.jboss.netty.handler.codec.http.HttpRequest;
import org.jboss.netty.handler.codec.http.HttpResponse;
import org.jboss.netty.handler.codec.spdy.SpdyHttpHeaders.Names;

public class SpdyHttpEncoder implements ChannelDownstreamHandler {
    private volatile int currentStreamID;
    private final int spdyVersion;

    private static class SpdyFrameWriter implements ChannelFutureListener {
        private final ChannelHandlerContext ctx;
        private final MessageEvent e;
        private final Object spdyFrame;

        SpdyFrameWriter(ChannelHandlerContext channelHandlerContext, MessageEvent messageEvent, Object obj) {
            this.ctx = channelHandlerContext;
            this.e = messageEvent;
            this.spdyFrame = obj;
        }

        public void operationComplete(ChannelFuture channelFuture) throws Exception {
            if (channelFuture.isSuccess()) {
                Channels.write(this.ctx, this.e.getFuture(), this.spdyFrame, this.e.getRemoteAddress());
            } else if (channelFuture.isCancelled()) {
                this.e.getFuture().cancel();
            } else {
                this.e.getFuture().setFailure(channelFuture.getCause());
            }
        }
    }

    @Deprecated
    public SpdyHttpEncoder() {
        this(2);
    }

    public SpdyHttpEncoder(int i) {
        if (i < 2 || i > 3) {
            throw new IllegalArgumentException("unsupported version: " + i);
        }
        this.spdyVersion = i;
    }

    public void handleDownstream(ChannelHandlerContext channelHandlerContext, ChannelEvent channelEvent) throws Exception {
        if (!(channelEvent instanceof MessageEvent)) {
            channelHandlerContext.sendDownstream(channelEvent);
            return;
        }
        MessageEvent messageEvent = (MessageEvent) channelEvent;
        Object message = messageEvent.getMessage();
        if (message instanceof HttpRequest) {
            HttpRequest httpRequest = (HttpRequest) message;
            SpdySynStreamFrame createSynStreamFrame = createSynStreamFrame(httpRequest);
            Channels.write(channelHandlerContext, getContentFuture(channelHandlerContext, messageEvent, createSynStreamFrame.getStreamId(), httpRequest), createSynStreamFrame, messageEvent.getRemoteAddress());
        } else if (message instanceof HttpResponse) {
            HttpResponse httpResponse = (HttpResponse) message;
            if (httpResponse.containsHeader(Names.ASSOCIATED_TO_STREAM_ID)) {
                SpdySynStreamFrame createSynStreamFrame2 = createSynStreamFrame(httpResponse);
                Channels.write(channelHandlerContext, getContentFuture(channelHandlerContext, messageEvent, createSynStreamFrame2.getStreamId(), httpResponse), createSynStreamFrame2, messageEvent.getRemoteAddress());
                return;
            }
            SpdySynReplyFrame createSynReplyFrame = createSynReplyFrame(httpResponse);
            Channels.write(channelHandlerContext, getContentFuture(channelHandlerContext, messageEvent, createSynReplyFrame.getStreamId(), httpResponse), createSynReplyFrame, messageEvent.getRemoteAddress());
        } else if (message instanceof HttpChunk) {
            HttpChunk httpChunk = (HttpChunk) message;
            DefaultSpdyDataFrame defaultSpdyDataFrame = new DefaultSpdyDataFrame(this.currentStreamID);
            defaultSpdyDataFrame.setData(httpChunk.getContent());
            defaultSpdyDataFrame.setLast(httpChunk.isLast());
            if (httpChunk instanceof HttpChunkTrailer) {
                List<Entry> headers = ((HttpChunkTrailer) httpChunk).getHeaders();
                if (headers.isEmpty()) {
                    Channels.write(channelHandlerContext, messageEvent.getFuture(), defaultSpdyDataFrame, messageEvent.getRemoteAddress());
                    return;
                }
                DefaultSpdyHeadersFrame defaultSpdyHeadersFrame = new DefaultSpdyHeadersFrame(this.currentStreamID);
                for (Entry entry : headers) {
                    defaultSpdyHeadersFrame.addHeader((String) entry.getKey(), entry.getValue());
                }
                ChannelFuture future = Channels.future(messageEvent.getChannel());
                future.addListener(new SpdyFrameWriter(channelHandlerContext, messageEvent, defaultSpdyDataFrame));
                Channels.write(channelHandlerContext, future, defaultSpdyHeadersFrame, messageEvent.getRemoteAddress());
                return;
            }
            Channels.write(channelHandlerContext, messageEvent.getFuture(), defaultSpdyDataFrame, messageEvent.getRemoteAddress());
        } else {
            channelHandlerContext.sendDownstream(channelEvent);
        }
    }

    private static ChannelFuture getContentFuture(ChannelHandlerContext channelHandlerContext, MessageEvent messageEvent, int i, HttpMessage httpMessage) {
        if (httpMessage.getContent().readableBytes() == 0) {
            return messageEvent.getFuture();
        }
        DefaultSpdyDataFrame defaultSpdyDataFrame = new DefaultSpdyDataFrame(i);
        defaultSpdyDataFrame.setData(httpMessage.getContent());
        defaultSpdyDataFrame.setLast(true);
        ChannelFuture future = Channels.future(messageEvent.getChannel());
        future.addListener(new SpdyFrameWriter(channelHandlerContext, messageEvent, defaultSpdyDataFrame));
        return future;
    }

    private SpdySynStreamFrame createSynStreamFrame(HttpMessage httpMessage) throws Exception {
        String str;
        boolean isChunked = httpMessage.isChunked();
        int streamId = SpdyHttpHeaders.getStreamId(httpMessage);
        int associatedToStreamId = SpdyHttpHeaders.getAssociatedToStreamId(httpMessage);
        byte priority = SpdyHttpHeaders.getPriority(httpMessage);
        String url = SpdyHttpHeaders.getUrl(httpMessage);
        String scheme = SpdyHttpHeaders.getScheme(httpMessage);
        SpdyHttpHeaders.removeStreamId(httpMessage);
        SpdyHttpHeaders.removeAssociatedToStreamId(httpMessage);
        SpdyHttpHeaders.removePriority(httpMessage);
        SpdyHttpHeaders.removeUrl(httpMessage);
        SpdyHttpHeaders.removeScheme(httpMessage);
        httpMessage.removeHeader("Connection");
        httpMessage.removeHeader(HTTP.CONN_KEEP_ALIVE);
        httpMessage.removeHeader("Proxy-Connection");
        httpMessage.removeHeader("Transfer-Encoding");
        DefaultSpdySynStreamFrame defaultSpdySynStreamFrame = new DefaultSpdySynStreamFrame(streamId, associatedToStreamId, priority);
        if (httpMessage instanceof HttpRequest) {
            HttpRequest httpRequest = (HttpRequest) httpMessage;
            SpdyHeaders.setMethod(this.spdyVersion, defaultSpdySynStreamFrame, httpRequest.getMethod());
            SpdyHeaders.setUrl(this.spdyVersion, defaultSpdySynStreamFrame, httpRequest.getUri());
            SpdyHeaders.setVersion(this.spdyVersion, defaultSpdySynStreamFrame, httpMessage.getProtocolVersion());
        }
        if (httpMessage instanceof HttpResponse) {
            SpdyHeaders.setStatus(this.spdyVersion, defaultSpdySynStreamFrame, ((HttpResponse) httpMessage).getStatus());
            SpdyHeaders.setUrl(this.spdyVersion, defaultSpdySynStreamFrame, url);
            SpdyHeaders.setVersion(this.spdyVersion, defaultSpdySynStreamFrame, httpMessage.getProtocolVersion());
            defaultSpdySynStreamFrame.setUnidirectional(true);
        }
        if (this.spdyVersion >= 3) {
            String host = HttpHeaders.getHost(httpMessage);
            httpMessage.removeHeader("Host");
            SpdyHeaders.setHost(defaultSpdySynStreamFrame, host);
        }
        if (scheme == null) {
            str = "https";
        } else {
            str = scheme;
        }
        SpdyHeaders.setScheme(this.spdyVersion, defaultSpdySynStreamFrame, str);
        for (Entry entry : httpMessage.getHeaders()) {
            defaultSpdySynStreamFrame.addHeader((String) entry.getKey(), entry.getValue());
        }
        if (isChunked) {
            this.currentStreamID = streamId;
            defaultSpdySynStreamFrame.setLast(false);
        } else {
            defaultSpdySynStreamFrame.setLast(httpMessage.getContent().readableBytes() == 0);
        }
        return defaultSpdySynStreamFrame;
    }

    private SpdySynReplyFrame createSynReplyFrame(HttpResponse httpResponse) throws Exception {
        boolean isChunked = httpResponse.isChunked();
        int streamId = SpdyHttpHeaders.getStreamId(httpResponse);
        SpdyHttpHeaders.removeStreamId(httpResponse);
        httpResponse.removeHeader("Connection");
        httpResponse.removeHeader(HTTP.CONN_KEEP_ALIVE);
        httpResponse.removeHeader("Proxy-Connection");
        httpResponse.removeHeader("Transfer-Encoding");
        DefaultSpdySynReplyFrame defaultSpdySynReplyFrame = new DefaultSpdySynReplyFrame(streamId);
        SpdyHeaders.setStatus(this.spdyVersion, defaultSpdySynReplyFrame, httpResponse.getStatus());
        SpdyHeaders.setVersion(this.spdyVersion, defaultSpdySynReplyFrame, httpResponse.getProtocolVersion());
        for (Entry entry : httpResponse.getHeaders()) {
            defaultSpdySynReplyFrame.addHeader((String) entry.getKey(), entry.getValue());
        }
        if (isChunked) {
            this.currentStreamID = streamId;
            defaultSpdySynReplyFrame.setLast(false);
        } else {
            defaultSpdySynReplyFrame.setLast(httpResponse.getContent().readableBytes() == 0);
        }
        return defaultSpdySynReplyFrame;
    }
}
