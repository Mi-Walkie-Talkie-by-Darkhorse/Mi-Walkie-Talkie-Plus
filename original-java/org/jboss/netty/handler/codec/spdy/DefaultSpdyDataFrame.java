package org.jboss.netty.handler.codec.spdy;

import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.ChannelBuffers;
import org.jboss.netty.util.internal.StringUtil;

public class DefaultSpdyDataFrame implements SpdyDataFrame {
    private boolean compressed;
    private ChannelBuffer data = ChannelBuffers.EMPTY_BUFFER;
    private boolean last;
    private int streamId;

    public DefaultSpdyDataFrame(int i) {
        setStreamId(i);
    }

    @Deprecated
    public int getStreamID() {
        return getStreamId();
    }

    public int getStreamId() {
        return this.streamId;
    }

    @Deprecated
    public void setStreamID(int i) {
        setStreamId(i);
    }

    public void setStreamId(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("Stream-ID must be positive: " + i);
        }
        this.streamId = i;
    }

    public boolean isLast() {
        return this.last;
    }

    public void setLast(boolean z) {
        this.last = z;
    }

    @Deprecated
    public boolean isCompressed() {
        return this.compressed;
    }

    @Deprecated
    public void setCompressed(boolean z) {
        this.compressed = z;
    }

    public ChannelBuffer getData() {
        return this.data;
    }

    public void setData(ChannelBuffer channelBuffer) {
        if (channelBuffer == null) {
            channelBuffer = ChannelBuffers.EMPTY_BUFFER;
        }
        if (channelBuffer.readableBytes() > 16777215) {
            throw new IllegalArgumentException("data payload cannot exceed 16777215 bytes");
        }
        this.data = channelBuffer;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append("(last: ");
        sb.append(isLast());
        sb.append("; compressed: ");
        sb.append(isCompressed());
        sb.append(')');
        sb.append(StringUtil.NEWLINE);
        sb.append("--> Stream-ID = ");
        sb.append(this.streamId);
        sb.append(StringUtil.NEWLINE);
        sb.append("--> Size = ");
        sb.append(this.data.readableBytes());
        return sb.toString();
    }
}
