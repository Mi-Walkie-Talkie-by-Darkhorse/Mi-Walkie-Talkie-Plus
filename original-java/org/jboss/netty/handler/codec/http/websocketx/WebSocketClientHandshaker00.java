package org.jboss.netty.handler.codec.http.websocketx;

import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;
import com.mi.milinkforgame.sdk.base.os.Http;
import java.net.URI;
import java.nio.ByteBuffer;
import java.util.Map;
import java.util.Map.Entry;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.ChannelBuffers;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.ChannelFutureListener;
import org.jboss.netty.channel.ChannelHandler;
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

public class WebSocketClientHandshaker00 extends WebSocketClientHandshaker {
    private ChannelBuffer expectedChallengeResponseBytes;

    public WebSocketClientHandshaker00(URI uri, WebSocketVersion webSocketVersion, String str, Map<String, String> map) {
        this(uri, webSocketVersion, str, map, FileTracerConfig.FOREVER);
    }

    public WebSocketClientHandshaker00(URI uri, WebSocketVersion webSocketVersion, String str, Map<String, String> map, long j) {
        super(uri, webSocketVersion, str, map, j);
    }

    public ChannelFuture handshake(Channel channel) {
        int randomNumber = WebSocketUtil.randomNumber(1, 12);
        int randomNumber2 = WebSocketUtil.randomNumber(1, 12);
        int i = Integer.MAX_VALUE / randomNumber2;
        int randomNumber3 = WebSocketUtil.randomNumber(0, Integer.MAX_VALUE / randomNumber);
        int randomNumber4 = WebSocketUtil.randomNumber(0, i);
        int i2 = randomNumber4 * randomNumber2;
        String num = Integer.toString(randomNumber3 * randomNumber);
        String num2 = Integer.toString(i2);
        String insertRandomCharacters = insertRandomCharacters(num);
        String insertRandomCharacters2 = insertRandomCharacters(num2);
        String insertSpaces = insertSpaces(insertRandomCharacters, randomNumber);
        String insertSpaces2 = insertSpaces(insertRandomCharacters2, randomNumber2);
        byte[] randomBytes = WebSocketUtil.randomBytes(8);
        ByteBuffer allocate = ByteBuffer.allocate(4);
        allocate.putInt(randomNumber3);
        byte[] array = allocate.array();
        ByteBuffer allocate2 = ByteBuffer.allocate(4);
        allocate2.putInt(randomNumber4);
        byte[] array2 = allocate2.array();
        byte[] bArr = new byte[16];
        System.arraycopy(array, 0, bArr, 0, 4);
        System.arraycopy(array2, 0, bArr, 4, 4);
        System.arraycopy(randomBytes, 0, bArr, 8, 8);
        this.expectedChallengeResponseBytes = WebSocketUtil.md5(ChannelBuffers.wrappedBuffer(bArr));
        URI webSocketUrl = getWebSocketUrl();
        String path = webSocketUrl.getPath();
        if (webSocketUrl.getQuery() != null && webSocketUrl.getQuery().length() > 0) {
            path = webSocketUrl.getPath() + '?' + webSocketUrl.getQuery();
        }
        if (path == null || path.length() == 0) {
            path = "/";
        }
        DefaultHttpRequest defaultHttpRequest = new DefaultHttpRequest(HttpVersion.HTTP_1_1, HttpMethod.GET, path);
        defaultHttpRequest.addHeader("Upgrade", Values.WEBSOCKET);
        defaultHttpRequest.addHeader("Connection", "Upgrade");
        defaultHttpRequest.addHeader("Host", webSocketUrl.getHost());
        int port = webSocketUrl.getPort();
        String str = Http.PROTOCOL_PREFIX + webSocketUrl.getHost();
        if (!(port == 80 || port == 443)) {
            str = str + Http.PROTOCOL_PORT_SPLITTER + port;
        }
        defaultHttpRequest.addHeader(Names.ORIGIN, str);
        defaultHttpRequest.addHeader(Names.SEC_WEBSOCKET_KEY1, insertSpaces);
        defaultHttpRequest.addHeader(Names.SEC_WEBSOCKET_KEY2, insertSpaces2);
        String expectedSubprotocol = getExpectedSubprotocol();
        if (!(expectedSubprotocol == null || expectedSubprotocol.length() == 0)) {
            defaultHttpRequest.addHeader(Names.SEC_WEBSOCKET_PROTOCOL, expectedSubprotocol);
        }
        if (this.customHeaders != null) {
            for (Entry entry : this.customHeaders.entrySet()) {
                defaultHttpRequest.addHeader((String) entry.getKey(), entry.getValue());
            }
        }
        defaultHttpRequest.setHeader("Content-Length", (Object) Integer.valueOf(randomBytes.length));
        defaultHttpRequest.setContent(ChannelBuffers.copiedBuffer(randomBytes));
        final DefaultChannelFuture defaultChannelFuture = new DefaultChannelFuture(channel, false);
        channel.write(defaultHttpRequest).addListener(new ChannelFutureListener() {
            public void operationComplete(ChannelFuture channelFuture) {
                channelFuture.getChannel().getPipeline().replace(HttpRequestEncoder.class, "ws-encoder", (ChannelHandler) new WebSocket00FrameEncoder());
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
        if (!httpResponse.getStatus().equals(new HttpResponseStatus(101, "WebSocket Protocol Handshake"))) {
            throw new WebSocketHandshakeException("Invalid handshake response status: " + httpResponse.getStatus());
        }
        String header = httpResponse.getHeader("Upgrade");
        if (!Values.WEBSOCKET.equals(header)) {
            throw new WebSocketHandshakeException("Invalid handshake response upgrade: " + header);
        }
        String header2 = httpResponse.getHeader("Connection");
        if (!"Upgrade".equals(header2)) {
            throw new WebSocketHandshakeException("Invalid handshake response connection: " + header2);
        } else if (!httpResponse.getContent().equals(this.expectedChallengeResponseBytes)) {
            throw new WebSocketHandshakeException("Invalid challenge");
        } else {
            setActualSubprotocol(httpResponse.getHeader(Names.SEC_WEBSOCKET_PROTOCOL));
            setHandshakeComplete();
            ((HttpResponseDecoder) channel.getPipeline().get(HttpResponseDecoder.class)).replace("ws-decoder", new WebSocket00FrameDecoder(getMaxFramePayloadLength()));
        }
    }

    private static String insertRandomCharacters(String str) {
        int randomNumber = WebSocketUtil.randomNumber(1, 12);
        char[] cArr = new char[randomNumber];
        int i = 0;
        while (i < randomNumber) {
            int random = (int) ((Math.random() * 126.0d) + 33.0d);
            if ((33 < random && random < 47) || (58 < random && random < 126)) {
                cArr[i] = (char) random;
                i++;
            }
        }
        for (int i2 = 0; i2 < randomNumber; i2++) {
            int randomNumber2 = WebSocketUtil.randomNumber(0, str.length());
            String substring = str.substring(0, randomNumber2);
            str = substring + cArr[i2] + str.substring(randomNumber2);
        }
        return str;
    }

    private static String insertSpaces(String str, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            int randomNumber = WebSocketUtil.randomNumber(1, str.length() - 1);
            String substring = str.substring(0, randomNumber);
            str = substring + ' ' + str.substring(randomNumber);
        }
        return str;
    }
}
