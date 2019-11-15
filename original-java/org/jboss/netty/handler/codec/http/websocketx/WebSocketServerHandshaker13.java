package org.jboss.netty.handler.codec.http.websocketx;

import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;
import org.jboss.netty.buffer.ChannelBuffers;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.ChannelFutureListener;
import org.jboss.netty.channel.ChannelHandler;
import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.handler.codec.http.DefaultHttpResponse;
import org.jboss.netty.handler.codec.http.HttpChunkAggregator;
import org.jboss.netty.handler.codec.http.HttpHeaders.Names;
import org.jboss.netty.handler.codec.http.HttpHeaders.Values;
import org.jboss.netty.handler.codec.http.HttpRequest;
import org.jboss.netty.handler.codec.http.HttpRequestDecoder;
import org.jboss.netty.handler.codec.http.HttpResponseEncoder;
import org.jboss.netty.handler.codec.http.HttpResponseStatus;
import org.jboss.netty.handler.codec.http.HttpVersion;
import org.jboss.netty.logging.InternalLogger;
import org.jboss.netty.logging.InternalLoggerFactory;
import org.jboss.netty.util.CharsetUtil;

public class WebSocketServerHandshaker13 extends WebSocketServerHandshaker {
    public static final String WEBSOCKET_13_ACCEPT_GUID = "258EAFA5-E914-47DA-95CA-C5AB0DC85B11";
    private static final InternalLogger logger = InternalLoggerFactory.getInstance(WebSocketServerHandshaker13.class);
    /* access modifiers changed from: private */
    public final boolean allowExtensions;

    public WebSocketServerHandshaker13(String str, String str2, boolean z) {
        this(str, str2, z, FileTracerConfig.FOREVER);
    }

    public WebSocketServerHandshaker13(String str, String str2, boolean z, long j) {
        super(WebSocketVersion.V13, str, str2, j);
        this.allowExtensions = z;
    }

    public ChannelFuture handshake(Channel channel, HttpRequest httpRequest) {
        if (logger.isDebugEnabled()) {
            logger.debug(String.format("Channel %s WS Version 13 server handshake", new Object[]{channel.getId()}));
        }
        DefaultHttpResponse defaultHttpResponse = new DefaultHttpResponse(HttpVersion.HTTP_1_1, HttpResponseStatus.SWITCHING_PROTOCOLS);
        String header = httpRequest.getHeader(Names.SEC_WEBSOCKET_KEY);
        if (header == null) {
            throw new WebSocketHandshakeException("not a WebSocket request: missing key");
        }
        String base64 = WebSocketUtil.base64(WebSocketUtil.sha1(ChannelBuffers.copiedBuffer((CharSequence) header + "258EAFA5-E914-47DA-95CA-C5AB0DC85B11", CharsetUtil.US_ASCII)));
        if (logger.isDebugEnabled()) {
            logger.debug(String.format("WS Version 13 Server Handshake key: %s. Response: %s.", new Object[]{header, base64}));
        }
        defaultHttpResponse.setStatus(HttpResponseStatus.SWITCHING_PROTOCOLS);
        defaultHttpResponse.addHeader("Upgrade", Values.WEBSOCKET.toLowerCase());
        defaultHttpResponse.addHeader("Connection", "Upgrade");
        defaultHttpResponse.addHeader(Names.SEC_WEBSOCKET_ACCEPT, base64);
        String header2 = httpRequest.getHeader(Names.SEC_WEBSOCKET_PROTOCOL);
        if (header2 != null) {
            String selectSubprotocol = selectSubprotocol(header2);
            if (selectSubprotocol == null) {
                throw new WebSocketHandshakeException("Requested subprotocol(s) not supported: " + header2);
            }
            defaultHttpResponse.addHeader(Names.SEC_WEBSOCKET_PROTOCOL, selectSubprotocol);
            setSelectedSubprotocol(selectSubprotocol);
        }
        ChannelFuture write = channel.write(defaultHttpResponse);
        write.addListener(new ChannelFutureListener() {
            public void operationComplete(ChannelFuture channelFuture) {
                ChannelPipeline pipeline = channelFuture.getChannel().getPipeline();
                if (pipeline.get(HttpChunkAggregator.class) != null) {
                    pipeline.remove(HttpChunkAggregator.class);
                }
                ((HttpRequestDecoder) pipeline.get(HttpRequestDecoder.class)).replace("wsdecoder", new WebSocket13FrameDecoder(true, WebSocketServerHandshaker13.this.allowExtensions, WebSocketServerHandshaker13.this.getMaxFramePayloadLength()));
                pipeline.replace(HttpResponseEncoder.class, "wsencoder", (ChannelHandler) new WebSocket13FrameEncoder(false));
            }
        });
        return write;
    }

    public ChannelFuture close(Channel channel, CloseWebSocketFrame closeWebSocketFrame) {
        ChannelFuture write = channel.write(closeWebSocketFrame);
        write.addListener(ChannelFutureListener.CLOSE);
        return write;
    }
}
