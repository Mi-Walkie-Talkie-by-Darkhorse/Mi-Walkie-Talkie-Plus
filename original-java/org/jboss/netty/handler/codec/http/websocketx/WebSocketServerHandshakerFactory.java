package org.jboss.netty.handler.codec.http.websocketx;

import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.handler.codec.http.DefaultHttpResponse;
import org.jboss.netty.handler.codec.http.HttpHeaders.Names;
import org.jboss.netty.handler.codec.http.HttpRequest;
import org.jboss.netty.handler.codec.http.HttpResponseStatus;
import org.jboss.netty.handler.codec.http.HttpVersion;

public class WebSocketServerHandshakerFactory {
    private final boolean allowExtensions;
    private final long maxFramePayloadLength;
    private final String subprotocols;
    private final String webSocketURL;

    public WebSocketServerHandshakerFactory(String str, String str2, boolean z) {
        this(str, str2, z, FileTracerConfig.FOREVER);
    }

    public WebSocketServerHandshakerFactory(String str, String str2, boolean z, long j) {
        this.webSocketURL = str;
        this.subprotocols = str2;
        this.allowExtensions = z;
        this.maxFramePayloadLength = j;
    }

    public WebSocketServerHandshaker newHandshaker(HttpRequest httpRequest) {
        String header = httpRequest.getHeader(Names.SEC_WEBSOCKET_VERSION);
        if (header == null) {
            return new WebSocketServerHandshaker00(this.webSocketURL, this.subprotocols, this.maxFramePayloadLength);
        }
        if (header.equals(WebSocketVersion.V13.toHttpHeaderValue())) {
            return new WebSocketServerHandshaker13(this.webSocketURL, this.subprotocols, this.allowExtensions, this.maxFramePayloadLength);
        }
        if (header.equals(WebSocketVersion.V08.toHttpHeaderValue())) {
            return new WebSocketServerHandshaker08(this.webSocketURL, this.subprotocols, this.allowExtensions, this.maxFramePayloadLength);
        }
        if (header.equals(WebSocketVersion.V07.toHttpHeaderValue())) {
            return new WebSocketServerHandshaker07(this.webSocketURL, this.subprotocols, this.allowExtensions, this.maxFramePayloadLength);
        }
        return null;
    }

    public ChannelFuture sendUnsupportedWebSocketVersionResponse(Channel channel) {
        DefaultHttpResponse defaultHttpResponse = new DefaultHttpResponse(HttpVersion.HTTP_1_1, HttpResponseStatus.SWITCHING_PROTOCOLS);
        defaultHttpResponse.setStatus(HttpResponseStatus.UPGRADE_REQUIRED);
        defaultHttpResponse.setHeader(Names.SEC_WEBSOCKET_VERSION, (Object) WebSocketVersion.V13.toHttpHeaderValue());
        return channel.write(defaultHttpResponse);
    }
}
