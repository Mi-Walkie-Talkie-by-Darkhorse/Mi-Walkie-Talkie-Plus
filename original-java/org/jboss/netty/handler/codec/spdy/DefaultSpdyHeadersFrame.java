package org.jboss.netty.handler.codec.spdy;

import org.jboss.netty.util.internal.StringUtil;

public class DefaultSpdyHeadersFrame extends DefaultSpdyHeaderBlock implements SpdyHeadersFrame {
    private boolean last;
    private int streamId;

    public DefaultSpdyHeadersFrame(int i) {
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

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append("(last: ");
        sb.append(isLast());
        sb.append(')');
        sb.append(StringUtil.NEWLINE);
        sb.append("--> Stream-ID = ");
        sb.append(this.streamId);
        sb.append(StringUtil.NEWLINE);
        sb.append("--> Headers:");
        sb.append(StringUtil.NEWLINE);
        appendHeaders(sb);
        sb.setLength(sb.length() - StringUtil.NEWLINE.length());
        return sb.toString();
    }
}
