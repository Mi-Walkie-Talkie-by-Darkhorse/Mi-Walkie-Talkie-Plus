package org.jboss.netty.handler.codec.http.websocketx;

import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.ChannelBuffers;

public class BinaryWebSocketFrame extends WebSocketFrame {
    public BinaryWebSocketFrame() {
        setBinaryData(ChannelBuffers.EMPTY_BUFFER);
    }

    public BinaryWebSocketFrame(ChannelBuffer channelBuffer) {
        setBinaryData(channelBuffer);
    }

    public BinaryWebSocketFrame(boolean z, int i, ChannelBuffer channelBuffer) {
        setFinalFragment(z);
        setRsv(i);
        setBinaryData(channelBuffer);
    }

    public String toString() {
        return getClass().getSimpleName() + "(data: " + getBinaryData() + ')';
    }
}
