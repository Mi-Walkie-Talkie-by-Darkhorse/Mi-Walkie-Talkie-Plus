package org.jboss.netty.handler.codec.spdy;

import javax.net.ssl.SSLEngine;
import org.jboss.netty.channel.ChannelEvent;
import org.jboss.netty.channel.ChannelHandler;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.channel.ChannelUpstreamHandler;
import org.jboss.netty.handler.codec.http.HttpChunkAggregator;
import org.jboss.netty.handler.codec.http.HttpRequestDecoder;
import org.jboss.netty.handler.codec.http.HttpResponseEncoder;
import org.jboss.netty.handler.ssl.SslHandler;

public abstract class SpdyOrHttpChooser implements ChannelUpstreamHandler {
    private final int maxHttpContentLength;
    private final int maxSpdyContentLength;

    public enum SelectedProtocol {
        SpdyVersion2,
        SpdyVersion3,
        HttpVersion1_1,
        HttpVersion1_0,
        None
    }

    /* access modifiers changed from: protected */
    public abstract ChannelUpstreamHandler createHttpRequestHandlerForHttp();

    /* access modifiers changed from: protected */
    public abstract SelectedProtocol getProtocol(SSLEngine sSLEngine);

    protected SpdyOrHttpChooser(int i, int i2) {
        this.maxSpdyContentLength = i;
        this.maxHttpContentLength = i2;
    }

    public void handleUpstream(ChannelHandlerContext channelHandlerContext, ChannelEvent channelEvent) throws Exception {
        SslHandler sslHandler = (SslHandler) channelHandlerContext.getPipeline().get(SslHandler.class);
        if (sslHandler == null) {
            throw new IllegalStateException("SslHandler is needed for SPDY");
        }
        ChannelPipeline pipeline = channelHandlerContext.getPipeline();
        switch (getProtocol(sslHandler.getEngine())) {
            case None:
                return;
            case SpdyVersion2:
                addSpdyHandlers(channelHandlerContext, 2);
                break;
            case SpdyVersion3:
                addSpdyHandlers(channelHandlerContext, 3);
                break;
            case HttpVersion1_0:
            case HttpVersion1_1:
                addHttpHandlers(channelHandlerContext);
                break;
            default:
                throw new IllegalStateException("Unknown SelectedProtocol");
        }
        pipeline.remove((ChannelHandler) this);
        channelHandlerContext.sendUpstream(channelEvent);
    }

    /* access modifiers changed from: protected */
    public void addSpdyHandlers(ChannelHandlerContext channelHandlerContext, int i) {
        ChannelPipeline pipeline = channelHandlerContext.getPipeline();
        pipeline.addLast("spdyDecoder", new SpdyFrameDecoder(i));
        pipeline.addLast("spdyEncoder", new SpdyFrameEncoder(i));
        pipeline.addLast("spdySessionHandler", new SpdySessionHandler(i, true));
        pipeline.addLast("spdyHttpEncoder", new SpdyHttpEncoder(i));
        pipeline.addLast("spdyHttpDecoder", new SpdyHttpDecoder(i, this.maxSpdyContentLength));
        pipeline.addLast("spdyStreamIdHandler", new SpdyHttpResponseStreamIdHandler());
        pipeline.addLast("httpRquestHandler", createHttpRequestHandlerForSpdy());
    }

    /* access modifiers changed from: protected */
    public void addHttpHandlers(ChannelHandlerContext channelHandlerContext) {
        ChannelPipeline pipeline = channelHandlerContext.getPipeline();
        pipeline.addLast("httpRquestDecoder", new HttpRequestDecoder());
        pipeline.addLast("httpResponseEncoder", new HttpResponseEncoder());
        pipeline.addLast("httpChunkAggregator", new HttpChunkAggregator(this.maxHttpContentLength));
        pipeline.addLast("httpRquestHandler", createHttpRequestHandlerForHttp());
    }

    /* access modifiers changed from: protected */
    public ChannelUpstreamHandler createHttpRequestHandlerForSpdy() {
        return createHttpRequestHandlerForHttp();
    }
}
