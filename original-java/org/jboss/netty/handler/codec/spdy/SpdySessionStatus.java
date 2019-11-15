package org.jboss.netty.handler.codec.spdy;

public class SpdySessionStatus implements Comparable<SpdySessionStatus> {
    public static final SpdySessionStatus INTERNAL_ERROR = new SpdySessionStatus(2, "INTERNAL_ERROR");
    public static final SpdySessionStatus OK = new SpdySessionStatus(0, "OK");
    public static final SpdySessionStatus PROTOCOL_ERROR = new SpdySessionStatus(1, "PROTOCOL_ERROR");
    private final int code;
    private final String statusPhrase;

    public static SpdySessionStatus valueOf(int i) {
        switch (i) {
            case 0:
                return OK;
            case 1:
                return PROTOCOL_ERROR;
            case 2:
                return INTERNAL_ERROR;
            default:
                return new SpdySessionStatus(i, "UNKNOWN (" + i + ')');
        }
    }

    public SpdySessionStatus(int i, String str) {
        if (str == null) {
            throw new NullPointerException("statusPhrase");
        }
        this.code = i;
        this.statusPhrase = str;
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
        if ((obj instanceof SpdySessionStatus) && getCode() == ((SpdySessionStatus) obj).getCode()) {
            return true;
        }
        return false;
    }

    public String toString() {
        return getStatusPhrase();
    }

    public int compareTo(SpdySessionStatus spdySessionStatus) {
        return getCode() - spdySessionStatus.getCode();
    }
}
