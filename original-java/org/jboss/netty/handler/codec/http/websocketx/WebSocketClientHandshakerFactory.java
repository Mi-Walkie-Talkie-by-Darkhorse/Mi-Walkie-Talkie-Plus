package org.jboss.netty.handler.codec.http.websocketx;

import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;
import java.net.URI;
import java.util.Map;

public class WebSocketClientHandshakerFactory {
    public WebSocketClientHandshaker newHandshaker(URI uri, WebSocketVersion webSocketVersion, String str, boolean z, Map<String, String> map) {
        return newHandshaker(uri, webSocketVersion, str, z, map, FileTracerConfig.FOREVER);
    }

    public WebSocketClientHandshaker newHandshaker(URI uri, WebSocketVersion webSocketVersion, String str, boolean z, Map<String, String> map, long j) {
        if (webSocketVersion == WebSocketVersion.V13) {
            return new WebSocketClientHandshaker13(uri, WebSocketVersion.V13, str, z, map, j);
        } else if (webSocketVersion == WebSocketVersion.V08) {
            return new WebSocketClientHandshaker08(uri, WebSocketVersion.V08, str, z, map, j);
        } else if (webSocketVersion == WebSocketVersion.V07) {
            return new WebSocketClientHandshaker07(uri, WebSocketVersion.V07, str, z, map, j);
        } else if (webSocketVersion == WebSocketVersion.V00) {
            return new WebSocketClientHandshaker00(uri, WebSocketVersion.V00, str, map, j);
        } else {
            throw new WebSocketHandshakeException("Protocol version " + webSocketVersion.toString() + " not supported.");
        }
    }
}
