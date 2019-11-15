package org.jboss.netty.handler.codec.http.websocketx;

import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Set;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.ChannelFutureListener;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.handler.codec.http.HttpRequest;
import org.jboss.netty.util.internal.StringUtil;

public abstract class WebSocketServerHandshaker {
    public static final ChannelFutureListener HANDSHAKE_LISTENER = new ChannelFutureListener() {
        public void operationComplete(ChannelFuture channelFuture) throws Exception {
            if (!channelFuture.isSuccess()) {
                Channels.fireExceptionCaught(channelFuture.getChannel(), channelFuture.getCause());
            }
        }
    };
    private final long maxFramePayloadLength;
    private String selectedSubprotocol;
    private final String[] subprotocols;
    private final WebSocketVersion version;
    private final String webSocketUrl;

    public abstract ChannelFuture close(Channel channel, CloseWebSocketFrame closeWebSocketFrame);

    public abstract ChannelFuture handshake(Channel channel, HttpRequest httpRequest);

    protected WebSocketServerHandshaker(WebSocketVersion webSocketVersion, String str, String str2) {
        this(webSocketVersion, str, str2, FileTracerConfig.FOREVER);
    }

    protected WebSocketServerHandshaker(WebSocketVersion webSocketVersion, String str, String str2, long j) {
        this.version = webSocketVersion;
        this.webSocketUrl = str;
        if (str2 != null) {
            String[] split = StringUtil.split(str2, ',');
            for (int i = 0; i < split.length; i++) {
                split[i] = split[i].trim();
            }
            this.subprotocols = split;
        } else {
            this.subprotocols = new String[0];
        }
        this.maxFramePayloadLength = j;
    }

    public String getWebSocketUrl() {
        return this.webSocketUrl;
    }

    public Set<String> getSubprotocols() {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Collections.addAll(linkedHashSet, this.subprotocols);
        return linkedHashSet;
    }

    public WebSocketVersion getVersion() {
        return this.version;
    }

    public long getMaxFramePayloadLength() {
        return this.maxFramePayloadLength;
    }

    /* access modifiers changed from: protected */
    public String selectSubprotocol(String str) {
        if (str == null || this.subprotocols.length == 0) {
            return null;
        }
        for (String trim : StringUtil.split(str, ',')) {
            String trim2 = trim.trim();
            for (String equals : this.subprotocols) {
                if (trim2.equals(equals)) {
                    return trim2;
                }
            }
        }
        return null;
    }

    public String getSelectedSubprotocol() {
        return this.selectedSubprotocol;
    }

    /* access modifiers changed from: protected */
    public void setSelectedSubprotocol(String str) {
        this.selectedSubprotocol = str;
    }
}
