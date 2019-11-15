package org.jboss.netty.handler.codec.http.websocketx;

import org.jboss.netty.buffer.ChannelBuffers;
import org.jboss.netty.channel.ChannelFutureListener;
import org.jboss.netty.channel.ChannelHandler;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.channel.ExceptionEvent;
import org.jboss.netty.channel.LifeCycleAwareChannelHandler;
import org.jboss.netty.channel.MessageEvent;
import org.jboss.netty.channel.SimpleChannelHandler;
import org.jboss.netty.channel.SimpleChannelUpstreamHandler;
import org.jboss.netty.handler.codec.http.DefaultHttpResponse;
import org.jboss.netty.handler.codec.http.HttpResponseStatus;
import org.jboss.netty.handler.codec.http.HttpVersion;

public class WebSocketServerProtocolHandler extends SimpleChannelUpstreamHandler implements LifeCycleAwareChannelHandler {
    private final boolean allowExtensions;
    private final String subprotocols;
    private final String websocketPath;

    public WebSocketServerProtocolHandler(String str) {
        this(str, null, false);
    }

    public WebSocketServerProtocolHandler(String str, String str2) {
        this(str, str2, false);
    }

    public WebSocketServerProtocolHandler(String str, String str2, boolean z) {
        this.websocketPath = str;
        this.subprotocols = str2;
        this.allowExtensions = z;
    }

    public void afterAdd(ChannelHandlerContext channelHandlerContext) throws Exception {
        if (channelHandlerContext.getPipeline().get(WebSocketServerProtocolHandshakeHandler.class) == null) {
            channelHandlerContext.getPipeline().addBefore(channelHandlerContext.getName(), WebSocketServerProtocolHandshakeHandler.class.getName(), new WebSocketServerProtocolHandshakeHandler(this.websocketPath, this.subprotocols, this.allowExtensions));
        }
    }

    public void messageReceived(ChannelHandlerContext channelHandlerContext, MessageEvent messageEvent) throws Exception {
        if (messageEvent.getMessage() instanceof WebSocketFrame) {
            WebSocketFrame webSocketFrame = (WebSocketFrame) messageEvent.getMessage();
            if (webSocketFrame instanceof CloseWebSocketFrame) {
                getHandshaker(channelHandlerContext).close(channelHandlerContext.getChannel(), (CloseWebSocketFrame) webSocketFrame);
                return;
            } else if (webSocketFrame instanceof PingWebSocketFrame) {
                channelHandlerContext.getChannel().write(new PongWebSocketFrame(webSocketFrame.getBinaryData()));
                return;
            }
        }
        channelHandlerContext.sendUpstream(messageEvent);
    }

    public void exceptionCaught(ChannelHandlerContext channelHandlerContext, ExceptionEvent exceptionEvent) throws Exception {
        if (exceptionEvent.getCause() instanceof WebSocketHandshakeException) {
            DefaultHttpResponse defaultHttpResponse = new DefaultHttpResponse(HttpVersion.HTTP_1_1, HttpResponseStatus.BAD_REQUEST);
            defaultHttpResponse.setContent(ChannelBuffers.wrappedBuffer(exceptionEvent.getCause().getMessage().getBytes()));
            channelHandlerContext.getChannel().write(defaultHttpResponse).addListener(ChannelFutureListener.CLOSE);
            return;
        }
        channelHandlerContext.getChannel().close();
    }

    static WebSocketServerHandshaker getHandshaker(ChannelHandlerContext channelHandlerContext) {
        return (WebSocketServerHandshaker) channelHandlerContext.getAttachment();
    }

    static void setHandshaker(ChannelHandlerContext channelHandlerContext, WebSocketServerHandshaker webSocketServerHandshaker) {
        channelHandlerContext.setAttachment(webSocketServerHandshaker);
    }

    static ChannelHandler forbiddenHttpRequestResponder() {
        return new SimpleChannelHandler() {
            public void messageReceived(ChannelHandlerContext channelHandlerContext, MessageEvent messageEvent) throws Exception {
                if (!(messageEvent.getMessage() instanceof WebSocketFrame)) {
                    channelHandlerContext.getChannel().write(new DefaultHttpResponse(HttpVersion.HTTP_1_1, HttpResponseStatus.FORBIDDEN));
                    return;
                }
                channelHandlerContext.sendUpstream(messageEvent);
            }
        };
    }

    public void beforeAdd(ChannelHandlerContext channelHandlerContext) throws Exception {
    }

    public void beforeRemove(ChannelHandlerContext channelHandlerContext) throws Exception {
    }

    public void afterRemove(ChannelHandlerContext channelHandlerContext) throws Exception {
    }
}
