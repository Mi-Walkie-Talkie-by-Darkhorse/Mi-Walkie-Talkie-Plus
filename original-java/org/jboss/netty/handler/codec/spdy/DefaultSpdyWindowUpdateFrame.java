package org.jboss.netty.handler.codec.spdy;

import org.jboss.netty.util.internal.StringUtil;

public class DefaultSpdyWindowUpdateFrame implements SpdyWindowUpdateFrame {
    private int deltaWindowSize;
    private int streamId;

    public DefaultSpdyWindowUpdateFrame(int i, int i2) {
        setStreamId(i);
        setDeltaWindowSize(i2);
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

    public int getDeltaWindowSize() {
        return this.deltaWindowSize;
    }

    public void setDeltaWindowSize(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("Delta-Window-Size must be positive: " + i);
        }
        this.deltaWindowSize = i;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(StringUtil.NEWLINE);
        sb.append("--> Stream-ID = ");
        sb.append(this.streamId);
        sb.append(StringUtil.NEWLINE);
        sb.append("--> Delta-Window-Size = ");
        sb.append(this.deltaWindowSize);
        return sb.toString();
    }
}
