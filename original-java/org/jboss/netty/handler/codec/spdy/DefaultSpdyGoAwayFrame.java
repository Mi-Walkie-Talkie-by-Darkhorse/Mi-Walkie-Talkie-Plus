package org.jboss.netty.handler.codec.spdy;

import org.jboss.netty.util.internal.StringUtil;

public class DefaultSpdyGoAwayFrame implements SpdyGoAwayFrame {
    private int lastGoodStreamId;
    private SpdySessionStatus status;

    public DefaultSpdyGoAwayFrame(int i) {
        this(i, 0);
    }

    public DefaultSpdyGoAwayFrame(int i, int i2) {
        this(i, SpdySessionStatus.valueOf(i2));
    }

    public DefaultSpdyGoAwayFrame(int i, SpdySessionStatus spdySessionStatus) {
        setLastGoodStreamId(i);
        setStatus(spdySessionStatus);
    }

    @Deprecated
    public int getLastGoodStreamID() {
        return getLastGoodStreamId();
    }

    public int getLastGoodStreamId() {
        return this.lastGoodStreamId;
    }

    @Deprecated
    public void setLastGoodStreamID(int i) {
        setLastGoodStreamId(i);
    }

    public void setLastGoodStreamId(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("Last-good-stream-ID cannot be negative: " + i);
        }
        this.lastGoodStreamId = i;
    }

    public SpdySessionStatus getStatus() {
        return this.status;
    }

    public void setStatus(SpdySessionStatus spdySessionStatus) {
        this.status = spdySessionStatus;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(StringUtil.NEWLINE);
        sb.append("--> Last-good-stream-ID = ");
        sb.append(this.lastGoodStreamId);
        sb.append(StringUtil.NEWLINE);
        sb.append("--> Status: ");
        sb.append(this.status.toString());
        return sb.toString();
    }
}
