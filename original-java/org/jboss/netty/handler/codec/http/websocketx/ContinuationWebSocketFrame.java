package org.jboss.netty.handler.codec.http.websocketx;

import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.ChannelBuffers;
import org.jboss.netty.util.CharsetUtil;

public class ContinuationWebSocketFrame extends WebSocketFrame {
    private String aggregatedText;

    public ContinuationWebSocketFrame() {
        setBinaryData(ChannelBuffers.EMPTY_BUFFER);
    }

    public ContinuationWebSocketFrame(ChannelBuffer channelBuffer) {
        setBinaryData(channelBuffer);
    }

    public ContinuationWebSocketFrame(boolean z, int i, ChannelBuffer channelBuffer) {
        setFinalFragment(z);
        setRsv(i);
        setBinaryData(channelBuffer);
    }

    public ContinuationWebSocketFrame(boolean z, int i, ChannelBuffer channelBuffer, String str) {
        setFinalFragment(z);
        setRsv(i);
        setBinaryData(channelBuffer);
        this.aggregatedText = str;
    }

    public ContinuationWebSocketFrame(boolean z, int i, String str) {
        setFinalFragment(z);
        setRsv(i);
        setText(str);
    }

    public String getText() {
        if (getBinaryData() == null) {
            return null;
        }
        return getBinaryData().toString(CharsetUtil.UTF_8);
    }

    public void setText(String str) {
        if (str == null || str.length() == 0) {
            setBinaryData(ChannelBuffers.EMPTY_BUFFER);
        } else {
            setBinaryData(ChannelBuffers.copiedBuffer((CharSequence) str, CharsetUtil.UTF_8));
        }
    }

    public String toString() {
        return getClass().getSimpleName() + "(data: " + getBinaryData() + ')';
    }

    public String getAggregatedText() {
        return this.aggregatedText;
    }

    public void setAggregatedText(String str) {
        this.aggregatedText = str;
    }
}
