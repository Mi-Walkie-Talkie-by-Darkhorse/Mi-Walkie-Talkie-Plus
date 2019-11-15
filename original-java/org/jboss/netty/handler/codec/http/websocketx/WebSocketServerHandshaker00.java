package org.jboss.netty.handler.codec.http.websocketx;

import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;
import org.jboss.netty.buffer.ChannelBuffer;
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

public class WebSocketServerHandshaker00 extends WebSocketServerHandshaker {
    private static final InternalLogger logger = InternalLoggerFactory.getInstance(WebSocketServerHandshaker00.class);

    public WebSocketServerHandshaker00(String str, String str2) {
        this(str, str2, FileTracerConfig.FOREVER);
    }

    public WebSocketServerHandshaker00(String str, String str2, long j) {
        super(WebSocketVersion.V00, str, str2, j);
    }

    public ChannelFuture handshake(Channel channel, HttpRequest httpRequest) {
        boolean z = true;
        if (logger.isDebugEnabled()) {
            logger.debug(String.format("Channel %s WS Version 00 server handshake", new Object[]{channel.getId()}));
        }
        if (!"Upgrade".equalsIgnoreCase(httpRequest.getHeader("Connection")) || !Values.WEBSOCKET.equalsIgnoreCase(httpRequest.getHeader("Upgrade"))) {
            throw new WebSocketHandshakeException("not a WebSocket handshake request: missing upgrade");
        }
        if (!httpRequest.containsHeader(Names.SEC_WEBSOCKET_KEY1) || !httpRequest.containsHeader(Names.SEC_WEBSOCKET_KEY2)) {
            z = false;
        }
        DefaultHttpResponse defaultHttpResponse = new DefaultHttpResponse(HttpVersion.HTTP_1_1, new HttpResponseStatus(101, z ? "WebSocket Protocol Handshake" : "Web Socket Protocol Handshake"));
        defaultHttpResponse.addHeader("Upgrade", Values.WEBSOCKET);
        defaultHttpResponse.addHeader("Connection", "Upgrade");
        if (z) {
            defaultHttpResponse.addHeader(Names.SEC_WEBSOCKET_ORIGIN, httpRequest.getHeader(Names.ORIGIN));
            defaultHttpResponse.addHeader(Names.SEC_WEBSOCKET_LOCATION, getWebSocketUrl());
            String header = httpRequest.getHeader(Names.SEC_WEBSOCKET_PROTOCOL);
            if (header != null) {
                String selectSubprotocol = selectSubprotocol(header);
                if (selectSubprotocol == null) {
                    throw new WebSocketHandshakeException("Requested subprotocol(s) not supported: " + header);
                }
                defaultHttpResponse.addHeader(Names.SEC_WEBSOCKET_PROTOCOL, selectSubprotocol);
                setSelectedSubprotocol(selectSubprotocol);
            }
            String header2 = httpRequest.getHeader(Names.SEC_WEBSOCKET_KEY1);
            String header3 = httpRequest.getHeader(Names.SEC_WEBSOCKET_KEY2);
            int parseLong = (int) (Long.parseLong(header2.replaceAll("[^0-9]", "")) / ((long) header2.replaceAll("[^ ]", "").length()));
            int parseLong2 = (int) (Long.parseLong(header3.replaceAll("[^0-9]", "")) / ((long) header3.replaceAll("[^ ]", "").length()));
            long readLong = httpRequest.getContent().readLong();
            ChannelBuffer buffer = ChannelBuffers.buffer(16);
            buffer.writeInt(parseLong);
            buffer.writeInt(parseLong2);
            buffer.writeLong(readLong);
            defaultHttpResponse.setContent(WebSocketUtil.md5(buffer));
        } else {
            defaultHttpResponse.addHeader(Names.WEBSOCKET_ORIGIN, httpRequest.getHeader(Names.ORIGIN));
            defaultHttpResponse.addHeader(Names.WEBSOCKET_LOCATION, getWebSocketUrl());
            String header4 = httpRequest.getHeader(Names.WEBSOCKET_PROTOCOL);
            if (header4 != null) {
                defaultHttpResponse.addHeader(Names.WEBSOCKET_PROTOCOL, selectSubprotocol(header4));
            }
        }
        ChannelFuture write = channel.write(defaultHttpResponse);
        write.addListener(new ChannelFutureListener() {
            public void operationComplete(ChannelFuture channelFuture) {
                ChannelPipeline pipeline = channelFuture.getChannel().getPipeline();
                if (pipeline.get(HttpChunkAggregator.class) != null) {
                    pipeline.remove(HttpChunkAggregator.class);
                }
                ((HttpRequestDecoder) pipeline.get(HttpRequestDecoder.class)).replace("wsdecoder", new WebSocket00FrameDecoder(WebSocketServerHandshaker00.this.getMaxFramePayloadLength()));
                pipeline.replace(HttpResponseEncoder.class, "wsencoder", (ChannelHandler) new WebSocket00FrameEncoder());
            }
        });
        return write;
    }

    public ChannelFuture close(Channel channel, CloseWebSocketFrame closeWebSocketFrame) {
        return channel.write(closeWebSocketFrame);
    }
}
