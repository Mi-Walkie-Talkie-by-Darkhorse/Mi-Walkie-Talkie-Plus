package org.jboss.netty.handler.codec.http.websocket;

import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.ChannelBuffers;

@Deprecated
public interface WebSocketFrame {
    public static final WebSocketFrame CLOSING_HANDSHAKE = new DefaultWebSocketFrame(255, ChannelBuffers.EMPTY_BUFFER);

    ChannelBuffer getBinaryData();

    String getTextData();

    int getType();

    boolean isBinary();

    boolean isText();

    void setData(int i, ChannelBuffer channelBuffer);

    String toString();
}
