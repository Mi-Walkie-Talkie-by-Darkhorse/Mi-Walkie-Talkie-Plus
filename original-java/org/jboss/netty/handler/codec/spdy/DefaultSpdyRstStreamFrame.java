package org.jboss.netty.handler.codec.spdy;

import org.jboss.netty.util.internal.StringUtil;

public class DefaultSpdyRstStreamFrame implements SpdyRstStreamFrame {
    private SpdyStreamStatus status;
    private int streamId;

    public DefaultSpdyRstStreamFrame(int i, int i2) {
        this(i, SpdyStreamStatus.valueOf(i2));
    }

    public DefaultSpdyRstStreamFrame(int i, SpdyStreamStatus spdyStreamStatus) {
        setStreamId(i);
        setStatus(spdyStreamStatus);
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

    public SpdyStreamStatus getStatus() {
        return this.status;
    }

    public void setStatus(SpdyStreamStatus spdyStreamStatus) {
        this.status = spdyStreamStatus;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(StringUtil.NEWLINE);
        sb.append("--> Stream-ID = ");
        sb.append(this.streamId);
        sb.append(StringUtil.NEWLINE);
        sb.append("--> Status: ");
        sb.append(this.status.toString());
        return sb.toString();
    }
}
