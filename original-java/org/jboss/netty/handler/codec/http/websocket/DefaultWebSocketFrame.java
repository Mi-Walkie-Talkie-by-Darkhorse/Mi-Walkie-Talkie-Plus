package org.jboss.netty.handler.codec.http.websocket;

import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.ChannelBuffers;
import org.jboss.netty.util.CharsetUtil;

@Deprecated
public class DefaultWebSocketFrame implements WebSocketFrame {
    private ChannelBuffer binaryData;
    private int type;

    public DefaultWebSocketFrame() {
        this(0, ChannelBuffers.EMPTY_BUFFER);
    }

    public DefaultWebSocketFrame(String str) {
        this(0, ChannelBuffers.copiedBuffer((CharSequence) str, CharsetUtil.UTF_8));
    }

    public DefaultWebSocketFrame(int i, ChannelBuffer channelBuffer) {
        setData(i, channelBuffer);
    }

    public int getType() {
        return this.type;
    }

    public boolean isText() {
        return (getType() & 128) == 0;
    }

    public boolean isBinary() {
        return !isText();
    }

    public ChannelBuffer getBinaryData() {
        return this.binaryData;
    }

    public String getTextData() {
        return getBinaryData().toString(CharsetUtil.UTF_8);
    }

    public void setData(int i, ChannelBuffer channelBuffer) {
        if (channelBuffer == null) {
            throw new NullPointerException("binaryData");
        } else if ((i & 128) != 0 || channelBuffer.indexOf(channelBuffer.readerIndex(), channelBuffer.writerIndex(), -1) < 0) {
            this.type = i & 255;
            this.binaryData = channelBuffer;
        } else {
            throw new IllegalArgumentException("a text frame should not contain 0xFF.");
        }
    }

    public String toString() {
        return getClass().getSimpleName() + "(type: " + getType() + ", " + "data: " + getBinaryData() + ')';
    }
}
