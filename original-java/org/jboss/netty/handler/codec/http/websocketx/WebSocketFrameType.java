package org.jboss.netty.handler.codec.http.websocketx;

public enum WebSocketFrameType {
    TEXT,
    BINARY,
    PING,
    PONG,
    CLOSE,
    CONTINUATION
}
