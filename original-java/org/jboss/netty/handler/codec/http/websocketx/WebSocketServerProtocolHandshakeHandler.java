package org.jboss.netty.handler.codec.http.websocketx;

import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.ChannelFutureListener;
import org.jboss.netty.channel.ChannelHandler;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.channel.MessageEvent;
import org.jboss.netty.channel.SimpleChannelUpstreamHandler;
import org.jboss.netty.handler.codec.http.DefaultHttpResponse;
import org.jboss.netty.handler.codec.http.HttpHeaders;
import org.jboss.netty.handler.codec.http.HttpMethod;
import org.jboss.netty.handler.codec.http.HttpRequest;
import org.jboss.netty.handler.codec.http.HttpResponse;
import org.jboss.netty.handler.codec.http.HttpResponseStatus;
import org.jboss.netty.handler.codec.http.HttpVersion;
import org.jboss.netty.handler.ssl.SslHandler;
import org.jboss.netty.logging.InternalLogger;
import org.jboss.netty.logging.InternalLoggerFactory;

public class WebSocketServerProtocolHandshakeHandler extends SimpleChannelUpstreamHandler {
    private static final InternalLogger logger = InternalLoggerFactory.getInstance(WebSocketServerProtocolHandshakeHandler.class);
    private final boolean allowExtensions;
    private final String subprotocols;
    private final String websocketPath;

    public WebSocketServerProtocolHandshakeHandler(String str, String str2, boolean z) {
        this.websocketPath = str;
        this.subprotocols = str2;
        this.allowExtensions = z;
    }

    public void messageReceived(final ChannelHandlerContext channelHandlerContext, MessageEvent messageEvent) throws Exception {
        if (messageEvent.getMessage() instanceof HttpRequest) {
            HttpRequest httpRequest = (HttpRequest) messageEvent.getMessage();
            if (httpRequest.getMethod() != HttpMethod.GET) {
                sendHttpResponse(channelHandlerContext, httpRequest, new DefaultHttpResponse(HttpVersion.HTTP_1_1, HttpResponseStatus.FORBIDDEN));
                return;
            }
            WebSocketServerHandshakerFactory webSocketServerHandshakerFactory = new WebSocketServerHandshakerFactory(getWebSocketLocation(channelHandlerContext.getPipeline(), httpRequest, this.websocketPath), this.subprotocols, this.allowExtensions);
            WebSocketServerHandshaker newHandshaker = webSocketServerHandshakerFactory.newHandshaker(httpRequest);
            if (newHandshaker == null) {
                webSocketServerHandshakerFactory.sendUnsupportedWebSocketVersionResponse(channelHandlerContext.getChannel());
                return;
            }
            newHandshaker.handshake(channelHandlerContext.getChannel(), httpRequest).addListener(new ChannelFutureListener() {
                public void operationComplete(ChannelFuture channelFuture) throws Exception {
                    if (!channelFuture.isSuccess()) {
                        Channels.fireExceptionCaught(channelHandlerContext, channelFuture.getCause());
                    }
                }
            });
            WebSocketServerProtocolHandler.setHandshaker(channelHandlerContext, newHandshaker);
            channelHandlerContext.getPipeline().replace((ChannelHandler) this, "WS403Responder", WebSocketServerProtocolHandler.forbiddenHttpRequestResponder());
        }
    }

    public void exceptionCaught(ChannelHandlerContext channelHandlerContext, Throwable th) throws Exception {
        logger.error("Exception Caught", th);
        channelHandlerContext.getChannel().close();
    }

    private static void sendHttpResponse(ChannelHandlerContext channelHandlerContext, HttpRequest httpRequest, HttpResponse httpResponse) {
        ChannelFuture write = channelHandlerContext.getChannel().write(httpResponse);
        if (!HttpHeaders.isKeepAlive(httpRequest) || httpResponse.getStatus().getCode() != 200) {
            write.addListener(ChannelFutureListener.CLOSE);
        }
    }

    private static String getWebSocketLocation(ChannelPipeline channelPipeline, HttpRequest httpRequest, String str) {
        String str2 = "ws";
        if (channelPipeline.get(SslHandler.class) != null) {
            str2 = "wss";
        }
        return str2 + "://" + httpRequest.getHeader("Host") + str;
    }
}
