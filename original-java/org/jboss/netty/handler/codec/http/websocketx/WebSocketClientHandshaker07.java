package org.jboss.netty.handler.codec.http.websocketx;

import com.mi.milinkforgame.sdk.base.os.Http;
import java.net.URI;
import java.util.Map;
import java.util.Map.Entry;
import org.jboss.netty.buffer.ChannelBuffers;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.ChannelFutureListener;
import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.channel.DefaultChannelFuture;
import org.jboss.netty.handler.codec.http.DefaultHttpRequest;
import org.jboss.netty.handler.codec.http.HttpHeaders.Names;
import org.jboss.netty.handler.codec.http.HttpHeaders.Values;
import org.jboss.netty.handler.codec.http.HttpMethod;
import org.jboss.netty.handler.codec.http.HttpRequestEncoder;
import org.jboss.netty.handler.codec.http.HttpResponse;
import org.jboss.netty.handler.codec.http.HttpResponseDecoder;
import org.jboss.netty.handler.codec.http.HttpResponseStatus;
import org.jboss.netty.handler.codec.http.HttpVersion;
import org.jboss.netty.logging.InternalLogger;
import org.jboss.netty.logging.InternalLoggerFactory;
import org.jboss.netty.util.CharsetUtil;

public class WebSocketClientHandshaker07 extends WebSocketClientHandshaker {
    public static final String MAGIC_GUID = "258EAFA5-E914-47DA-95CA-C5AB0DC85B11";
    private static final InternalLogger logger = InternalLoggerFactory.getInstance(WebSocketClientHandshaker07.class);
    private final boolean allowExtensions;
    private String expectedChallengeResponseString;

    public WebSocketClientHandshaker07(URI uri, WebSocketVersion webSocketVersion, String str, boolean z, Map<String, String> map, long j) {
        super(uri, webSocketVersion, str, map, j);
        this.allowExtensions = z;
    }

    public ChannelFuture handshake(Channel channel) {
        URI webSocketUrl = getWebSocketUrl();
        String path = webSocketUrl.getPath();
        if (webSocketUrl.getQuery() != null && webSocketUrl.getQuery().length() > 0) {
            path = webSocketUrl.getPath() + '?' + webSocketUrl.getQuery();
        }
        if (path == null || path.length() == 0) {
            path = "/";
        }
        String base64 = WebSocketUtil.base64(ChannelBuffers.wrappedBuffer(WebSocketUtil.randomBytes(16)));
        this.expectedChallengeResponseString = WebSocketUtil.base64(WebSocketUtil.sha1(ChannelBuffers.copiedBuffer((CharSequence) base64 + "258EAFA5-E914-47DA-95CA-C5AB0DC85B11", CharsetUtil.US_ASCII)));
        if (logger.isDebugEnabled()) {
            logger.debug(String.format("WS Version 07 Client Handshake key: %s. Expected response: %s.", new Object[]{base64, this.expectedChallengeResponseString}));
        }
        DefaultHttpRequest defaultHttpRequest = new DefaultHttpRequest(HttpVersion.HTTP_1_1, HttpMethod.GET, path);
        defaultHttpRequest.addHeader("Upgrade", Values.WEBSOCKET.toLowerCase());
        defaultHttpRequest.addHeader("Connection", "Upgrade");
        defaultHttpRequest.addHeader(Names.SEC_WEBSOCKET_KEY, base64);
        defaultHttpRequest.addHeader("Host", webSocketUrl.getHost());
        int port = webSocketUrl.getPort();
        String str = Http.PROTOCOL_PREFIX + webSocketUrl.getHost();
        if (!(port == 80 || port == 443)) {
            str = str + Http.PROTOCOL_PORT_SPLITTER + port;
        }
        defaultHttpRequest.addHeader(Names.SEC_WEBSOCKET_ORIGIN, str);
        String expectedSubprotocol = getExpectedSubprotocol();
        if (expectedSubprotocol != null && expectedSubprotocol.length() > 0) {
            defaultHttpRequest.addHeader(Names.SEC_WEBSOCKET_PROTOCOL, expectedSubprotocol);
        }
        defaultHttpRequest.addHeader(Names.SEC_WEBSOCKET_VERSION, "7");
        if (this.customHeaders != null) {
            for (Entry entry : this.customHeaders.entrySet()) {
                defaultHttpRequest.addHeader((String) entry.getKey(), entry.getValue());
            }
        }
        final DefaultChannelFuture defaultChannelFuture = new DefaultChannelFuture(channel, false);
        channel.write(defaultHttpRequest).addListener(new ChannelFutureListener() {
            public void operationComplete(ChannelFuture channelFuture) {
                ChannelPipeline pipeline = channelFuture.getChannel().getPipeline();
                pipeline.addAfter(pipeline.getContext(HttpRequestEncoder.class).getName(), "ws-encoder", new WebSocket07FrameEncoder(true));
                if (channelFuture.isSuccess()) {
                    defaultChannelFuture.setSuccess();
                } else {
                    defaultChannelFuture.setFailure(channelFuture.getCause());
                }
            }
        });
        return defaultChannelFuture;
    }

    public void finishHandshake(Channel channel, HttpResponse httpResponse) {
        if (!httpResponse.getStatus().equals(HttpResponseStatus.SWITCHING_PROTOCOLS)) {
            throw new WebSocketHandshakeException("Invalid handshake response status: " + httpResponse.getStatus());
        }
        if (!Values.WEBSOCKET.equalsIgnoreCase(httpResponse.getHeader("Upgrade"))) {
            throw new WebSocketHandshakeException("Invalid handshake response upgrade: " + httpResponse.getHeader("Upgrade"));
        }
        if (!"Upgrade".equalsIgnoreCase(httpResponse.getHeader("Connection"))) {
            throw new WebSocketHandshakeException("Invalid handshake response connection: " + httpResponse.getHeader("Connection"));
        }
        String header = httpResponse.getHeader(Names.SEC_WEBSOCKET_ACCEPT);
        if (header == null || !header.equals(this.expectedChallengeResponseString)) {
            throw new WebSocketHandshakeException(String.format("Invalid challenge. Actual: %s. Expected: %s", new Object[]{header, this.expectedChallengeResponseString}));
        }
        setActualSubprotocol(httpResponse.getHeader(Names.SEC_WEBSOCKET_PROTOCOL));
        setHandshakeComplete();
        ((HttpResponseDecoder) channel.getPipeline().get(HttpResponseDecoder.class)).replace("ws-decoder", new WebSocket07FrameDecoder(false, this.allowExtensions, getMaxFramePayloadLength()));
    }
}
