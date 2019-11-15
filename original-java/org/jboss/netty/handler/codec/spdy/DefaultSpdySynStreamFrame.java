package org.jboss.netty.handler.codec.spdy;

import org.jboss.netty.util.internal.StringUtil;

public class DefaultSpdySynStreamFrame extends DefaultSpdyHeaderBlock implements SpdySynStreamFrame {
    private int associatedToStreamId;
    private boolean last;
    private byte priority;
    private int streamId;
    private boolean unidirectional;

    public DefaultSpdySynStreamFrame(int i, int i2, byte b) {
        setStreamId(i);
        setAssociatedToStreamId(i2);
        setPriority(b);
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

    @Deprecated
    public int getAssociatedToStreamID() {
        return getAssociatedToStreamId();
    }

    public int getAssociatedToStreamId() {
        return this.associatedToStreamId;
    }

    @Deprecated
    public void setAssociatedToStreamID(int i) {
        setAssociatedToStreamId(i);
    }

    public void setAssociatedToStreamId(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("Associated-To-Stream-ID cannot be negative: " + i);
        }
        this.associatedToStreamId = i;
    }

    public byte getPriority() {
        return this.priority;
    }

    public void setPriority(byte b) {
        if (b < 0 || b > 7) {
            throw new IllegalArgumentException("Priority must be between 0 and 7 inclusive: " + b);
        }
        this.priority = b;
    }

    public boolean isLast() {
        return this.last;
    }

    public void setLast(boolean z) {
        this.last = z;
    }

    public boolean isUnidirectional() {
        return this.unidirectional;
    }

    public void setUnidirectional(boolean z) {
        this.unidirectional = z;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append("(last: ");
        sb.append(isLast());
        sb.append("; unidirectional: ");
        sb.append(isUnidirectional());
        sb.append(')');
        sb.append(StringUtil.NEWLINE);
        sb.append("--> Stream-ID = ");
        sb.append(this.streamId);
        sb.append(StringUtil.NEWLINE);
        if (this.associatedToStreamId != 0) {
            sb.append("--> Associated-To-Stream-ID = ");
            sb.append(this.associatedToStreamId);
            sb.append(StringUtil.NEWLINE);
        }
        sb.append("--> Priority = ");
        sb.append(this.priority);
        sb.append(StringUtil.NEWLINE);
        sb.append("--> Headers:");
        sb.append(StringUtil.NEWLINE);
        appendHeaders(sb);
        sb.setLength(sb.length() - StringUtil.NEWLINE.length());
        return sb.toString();
    }
}
