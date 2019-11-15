package org.jboss.netty.handler.codec.spdy;

public class SpdyStreamStatus implements Comparable<SpdyStreamStatus> {
    public static final SpdyStreamStatus CANCEL = new SpdyStreamStatus(5, "CANCEL");
    public static final SpdyStreamStatus FLOW_CONTROL_ERROR = new SpdyStreamStatus(7, "FLOW_CONTROL_ERROR");
    public static final SpdyStreamStatus FRAME_TOO_LARGE = new SpdyStreamStatus(11, "FRAME_TOO_LARGE");
    public static final SpdyStreamStatus INTERNAL_ERROR = new SpdyStreamStatus(6, "INTERNAL_ERROR");
    public static final SpdyStreamStatus INVALID_CREDENTIALS = new SpdyStreamStatus(10, "INVALID_CREDENTIALS");
    public static final SpdyStreamStatus INVALID_STREAM = new SpdyStreamStatus(2, "INVALID_STREAM");
    public static final SpdyStreamStatus PROTOCOL_ERROR = new SpdyStreamStatus(1, "PROTOCOL_ERROR");
    public static final SpdyStreamStatus REFUSED_STREAM = new SpdyStreamStatus(3, "REFUSED_STREAM");
    public static final SpdyStreamStatus STREAM_ALREADY_CLOSED = new SpdyStreamStatus(9, "STREAM_ALREADY_CLOSED");
    public static final SpdyStreamStatus STREAM_IN_USE = new SpdyStreamStatus(8, "STREAM_IN_USE");
    public static final SpdyStreamStatus UNSUPPORTED_VERSION = new SpdyStreamStatus(4, "UNSUPPORTED_VERSION");
    private final int code;
    private final String statusPhrase;

    public static SpdyStreamStatus valueOf(int i) {
        if (i == 0) {
            throw new IllegalArgumentException("0 is not a valid status code for a RST_STREAM");
        }
        switch (i) {
            case 1:
                return PROTOCOL_ERROR;
            case 2:
                return INVALID_STREAM;
            case 3:
                return REFUSED_STREAM;
            case 4:
                return UNSUPPORTED_VERSION;
            case 5:
                return CANCEL;
            case 6:
                return INTERNAL_ERROR;
            case 7:
                return FLOW_CONTROL_ERROR;
            case 8:
                return STREAM_IN_USE;
            case 9:
                return STREAM_ALREADY_CLOSED;
            case 10:
                return INVALID_CREDENTIALS;
            case 11:
                return FRAME_TOO_LARGE;
            default:
                return new SpdyStreamStatus(i, "UNKNOWN (" + i + ')');
        }
    }

    public SpdyStreamStatus(int i, String str) {
        if (i == 0) {
            throw new IllegalArgumentException("0 is not a valid status code for a RST_STREAM");
        } else if (str == null) {
            throw new NullPointerException("statusPhrase");
        } else {
            this.code = i;
            this.statusPhrase = str;
        }
    }

    public int getCode() {
        return this.code;
    }

    public String getStatusPhrase() {
        return this.statusPhrase;
    }

    public int hashCode() {
        return getCode();
    }

    public boolean equals(Object obj) {
        if ((obj instanceof SpdyStreamStatus) && getCode() == ((SpdyStreamStatus) obj).getCode()) {
            return true;
        }
        return false;
    }

    public String toString() {
        return getStatusPhrase();
    }

    public int compareTo(SpdyStreamStatus spdyStreamStatus) {
        return getCode() - spdyStreamStatus.getCode();
    }
}
