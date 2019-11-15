package org.jboss.netty.handler.codec.http;

import org.jboss.netty.buffer.ChannelBuffer;

public class DefaultHttpChunk implements HttpChunk {
    private ChannelBuffer content;
    private boolean last;

    public DefaultHttpChunk(ChannelBuffer channelBuffer) {
        setContent(channelBuffer);
    }

    public ChannelBuffer getContent() {
        return this.content;
    }

    public void setContent(ChannelBuffer channelBuffer) {
        if (channelBuffer == null) {
            throw new NullPointerException("content");
        }
        this.last = !channelBuffer.readable();
        this.content = channelBuffer;
    }

    public boolean isLast() {
        return this.last;
    }
}
